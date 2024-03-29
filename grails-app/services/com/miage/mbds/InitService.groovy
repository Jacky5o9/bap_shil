package com.miage.mbds

import grails.gorm.transactions.Transactional

@Transactional
class InitService {

    def init() {
        // On commence par créer un rôle
        def patientRole = new Role(authority: 'ROLE_PATIENT').save()
        // Création d'un utilisateur de type "PATIENT"
        def patientInstance = new User(firstname: "Baudelaire", lastname: "Balthazar",
                username: "bbalthazar", password: "password", dob: new Date(), weight: 60,
                illustration: new Illustration(name: "grails.svg")).save()
        UserRole.create(patientInstance, patientRole, true)

        def nurseRole = new Role(authority: 'ROLE_NURSE').save()
        def nurseInstance = new User(firstname: "Rodely", lastname: "Douilly",
                username: "rdouilly", password: "password", dob: new Date(), weight: 65,
                illustration: new Illustration(name: "grails.svg")).save()
        UserRole.create(nurseInstance, nurseRole, true)

        def doctorRole = new Role(authority:  'ROLE_DOCTOR').save()
        def doctorInstance = new User(firstname: "Pierre Rubens", lastname: "Milorme",
                username: "prmilorme", password: "password", dob: new Date(), weight: 62,
                illustration: new Illustration(name: "grails.svg")).save()
        UserRole.create(doctorInstance, doctorRole, true)

        // On itère sur les 5 String pour créer 5 pathologies
        ["Grippe","Oreillon","Rubeolle","Rougeole", "Encephalite"].each {
            String pathologyName ->
                new Pathology(name: pathologyName, symptoms: "Ca fait très mal").save(flush:true)
        }

        // On itère sur 5 Strings pour créer 5 médicaments
        ["Paracétamol","Anti inflammatoire", "Vitamine C", "Aspirine", "Morphine"].each {
            String medicineName ->
                new Medecine(name: medicineName).save(flush: true)
        }

        // On crée 5 consultations
        (1..5).each {
            Integer consultIdx ->
                def consultationInstance = new Consultation(creator: nurseInstance, doctor: doctorInstance,
                description: "Il a très mal à la tête $consultIdx", diagnostic: "Il ne boit pas assez d'eau $consultIdx")

                // Pour chaque consultation on ajoute toute les pathologies
                Pathology.list().each {
                    consultationInstance.addToPathologies(it)
                }

                // Et on ajoute deux prescriptions par consultation
                (1..2).each {
                    Integer prescriptionIdx ->
                        def prescriptionInstance = new Prescription(instructions: "[$prescriptionIdx] Boire au moins deux litres d'eau par jour")
                        // On ajoute tous les médicaments à chaque prescription
                        Medecine.list().each {
                            prescriptionInstance.addToMedecines(it)
                        }
                        // On rattache la prescription à la consultation
                        consultationInstance.addToPrescriptions(prescriptionInstance)
                }
                // on rattache la consultation au patient
                patientInstance.addToConsultations(consultationInstance)
        }
    }
}
