
layui.use(['element'],function () {
    let element = layui.element;
    let $ = layui.$;

    element.render('nav');

    //当鼠标放到课程分类模块时，触发相对应的事件
    $('.category-li').hover(function () {
        let id = this.id;
        let a = document.getElementById(id).children[0];
        a.style.color = 'black';

        let hiddenId = document.getElementById('hidden-' + id);
        hiddenId.style.display = 'block';
        hiddenId.style.backgroundColor = 'rgba(0,0,0,0.2)';

        this.onmouseleave = function () {
            a.style.color = 'white';
            hiddenId.style.display = 'none';
        };

        hiddenId.onmouseenter = function () {
            hiddenId.style.display = 'block';
            hiddenId.style.backgroundColor = 'rgba(0,0,0,0.2)';
        };

        hiddenId.onmouseleave = function () {
            hiddenId.style.display = 'none';
        };
    });

//    当鼠标放到竞争优势区域时，触发相应事件
    $('#l1').hover(function () {

        let rightId = document.getElementById('l1');
        let nextId = document.getElementById('l2');
        let hiddenId = document.getElementById('hidden-l1');
        let nextHiddenId = document.getElementById('hidden-l2');

        rightId.className = 'blue';
        rightId.children[0].className = 'white';
        rightId.children[1].className = 'white';

        nextId.className = '';
        nextId.children[0].className = '';
        nextId.children[1].className = '';

        hiddenId.className = 'show';
        nextHiddenId.className = '';

        hiddenId.onmouseenter = function () {
            hiddenId.className = 'show'
        }
    });

    $('#l2').hover(function () {

        let preId = document.getElementById('l1');
        let rightId = document.getElementById('l2');
        let nextId = document.getElementById('l3');
        let hiddenId = document.getElementById('hidden-l2');
        let preHiddenId = document.getElementById('hidden-l1');
        let nextHiddenId = document.getElementById('hidden-l3');

        rightId.className = 'blue';
        rightId.children[0].className = 'white';
        rightId.children[1].className = 'white';

        preId.className = '';
        preId.children[0].className = '';
        preId.children[1].className = '';

        nextId.className = '';
        nextId.children[0].className = '';
        nextId.children[1].className = '';

        hiddenId.className = 'show';
        preHiddenId.className = '';
        nextHiddenId.className = '';

        hiddenId.onmouseenter = function () {
            hiddenId.className = 'show'
        }
    });

    $('#l3').hover(function () {

        let preId = document.getElementById('l2');
        let rightId = document.getElementById('l3');
        let hiddenId = document.getElementById('hidden-l3');
        let preHiddenId = document.getElementById('hidden-l2');

        rightId.className = 'blue';
        rightId.children[0].className = 'white';
        rightId.children[1].className = 'white';

        preId.className = '';
        preId.children[0].className = '';
        preId.children[1].className = '';

        hiddenId.className = 'show';
        preHiddenId.className = '';

        hiddenId.onmouseenter = function () {
            hiddenId.className = 'show'
        }
    });
});
