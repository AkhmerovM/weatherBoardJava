package ru.first.dryCleaning.controllers;

import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import ru.first.dryCleaning.repository.FeedbackRepository;
import ru.first.dryCleaning.service.FeedbackServiceImpl;


@Controller
public class FeedbackController {
    @Autowired
    private FeedbackServiceImpl feedbackService;
    @GetMapping("/feedback")
    public String feedback() {
        return "feedback/feedback";
    }
    @PostMapping("/feedback")
    public String feedbackPost(String email, String name, String text) {
        feedbackService.addFeedback(email, name, text);
        return "feedback/successful";
    }
    @GetMapping("/feedbacks")
    public String feedbacks(Model model) {
        model.addAttribute("feedbacks", feedbackService.list());
        return "feedback/list";
    }
}
