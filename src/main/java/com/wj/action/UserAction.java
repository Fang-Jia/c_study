package com.wj.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.wj.entity.User;
import com.wj.service.UserService;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 登录注册 action层
 */
public class UserAction extends ActionSupport implements ModelDriven {

//    导入userService
    private UserService userService;
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

//    封装浏览器传送过来的表单数据，封装到user类中
    private User user = new User();
    @Override
    public Object getModel() {
        return user;
    }

    //    定义获取request属性
    private HttpServletRequest request;

    //    封装向前端传递的数据格式
    private Map<String,Object> map = new HashMap<>();
    public Map<String, Object> getMap() { return map; }
    public void setMap(Map<String, Object> map) { this.map = map; }

    /**
     * 主页
     */
    public String main(){
        return "home";
    }

    /**
     * 登录页面
     */
    public String loginPage(){
        return "loginPage";
    }

    /**
     * 注册页面
     */
    public String registerPage(){
        return "registerPage";
    }

    /**
     * 编辑用户信息界面
     */
    public String edit(){
        return "edit";
    }

    /**
     * 用户信息界面
     */
    public String userPage(){return "userPage";}



    /**
     * 登录
     */
    public String login() throws IOException {
//        如果用户没有输入账号和密码，直接返回登录界面
        if (user.getUsername() == null ||  user.getPassword() == null){
            return "loginPage";
        }else if (user.getUsername().equals("admin") && user.getPassword().equals("admin")){
            HttpServletRequest request = ServletActionContext.getRequest();
            HttpSession session = request.getSession();
            session.setAttribute("username","admin");
            return "admin";
        }

//        判断用户信息是否正确
        boolean status = userService.loginStatus(user);
        if (status){
//            获取HttpServletRequest对象
            HttpServletRequest request = ServletActionContext.getRequest();
//            获取HttpSession对象
            HttpSession session = request.getSession();
//            向HttpSession对象域中设置值，用来存储用户名
            session.setAttribute("username",user.getUsername());
            return "home";
        }else {
            ServletActionContext.getRequest().getSession().setAttribute("msg","您的账号或者密码错误");
            return "loginPage";
        }
    }

    /**
     * 注册
     * @return
     */
    public String register(){
        boolean status = userService.add(user);
        if (!status){
            ServletActionContext.getRequest().getSession().setAttribute("msg","您的账号已经被注册，请您换个账号名再注册");
        }
        return "loginPage";
    }

    /**
     * 退出接口
     */
    public String quit(){
        HttpServletRequest request = ServletActionContext.getRequest();
        HttpSession session = request.getSession();
//        删除整个会话
        session.invalidate();
        return "home";
    }

    /**
     * 获取用户信息
     */
    public String userInfo(){
        String username = (String) ServletActionContext.getRequest().getSession().getAttribute("username");
        user.setUsername(username);
        List<User> userList = userService.getUserInfo(user);
        int count = 0;
        if (userList.size() != 0){
            count = userService.getNoteCount(userList.get(0));;
        }
        userList.get(0).setCount(count);

//        封装成表格需要的数据格式
        map.put("code",0);
        map.put("msg","");
        map.put("count",count);
        map.put("data",userList);
        return SUCCESS;
    }


    /**
     * 编辑用户信息
     */
    public void editUser(){
        userService.editUser(user);
    }

}
