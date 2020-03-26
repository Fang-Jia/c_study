
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>首页</title>
    <link href="assets/layui/css/layui.css" rel="stylesheet" media="all">
    <link href="assets/css/main.css" rel="stylesheet">
    <link href="assets/css/nav/nav.css" rel="stylesheet">
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
            <img src="assets/imgs/logo_1482988272.png.w200.jpg" alt="C语言教学网" class="img">
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
<!--    主要课程信息栏-->
<div class="layui-row main">
    <div class="category">
        <ul>
            <li class="category-li" id="1">
                <a href="#">C语言初探</a>
            </li>
            <li class="category-li" id="2">
                <a href="#">C语言基础</a>
            </li>
            <li class="category-li" id="3">
                <a href="#">C语言进阶</a>
            </li>
            <li class="category-li" id="4">
                <a href="#">C语言中级</a>
            </li>
            <li class="category-li" id="5">
                <a href="#">C语言高级</a>
            </li>
        </ul>
    </div>
    <div class="hidden">
        <ul>
            <li id="hidden-1">
                <p><a href="/page_course">C语言教程</a></p>
                <p><a href="/page_intro">C简介</a></p>
                <p><a href="/page_environment">C环境设置</a></p>
                <p><a href="/page_procedure">C程序结构</a></p>
                <p><a href="/page_grammar">C基本语法</a></p>
            </li>
            <li id="hidden-2">
                <p><a href="/page_data">C数据类型</a></p>
                <p><a href="/page_variate">C变量</a></p>
                <p><a href="/page_constant">C常量</a></p>
                <p><a href="/page_save">C存储类</a></p>
                <p><a href="/page_operation">C运算符</a></p>
                <p><a href="/page_judge">C判断</a></p>
            </li>
            <li id="hidden-3">
                <p><a href="/page_loop">C循环</a></p>
                <p><a href="/page_function">C函数</a></p>
                <p><a href="/page_scope">C作用域规则</a></p>
                <p><a href="/page_arr">C数组</a></p>
                <p><a href="/page_enumPage">C枚举</a></p>
                <p><a href="/page_pointer" target="page">C指针</a></p>
            </li>
            <li id="hidden-4">
                <p><a href="/page_funPointer">C函数指针</a></p>
                <p><a href="/page_str">C字符串</a></p>
                <p><a href="/page_construction">C结构体</a></p>
                <p><a href="/page_share">C共用体</a></p>
                <p><a href="/page_place">C位域</a></p>
                <p><a href="/page_typedef">typedef</a></p>
            </li>
            <li id="hidden-5">
                <p><a href="/page_input">C输入输出</a></p>
                <p><a href="/page_write">C文字读写</a></p>
                <p><a href="/page_pretreatment">C预处理</a></p>
                <p><a href="/page_titleFont">C头文字</a></p>
                <p><a href="/page_convert">C强制类型转换</a></p>
                <p><a href="/page_errConduct">C错误处理</a></p>
            </li>
        </ul>
    </div>
</div>
<!--    简介信息栏-->
<div class="layui-row info">
    <div class="layui-col-md2 info-1">
        <p><a href="/page_curriculum">C语言基础</a></p>
        <p><a href="/page_curriculum">C语言进阶</a></p>
    </div>
    <div class="layui-col-md2 info-inner info-a class">
        <img src="assets/imgs/jlindex_15.png" alt="">
        <span>精品课程</span>
        <a href="/page_curriculum"><img src="assets/imgs/jlindex_21.png" alt=""></a>
    </div>
    <div class="layui-col-md2 info-inner info-a product">
        <img src="../assets/imgs/jlindex_18.png" alt="">
        <span>项目展示</span>
        <a href="/page_project"><img src="assets/imgs/jlindex_21.png" alt=""></a>
    </div>
    <div class="layui-col-md2 info-inner info-a message">
        <img src="assets/imgs/jlindex_12.png" alt="">
        <span>最新动态</span>
        <a href="/page_skill"><img src="assets/imgs/jlindex_21.png" alt=""></a>
    </div>
    <div class="layui-col-md2">
        <p><a href="/page_curriculum">C语言中级</a></p>
        <p><a href="/page_curriculum">C语言高级</a></p>
    </div>
</div>
<!--    C语言简介栏-->
<div class="layui-row text">
    <p class="text-p">本教程专门为需要从零开始了解 C 语言的程序员打造</p>
    <p>本教程将让您对 C 语言有足够的认识，从而提升您自己的专业知识水平。</p>
</div>
<!--    竞争优势栏目-->
<div class="layui-container price">
    <img src="http://www.itheima.com/special/czly/images/box2_img1.jpg" alt="">
    <div class="price-inner">
        <ul>
            <li class="show" id="hidden-l1">
                <img src="http://www.itheima.com/special/czly/images/box2_img4.jpg" alt="">
            </li>
            <li class id="hidden-l2">
                <img src="http://www.itheima.com/special/czly/images/box2_img3.jpg" alt="">
            </li>
            <li class id="hidden-l3">
                <img src="http://www.itheima.com/special/czly/images/box2_img2.jpg" alt="">
            </li>
        </ul>
        <ol>
            <li class="blue" id="l1">
                <h2 class="white">功能强大</h2>
                <p class="white">为学习其它语言打下基础</p>
            </li>
            <li id="l2">
                <h2 class>不可替代</h2>
                <p class>语言地位四十多年未被撼动</p>
            </li>
            <li id="l3">
                <h2 class>未来可期</h2>
                <p class>站在巨人的肩膀上前行</p>
            </li>
        </ol>
    </div>
</div>
<!--    适合人群栏目-->
<div class="layui-container">
    <div class="fit-person">
        <img src="http://www.itheima.com/special/czly/images/box4_img1.jpg" alt="">
        <ul class="fit-person-ul">
            <li>
                <div class="fit-person-ul-top">
                    <img src="http://www.itheima.com/special/czly/images/box4_img2.jpg" alt="">
                    <p>技术小白</p>
                </div>
                <div class="fit-person-ul-btm">
                    <p>
                        应届高中/大学毕业生，<br>
                        没有任何计算机基础，<br>
                        对编程无认知？<br>
                        没关系，<br>
                        课程针对没有编程基础人群，<br>
                        设计教学方案。
                    </p>
                </div>
            </li>
            <li>
                <div class="fit-person-ul-top">
                    <img src="http://www.itheima.com/special/czly/images/box4_img3.jpg" alt="">
                    <p>电脑游戏爱好者</p>
                </div>
                <div class="fit-person-ul-btm">
                    <p>
                        电脑游戏玩的很棒，<br>
                        对IT感兴趣，<br>
                        拥有技术梦，<br>
                        却不知道怎么才能真正的入门？<br>
                        课程设置由浅入深，<br>
                        遵循由易到难的学习过程。
                    </p>
                </div>
            </li>
            <li>
                <div class="fit-person-ul-top">
                    <img src="http://www.itheima.com/special/czly/images/box4_img4.jpg" alt="">
                    <p>运维/测试转开发</p>
                </div>
                <div class="fit-person-ul-btm">
                    <p>
                        从事运维/测试工作，<br>
                        却变得相当迷茫，<br>
                        想转开发岗位，<br>
                        重新制定自己的职业发展方向，<br>
                        继续向上晋升，<br>
                        身价随着时间越久越值钱。
                    </p>
                </div>
            </li>
            <li>
                <div class="fit-person-ul-top">
                    <img src="http://www.itheima.com/special/czly/images/box4_img5.jpg" alt="">
                    <p>其他编程语言开发者</p>
                </div>
                <div class="fit-person-ul-btm">
                    <p>
                        从事其他编程语言工作，<br>
                        发现技术不深，<br>
                        难以升职加薪? <br>
                        C/C++是所有编程语言的基石，<br>
                        学会技术的根，<br>
                        才能掌握竞争和发展的主动权。
                    </p>
                </div>
            </li>
        </ul>
    </div>
</div>
<!--    职业发展规划样式-->
<div class="layui-row position-develop">
    <div class="develop-inner">
        <img src="http://www.itheima.com/special/czly/images/box5_img1.png" alt="">
        <div class="layui-col-md-offset1 develop-main">
            <div class="layui-row one">
                <div class="con">
                    <div class="con1">
                        <p>游戏服务器<br>开发方向</p>
                    </div>
                </div>
            </div>
            <div class="layui-row one">
                <div class="con">
                    <div class="con1">
                        <p>windows<br>项目方向</p>
                    </div>
                </div>
            </div>
            <div class="layui-row one">
                <div class="con">
                    <div class="con1">
                        <p>Go语言分布式<br>服务器方向</p>
                    </div>
                </div>
            </div>
            <h3>C/C++开<br>发工程师</h3>
        </div>
    </div>
</div>
<!--    学习路线图-->
<div class="layui-container" style="text-align: center">
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
        <legend><span class="text-p">学习路线图</span></legend>
    </fieldset>
    <p style="text-align: center">
        <img src="assets/imgs/study.jpg" alt="" class="study">
    </p>
</div>
<!--    底部区域-->
<div class="foot_ch">
    <h2>C语言教学网站  版权所有Wang Jie</h2>
</div>


<script src="assets/layui/layui.js"></script>
<script src="assets/js/main.js"></script>
</body>
</html>
