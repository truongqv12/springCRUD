package com.truong.app_curd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class DashboardController {

    @GetMapping("/")
    public String index(Model model) {
        return "index";
    }

    @GetMapping(value = "/employee")
    public String employee(Model model) {
        return "employee";
    }

}
