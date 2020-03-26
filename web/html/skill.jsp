
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>最新动态</title>
    <link href="../assets/css/dynamic.css" rel="stylesheet">
    <link href="../assets/layui/css/layui.css" rel="stylesheet">
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
<%--实用技术栏--%>
<div class="dynamic">
    <div class="dynamic-inner">
        <img class="dynamic-img" src="http://www.itheima.com/special/czly/images/box3_img1.png" alt="">
        <div class="main">
            <div class="con">
                <div class="fl">
                    <p>
                        <span>●</span>GDB(调试工具)
                    </p>
                    <p>
                        <span>●</span>VIM(文本编辑器)
                    </p>
                    <p>
                        <span>●</span>(进程通信)
                    </p>
                    <p>
                        <span>●</span> Pthread(线程并发同步机制)
                    </p>
                    <p>
                        <span>●</span>SignalAction(Linux信号异步机制)
                    </p>
                    <p>
                        <span>●</span> Select(传统事件多路IO复用技术)
                    </p>
                    <p>
                        <span>●</span> Unix Shell(Unix通用脚本语言)
                    </p>
                    <p>
                        <span>●</span> MMAP(虚拟内存镜像机制)
                    </p>
                    <p>
                        <span>●</span> GIT(分布式版本控制系统)
                    </p>
                </div>
                <div class="cen" style="margin-left: 80px">
                    <img style="margin-top: 20px;" src="../assets/imgs/box3_img2.jpg">
                </div>
                <div class="fr" style="margin-top: 30px;">
                    <p>● Visual Studio(微软经典IDE)<br>
                        ● SHM(共享内存映射机制)<br>
                        ● QT(跨平台应用界面框架)<br>
                        ● Oracle(高级事务关系型数据库)<br>
                        ● 消息队列(高性能消息容器)<br>
                        ● Windows与Linux跨平台通信/调试
                    </p>
                </div>
            </div>
            <hr class="layui-bg-blue">
            <div class="con con2">
                <div class="fl" style="margin-top: 20px;">
                    <p>
                        <span>●</span>RPC(远程调用过程)</p>
                    <p>
                        <span>●</span>Libevent(高并发反应堆模式API)
                    </p>
                    <p>
                        <span>●</span>Nginx(高并发反向代理服务器)
                    </p>
                    <p>
                        <span>●</span>Redis(NoSQL缓存数据库)
                    </p>
                    <p>
                        <span>●</span>Epoll(Linux内核高级多路IO技术
                    </p>
                </div>
                <div class="cen">
                    <img src="../assets/imgs/box3_img3.jpg">
                </div>
                <div class="fr" style="margin-top: 30px;">
                    <p>● 物理引擎(游戏模拟物理常态算法)<br>
                        ● 设计模式(面向对象抽象思维)<br>
                        ● MVC(低耦合架构设计方式)<br>
                        ● U3D(3D游戏开发框架)<br>
                    </p>
                </div>
            </div>
            <hr class="layui-bg-blue">
            <div class="con">
                <div class="fl" style="margin-top: 20px;">
                    <p>
                        <span>●</span>Consul(服务器发现)
                    </p>
                    <p>
                        <span>●</span>Go-micro(主流微服务框架)
                    </p>
                    <p>
                        <span>●</span>RESTFUL(规范化请求设计)
                    </p>
                    <p>
                        <span>●</span>gorm(操作数据库工具)
                    </p>
                    <p>
                        <span>●</span>gin框架(主流web框架)
                    </p>
                </div>
                <div class="cen" style="margin-left: 115px">
                    <img src="../assets/imgs/box3_img4.jpg">
                </div>
                <div class="fr" style="margin-top: 40px;">
                    <p>
                        ● Docker(虚拟化)<br>
                        ● Docker-compose(容器编排工具)<br>
                        ● K8s（google开源容器管理工具）</p>
                </div>
            </div>
            <hr class="layui-bg-blue">
            <div class="con">
                <div class="fl" style="margin-top: 20px;">
                    <p>
                        <span>●</span>Epoll(Linux内核高级多路IO复用技术)
                    </p>
                    <p>
                        <span>●</span>EventLoop(基于事件的异步触发机制)
                    </p>
                    <p>
                        <span>●</span>ThreadQueue(多线程消息队列分发模型)
                    </p>
                    <p>
                        <span>●</span>TLV(消息封装及TCP数据包序列化)
                    </p>
                    <p>
                        <span>●</span>TCP/UDP Server<br>(基于reactor反应堆机制的服务器模型)&nbsp;&nbsp;&nbsp;&nbsp;
                    </p>
                </div>
                <div class="cen" style="margin-left: 35px">
                    <img src="../assets/imgs/box3_img5.jpg">
                </div>
                <div class="fr" style="margin-top: 20px;">
                    <p>
                        ● LoadBalance(负载均衡调度方式)<br>
                        ● 一致性hash(麻省理工学院hash算法)<br>
                        ● DNSServer(基于dns的域名查询服务器)<br>
                        ● MQ(消息队列处理机制实现)<br>
                        ● IOBuffer(服务内存管理模型)<br>
                    </p>
                </div>
            </div>
            <hr class="layui-bg-blue">
            <div class="con">
                <div class="fl">
                    <p>
                        <span>●</span>Kali Linux(Hacker操作系统)
                    </p>
                    <p>
                        <span>●</span>Nmap(服务指纹识别)
                    </p>
                    <p>
                        <span>●</span>nessus漏洞扫描
                    </p>
                    <p>
                        <span>●</span>暴力破解攻防实战
                    </p>
                    <p>
                        <span>●</span>Web渗透(Web页面代码的攻击形式)
                    </p>
                    <p>
                        <span>●</span>DDos(分布式拒绝服务攻击)
                    </p>
                    <p>
                        <span>●</span>ARP中间人攻击
                    </p>
                </div>
                <div class="cen" style="margin-left: 62px">
                    <img src="../assets/imgs/box3_img6.jpg">
                </div>
                <div class="fr" style="margin-top: 20px;">
                    <p>● ACL(访问控制权限列表)<br>
                        ● iptables(Linux内核防火墙技术)<br>
                        ● TCP Wrapper(系统安全控制护卫者)<br>
                        ● Wireshark(网络抓包分析工具)<br>
                        ● 安全审计(监视内核中获取"操作"信息神技)<br>
                        ● TCPDump(Linux内核网络协议捕捉器)
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
<!--    底部区域-->
<div class="foot_ch">
    <h2>C语言教学网站  版权所有Wang Jie</h2>
</div>

</body>
</html>
