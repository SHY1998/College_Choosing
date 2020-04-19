package com.shy.dao;

import com.shy.eneity.User;

public interface UserDao {
    int loginTest(String name, String password);

    User getUserByName(String name);
}
