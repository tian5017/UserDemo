package com.user.demo.service;

import com.user.demo.entity.User;
import java.util.List;

/**
 * Service接口
 */
public interface IUserService {
    List<User> findAll();

    void saveUser(User user);
}
