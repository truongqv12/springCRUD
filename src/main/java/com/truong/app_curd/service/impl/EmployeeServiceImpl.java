package com.truong.app_curd.service.impl;

import com.truong.app_curd.entity.Employee;
import com.truong.app_curd.entity.User;
import com.truong.app_curd.repository.EmployeeRepository;
import com.truong.app_curd.repository.UserRepository;
import com.truong.app_curd.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class EmployeeServiceImpl implements EmployeeService {
    @Autowired
    private EmployeeRepository employeeRepository;

    @Override
    public List<Employee> getAllEmployee(int limit, int offset) {
        return Optional.of(limit)
                .map(value -> employeeRepository.findAll(PageRequest.of(offset - 1, value)).getContent())
                .orElseGet(() -> employeeRepository.findAll()
        );
    }

    @Override
    public void saveEmployee(Employee user) {

    }

    @Override
    public void deleteEmployee(Long id) {

    }

    @Override
    public Optional<Employee> findEmployeeById(Long id) {
        return Optional.empty();
    }
}
