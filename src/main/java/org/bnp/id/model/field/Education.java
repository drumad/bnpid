package org.bnp.id.model.field;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Getter
@Setter
@Entity(name = "education_level")
public class Education {

    @Id
    @Column(name = "id", nullable = false)
    private Integer id;

    private String name;

    private String description;
}
