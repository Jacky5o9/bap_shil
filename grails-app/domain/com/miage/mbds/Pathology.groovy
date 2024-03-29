package com.miage.mbds

class Pathology {

    String name
    String symptoms

    static constraints = {
        name nullable: false, blank: false
        symptoms nullable: false, blank: false
    }

    static mapping = {
        symptoms type: 'text'
    }
}
