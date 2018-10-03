layui.use(["form", "layer", "laydate", "laytpl", "table"], function () {

    var form = layui.form,
        table = layui.table,
        layer = layui.layer,
        laydate = layui.laydate,
        laytpl = layui.laytpl,
        $ = layui.$;


    layer.msg("Hello World", {
        offset: "50%"
    });

    var active = {
        add: function () {
            var tpl = form_emp.innerHTML;
            var idx = openDialog(tpl, "添加员工信息", ["350px", "390px"], ["#hiredate"], function () {
                var formdata = $("#form_data_emp").serializeArray();
                $.ajax({
                    url: _ctx + "emp/addEmp",
                    type: "post",
                    data: formdata,
                    dataType: "json",
                    success: function (data) {
                        layer.close(idx);
                        var index = layer.alert(data.action, {icon: data.type}, function () {
                            table.reload("#emps_table");
                            layer.close(index);
                        });
                    },
                    error: function () {
                        layer.close(idx);
                        layer.msg("出现异常 !");
                    }
                });
            });
        },
        del: function () {
            layer.alert("删除所选项 ?", {
                btn: ["确定", "取消"],
                btn1: function () {
                    alert("点击了确定");
                },
                btn2: function () {
                    alert("点击了取消");
                }
            });
        },
        update: function () {

        }
    };

    table.render({
        elem: '#emps_table'
        , id: '#emps_table'
        , toolbar: false
        , url: _ctx + '/emp/list' //数据接口
        // , height: 'full-100'
        , page: true //开启分页
        , toolbar: '#toolbarDemo'
        , limit: 10
        , limits: [5, 10, 20]
        , cols: [[ //表头
            {type: "checkbox"}
            , {field: 'empno', title: '员工编号'}
            , {field: 'ename', title: '员工名称'}
            , {
                field: 'sex', title: '性别', templet: function (d) {
                    return d.sex == "1" ? "男" : "女"
                }
            }
            , {field: 'age', title: '年龄'}
            , {
                field: 'hiredate', title: '入职日期', templet: function (d) {
                    var date = new Date(d.hiredate);
                    var dateinfo = date.getFullYear() + "-" + (date.getMonth() + 1) + "-" + date.getDate();
                    return dateinfo;
                }
            }
            , {field: 'sal', title: '工资'}
            , {field: 'comm', title: '奖金'}
            , {field: '', title: '操作', templet: '#opera_btns'}
        ]]
    });

    table.on("toolbar(emptable)", function (obj) {
        active[obj.event]();
    });

    table.on("tool(emptable)", function (obj) {
        alert(obj.event);
    });

    function openDialog(tpl, title, area, dates, callback) {
        var idx = layer.open({
            type: 1,
            content: tpl,
            title: title,
            area: area,
            shade: 0.2,
            offset: "100px",
            btn: ["保存", "取消"],
            yes: function () {
                callback();
            }
        });
        for (var i = 0; i < dates.length; i++) {
            laydate.render({
                elem: dates[i]
            });
        }
        form.render();

        return idx;
    }
});