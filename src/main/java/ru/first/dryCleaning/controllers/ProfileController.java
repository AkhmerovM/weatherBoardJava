package ru.first.dryCleaning.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import ru.first.dryCleaning.model.Post;
import ru.first.dryCleaning.model.User;
import ru.first.dryCleaning.service.IUserService;

import java.util.List;

@Controller
@RequestMapping(value = "/profile")
public class ProfileController {
    @Autowired
    private IUserService userService;
    @GetMapping("/cabinet")
    public String index(Model model) {
        Long userId = userService.getAuthUserId();
        if (userId != null) {
            User user = userService.findUserById(userId);
            model.addAttribute("user", user);
            return "/profile/cabinet";
        }

        return "redirect:/";
    }
}
