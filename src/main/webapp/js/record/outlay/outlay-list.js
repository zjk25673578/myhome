layui.use(['laydate', 'element'], function () {
    var laydate = layui.laydate,
        element = layui.element,
        $ = layui.jquery;

    laydate.render({
        elem: '#laydateSelector'
        , position: 'static'
        , showBottom: false
        , type: 'year'
        , change: function (value, date) { //监听日期被切换
            lay('#view').html(value + '年');
            lay('#year').val(value);
            console.log(date);
        }
    });

    element.on('collapse(outlay)', function (data) {
        $(".btn-update").hide();
        if (data.show) {
            $(data.title).siblings("a").css("display", "inline-block");
        }
        // console.log(data.show); //得到当前面板的展开状态，true或者false
        // console.log(data.title); //得到当前点击面板的标题区域DOM对象
        // console.log(data.content); //得到当前点击面板的内容区域DOM对象
    });

    /*    $(".layui-colla-title").mouseover(function () {
            $(this).siblings("a").css("display", "inline-block");
        });
        $(".layui-colla-title").mouseleave(function () {
            $(this).siblings("a").css("display", "none");
        });*/
});