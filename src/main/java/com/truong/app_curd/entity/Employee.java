package com.truong.app_curd.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;
//@Entity xác định lớp hiện tại là một entity.
//@Table xác định tên bảng ánh xạ sang.
//@Id xác định thuộc tính hiện tại là ID trong bảng CSDL.
//@GeneratedValue xác định kiểu sinh khóa chính, ở đây là AUTO_INCREMENT.
//@Column xác định thuộc tính hiện tại là một cột trong CSDL.

@Entity
@Table(name = "employees")
@Data
public class Employee {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) //Id tự động tăng
    // Không dùng dấu gạch dưới
    private Long empId;

    private String empName;
    private String empPhone;
    private String empAddress;
    private String empEmail;
    private String empBirthday;
    @Column(nullable = false)
    private Long jobId;
    private Long managerId;

    @Temporal(TemporalType.DATE)
    private Date hireDate;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "jobId", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
    @JsonIgnore
    private Job job;
    @JsonIgnore
    public String getJobName() { return job.getName(); }
    public Employee() { }

    //get name
//    public String getJobName() { return job.getName(); }
//    @Column(name = "name")
//    private String name;
//
//    @Column(name = "email", unique = true)
//    private String email;
//
//    @Column(name = "phone")
//    private String phone;
//
//    public User() {}
//
//    public User(String name, String email) {
//        this.name = name;
//        this.email = email;
//        this.phone = phone;
//    }
//    public Long getId() {
//        return id;
//    }
//
//    public void setId(Long id) {
//        this.id = id;
//    }
//
//    public String getName() {
//        return name;
//    }
//
//    public void setName(String name) {
//        this.name = name;
//    }
//
//    public String getEmail() {
//        return email;
//    }
//
//    public void setEmail(String email) {
//        this.email = email;
//    }
//
//    public String getPhone() {
//        return phone;
//    }
//
//    public void setPhone(String phone) {
//        this.phone = phone;
//    }
}
