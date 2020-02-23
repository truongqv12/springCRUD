package com.truong.app_curd.service.impl;

import com.truong.app_curd.entity.Job;
import com.truong.app_curd.repository.JobRepository;
import com.truong.app_curd.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class JobServiceImpl implements JobService {
    @Autowired
    private JobRepository jobRepository;

    @Override
    public List<Job> getAllJob() {
        return jobRepository.findAll();
    }

}
