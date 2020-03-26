package com.wj.service;

import com.wj.dao.UserDao;
import com.wj.entity.User;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
public class UserService {

//    注入userDao属性
    private UserDao userDao;

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    /**
     * 添加用户
     * @param user
     * @return
     */
    public boolean add(User user){
        return userDao.addUser(user);
    }

    /**
     * 判断用户输入的账号和密码是否正确
     * @param user
     * @return
     */
    public boolean loginStatus(User user) {
        List<User> list = userDao.getUserInfo(user);
//        如果数据库中没有该用户，则list的size为0
        if (list.size() == 0){
            return false;
        }

//        判断用户密码是否正确
        User user1 = list.get(0);
        if (user.getPassword().equals(user1.getPassword())){
            return true;
        }else {
            return false;
        }
    }

    /**
     * 获取用户信息
     * @return
     */
    public List<User> getUserInfo(User user) {
        return userDao.getUserInfo(user);
    }

    /**
     * 编辑用户信息
     * @param user
     */
    public void editUser(User user) {
        userDao.editUser(user);
    }

    /**
     * 获取该用户的标签数
     * @param user
     * @return
     */
    public int getNoteCount(User user) {
        return userDao.getNoteCount(user);
    }
}
