package ru.first.dryCleaning.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import ru.first.dryCleaning.service.UserDetailsServiceImpl;

@Controller
public class AuthController {
    @GetMapping ("login")
    public String login() {
        return "auth/login";
    }

}
