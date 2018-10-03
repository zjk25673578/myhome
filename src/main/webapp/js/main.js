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

    laydate.render({elem: "#start_hiredate"});
    laydate.render({elem: "#end_hiredate"});

    // 定义页面中的方法
    var active = {
        search: function () {
            // search_form  form表单的id
        },
        add: function () {
            var tpl = document.getElementById("form_emp").innerHTML;
            var idx = openDialog(tpl, "添加员工信息", ["350px", "390px"], ["#hiredate"], function () {
                var formdata = $("#form_data_emp").serializeArray();
                $.ajax({
                    url: _ctx + "/emp/addEmp",
                    type: "post",
                    data: formdata,
                    dataType: "json",
                    success: function (data) {
                        // 关闭对话框
                        layer.close(idx);
                        layer.alert(data.action, {icon: data.type}, function (index) {
                            table.reload("#emps_table");
                            // 关闭提示消息
                            layer.close(index);
                        });
                    },
                    error: function () {
                        // layer.close(idx);
                        layer.msg("出现异常 !");
                    }
                });
            });
        },
        update: function () {
            alert(123);
        },
        del: function (obj) {
            var row = obj.data;
            layer.confirm("确定删除 <font color='blue'>" + row.ename + " </font>吗 ?", function (index) {
                var empno = row.empno;
                $.post(_ctx + "/emp/deleteEmp", {empno: empno}, function (data) {
                    layer.close(index);
                    table.reload("#emps_table");
                    layer.msg(data.action);
                }, "json");
            });
        },
        del_multiple: function (obj) {
            var checkStatus = table.checkStatus(obj.config.id);
            var len = checkStatus.data.length;
            layer.alert("确定删除所选<font color='blue'> " + len + " </font>项 ?", {
                btn: ["确定", "取消"],
                btn1: function (index) {
                    if (len > 0) {
                        var data = checkStatus.data;
                        var ids = "";
                        for (var i = 0; i < len; i++) {
                            ids += data[i].empno;
                            if (i != len - 1) {
                                ids += ",";
                            }
                        }
                        $.post(_ctx + "/emp/delMultipleEmp", {ids: ids}, function (data) {
                            layer.close(index);
                            table.reload("#emps_table");
                            layer.msg(data.action);
                        }, "json");
                    } else {
                        layer.msg("Please Select The Data !", {icon: 5});
                    }
                }
            });
        }
    };

    // 渲染表格
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
            , {field: '', title: '操作', toolbar: '#opera_btns'}
        ]]
    });

    // 监听表格左上方按钮的事件
    table.on("toolbar(emptable)", function (obj) {
        active[obj.event](obj);
    });

    // 监听表格右侧的工具栏
    table.on('tool(emptable)', function (obj) {
        active[obj.event](obj);
    });

    // 监听查询表单的提交事件
    form.on("submit(search_form)", function (data) {

        return false; // button必须使用 lay-submit 属性这个返回 false 才管用 !
    });

    /**
     * @param tpl 需要渲染的模板
     * @param title 对话框的标题
     * @param area 对话框的宽高
     * @param dates 需要渲染的日期框的id
     * @param callback 点击确定的回调函数
     * @returns {*} 当前打开的对话框的layui索引
     */
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