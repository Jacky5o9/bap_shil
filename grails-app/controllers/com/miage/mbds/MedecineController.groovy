package com.miage.mbds

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class MedecineController {

    MedecineService medecineService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond medecineService.list(params), model:[medecineCount: medecineService.count()]
    }

    def show(Long id) {
        respond medecineService.get(id)
    }

    def create() {
        respond new Medecine(params)
    }

    def save(Medecine medecine) {
        if (medecine == null) {
            notFound()
            return
        }

        try {
            medecineService.save(medecine)
        } catch (ValidationException e) {
            respond medecine.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'medecine.label', default: 'Medecine'), medecine.id])
                redirect medecine
            }
            '*' { respond medecine, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond medecineService.get(id)
    }

    def update(Medecine medecine) {
        if (medecine == null) {
            notFound()
            return
        }

        try {
            medecineService.save(medecine)
        } catch (ValidationException e) {
            respond medecine.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'medecine.label', default: 'Medecine'), medecine.id])
                redirect medecine
            }
            '*'{ respond medecine, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        medecineService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'medecine.label', default: 'Medecine'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'medecine.label', default: 'Medecine'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
