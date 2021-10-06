package ru.first.dryCleaning.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import ru.first.dryCleaning.model.User;
import ru.first.dryCleaning.service.IUserService;

import java.util.Collections;

@Controller
@RequestMapping(value = "/profile")
public class ProfileController {
    @Autowired
    private IUserService userService;

    @GetMapping("/cabinet")
    public String index(Model model) {
        User user = userService.getAuthUser();
        if (user != null) {
            model.addAttribute("user", user);
            return "/profile/cabinet";
        }

        return "redirect:/";
    }

    @PostMapping("/rename")
    public String rename(String firstname, String lastname, String role) {
        User user = userService.getAuthUser();
        if (user != null) {
            user.setFirstname(firstname);
            user.setLastname(lastname);

            if (!role.equals(user.getRole())) {
                user.setRole(role);
                Authentication auth = SecurityContextHolder.getContext().getAuthentication();

                Authentication newAuth = new
                        UsernamePasswordAuthenticationToken(auth.getPrincipal(), auth.getCredentials(), Collections.singletonList(new SimpleGrantedAuthority(role)));

                SecurityContextHolder.getContext().setAuthentication(newAuth);
            }
            userService.saveUser(user);

        }
        return "redirect:/profile/cabinet";
    }
}
