package com.miage.mbds

import grails.plugin.springsecurity.SpringSecurityService
import grails.plugin.springsecurity.annotation.Secured
import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

@Secured(['ROLE_DOCTOR','ROLE_NURSE'])
class UserController {

    UserService userService
    SpringSecurityService springSecurityService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond userService.list(params), model:[userCount: userService.count()]
    }

    @Secured(['ROLE_DOCTOR','ROLE_NURSE','ROLE_PATIENT'])
    def show(Long id) {
        User user = springSecurityService.getCurrentUser()
        Role rolePatient = Role.findByAuthority('ROLE_PATIENT')
        def auth = user.getAuthorities()
        if (auth.contains(rolePatient) && auth.size() == 1)
        {
            if (user.getId() != id) {
                render(status: 403, text: "Vous n'avez pas le droit d'accéder à cette page")
                return
            }
        }
        respond userService.get(id)
    }

    def create() {
        respond new User(params)
    }

    def save(User user) {
        if (user == null) {
            notFound()
            return
        }
        /**
         * Gérer l'upload d'image (il faudra préalablement avoir fait un formulaire qui permettra d'uploader un fichier)
         * - Récupérer l'illustration dans la requête
         * - Sauvegarder le fichier sur le système de fichier (illustration.path)
         * - Créer une instance d'Illustration qui pointera vers le fichier sauvegardé et qui lui attribuera un nom (aléatoire)
         * - On ajoute la référence de l'instance d'Illustration à l'utilisateur avant de le sauvegarder
          */
        try {
            userService.save(user)
        } catch (ValidationException e) {
            respond user.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), user.id])
                redirect user
            }
            '*' { respond user, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond userService.get(id)
    }

    def update(User user) {
        if (user == null) {
            notFound()
            return
        }

        try {
            userService.save(user)
        } catch (ValidationException e) {
            respond user.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'user.label', default: 'User'), user.id])
                redirect user
            }
            '*'{ respond user, [status: OK] }
        }
    }

    @Secured('ROLE_DOCTOR')
    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        userService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'user.label', default: 'User'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
