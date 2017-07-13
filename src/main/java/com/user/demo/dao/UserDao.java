package com.user.demo.dao;

import com.user.demo.entity.User;
import org.springframework.stereotype.Repository;
import java.util.List;

/**
 * 操作数据的DAO
 */
@Repository
public interface UserDao {
    //查询全部User
    List<User> findAll();

    //保存User
    void saveUser(User user);
}
