package com.user.demo.service.impl;

import com.user.demo.dao.UserDao;
import com.user.demo.entity.User;
import com.user.demo.service.IUserService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import javax.annotation.Resource;
import java.util.List;

/**
 * Service接口实现类
 */
@Service
public class UserServiceImpl implements IUserService {

    @Resource
    private UserDao userDao;

    @Override
    public List<User> findAll() {
        List<User> users = users = userDao.findAll();
        return users;
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class) //事物
    public void saveUser(User user) {
        userDao.saveUser(user);
    }

}
