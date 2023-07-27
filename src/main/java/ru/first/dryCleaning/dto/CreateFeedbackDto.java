package ru.first.dryCleaning.dto;

import lombok.Data;

@Data
public class CreateFeedbackDto {
    private String name;
    private String email;
    private String text;
}
