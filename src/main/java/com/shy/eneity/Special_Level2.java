package com.shy.eneity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

/**
 * 专业类目表
 */

@Data
@Entity
@JsonIgnoreProperties({"hibernateLazyInitializer","handler"})
@Table(name = "special_level2")
public class Special_Level2 implements Serializable {

    @Id
    @Column(name = "level2_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer level2_id;


    @Column(name = "name")
    private String name;

    @Column(name = "level1_id")
    private Integer level1_id;

}
