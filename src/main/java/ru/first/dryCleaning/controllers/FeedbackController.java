package ru.first.dryCleaning.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import ru.first.dryCleaning.service.FeedbackServiceImpl;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;


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
        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        Date date = new Date();
        feedbackService.addFeedback(email, name, text, dateFormat.format(date));
        return "redirect:/feedback/successful";
    }
    @GetMapping("/feedback/successful")
    public String successful() {
        return "feedback/successful";
    }
}
