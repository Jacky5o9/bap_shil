package com.miage.mbds

enum Gender {
    MALE('M'),
    FEMALE('F'),
    OTHER('O')

    final String gender

    private Gender(String gender)
    {
        this.gender = gender
    }
}