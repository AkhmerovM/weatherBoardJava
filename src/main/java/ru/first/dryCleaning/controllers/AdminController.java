package ru.first.dryCleaning.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import ru.first.dryCleaning.model.Post;
import ru.first.dryCleaning.service.FeedbackServiceImpl;
import ru.first.dryCleaning.service.PostServiceImpl;

import java.util.Collections;
import java.util.List;

@Controller
@RequestMapping("admin")
public class AdminController {
    @Autowired
    private FeedbackServiceImpl feedbackService;
    @Autowired
    private PostServiceImpl  postService;
    @GetMapping("/cabinet")
    public String cabinet() {
        return "admin/cabinet";
    }
    @GetMapping("/feedback")
    public String feedbacks(Model model) {
        List<?> list = feedbackService.list();
        List<?> shallowCopy = list.subList(0, list.size());
        Collections.reverse(shallowCopy);
        model.addAttribute("feedbacks", shallowCopy);
        return "/admin/feedback";
    }
    @GetMapping("/posts")
    public String posts(Model model) {
        model.addAttribute("posts",  postService.list());
        return "/admin/posts";
    }
    @GetMapping("/posts/create")
    public String create() {
        return "/admin/create-post";
    }
    @PostMapping("/posts/create")
    public String createPost(String title, String text) {
        postService.addPost(title, text);
        return "redirect:/admin/posts";
    }

    @RequestMapping("/posts/update/{id}")
    public String update(@PathVariable(value="id") String id, Model model) {
        Post post = postService.getPostById(Long.parseLong(id));
        if (post != null) {
            model.addAttribute("post", post);
        }
        return "/admin/update-post";
    }
    @PostMapping("/posts/update/{id}")
    public String updatePost(@PathVariable(value="id") String id, String text) {
        postService.updatePost(Long.parseLong(id), text);
        return "redirect:/admin/posts";
    }
    @RequestMapping("/posts/remove/{id}")
    public String remove(@PathVariable(value="id") String id, Model model) {
        postService.removePost(Long.parseLong(id));
        return "redirect:/admin/posts";
    }
}
