package org.bnp.id.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;


@Getter
@Setter
@NoArgsConstructor
@Entity(name = "country")
public class Country {

    @Id
    private Integer id;

    @Column
    private String iso;

    @Column
    private String name;

    @Column(name = "nicename")
    private String niceName;

    @Column
    private String iso3;

    @Column(name = "numcode")
    private Integer numCode;

    @Column(name = "phonecode")
    private Integer phoneCode;
}
