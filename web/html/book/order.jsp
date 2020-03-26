
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>订单</title>
    <link href="../../assets/layui/css/layui.css" rel="stylesheet">
    <link href="../../assets/css/nav/nav.css" rel="stylesheet">
    <link href="../../assets/css/book/home.css" rel="stylesheet">
    <style>
        .strategy span{
            font-size: 22px;
            color: #01AAED;
            margin-left: 9%;
            float: right;
        }
        .strategy button{
            margin-left: 15%;
            float: right;
        }
        .strategy .font{
            margin-top: 10px;
            margin-bottom: 40px;
        }
    </style>
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
        <li class="layui-nav-item layui-col-md-offset2"><a href="/page_main">首页</a></li>
        <li class="layui-nav-item "><a href="/page_curriculum">精品课程</a></li>
        <li class="layui-nav-item "><a href="/page_project">项目展示</a></li>
        <li class="layui-nav-item "><a href="/page_skill">实用技术</a></li>
        <li class="layui-nav-item "><a href="/book_home">实用书籍</a></li>
    </ul>
</div>
<%--去旅行--%>
<div class="layui-container strategy">
    <form class="layui-form">
        <s:iterator value="list" var="order">
            <s:iterator value="bookSet">
                <div class="layui-row layui-col-md-offset1 strategy-inner" id="f-<s:property value="bid"/>">
                    <img src="<s:property value="bookImg"/> ">
                    <h2><s:property value="bookTitle"/></h2>
                    <p>￥ <s:property value="price"/> </p>
                </div>
            </s:iterator>
            <div class="layui-row font">
                <button class="layui-btn layui-btn-danger quit" id="<s:property value="oid"/> ">取消订单</button>
                <span style="color: red">总金额：<s:property value="total"/> </span>
                <span>下单时间：<s:property value="addTimeStr"/></span>
                <span>订单<s:property value="oid"/> </span>
            </div>
            <hr class="layui-bg-blue">
        </s:iterator>
    </form>
</div>

<!--    底部区域-->
<div class="foot_ch">
    <h2>旅游网站  版权所有Shao Xue Lun</h2>
</div>



<script src="../../assets/layui/layui.js"></script>
<script src="../../assets/js/book/book_home.js"></script>
</body>
</html>
