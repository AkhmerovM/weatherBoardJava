package ru.first.dryCleaning.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.first.dryCleaning.model.Feedback;
import ru.first.dryCleaning.repository.FeedbackRepository;

import java.util.List;
@Service
public class FeedbackServiceImpl implements IFeedbackService {
    @Autowired
    private FeedbackRepository feedbackRepository;
    @Override
    public void addFeedback(String email, String name, String text) {
        feedbackRepository.save(new Feedback(email, name, text));
    }

    @Override
    public Feedback getFeedbackById(Long id) {
        if (feedbackRepository.existsById(id)) {
            return  feedbackRepository.getById(id);
        }
        return null;
    }

    @Override
    public List<Feedback> list() {
        return feedbackRepository.findAll();
    }
}
