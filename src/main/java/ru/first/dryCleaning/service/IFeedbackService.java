package ru.first.dryCleaning.service;

import ru.first.dryCleaning.model.Feedback;

import java.util.List;

public interface IFeedbackService {

    public void addFeedback(String email, String name, String text);
    public Feedback getFeedbackById(Long id);
    public List<Feedback> list();
}
