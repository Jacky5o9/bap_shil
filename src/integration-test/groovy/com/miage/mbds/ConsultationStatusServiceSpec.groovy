package com.miage.mbds

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class ConsultationStatusServiceSpec extends Specification {

    ConsultationStatusService consultationStatusService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new ConsultationStatus(...).save(flush: true, failOnError: true)
        //new ConsultationStatus(...).save(flush: true, failOnError: true)
        //ConsultationStatus consultationStatus = new ConsultationStatus(...).save(flush: true, failOnError: true)
        //new ConsultationStatus(...).save(flush: true, failOnError: true)
        //new ConsultationStatus(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //consultationStatus.id
    }

    void "test get"() {
        setupData()

        expect:
        consultationStatusService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<ConsultationStatus> consultationStatusList = consultationStatusService.list(max: 2, offset: 2)

        then:
        consultationStatusList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        consultationStatusService.count() == 5
    }

    void "test delete"() {
        Long consultationStatusId = setupData()

        expect:
        consultationStatusService.count() == 5

        when:
        consultationStatusService.delete(consultationStatusId)
        sessionFactory.currentSession.flush()

        then:
        consultationStatusService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        ConsultationStatus consultationStatus = new ConsultationStatus()
        consultationStatusService.save(consultationStatus)

        then:
        consultationStatus.id != null
    }
}
