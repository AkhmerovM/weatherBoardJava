package ru.first.dryCleaning.controllers;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import ru.first.dryCleaning.dto.CreateFeedbackDto;
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
    @PostMapping(value = "/feedback", consumes = {MediaType.APPLICATION_JSON_VALUE})
    public String feedbackPost(@RequestBody String str) throws JsonProcessingException {
        ObjectMapper mapper = new ObjectMapper();
        CreateFeedbackDto createFeedbackDto = mapper.readValue(str, CreateFeedbackDto.class);

        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        Date date = new Date();
        feedbackService.addFeedback(createFeedbackDto.getEmail(), createFeedbackDto.getName(), createFeedbackDto.getText(), dateFormat.format(date));
        return "redirect:/feedback/successful";
    }
    @GetMapping("/feedback/successful")
    public String successful() {
        return "feedback/successful";
    }
}
