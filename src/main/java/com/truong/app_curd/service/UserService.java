package com.truong.app_curd.service;

import com.truong.app_curd.entity.User;

import java.util.List;
import java.util.Optional;

public interface UserService {
    List<User> getAllUser(int limit, int offset);

    void saveUser(User user);

    void deleteUser(Long id);

    Optional<User> findUserById(Long id);
}
