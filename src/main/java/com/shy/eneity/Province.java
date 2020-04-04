package com.shy.eneity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

@Data
@Entity
@JsonIgnoreProperties({"hibernateLazyInitializer","handler"})
@Table(name = "province_infomation")

public class Province implements Serializable {

    @Id
    @Column(name ="province_id" )
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int province_id;


    @Column(name = "province_name")
    private String province_name;

}
