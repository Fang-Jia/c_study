
layui.use(['laypage','layer','form'], function () {
    let laypage = layui.laypage;
    let layer = layui.layer;
    let form = layui.form;
    let $ = layui.$;

    //    立即预定按钮点击事件
    $('.add').hover(function () {
        let id = this.id;
        let ele = document.getElementById(id);
        ele.onclick = function(){
            if (this.name === ''){
                window.location.href = window.location.protocol + "//" + window.location.host + "/user_loginPage"
            }
            $.ajax({
                type: 'get',
                url: '/book_addShop?id=' + id,
                success: function () {
                    layer.open({
                        content: '预定成功',
                        offset: 't',
                        time: 500,
                        end: function () {
                            window.location.reload();
                        }
                    })
                }
            })
        }
    });

//    购物车金额结算事件
    let sum = 0;
    let arr = new Array();
    form.on('checkbox(check)',function (data) {
        if (data.elem.checked){
            arr.push(this.id);
            let id = "f-" + this.id;
            let priceEle = document.getElementById(id).children[2];
            let price = parseFloat(priceEle.innerText.substring(2));
            sum = sum + price;
            document.getElementById('sum').innerText = sum;
        }else {
            arr.splice(arr.indexOf(this.id),1);     //删除数组中元素，第一个参数为下标，第二个参数为删除的长度
            let id = "f-" + this.id;
            let priceEle = document.getElementById(id).children[2];
            let price = parseFloat(priceEle.innerText.substring(2));
            sum = sum - price;
            document.getElementById('sum').innerText = sum;
        }
    });

//    购物车商品删除按钮点击事件
    $('.del').hover(function () {
       let btnELe = document.getElementById(this.id);

       btnELe.onclick = function(){
           let ele = btnELe.previousElementSibling;
           let id = ele.parentElement.children[0].id;
           $.ajax({
               type: 'get',
               url: '/book_delCart?shopId=' + id,
               success: function () {
                   layer.open({
                       type: 1,
                       content: '删除商品成功',
                       offset: 't',
                       time: 500,
                       end: function () {
                           window.location.reload();
                       }
                   })
               }
           })
       }
    });

//    下单按钮点击事件
    $('#buy').on('click',function () {
        let price = document.getElementById('sum').innerText;
        $.ajax({
            type: 'get',
            url: '/book_addOrder?price=' + price + "&arr=" + arr,
            success: function () {
                layer.open({
                    content: '下单成功',
                    offset: 't',
                    time: 1000,
                    end: function () {
                        window.location.reload();
                    }
                })
            }
        })
    });

    //取消订单按钮点击事件
    $('.quit').on('click', function () {
        let id = this.id;
        $.ajax({
            type: 'get',
            url: '/book_quitOrder?oid=' + id,
            success: function () {
                window.location.href = window.location.protocol + "//" + window.location.host + "/book_order"
            }
        })
    });

    let page = 1;   //初始分页页码
    let limit = 5;     //每页显示条数
    let curr_page = document.getElementById('curr').value;
    let total = document.getElementById('count').value;      //获取到的数据总条数

//    分页渲染
    laypage.render({
        elem: 'page',
        count: total,
        limit: limit,
        curr: curr_page,
        jump: function (obj, first) {   //分页跳转时触发的回调方法
            page = obj.curr;    //当前页码
            limit = obj.limit;
            //首次不执行
            if (!first){
                // $.ajax({
                //     type: 'get',
                //     url: '/strategy_main',
                //     data: {
                //         "page" : page,
                //         "limit" : limit
                //     }
                // });
                window.location.href = window.location.protocol + "//" + window.location.host +"/book_home?page=" + page + "&limit=" + limit;
                curr_page = page;
            }
        }
    });
});