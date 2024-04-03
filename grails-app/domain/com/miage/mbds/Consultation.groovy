package com.miage.mbds

import grails.rest.Resource

@Resource(uri = '/api/consultations')
class Consultation {

    User creator
    User doctor
    String description // du patient
    String diagnostic // du medecin
    ConsultationStatus status = ConsultationStatus.CREATED
    Date dateCreated

    static belongsTo = [patient: User]

    static hasMany = [pathologies: Pathology, prescriptions: Prescription]

    static constraints = {
        creator nullable: false
        doctor nullable: true
        description nullable: false, blank: false
        diagnostic nullable: false, blank: false
        status nullable: false
        patient nullable: false
        pathologies nullable: true
        prescriptions nullable: true
    }

    static mapping = {
        description type: 'text'
        diagnostic type: 'text'
    }
}
