package com.miage.mbds

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class MedecineServiceSpec extends Specification {

    MedecineService medecineService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Medecine(...).save(flush: true, failOnError: true)
        //new Medecine(...).save(flush: true, failOnError: true)
        //Medecine medecine = new Medecine(...).save(flush: true, failOnError: true)
        //new Medecine(...).save(flush: true, failOnError: true)
        //new Medecine(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //medecine.id
    }

    void "test get"() {
        setupData()

        expect:
        medecineService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Medecine> medecineList = medecineService.list(max: 2, offset: 2)

        then:
        medecineList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        medecineService.count() == 5
    }

    void "test delete"() {
        Long medecineId = setupData()

        expect:
        medecineService.count() == 5

        when:
        medecineService.delete(medecineId)
        sessionFactory.currentSession.flush()

        then:
        medecineService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Medecine medecine = new Medecine()
        medecineService.save(medecine)

        then:
        medecine.id != null
    }
}
