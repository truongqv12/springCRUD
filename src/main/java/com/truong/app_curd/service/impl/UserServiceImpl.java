package com.truong.app_curd.service.impl;

import com.truong.app_curd.entity.User;
import com.truong.app_curd.repository.UserRepository;
import com.truong.app_curd.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserRepository userRepository;

    @Override
    public List<User> getAllUser(int limit, int offset) {
//        return (List<User>) userRepository.findAll();
        return Optional.of(limit)
                .map(
                        value -> userRepository.findAll(PageRequest.of(offset, value)).getContent())
                .orElseGet(() -> userRepository.findAll()
                );
    }

    @Override
    public void saveUser(User user) {
        userRepository.save(user);
    }

    @Override
    public void deleteUser(Long id) {
        userRepository.deleteById(id);
    }

    @Override
    public Optional<User> findUserById(Long id) {
        return userRepository.findById(id);
    }
}
