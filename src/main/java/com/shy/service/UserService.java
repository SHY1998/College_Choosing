package com.shy.service;

import com.shy.eneity.User;

public interface UserService {
    int loginTest(String name, String password);

    User getUserByName(String name);
}
