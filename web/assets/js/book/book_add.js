
layui.use(['upload','laydate','form','layer'], function () {
    let upload = layui.upload;
    let laydate = layui.laydate;
    let form = layui.form;
    let layer = layui.layer;
    let $ = layui.$;

    //渲染时间选择器
    laydate.render({
        elem: '#time',
        type: 'datetime',
        format: 'yyyy-MM-dd HH:mm:ss'
    });

    let uploadImg = upload.render({
        elem: '#upload_img',
        url:  '/book_uploadFile',
        accept: 'images',   //允许上传的类型
        acceptMime: 'image/*',   //筛选打开文件选择框后，显示的文件类型，只显示图片
        auto: true,      //选择完文件后自动上传
        multiple: true,      //开启多文件上传
        before: function (obj) {    //文件上传前的回调方法
            //预读本地文件
            obj.preview(function (index, file, result) {
                $('#pic_show').attr('src',result);  //result为图片base64编码，
            })
        },
        done: function (data) {     //文件上传后的回调方法
            //如果上传失败
            if (data.code > 0){
                return layer.msg("上传失败");
            }
            //上传成功
            document.getElementById('err').value = "上传成功";
            document.getElementById('pic_path').value = data.src;
        },
        error: function () {        //因网络异常导致上传失败的回调方法
            document.getElementById('err').innerHTML = '<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs" id="reload">重试</a>';
            $('#reload').on('click',function () {
                uploadImg.upload();
            });
        }
    });

//    监听提交按钮事件
    form.on('submit(uploadInfo)',function () {
        alert('添加成功');
    })

});