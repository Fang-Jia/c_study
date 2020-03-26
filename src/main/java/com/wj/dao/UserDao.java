package com.wj.dao;


import com.wj.entity.User;

import java.util.List;

public interface UserDao {

    boolean addUser(User user);

    List<User> getUserInfo(User user);

//    List<User> getUser(User user);

    void editUser(User user);

    int getNoteCount(User user);
}
