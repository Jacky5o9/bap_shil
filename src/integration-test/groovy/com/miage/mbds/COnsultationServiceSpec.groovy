package com.miage.mbds

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class COnsultationServiceSpec extends Specification {

    COnsultationService COnsultationService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new COnsultation(...).save(flush: true, failOnError: true)
        //new COnsultation(...).save(flush: true, failOnError: true)
        //COnsultation COnsultation = new COnsultation(...).save(flush: true, failOnError: true)
        //new COnsultation(...).save(flush: true, failOnError: true)
        //new COnsultation(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //COnsultation.id
    }

    void "test get"() {
        setupData()

        expect:
        COnsultationService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<COnsultation> COnsultationList = COnsultationService.list(max: 2, offset: 2)

        then:
        COnsultationList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        COnsultationService.count() == 5
    }

    void "test delete"() {
        Long COnsultationId = setupData()

        expect:
        COnsultationService.count() == 5

        when:
        COnsultationService.delete(COnsultationId)
        sessionFactory.currentSession.flush()

        then:
        COnsultationService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        COnsultation COnsultation = new COnsultation()
        COnsultationService.save(COnsultation)

        then:
        COnsultation.id != null
    }
}
