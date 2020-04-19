package com.shy.service.impl;

import com.shy.dao.UserDao;
import com.shy.eneity.User;
import com.shy.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    @Override
    public int loginTest(String name, String password)
    {
        int backCode = userDao.loginTest(name,password);
        return backCode;
    }

    @Override
    public User getUserByName(String name)
    {
        User user = userDao.getUserByName(name);
        return user;
    }
}
