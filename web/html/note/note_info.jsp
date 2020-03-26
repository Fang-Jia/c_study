
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>笔记</title>
    <link href="../../assets/layui/css/layui.css" rel="stylesheet">
    <style>
        .h3{
            color: #1E9FFF;
        }
        .note:hover{
            background-color: #e2e2e2;
        }
    </style>
</head>
<body>
<s:iterator value="list">
    <div class="layui-card">
        <div class="layui-card-header">
            <i class="layui-icon layui-icon-face-smile-fine"></i>
            来自 <span style="color: #ff9d00;"><s:property value="name"/></span>
        </div>
        <div class="layui-card-body note">
            <h3>
                <s:property value="font"/>
            </h3>
            <hr class="layui-bg-orange">
            <blockquote class="layui-elem-quote"><s:property value="code"/></blockquote>
        </div>
    </div>
    <hr class="layui-bg-blue">
</s:iterator>


</body>
</html>
