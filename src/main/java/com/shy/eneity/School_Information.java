package com.shy.eneity;

import javax.persistence.*;

@Entity
@Table(name = "school_infomation")
public class School_Information {
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

    @Column(name = "province_id")
    private Integer province_id;

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




}
