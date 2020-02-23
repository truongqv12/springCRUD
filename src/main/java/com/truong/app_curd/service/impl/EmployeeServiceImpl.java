package com.truong.app_curd.service.impl;

import com.truong.app_curd.entity.Employee;
import com.truong.app_curd.entity.User;
import com.truong.app_curd.repository.EmployeeRepository;
import com.truong.app_curd.repository.UserRepository;
import com.truong.app_curd.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class EmployeeServiceImpl implements EmployeeService {
    @Autowired
    private EmployeeRepository employeeRepository;

    @Override
    public Page<Employee> getAllEmployee(Pageable pageable) {
        return (Page<Employee>) employeeRepository.findAll(pageable);
    }

    @Override
    public Employee saveEmployee(Employee employee) {
        return employeeRepository.save(employee);
    }

    @Override
    public void deleteEmployee(Long id) {
        employeeRepository.deleteById(id);
    }

    @Override
    public Optional<Employee> findEmployeeById(Long id) {
            return employeeRepository.findById(id);
    }
}
