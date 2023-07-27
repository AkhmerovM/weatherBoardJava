package ru.first.dryCleaning.dto;

import lombok.Data;

@Data
public class Person {
    private String firstName;
    private String lastName;

    public Person() {
    }
}