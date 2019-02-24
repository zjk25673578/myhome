layui.use(['laydate'], function () {
    var laydate = layui.laydate;

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
});