package org.bnp.id.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.bnp.id.constants.ClassGroup;
import org.bnp.id.constants.ClassType;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.util.Date;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity(name = "class_info")
public class ClassInfo {

    @Id
    @GeneratedValue
    private Long id;

    @Column(name = "classtype")
    private ClassType classType;

    @Column(name = "location")
    private String classLocation;

    @Column(name = "begindate")
    private Date beginDate;

    @Column(name = "enddate")
    private Date endDate;

    @Column(name = "classno")
    private String classNo;

    @Column(name = "classgroup")
    private ClassGroup classGroup;

    @Column(name = "notes")
    private String notes;
}