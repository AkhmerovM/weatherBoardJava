package ru.first.dryCleaning.model;

import lombok.AllArgsConstructor;
import lombok.Data;

import javax.persistence.*;
@Entity(name = "feedback")
@Data
public class Feedback {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "name")
    private String name;
    @Column(name = "email")
    private String email;
    @Column(name = "text")
    private String text;
    @Column(name = "date")
    private String date;

    public Feedback(String email, String name, String text, String date) {
        this.email = email;
        this.name = name;
        this.text = text;
        this.date = date;
    }

    public Feedback() {

    }
}
