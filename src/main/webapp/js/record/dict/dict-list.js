layui.use(['form', 'table', 'layer', 'laytpl'], function () {
    var table = layui.table,
        form = layui.form,
        laytpl = layui.laytpl,
        layer = layui.layer;

    // 添加, 修改表单的数据模型
    var tempData = {
        ids: "",
        parentid: "",
        diccode: "",
        dicvalue: "",
        desp: ""
    };

    var tableIns = table.render({
        elem: '#dict-table',
        url: _ctx + '/dict/dictList',
        cols: [[
            {field: '', type: 'checkbox'},
            {field: 'ids', title: '代码代号', width: 100},
            {field: 'parentName', title: '父级数据', width: 100},
            {field: 'diccode', title: 'CDKEY'},
            {field: 'dicvalue', title: '值'},
            {field: 'desp', title: '描述'},
            {
                field: 'createtime', title: '创建时间', templet: function (d) {
                    return timestamp2Date(d.createtime);
                }
            },
            {field: 'createname', title: '创建人'},
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
            tableIns.reload({
                where: {
                    key: key
                },
                method: "post"
                , page: {
                    curr: 1
                }
            });
        },
        // 添加数据
        add: function () {
            saveOrUpdate(tempData, "新增字典数据", _ctx + "/dict/saveMultiple");
        },

        // 修改数据
        update: function (obj) {
            saveOrUpdate(handleUndefinedAndNull(obj.data), "修改字典数据", _ctx + "/dict/update");
        },

        // 删除数据
        del: function (obj) {
            var row = obj.data;
            layer.confirm("确定删除 <font color='blue'>" + row.dicvalue + " </font>吗 ?", {icon: 3}, function (index) {
                var ids = row.ids;
                $.post(_ctx + "/dict/deleteDict", {ids: ids}, function (data) {
                    if (data.success) {
                        tableIns.reload();
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
                        var ids = [];
                        for (var i = 0; i < len; i++) {
                            ids.push(data[i].ids);
                        }
                        $.post(_ctx + "/dict/deleteMultiple", {ids: ids.join(",")}, function (data) {
                            if (data.success) {
                                tableIns.reload();
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
    table.on("toolbar(dict-table)", function (obj) {
        if (!(obj.event.indexOf('LAYTABLE') >= 0)) {
            active[obj.event](obj);
        }
    });

    // 监听表格右侧的工具栏
    table.on("tool(dict-table)", function (obj) {
        active[obj.event](obj);
    });

    /**
     * 添加或者修改的方法
     * @param data
     * @param title
     * @param url
     */
    function saveOrUpdate(data, title, url) {
        var tpl = document.getElementById("dict-addOrEdit").innerHTML;
        laytpl(tpl).render(data, function (html) {
            openDialog(html, title, ['380px', '440px'], function (idx) {
                var formdata = $("#form-data-dict").serializeArray();
                var result = validJqueryForm(formdata); // 表单验证
                if (result) {
                    $.ajax({
                        url: url,
                        type: 'post',
                        data: formdata,
                        dataType: 'json',
                        success: function (data) {
                            if (data.success) {
                                tableIns.reload();
                                layer.close(idx);
                                layer.msg(data.message, {time: 1000});
                            } else {
                                layer.alert(data.message, {icon: data.iconType});
                            }
                        },
                        error: ajaxError
                    });
                }
            });
        });
    }
});