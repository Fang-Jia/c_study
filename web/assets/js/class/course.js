
layui.use('layer', function () {
    let layer = layui.layer;
    let $ = layui.$;

    let id = 0;
    $('.note').hover(function () {
        id = this.id;
    });

    $('.note-info').click(function () {
        layer.open({
            title: '查看笔记',
            type: 2,
            offset: '900px',
            shadeClose: true,
            area: ['700px','700px'],
            content: '/note_noteInfo?courseId=' + id,
            skin: 'layui-layer-lan'
        })
    });

    $('.note-add').click(function () {
        layer.open({
            title: '添加笔记',
            type: 2,
            shadeClose: true,
            area: ['700px','700px'],
            content: '/note_note?courseId=' + id,
            skin: 'layui-layer-lan'
        })
    });

});