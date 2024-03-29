package com.miage.mbds

enum ConsultationStatus {
    CREATED(0),
    ASSIGNED(1),
    COMPLETE(2),
    REJECTED(3)

    final Integer status

    private ConsultationStatus(Integer status)
    {
        this.status = status
    }
}