package com.miage.mbds

class Prescription {

    String instructions

    static hasMany = [medecines: Medecine]

    static belongsTo = [consultation : Consultation]

    static constraints = {
        instructions nullable: false, blank: false
        medecines nullable: true
    }

    static mapping = {
        instructions type: 'text'
    }
}
