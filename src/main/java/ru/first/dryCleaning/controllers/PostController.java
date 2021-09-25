package ru.first.dryCleaning.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import ru.first.dryCleaning.model.Post;
import ru.first.dryCleaning.service.IPostService;

import java.util.List;
@RequestMapping(value = "/posts")
@Controller
public class PostController {
    @Autowired
    private IPostService postService;
    @GetMapping("")
    public String index(Model model) {
        List<Post> posts = postService.list();
        model.addAttribute("posts",  posts);
        return "/post/posts";
    }
    @GetMapping("/{id}")
    public String index(@PathVariable(value="id") String id, Model model) {
        Post post = postService.getPostById(Long.parseLong(id));
        if (post != null) {
            model.addAttribute("post", post);
        }
        return "post/index";
    }
}
