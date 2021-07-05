package ru.first.dryCleaning.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import ru.first.dryCleaning.model.Post;
import ru.first.dryCleaning.service.IPostService;

import java.util.List;

@Controller
public class PostController {
    @Autowired
    private IPostService postService;
    @GetMapping("/posts")
    public String index(Model model) {
        List<Post> posts = postService.list();
        model.addAttribute("posts",  posts);
        return "/post/posts";
    }
    @GetMapping("/posts/create")
    public String create() {
        return "/post/create";
    }
    @PostMapping("/posts/create")
    public String createPost(String text) {
        postService.addPost(text);
        return "redirect:/posts";
    }
    @RequestMapping("/posts/update/{id}")
    public String update(@PathVariable(value="id") String id, Model model) {
        Post post = postService.getPostById(Long.parseLong(id));
        if (post != null) {
            model.addAttribute("post", post);
        }
        return "post/update";
    }
    @PostMapping("/posts/update/{id}")
    public String updatePost(@PathVariable(value="id") String id, String text) {
        postService.updatePost(Long.parseLong(id), text);
        return "redirect:/posts";
    }
    @RequestMapping("/posts/remove/{id}")
    public String remove(@PathVariable(value="id") String id, Model model) {
        postService.removePost(Long.parseLong(id));
        return "redirect:/posts";
    }
}
