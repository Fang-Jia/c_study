
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>课程主页</title>
    <link href="../../assets/layui/css/layui.css" rel="stylesheet" media="all">
    <link href="../../assets/css/nav/nav.css" rel="stylesheet">
    <link href="../../assets/css/class/class.css" rel="stylesheet">
</head>
<body>
<!--    登录、注册按钮导航栏-->
<div class="layui-row row">
    <div class="layui-col-md-offset7">
        <s:if test="#session.username != null">
            <span class="row-span">
                <a href="/user_userPage">
                    你好，
                    <s:property value="#session.username"/>
                    <i class="layui-icon layui-icon-face-smile"></i>
                </a>
            </span>
            <span class="row-span">
                <a href="/book_cart">购物车 <i class="layui-icon layui-icon-cart-simple"></i></a>
            </span>
            <span class="row-span">
                <a href="/book_order">订单 <i class="layui-icon layui-icon-form"></i></a>
            </span>
            <span class="row-span">
                    <a href="/user_quit">退出 <i class="layui-icon layui-icon-logout"></i></a>
            </span>
        </s:if>
        <s:else>
            <a href="/user_loginPage" class="layui-btn layui-btn-normal btn">登录</a>
            <a href="/user_registerPage" class="layui-btn layui-btn-warm btn">注册</a>
        </s:else>
    </div>
</div>
<!--    搜索栏-->
<div class="layui-container">
    <div class="layui-row layui-col-space5">
        <a href="#" class="nav-logo layui-col-md7">
            <img src="../../assets/imgs/logo_1482988272.png.w200.jpg" alt="C语言教学网" class="img">
            <span class="img-span">C语言教学网</span>
        </a>
        <span class="nav-span">C语言经近40年雕琢，广泛应用于各个行业</span>
    </div>
</div>
<!--    导航栏-->
<div class="layui-row">
    <ul class="layui-nav layui-bg-blue top" style="width: 100%">
        <li class="layui-nav-item layui-col-md-offset1"><a href="/page_curriculum">精品课程</a></li>
        <li class="layui-nav-item layui-col-md-offset1"><a href="/page_main">首页</a></li>
        <li class="layui-nav-item "><a href="/page_curriculum">精品课程</a></li>
        <li class="layui-nav-item "><a href="/page_project">项目展示</a></li>
        <li class="layui-nav-item "><a href="/page_skill">实用技术</a></li>
        <li class="layui-nav-item "><a href="/book_home">实用书籍</a></li>
    </ul>
</div>
<!--    主要内容-->
<div class="layui-row curriculum-main">
    <!--    左侧课程导航栏-->
    <ul class="layui-nav layui-nav-tree layui-col-md-offset1 curriculum">
        <li class="title">C教程</li>
        <div style="background-color: white;">
            <div style="background-color: #f6f6f6;margin:0 5.1px">
                <li class="curriculum-li">
                    <a href="#" class="curriculum-a">C语言初探</a>
                    <dl>
                        <dd id="1" style="background-color: #FFB800"><a href="/page_course" target="page">C语言教程</a></dd>
                        <dd id="2"><a href="/page_intro" target="page">C简介</a></dd>
                        <dd id="3"><a href="/page_environment" target="page">C环境设置</a></dd>
                        <dd id="4"><a href="/page_procedure" target="page">C程序结构</a></dd>
                        <dd id="5"><a href="/page_grammar" target="page">C基本语法</a></dd>
                    </dl>
                </li>
                <li class="curriculum-li">
                    <a href="#" class="curriculum-a">C语言基础</a>
                    <dl>
                        <dd id="6"><a href="/page_data" target="page">C数据类型</a></dd>
                        <dd id="7"><a href="/page_variate" target="page">C变量</a></dd>
                        <dd id="8"><a href="/page_constant" target="page">C常量</a></dd>
                        <dd id="9"><a href="/page_save" target="page">C存储类</a></dd>
                        <dd id="10"><a href="/page_operation" target="page">C运算符</a></dd>
                        <dd id="11"><a href="/page_judge" target="page">C判断</a></dd>
                    </dl>
                </li>
                <li class="curriculum-li">
                    <a href="#" class="curriculum-a">C语言进阶</a>
                    <dl>
                        <dd id="12"><a href="/page_loop" target="page">C循环</a></dd>
                        <dd id="13"><a href="/page_function" target="page">C函数</a></dd>
                        <dd id="14"><a href="/page_scope" target="page">C作用域规则</a></dd>
                        <dd id="15"><a href="/page_arr" target="page">C数组</a></dd>
                        <dd id="16"><a href="/page_enumPage" target="page">C枚举</a></dd>
                        <dd id="17"><a href="/page_pointer" target="page">C指针</a></dd>
                    </dl>
                </li>
                <li class="curriculum-li">
                    <a href="#" class="curriculum-a">C语言中级</a>
                    <dl>
                        <dd id="18"><a href="/page_funPointer" target="page">C函数指针</a></dd>
                        <dd id="19"><a href="/page_str" target="page">C字符串</a></dd>
                        <dd id="20"><a href="/page_construction" target="page">C结构体</a></dd>
                        <dd id="21"><a href="/page_share" target="page">C共用体</a></dd>
                        <dd id="22"><a href="/page_place" target="page">C位域</a></dd>
                        <dd id="23"><a href="/page_typedef" target="page">typedef</a></dd>
                    </dl>
                </li>
                <li class="curriculum-li">
                    <a href="#" class="curriculum-a">C语言高级</a>
                    <dl>
                        <dd id="24"><a href="/page_input" target="page">C输入输出</a></dd>
                        <dd id="25"><a href="/page_write" target="page">C文字读写</a></dd>
                        <dd id="26"><a href="/page_pretreatment" target="page">C预处理</a></dd>
                        <dd id="27"><a href="/page_titleFont" target="page">C头文件</a></dd>
                        <dd id="28"><a href="/page_convert" target="page">C强制类型转换</a></dd>
                        <dd id="29"><a href="/page_errConduct" target="page">C错误处理</a></dd>
                    </dl>
                </li>
            </div>
        </div>
    </ul>
    <!--    右侧课程内容区域栏-->
    <div class="body">
        <iframe frameborder="0" scrolling="yes" style="width: 100%;height: 100%" src="/page_course" id="inner" name="page">
            <input type="text" hidden id="name" value="123">
        </iframe>
    </div>
</div>
<!--    底部区域-->
<div class="foot_ch">
    <h2>C语言教学网站  版权所有Wang Jie</h2>
</div>


<script src="../../assets/layui/layui.js"></script>
<script src="../../assets/js/class/class.js"></script>
</body>
</html>
