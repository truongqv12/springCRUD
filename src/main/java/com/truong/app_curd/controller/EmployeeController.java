package com.truong.app_curd.controller;


import com.truong.app_curd.entity.Employee;
import com.truong.app_curd.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping(value = "/employee")
public class EmployeeController {
    @Autowired

    private EmployeeService employeeService;
    @GetMapping(value = "")
    public String index(
            @RequestParam(name = "limit", required = false, defaultValue = "20") int limit,
            @RequestParam(name = "offset", required = false, defaultValue = "1") int offset,
            Model model) {
        List<Employee> employees = employeeService.getAllEmployee(limit, offset);
        model.addAttribute("employees", employees);
        return "employee";
    }

    @GetMapping(value = "/api/list")
    private ResponseEntity<Object> getEmployees(
            @RequestParam(value = "limit", defaultValue = "20") int limit,
            @RequestParam(value = "offset", defaultValue = "1") int offset
    ) {
        return ResponseEntity.ok(employeeService.getAllEmployee(limit, offset));
    }
}
