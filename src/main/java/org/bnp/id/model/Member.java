package org.bnp.id.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.bnp.id.constants.EducationLevel;
import org.bnp.id.constants.MaritalStatus;
import org.bnp.id.constants.MemberStatus;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import java.util.Date;
import java.util.List;

/**
 * This the base class for all persons involved with Banal Na Pag-aaral. This contains all the basic contact
 * info.
 *
 * @author Andrew Madrazo
 */
@Getter
@Setter
@NoArgsConstructor
@Entity(name = "members")
public class Member {

    @Id
    @Column(name = "id")
    private Long id;

    @Column(name = "last_name")
    private String lastName;

    @Column(name = "first_name")
    private String firstName;

    @Column(name = "middle_name")
    private String middleName;

    @Column(name = "short_name")
    private String shortName;

    @Column(name = "address")
    private String address;

    private String city;

    private String state;

    private int zip;

    @ManyToOne
    @JoinColumn(name = "country_id")
    private Country country;

    @Column(name = "home_phone")
    private String homePhone;

    @Column(name = "work_phone")
    private String workPhone;

    private String cellular;

    private String email;

    @Column(name = "education_level")
    private int educationLevel;

    private String degree;

    private String illness;

    @Column(name = "physical_limitations")
    private String physicalLimitations;

    @Column(name = "dietary_requirements")
    private String dietaryRequirements;

    @Column(name = "dietary_requirements_desc")
    private String dietaryRequirementsDesc;

    @Column(name = "date_of_birth")
    private Date dateOfBirth;

    @Column(name = "marital_status")
    @Enumerated(EnumType.STRING)
    private MaritalStatus maritalStatus;

    @Column(name = "member_status")
    @Enumerated(EnumType.STRING)
    private MemberStatus memberStatus;

    @Column(name = "gender")
    private Character sex;

    private String religion;

    @OneToOne
    @JoinColumn(name = "contact_id")
    private Member contact;

    @OneToOne
    @JoinColumn(name = "parish_id")
    private Parish parish;

    @Column(name = "briefed_about_bnp")
    private Boolean briefedAboutBnp;

    @Column(name = "date_created")
    @CreationTimestamp
    private Date dateCreated;

    @Column(name = "date_updated")
    @UpdateTimestamp
    private Date dateUpdated;

    @Column(name = "barcode_id", nullable = false, unique = true)
    private String barcodeId;

    @OneToOne
    @JoinColumn(name = "chapter_id")
    private Chapter chapter;

    @ManyToMany
    private List<ClassInfo> classes;

    @ManyToOne
    @JoinColumn(name = "sponsor_id")
    private Member sponsor;

    @Column(name = "date_adorer")
    private Date dateAdorer;

    @Column(name = "date_hirang")
    private Date dateHirang;

    @Column(name = "date_council")
    private Date dateCouncil;

    @Override
    public String toString() {

        return "";
    }
}
