package com.truong.app_curd.controller;

import com.truong.app_curd.entity.User;
import com.truong.app_curd.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/")
    public String index(Model model) {
//        List<User> users = userService.getAllUser();
//        model.addAttribute("users", users);
        return "index";
    }

    @GetMapping(value = "/api/list")
    private ResponseEntity<Object> getApplications(
            @RequestParam(value = "limit", defaultValue = "20") int limit,
            @RequestParam(value = "offset", defaultValue = "0") int offset
    ) {
        return ResponseEntity.ok(userService.getAllUser(limit, offset));
    }
}
