layui.use(['laydate', 'element', 'form', 'layer'], function () {
    var laydate = layui.laydate,
        element = layui.element,
        form = layui.form,
        layer = layui.layer,
        $ = layui.jquery;

    var tempAddData = {
        gas: 0, water: 0, warm: 0, property: 0, electric: 0, loanrent: 0, note: '', prodate: timestamp2Date(new Date().getTime())
    };

    // 渲染日期选择框
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

    // 月视图列表上的鼠标移入显示'修改' start
    var $layTitle = $(".layui-colla-title");
    $layTitle.mouseover(function () {
        $(this).find(".btn-update").css("display", "inline-block");
    });
    $layTitle.mouseleave(function () {
        $(this).find(".btn-update").css("display", "none");
    });
    // 月视图列表上的鼠标移入显示'修改' end

    // 点击月视图修改按钮事件
    $(".btn-update").click(function (e) {
        e.stopPropagation();
    });

    // 点击'添加'按钮
    form.on("submit(add)", function () {
        saveOrUpdate(tempAddData, "添加数据", _ctx + "/outlay/update");
    });

    // 点击'现在'按钮
    form.on("submit(now)", function () {
        alert("now");
    });

    // 点击'生成柱状图'按钮
    form.on("submit(bar)", function () {
        alert("bar");
    });

    /**
     * 添加或者修改的方法
     * @param data
     * @param title
     * @param url
     * @param layFormData
     */
    function saveOrUpdate(data, title, url) {
        var tpl = document.getElementById("outlay-addOrEdit").innerHTML;
        laytpl(tpl).render(data, function (html) {
            openDialog(html, title, ['600px', '500px'], function (idx) {
                var formData = $("#outlay-form-data").serializeArray();
                var result = validJqueryForm(formData); // 表单验证
                if (result) {
                    $.ajax({
                        url: url,
                        type: 'post',
                        data: formData,
                        dataType: 'json',
                        success: function (data) {
                            layer.close(idx);
                            alert("success");
                        },
                        error: ajaxError
                    });
                }
            }, ["#prodate"]);
        });
    }
});