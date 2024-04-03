package com.miage.mbds

import grails.converters.JSON
import grails.converters.XML
import grails.plugin.springsecurity.annotation.Secured

//Accessible sur l'url $server_url/api/
@Secured('ROLE_DOCTOR')
class ApiController {

    UserService userService

    /**
     * Ressource User Singleton
     * Gestion des verbes : GET / PUT / PATCH / DELETE
     */
    def user ()
    {

        if (!params.id)
            return response.status = 400
        def userInstance = userService.get(params.id)
        if (!userInstance)
            return response.status = 404

        switch (request.getMethod())
        {
            case "GET":
                renderThis(userInstance, request.getHeader("Accept"))
//                response.withFormat {
//                    xml { render userInstance as XML }
//                    json { render userInstance as JSON }
//                }
                break
            case "PUT":
                // Si content type = json > données dans request.JSON(.username)
                // si xml > données dans request.XML(.username)
                break
            case "PATCH":
                break
            case "DELETE":
                break
            default:
                return response.status = 405
                break
        }
        return response.status = 406
    }

    /**
     * Ressource Collection User
     * Gestion des verbes : GET / POST
     */
    def users()
    {
        switch (request.getMethod())
        {
            case "GET":
                renderThis(User.list(), request.getHeader("Accept"))
                break
            case "POST":
                break
            default:
                return response.status = 405
                break
        }
        return response.status = 406
    }

    def renderThis(Object object, String accept)
    {
        switch (accept)
        {
            case "xml":
            case "application/xml":
            case "text/xml":
                render object as XML
                break
            case "json":
            case "application/json":
            case "text/json":
            default:
                render object as JSON
                break

        }
    }
}
