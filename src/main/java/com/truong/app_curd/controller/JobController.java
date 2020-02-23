package com.truong.app_curd.controller;

import com.truong.app_curd.service.JobService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;


@RestController
@RequestMapping(value = "/api")
@Slf4j
@RequiredArgsConstructor
public class JobController {
    @Autowired
    private JobService jobService;

    @GetMapping(value = "/job/list")
    private ResponseEntity<Object> getEmployees(
    ) {
        return ResponseEntity.ok(jobService.getAllJob());
    }

}
