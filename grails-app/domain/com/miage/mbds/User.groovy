package com.miage.mbds

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString
import grails.compiler.GrailsCompileStatic

@GrailsCompileStatic
@EqualsAndHashCode(includes='username')
@ToString(includes='username', includeNames=true, includePackage=false)
class User implements Serializable {

    private static final long serialVersionUID = 1

    String username
    String password
    boolean enabled = true
    boolean accountExpired
    boolean accountLocked
    boolean passwordExpired
    String firstname
    String lastname
    Date dob
    Integer weight
    Gender gender = Gender.OTHER
    Date dateCreated
    Date lastUpdated
    Illustration illustration

    static hasMany = [consultations: Consultation]

    Set<Role> getAuthorities() {
        (UserRole.findAllByUser(this) as List<UserRole>)*.role as Set<Role>
    }

    static constraints = {
        firstname nullable: false, blank: false
        lastname nullable: false, blank: false
        password nullable: false, blank: false, password: true
        username nullable: false, blank: false, unique: true
        dob nullable: false
        weight nullable: false, min: 0
        gender nullable: false
        illustration nullable: true
    }

    static mapping = {
	    password column: '`password`'
    }
}
