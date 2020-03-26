
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>自由行产品添加</title>
    <link href="../../assets/layui/css/layui.css" rel="stylesheet">
</head>
<body>

<form action="/book_addInfo" class="layui-form" method="post" enctype="multipart/form-data">

    <div class="layui-form-item">
        <label class="layui-form-label">书籍标题</label>
        <input type="text" class="layui-input" placeholder="请输入标题" name="bookTitle" style="width: 80%" autocomplete="off">
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">书籍价格</label>
        <input type="text" class="layui-input" placeholder="请输入价格" name="price" style="width: 80%" autocomplete="off">
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">上传时间</label>
        <input type="text" class="layui-input" id="time" name="addTime" style="width: 80%" autocomplete="off">
    </div>

    <div class="layui-form-item">
        <input type="text" id="pic_path" style="display: none" name="bookImg">
        <label class="layui-form-label" >预览图:</label>

        <div class="layui-row">
            <div class="layui-upload-list">
                <p id="err" style="color: #FF5722;font-size: 20px"></p>
                <img src="" id="pic_show" style="width: 20%;height: 20%">
            </div>

            <button type="button" class="layui-btn" id="upload_img" style="margin-left: 15.5%">上传图片</button>
        </div>
    </div>


    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn" lay-submit lay-filter="uploadInfo">立即提交</button>
        </div>
    </div>
</form>

<script src="../../assets/layui/layui.js"></script>
<script src="../../assets/js/book/book_add.js"></script>
</body>
</html>
