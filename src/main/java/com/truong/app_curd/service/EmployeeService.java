package com.truong.app_curd.service;

import com.truong.app_curd.entity.Employee;

import java.util.List;
import java.util.Optional;

public interface EmployeeService {

    List<Employee> getAllEmployee(int limit, int offset);

    void saveEmployee(Employee user);

    void deleteEmployee(Long id);

    Optional<Employee> findEmployeeById(Long id);
}
