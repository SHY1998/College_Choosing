package com.shy.eneity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Data
@Table(name = "school_infomation")
@JsonIgnoreProperties({"hibernateLazyInitializer","handler"})
public class School_Information implements Serializable {
    @Id
    @Column(name = "school_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer school_id;

    @Column(name = "school_name")
    private String school_name;

    public Integer getSchool_id() {
        return school_id;
    }

    public void setSchool_id(Integer school_id) {
        this.school_id = school_id;
    }

    public String getSchool_name() {
        return school_name;
    }

    public void setSchool_name(String school_name) {
        this.school_name = school_name;
    }

    public String getHome_page() {
        return home_page;
    }

    public void setHome_page(String home_page) {
        this.home_page = home_page;
    }

    @Column(name = "heat_rank")
    private Integer heat_rank;

    @Column(name = "headt_total")
    private Integer headt_total;

    @Column(name = "heat_rank_type")
    private Integer heat_rank_type;

    @Column(name = "level_name")
    private String level_name;

    @Column(name = "type_name")
    private String type_name;

    @Column(name = "belong")
    private String belong;

    @Column(name = "is_211")
    private Integer is_211;

    @Column(name = "School_type")
    private String School_type;

    @Column(name = "city_name")
    private String city_name;

    @Column(name = "country_name")
    private String country_name;

    @Column(name = "dual_clss")
    private Integer dual_clss;

    @Column(name = "province_name")
    private String province_name;

    @Column(name = "nature_name")
    private String nature_name;

//    @Column(name = "province_id")
////    private Integer province_id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "province_id")
    private Province province;


    @Column(name = "city_id")
    private Integer city_id;

    @Column(name = "is_985")
    private Integer is_985;

    @Column(name = "is_top")
    private Integer is_top;

    @Column(name = "home_page")
    private String home_page;

    @Column(name = "school_phone")
    private String school_phone;

    @Column(name = "school_emil")
    private String school_emil;

    @Column(name = "learning_index")
    private String learning_index;

    @Column(name = "life_index")
    private String life_index;

    @Column(name = "empliyment_index")
    private String empliyment_index;

    @Column(name = "composite_score")
    private String composite_score;

    @Column(name = "doctoral_degree")
    private String doctoral_degree;

    @Column(name = "the_master")
    private String the_master;

    @Column(name = "key_discipline")
    private String key_discipline;

    @Column(name = "key_laboratory")
    private String key_laboratory;

    @Column(name = "male_rate")
    private String male_rate;

    @Column(name = "famale_rate")
    private String famale_rate;

    @Column(name = "job_rate")
    private String job_rate;

    @Column(name = "graduation_rate")
    private String graduation_rate;

    @Column(name = "go_abroad_rate")
    private String go_abroad_rate;

    public School_Information() {
    }

    public School_Information(String school_name, Integer heat_rank, Integer headt_total, Integer heat_rank_type, String level_name, String type_name, String belong, Integer is_211, String school_type, String city_name, String country_name, Integer dual_clss, String province_name, String nature_name, Province province, Integer city_id, Integer is_985, Integer is_top, String home_page, String school_phone, String school_emil, String learning_index, String life_index, String empliyment_index, String composite_score, String doctoral_degree, String the_master, String key_discipline, String key_laboratory, String male_rate, String famale_rate, String job_rate, String graduation_rate, String go_abroad_rate) {
        this.school_name = school_name;
        this.heat_rank = heat_rank;
        this.headt_total = headt_total;
        this.heat_rank_type = heat_rank_type;
        this.level_name = level_name;
        this.type_name = type_name;
        this.belong = belong;
        this.is_211 = is_211;
        School_type = school_type;
        this.city_name = city_name;
        this.country_name = country_name;
        this.dual_clss = dual_clss;
        this.province_name = province_name;
        this.nature_name = nature_name;
        this.province = province;
        this.city_id = city_id;
        this.is_985 = is_985;
        this.is_top = is_top;
        this.home_page = home_page;
        this.school_phone = school_phone;
        this.school_emil = school_emil;
        this.learning_index = learning_index;
        this.life_index = life_index;
        this.empliyment_index = empliyment_index;
        this.composite_score = composite_score;
        this.doctoral_degree = doctoral_degree;
        this.the_master = the_master;
        this.key_discipline = key_discipline;
        this.key_laboratory = key_laboratory;
        this.male_rate = male_rate;
        this.famale_rate = famale_rate;
        this.job_rate = job_rate;
        this.graduation_rate = graduation_rate;
        this.go_abroad_rate = go_abroad_rate;
    }
}
