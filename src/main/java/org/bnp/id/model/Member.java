package org.bnp.id.model;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.bnp.id.constants.MaritalStatus;
import org.bnp.id.constants.MemberStatus;
import org.bnp.id.model.field.Education;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import java.time.LocalDateTime;
import java.util.List;

/**
 * This the base class for all persons involved with Banal Na Pag-aaral. This contains all the basic contact
 * info.
 *
 * @author Andrew Madrazo
 */
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Entity(name = "members")
public class Member {

    @Id
    @Column(name = "id")
    @GeneratedValue
    private Long id;

    @Column(name = "last_name")
    private String lastName;

    @Column(name = "first_name")
    private String firstName;

    @Column(name = "middle_name")
    private String middleName;

    private String suffix;

    @Column(name = "short_name")
    private String shortName;

    private String address;

    private String city;

    private String state;

    private String zip;

    @ManyToOne
    @JoinColumn(name = "country_id")
    private Country country;

    @Column(name = "home_phone")
    private String homePhone;

    @Column(name = "work_phone")
    private String workPhone;

    private String cellular;

    private String email;

    @ManyToOne
    @JoinColumn(name = "education_id")
    private Education education;

    private String degree;

    private String illness;

    @Column(name = "physical_limitations")
    private String physicalLimitations;

    @Column(name = "dietary_requirements")
    private String dietaryRequirements;

    @Column(name = "dietary_requirements_desc")
    private String dietaryRequirementsDesc;

    @Column(name = "date_of_birth")
    private LocalDateTime dateOfBirth;

    @Column(name = "marital_status")
    @Enumerated(EnumType.STRING)
    private MaritalStatus maritalStatus;

    @Column(name = "member_status")
    @Enumerated(EnumType.STRING)
    private MemberStatus memberStatus;

    @Column(name = "gender")
    private Character gender;

    private String religion;

    @ManyToOne
    @JoinColumn(name = "contact_id")
    private Member contact;

    @ManyToOne
    @JoinColumn(name = "parish_id")
    private Parish parish;

    @Column(name = "date_created")
    @CreationTimestamp
    private LocalDateTime dateCreated;

    @Column(name = "date_updated")
    @UpdateTimestamp
    private LocalDateTime dateUpdated;

    @Column(name = "barcode_id", nullable = false, unique = true)
    private String barcodeId;

    @ManyToOne
    @JoinColumn(name = "chapter_id")
    private Chapter chapter;

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "members_class_info", joinColumns = @JoinColumn(name = "members_id"),
               inverseJoinColumns = @JoinColumn(name = "class_info_id"))
    private List<ClassInfo> classes;

    @ManyToOne
    @JoinColumn(name = "sponsor_id")
    private Member sponsor;

    @Column(name = "date_adorer")
    private LocalDateTime dateAdorer;

    @Column(name = "date_hirang")
    private LocalDateTime dateHirang;

    @Column(name = "date_council")
    private LocalDateTime dateCouncil;

    @Column(name = "is_active")
    private boolean isActive;

    @Column(name = "notes")
    private String notes;

    @Override
    public String toString() {

        ObjectMapper objMapper = new ObjectMapper();
        objMapper.registerModule(new JavaTimeModule());
        objMapper.disable(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS);

        try {
            return objMapper.writeValueAsString(this);
        } catch (JsonProcessingException e) {
            return "Member@" + this.hashCode();
        }
    }
}
