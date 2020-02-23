package com.truong.app_curd.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import javax.persistence.*;
import java.util.Collection;
//@Entity xác định lớp hiện tại là một entity.
//@Table xác định tên bảng ánh xạ sang.
//@Id xác định thuộc tính hiện tại là ID trong bảng CSDL.
//@GeneratedValue xác định kiểu sinh khóa chính, ở đây là AUTO_INCREMENT.
//@Column xác định thuộc tính hiện tại là một cột trong CSDL.

@Entity
@Table(name = "job")
@Data
public class Job {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) //Id tự động tăng
    // Không dùng dấu gạch dưới
    private Long id;
    private String name;

    @OneToMany(mappedBy = "job", cascade = CascadeType.ALL)
    @JsonIgnore
    private Collection<Employee> employees;

    public Job(){}


}
