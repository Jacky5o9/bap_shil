package com.miage.mbds

import grails.gorm.services.Service

@Service(Medecine)
interface MedecineService {

    Medecine get(Serializable id)

    List<Medecine> list(Map args)

    Long count()

    void delete(Serializable id)

    Medecine save(Medecine medecine)

}