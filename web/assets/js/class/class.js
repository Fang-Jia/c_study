
layui.use(['layer','util'],function () {
    let util = layui.util;
    let layer = layui.layer;
    let $ = layui.$;

    util.fixbar({
        bgcolor: '#FFB800',
    });

    let eleId = 1;
//    左边导航栏点击事件
    $('dd').click(function () {
        let pre = document.getElementById(eleId);
        pre.style.backgroundColor = '#f6f6f6';

        let id = this.id;
        eleId = id;

        let now = document.getElementById(id);
        now.style.backgroundColor = '#FFB800';
    });
});