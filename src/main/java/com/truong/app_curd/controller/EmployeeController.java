package com.truong.app_curd.controller;


import com.truong.app_curd.entity.Employee;
import com.truong.app_curd.repository.EmployeeRepository;
import com.truong.app_curd.service.EmployeeService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.Optional;

@RestController
@RequestMapping(value = "/api")
@Slf4j
@RequiredArgsConstructor
public class EmployeeController {
    @Autowired
    private EmployeeService employeeService;
    @Autowired
    EmployeeRepository employeeRepository;

    @GetMapping(value = "")
    public String index() {
        return "employee";
    }

    @GetMapping(value = "/employee/list")
    public ResponseEntity<Object> getEmployees(
            @RequestParam(value = "limit", defaultValue = "10") int limit,
            @RequestParam(value = "page", defaultValue = "1") int page
    ) {
        Sort sort = Sort.by("empId").descending();
        Pageable pageable = PageRequest.of(page - 1, limit, sort);
        return ResponseEntity.ok(employeeService.getAllEmployee(pageable));
    }

    @GetMapping(value = "/employee/{empId}")
    public ResponseEntity<Object> infoEmployees(
            @PathVariable Long empId
    ) {
        Optional<Employee> employee = employeeService.findEmployeeById(empId);
        if (!employee.isPresent()) {
            log.error("Id " + empId + " Không tồn tại");
            return ResponseEntity.badRequest().build();
        }
        return ResponseEntity.ok(employee);
    }

    @DeleteMapping(value = "/employee/{empId}")
    public ResponseEntity<Object> deleteEmployees(
            @PathVariable Long empId
    ) {
        Optional<Employee> employee = employeeService.findEmployeeById(empId);
        if (!employee.isPresent()) {
            log.error("Id " + empId + " Không tồn tại");
            return ResponseEntity.ok(HttpStatus.BAD_REQUEST);
        } else {
            employeeService.deleteEmployee(empId);
            return ResponseEntity.ok(HttpStatus.OK);
        }
    }

    @PostMapping(value = "/employee/save")
    public ResponseEntity<Employee> creatEmployees(@RequestBody Employee employee) {
        Employee _employee = employeeRepository.save(new Employee());
        return new ResponseEntity<>(_employee, HttpStatus.CREATED);
//        return ResponseEntity.ok(employeeService.saveEmployee(employee));
    }
}
