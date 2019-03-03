layui.use(['form', 'table', 'layer', 'laytpl'], function () {
    var table = layui.table,
        form = layui.form,
        laytpl = layui.laytpl,
        layer = layui.layer;

    // 添加, 修改表单的数据模型
    var tempData = {
        ids: "",
        groupname: "",
        homeid: ""
    };

    var tableIns = table.render({
        elem: '#usergroup-table',
        url: _ctx + '/group/groupList',
        cols: [[
            {field: '', type: 'checkbox'},
            {field: '', title: '序号', type: 'numbers'},
            {field: 'ids', title: 'ID', width: 50, hide: true},
            // {field: 'groupcode', title: '用户组代号', hide: true},
            {field: 'groupname', title: '用户组名'},
            {field: 'rname', title: '管理员'},
            {field: 'hname', title: '家园名称'},
            {field: 'createname', title: '创建人'},
            {
                field: 'createtime', title: '创建时间', templet: function (d) {
                    return timestamp2Date(d.createtime);
                }
            },
            {field: 'updatename', title: '最后修改人'},
            {
                field: 'updatetime', title: '最后修改时间', templet: function (d) {
                    return timestamp2Date(d.updatetime);
                }
            },
            {field: '', title: '管理', toolbar: '#opera-btns', fixed: 'right', width: 170}
        ]],
        toolbar: '#toolbar',
        defaultToolbar: ['filter', 'print', 'exports'], // 'filter', 'print', 'exports'
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
                method: "post",
                page: {
                    curr: 1
                }
            });
        },
        // 添加数据
        add: function () {
            saveOrUpdate(tempData, "新增用户组", _ctx + "/group/saveGroup");
        },

        // 修改数据
        update: function (obj) {
            x_admin_show("修改用户组信息", _ctx + "/group/edit?ids=" + obj.data.ids, 400, 280);
        },

        // 删除数据
        del: function (obj) {
            var row = obj.data;
            layer.confirm("确定删除 <font color='blue'>" + row.groupname + "</font> 吗 ?", {icon: 3}, function (index) {
                var ids = row.ids;
                $.post(_ctx + "/group/deleteGroup", {ids: ids}, function (data) {
                    if (data.success) {
                        tableIns.reload();
                    }
                    layer.close(index);
                    layer.msg(data.message, {icon: data.iconType});
                }, "json");
            });
        }
    };

    // 监听查询表单的提交事件
    form.on("submit(searchSubmit)", function (data) {
        active["search"](data.field);
        return false;
    });

    // 表格的行双击事件
    table.on('rowDouble(usergroup-table)', function (obj) {
        layer.alert(JSON.stringify(obj.data));
    });

    // 监听表格上方按钮的事件
    table.on("toolbar(usergroup-table)", function (obj) {
        if (!(obj.event.indexOf('LAYTABLE') >= 0)) {
            active[obj.event](obj);
        }
    });

    // 监听表格右侧的工具栏
    table.on("tool(usergroup-table)", function (obj) {
        active[obj.event](obj);
    });

    /**
     * 添加或者修改的方法
     * @param data  模板中添加的数据
     * @param title 弹窗的标题
     * @param url   ajax请求路径
     */
    function saveOrUpdate(data, title, url) {
        // 获取指定模板
        var tpl = document.getElementById("usergroup-addOrEdit").innerHTML;
        laytpl(tpl).render(data, function (html) {
            openDialog(html, title, ['330px', '200px'], function (idx) {
                var formdata = $("#form-data-usergroup").serializeArray();
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