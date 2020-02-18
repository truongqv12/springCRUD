package com.truong.app_curd.entity;

import lombok.Data;

import javax.persistence.*;
//@Entity xác định lớp hiện tại là một entity.
//@Table xác định tên bảng ánh xạ sang.
//@Id xác định thuộc tính hiện tại là ID trong bảng CSDL.
//@GeneratedValue xác định kiểu sinh khóa chính, ở đây là AUTO_INCREMENT.
//@Column xác định thuộc tính hiện tại là một cột trong CSDL.

@Entity
@Table(name = "users")
@Data
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) //Id tự động tăng
    private Long id;

    private String name;
    private String email;
    private String phone;

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
