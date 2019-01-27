layui.use(['table', 'layer', 'laydate'], function () {
    var table = layui.table,
        form = layui.form,
        laydate = layui.laydate,
        layer = layui.layer;

    laydate.render({
        elem: "#prodate",
        type: "month"
    });

    table.render({
        elem: '#finance-out-table',
        url: _ctx + '/finance/out/list',
        cols: [[
            {field: '', type: 'checkbox'},
            {field: '', title: '序号', type: 'numbers'},
            {field: 'ids', title: '代号', width: 100, hide: true},
            {field: 'userid', title: '所有者', width: 120},
            {field: 'createtypename', title: '类型', width: 150},
            {
                field: 'prodate', title: '发生时间', width: 210, templet: function (d) {
                    return timestamp2Datetime(d.prodate);
                }
            },
            {
                field: 'cash', title: '金额', width: 150, templet: function (d) {
                    return "<font color='red'> -" + d.cash + "元 </font>";
                }
            },
            {field: 'reason', title: '备注'},
            {field: 'createname', title: '创建人', hide: true},
            {
                field: 'createtime', title: '创建时间', width: 180, templet: function (d) {
                    return timestamp2Date(d.createtime);
                }
            },
            {field: '', title: '管理', toolbar: '#opera-btns', fixed: 'right', width: 170}
        ]],
        toolbar: '#toolbar',
        page: true,
        limit: 8,
        limits: [8, 16, 40, 80]
    });

    // 定义页面中的方法
    var active = {
        // 查询数据
        search: function (field) {
            var key = JSON.stringify(field);
            table.reload("finance-out-table", {
                where: {
                    key: key
                },
                method: "post"
                , page: {
                    curr: 1
                }
            });
        },
        // 修改数据
        update: function (obj) {
            saveOrUpdate(handleUndefinedAndNull(obj.data), "修改出账记录", _ctx + "/finance/update");
        },

        // 删除数据
        del: function (obj) {
            var row = obj.data;
            layer.confirm("确定删除 <font color='blue'>" + row.createtypename + " </font>这条记录吗 ?", {icon: 3}, function (index) {
                var ids = row.ids;
                $.post(_ctx + "/finance/delete", {ids: ids}, function (data) {
                    if (data.success) {
                        table.reload("finance-out-table");
                    }
                    layer.close(index);
                    layer.msg(data.message, {icon: data.iconType});
                }, "json");
            });
        },

        // 批量删除数据
        del_multiple: function (obj) {
            var checkStatus = table.checkStatus(obj.config.id);
            var len = checkStatus.data.length;
            if (len > 0) {
                layer.alert("确定删除所选<font color='blue'> " + len + " </font>项 ?", {
                    btn: ["确定", "取消"], icon: 3,
                    btn1: function (index) {
                        var data = checkStatus.data;
                        var ids = "";
                        for (var i = 0; i < len; i++) {
                            ids += data[i].ids;
                            if (i !== len - 1) {
                                ids += ",";
                            }
                        }
                        $.post(_ctx + "/finance/deleteMultiple", {ids: ids}, function (data) {
                            if (data.success) {
                                table.reload("finance-out-table");
                            }
                            layer.close(index);
                            layer.msg(data.message, {icon: data.iconType});
                        }, "json");
                    }
                });
            } else {
                layer.msg("至少选择一条数据 !", {icon: 5});
            }
        }
    };

    // 监听查询表单的提交事件
    form.on("submit(searchSubmit)", function (data) {
        active["search"](data.field);
        return false;
    });

    // 监听表格上方按钮的事件
    table.on("toolbar(finance-out-table)", function (obj) {
        if (!(obj.event.indexOf('LAYTABLE') >= 0)) {
            active[obj.event](obj);
        }
    });

    // 监听表格右侧的工具栏
    table.on("tool(finance-out-table)", function (obj) {
        active[obj.event](obj);
    });

    /**
     * 添加或者修改的方法
     * @param data
     * @param title
     * @param url
     */
    function saveOrUpdate(data, title, url) {
        var tpl = document.getElementById("finance-out-edit").innerHTML;
        laytpl(tpl).render(data, function (html) {
            openDialog(html, title, ['330px', '440px'], function (idx) {
                var formdata = $("#form-finance-out").serializeArray();
                var result = validJqueryForm(formdata); // 表单验证
                if (result) {
                    $.ajax({
                        url: url,
                        type: 'post',
                        data: formdata,
                        dataType: 'json',
                        success: function (data) {
                            if (data.success) {
                                table.reload("finance-out-table");
                                layer.close(idx);
                                layer.msg(data.message, {time: 1000});
                            } else {
                                layer.alert(data.message, {icon: data.iconType});
                            }
                        },
                        error: function () {
                            layer.msg('出现异常 !');
                        }
                    });
                }
            });
            laydate.render({
                elem: "#prodate-field",
                type: "datetime",
                value: new Date(data.prodate)
            });
        });
    }
});