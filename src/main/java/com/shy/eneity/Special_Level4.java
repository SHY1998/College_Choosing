package com.shy.eneity;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Data
@Table(name = "special_level4")
public class Special_Level4 implements Serializable {

    @Id
    @Column(name = "level4_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String level4_id;


    @Column(name = "major_name")
    private String major_name;


    @Column(name = "degree")
    private String degree;


    @Column(name = "categories")
    private String categories;

//    @ManyToOne
//    @JoinColumn(name = "categories")
//    private Special_Level2 special_level2;



    @Column(name = "major_categories")
    private String major_categories;


    @Column(name = "introduce")
    private String introduce;


    @Column(name = "works")
    private String works;


    @Column(name = "major_heat")
    private String major_heat;


    @Column(name = "task")
    private String task;


    @Column(name = "ben")
    private String ben;


    @Column(name = "school_length")
    private String school_length;


    @Column(name = "major_id")
    private Integer major_id;

}
