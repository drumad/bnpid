package org.bnp.id.model;

import org.bnp.id.model.field.Name;

import java.sql.Date;

/**
 * This is the class that will hold the chairperson's info. There shall only be one static _instance of this.
 * Cannot be instantiated, nor modified. All info is static and final.
 */
public class Chairperson extends org.bnp.id.model.Member {

    public static Chairperson _instance = new Chairperson();

    private Chairperson() {
        this.setLastName("Stuart");
        this.setFirstName("Salvacion");
        this.setMiddleName("Aguillon");
        this.setShortName("Ate Salve");
        this.setDateOfBirth(Date.valueOf("March 14, 1947"));
        this.setSex('F');
        this.setDateAdorer(Date.valueOf("April 17, 1968"));
        this.setDateHirang(Date.valueOf("April 17, 1968"));
        this.setDateCouncil(Date.valueOf("April 17, 1968"));
    }

    public static Chairperson getInstance() {
        return _instance;
    }
}
