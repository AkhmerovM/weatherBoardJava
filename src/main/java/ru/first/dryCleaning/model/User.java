package ru.first.dryCleaning.model;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "user", schema = "public")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(columnDefinition = "id")
    private Long id;

    @Column(name = "email")
    private String email;

    @Column(name = "firstname")
    private String firstname;

    @Column(name = "lastname")
    private String lastname;

    @Column(name = "is_man")
    private Boolean isMan;

    @Column(name = "password")
    private String password;

    @Column(name = "role")
    private String role;

    @Column(name = "is_active")
    private Boolean isActive;
}
