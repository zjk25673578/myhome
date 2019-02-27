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

    var $layTitle = $(".layui-colla-title");

    $layTitle.mouseover(function () {
        $(this).find(".btn-update").css("display", "inline-block");
    });

    $layTitle.mouseleave(function () {
        $(this).find(".btn-update").css("display", "none");
    });

    $(".btn-update").click(function (e) {
        e.stopPropagation();
    });
});