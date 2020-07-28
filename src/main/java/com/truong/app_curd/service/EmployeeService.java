package com.truong.app_curd.service;

import com.truong.app_curd.entity.Employee;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.Optional;

public interface EmployeeService {

    Page<Employee> getAllEmployee(Pageable pageable);

    Employee saveEmployee(Employee employee);

    void deleteEmployee(Long id);

    Employee updateEmployeee(Employee employee);

    Optional<Employee> findEmployeeById(Long id);
}
