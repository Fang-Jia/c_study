package com.wj.dao.impl;

import com.wj.dao.UserDao;
import com.wj.entity.User;
import org.springframework.orm.hibernate5.HibernateTemplate;

import java.util.List;

public class UserDaoImpl implements UserDao {

    private HibernateTemplate hibernateTemplate;

    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }

    /**
     * 添加用户
     * @param user
     * @return
     */
    @Override
    public boolean addUser(User user) {
//        先向数据库中查询是否已经有该用户，若是有，则返回给用户错误信息
        List<User> list = (List<User>) hibernateTemplate.find("from User where username = ?",user.getUsername());
        if (list.size() == 0){
            hibernateTemplate.save(user);
            return true;
        }else {
            return false;
        }
    }

    /**
     * 通过姓名查询用户信息
     * @param user
     * @return
     */
    @Override
    public List<User> getUserInfo(User user) {
        return (List<User>) hibernateTemplate.find("from User where username = ?",user.getUsername());
    }



    /**
     * 编辑用户信息
     * @param user
     */
    @Override
    public void editUser(User user) {
        hibernateTemplate.update(user);
    }

    /**
     * 获取该用户的标签数
     * @param user
     * @return
     */
    @Override
    public int getNoteCount(User user) {
        return hibernateTemplate.find("from Note where name = ?",user.getUsername()).size();
    }

}
