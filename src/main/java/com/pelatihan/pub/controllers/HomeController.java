package com.pelatihan.pub.controllers;

import com.pelatihan.pub.models.Users;
import com.pelatihan.pub.repositories.UsersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/home")
public class HomeController {

    @Autowired
    UsersRepository usersRepository;

    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("title", "Welcome to Spring Boot");
        return "home";
    }

    @GetMapping("/users")
    @ResponseBody
    public Object getUsers() {
        List<Users> users = new ArrayList<>();
        try {
            users = usersRepository.findAll();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return users;
    }
}
