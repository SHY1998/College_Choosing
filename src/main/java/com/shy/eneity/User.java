package com.shy.eneity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

@Data
@Entity
@JsonIgnoreProperties({"hibernateLazyInitializer","handler"})
@Table(name = "user")
public class User implements Serializable {
    @Id
    @Column(name ="username" )
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private String  username;

    private String password;

    private int level;

    private String email;

    private int phone;


}
