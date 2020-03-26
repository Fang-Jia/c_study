package com.wj.action;

import com.opensymphony.xwork2.ActionSupport;

/**
 * 页面跳转类     控制层
 */
public class PageAction extends ActionSupport {

    /**
     * 跳转到首页
     */
    public String main(){
        return "main";
    }

    /**
     * 课程主页
     */
    public String curriculum(){
        return "curriculum";
    }

    /**
     * 项目展示
     */
    public String project(){
        return "project";
    }

    /**
     * 动态展示
     */
    public String skill(){return "skill";}


//   C语言初探--- 教程页面
    public String course(){ return "course"; }

//   C语言初探--- 简介页面
    public String intro(){ return "intro"; }

    //   C语言初探--- 环境设置页面
    public String environment(){ return "environment"; }

    //   C语言初探--- 程序结构页面
    public String procedure(){ return "procedure"; }

    //   C语言初探--- 基本语法页面
    public String grammar(){ return "grammar"; }

//    ======================================================================================

    //    C语言基础---  数据类型页面
    public String data(){return "data";}

    //    C语言基础---  变量页面
    public String variate(){return "variate";}

    //    C语言基础---  常量页面
    public String constant(){return "constant";}

    //    C语言基础---  存储类页面
    public String save(){return "save";}

    //    C语言基础---  运算符页面
    public String operation(){return "operation";}

    //    C语言基础---  判断页面
    public String judge(){return "judge";}

//    ====================================================================================

    //    C语言进阶---  循环页面
    public String loop(){return "loop";}

    //    C语言进阶---  函数页面
    public String function(){return "function";}

    //    C语言进阶---  作用域规则页面
    public String scope(){return "scope";}

    //    C语言进阶---  数组页面
    public String arr(){return "arr";}

    //    C语言进阶---  枚举页面
    public String enumPage(){return "enumPage";}

    //    C语言进阶---  指针页面
    public String pointer(){return "pointer";}

//    ======================================================================================

    //    C语言中级---  函数指针页面
    public String funPointer(){return "funPointer";}

    //    C语言中级---  字符串页面
    public String str(){return "str";}

    //    C语言中级---  结构体页面
    public String construction(){return "construction";}

    //    C语言中级---  共用体页面
    public String share(){return "share";}

    //    C语言中级---  位域页面
    public String place(){return "place";}

    //    C语言中级---  typedef页面
    public String typedef(){return "typedef";}

//    =========================================================================================

    //    C语言高级---  输入&输出页面
    public String input(){return "input";}

    //    C语言高级---  读写页面
    public String write(){return "write";}

    //    C语言高级---  预处理页面
    public String pretreatment(){return "pretreatment";}

    //    C语言高级---  头文字页面
    public String titleFont(){return "titleFont";}

    //    C语言高级---  强制类型转换页面
    public String convert(){return "convert";}

    //    C语言高级---  错误处理页面
    public String errConduct(){return "errConduct";}

}
