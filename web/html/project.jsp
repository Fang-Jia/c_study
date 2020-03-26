
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>项目展示</title>
    <link href="../assets/layui/css/layui.css" rel="stylesheet" media="all">
    <link href="../assets/css/project.css" rel="stylesheet">
    <link href="../assets/css/nav/nav.css" rel="stylesheet">
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
            <img src="../assets/imgs/logo_1482988272.png.w200.jpg" alt="C语言教学网" class="img">
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
<!--    项目内容导航栏-->
<div class="project">
    <div class="layui-container">
        <div class="title" style="visibility: visible; animation-name: zoomIn;">
            <div class="top">
                <img class="fl" src="http://www.itheima.com/special/czly/images/box7_img1.jpg">
                <img class="fr" src="http://www.itheima.com/special/czly/images/box7_img1.jpg">
            </div>
            <p>大型项目<span>开发实战</span></p>
        </div>
        <div class="con">
            <div class="fl">
                <div class="layui-carousel" id="1">
                    <div class="bd" carousel-item>
                        <img src="http://www.itheima.com/special/czly/images/box7_a1.jpg">
                        <img src="http://www.itheima.com/special/czly/images/box7_a2.jpg">
                        <img src="http://www.itheima.com/special/czly/images/box7_a3.jpg">
                        <img src="http://www.itheima.com/special/czly/images/box7_a4.jpg">
                    </div>
                </div>
            </div>
            <div class="fr" style="margin-top: 40px;">
                <h2>金融类安全传输平台</h2>
                <div class="btm">
                    <div class="con1">
                        <span>项目介绍</span>
                        <p>数据安全传输平台，类似于支付宝与银行的汇帐、标准的信息安全服务；本项目具有通用组件和业务流合理分层、Win的客户端和Linux服务程序异构对接。</p>
                    </div>
                    <div class="con1" style="margin-bottom: 15px;">
                        <span>技术亮点</span>
                        <p>并发服务器开发、MFC/QT客户端开发；Win系统和Linux系统对接调试；报文编解码、Socket通信、IPC机制读写。</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="con_left">
            <div class="fr">
                <div id="2" class="layui-carousel">
                    <div carousel-item>
                        <img src="http://www.itheima.com/special/czly/images/box7_b1.jpg">
                        <img src="http://www.itheima.com/special/czly/images/box7_b2.jpg">
                        <img src="http://www.itheima.com/special/czly/images/box7_b3.jpg">
                    </div>
                </div>
            </div>
            <div class="fl">
                <h2>分布式游戏服务器开发</h2>
                <div class="btm">
                    <div class="con1">
                        <span>项目介绍</span>
                        <p>游戏开发采用Unity3D游戏引擎，游戏框架采用FPS射击场景应用；后端服务器采用高性能、分式式解决方案，实现统一游戏或其他应用后端云平台，同时实现跨平台、高并发小文件的快速云服务功能；集群基础设施采用Docker容器搭建。</p>
                    </div>
                    <div class="con1" style="margin-bottom: 15px;">
                        <span>技术亮点</span>
                        <p>自定义可扩展的服务框架Zinx、IO多路复用结合可扩展线程池实现并发处理、protobuf和JSON数据序列化、docker多实例部署、高性能服务器Nginx。</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="con">
            <div class="fl">
                <div class="layui-carousel" id="3">
                    <div carousel-item>
                        <img src="http://www.itheima.com/special/czly/images/box7_c1.jpg">
                        <img src="http://www.itheima.com/special/czly/images/box7_c2.jpg">
                    </div>
                </div>
            </div>
            <div class="fr">
                <h2>Ihome-微服务项目</h2>
                <div class="btm">
                    <div class="con1">
                        <span>项目介绍</span>
                        <p>IHome是一个基于分布式框架go-micro开发的微服务web应用。服务间同过consul来完成服务发现与健康检查。使用protobuf和grpc框架完成数据交互。使用主流Gin框架进行业务实现，通过gorm灵活操作数据库。项目遵循模块化设计，可方便动态扩展服务，自动部署。</p>
                    </div>
                    <div class="con1" style="margin-bottom: 15px;">
                        <span>技术亮点</span>
                        <p>隐藏资源管理和错误处理，用户仅需要关注应用的开发，服务高可用、高可靠。可将负载运行在由成千上万的机器联合而成的集群中。支持云平台、模块化, 插件化, 可挂载, 可组合、且自动部署，自动伸缩/扩展。</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="con_left">
            <div class="fr">
                <div class="layui-carousel" id="4">
                    <div carousel-item>
                        <img src="http://www.itheima.com/special/czly/images/box7_d1.jpg">
                        <img src="http://www.itheima.com/special/czly/images/box7_d2.jpg">
                        <img src="http://www.itheima.com/special/czly/images/box7_d3.jpg">
                    </div>
                </div>
            </div>
            <div class="fl">
                <h2>Lars-负载均衡远程服务调度系统</h2>
                <div class="btm">
                    <div class="con1">
                        <span>项目介绍</span>
                        <p>Lars是一个简单、易用、高性能的服务间远程调用管理、调度、负载均线系统。弹性负载均衡可将流量跨可用区进行分发，建立实时的同城容灾机制，满足银行贸易等企业对系统的高可用性要求。</p>
                    </div>
                    <div class="con1" style="margin-bottom: 15px;">
                        <span>技术亮点</span>
                        <p>集群支持千万并发链接，支持多可用区的容灾，无缝实时切换。自动分发，与弹性伸缩无缝集成，灵活扩展用户用于的对外服务能力。快速部署、实时生效，支持多种协议，多种调度算法，用户可以高效的管理和调整服务分发策略等。</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="con">
            <div class="fl">
                <div class="layui-carousel" id="5">
                    <div carousel-item>
                        <img src="http://www.itheima.com/special/czly/images/box7_e1.jpg">
                        <img src="http://www.itheima.com/special/czly/images/box7_e2.jpg">
                        <img src="http://www.itheima.com/special/czly/images/box7_e3.jpg">
                        <img src="http://www.itheima.com/special/czly/images/box7_e4.jpg">
                    </div>
                </div>
            </div>
            <div class="fr" style="margin-top: 15px;">
                <h2>网络隐匿私有应用入侵检测系统</h2>
                <div class="btm">
                    <div class="con1">
                        <span>项目介绍</span>
                        <p>网络私有应用监测系统主要由多核硬件平台、安全操作系统、监测引擎、数据关联分析、协同分析、升级管理、维护管理、综合管理等功能模块组成。</p>
                    </div>
                    <div class="con1" style="margin-bottom: 15px;">
                        <span>技术亮点</span>
                        <p>NetFlow原始流录制技术；VPN、即时通信、翻墙软件、通用应用加密等嗅探技术；网络安全威胁体系、XSS漏洞与过滤、WebShell防护、拒绝服务攻击；常见Web安全漏洞；沙盒框架。</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--    底部区域-->
<div class="foot_ch">
    <h2>C语言教学网站  版权所有Wang Jie</h2>
</div>


<script src="../assets/layui/layui.js"></script>
<script>
    layui.use('carousel', function () {
        let carousel = layui.carousel;

        carousel.render({
            elem: '#1',
            width: '90%',
            height: '100%',
            arrow: 'hover',
            anim: 'fade',
            indicator: 'none',
            autoplay: true
        });
        carousel.render({
            elem: '#2',
            width: '90%',
            height: '100%',
            arrow: 'hover',
            anim: 'fade',
            indicator: 'none',
            autoplay: true
        });
        carousel.render({
            elem: '#3',
            width: '90%',
            height: '100%',
            arrow: 'hover',
            anim: 'fade',
            indicator: 'none',
            autoplay: true
        });
        carousel.render({
            elem: '#4',
            width: '90%',
            height: '100%',
            arrow: 'hover',
            anim: 'fade',
            indicator: 'none',
            autoplay: true
        });
        carousel.render({
            elem: '#5',
            width: '90%',
            height: '100%',
            arrow: 'hover',
            anim: 'fade',
            indicator: 'none',
            autoplay: true
        })
    })
</script>
</body>
</html>
