layui.use(['form', 'table', 'layer', 'laytpl'], function () {
    var table = layui.table,
        form = layui.form,
        laytpl = layui.laytpl,
        layer = layui.layer;

    // 添加, 修改表单的数据模型
    var tempData = {
        ids: "",
        uname: "",
        rname: "",
        userType: ""
    };

    table.render({
        elem: '#users-table',
        url: _ctx + '/mhusers/userList',
        cols: [[
            {field: '', type: 'checkbox'},
            {field: '', title: '序号', type: 'numbers'},
            {field: 'ids', title: 'ID', width: 50, hide: true},
            {field: 'uname', title: '用户名'},
            {field: 'pword', title: '密码', hide: true},
            {field: 'rname', title: '姓名'},
            {
                field: 'userType', title: '用户类型', templet: function (d) {
                    var formatValue = "--";
                    if (d.userType == 0) {
                        formatValue = '普通用户';
                    }
                    if (d.userType == 1) {
                        formatValue = '超级管理员';
                    }
                    return formatValue;
                }
            },
            {
                field: 'setups', title: '状态', templet: function (d) {
                    var formatValue = "--";
                    if (d.setups == 0) {
                        formatValue = '<font color="#FFB800">已禁用</font>';
                    }
                    if (d.setups == 1) {
                        formatValue = '<font color="green">已启用</font>';
                    }
                    return formatValue;
                }, width: 80
            },
            {field: 'createname', title: '创建人'},
            {
                field: 'createtime', title: '创建时间', templet: function (d) {
                    return timestamp2Date(d.createtime);
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
            table.reload("users-table", {
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
            saveOrUpdate(tempData, "新增用户", _ctx + "/mhusers/saveUser");
        },

        // 修改数据
        update: function (obj) {
            saveOrUpdate(parseData(obj.data), "编辑用户", _ctx + "/mhusers/updateUser");
        },

        // 删除数据
        del: function (obj) {
            var row = obj.data;
            layer.confirm("确定删除 <font color='blue'>" + row.rname + " </font>吗 ?", {icon: 3}, function (index) {
                var ids = row.ids;
                $.post(_ctx + "/mhusers/deleteUser", {ids: ids}, function (data) {
                    if (data.success) {
                        table.reload("users-table");
                    }
                    layer.close(index);
                    layer.msg(data.message, {icon: data.iconType});
                }, "json");
            });
        },

        // 启用, 禁用
        on_off: function (obj) {
            var row = obj.data;
            var setups = row.setups;
            var ids = row.ids;
            layer.confirm("确定" + ((setups == 1) ? "禁用" : "启用") + " <font color='blue'>" + row.uname + " </font>吗 ?", {icon: 3}, function (index) {
                $.post(_ctx + "/mhusers/updateSetups", {ids: ids, setups: (setups == 1) ? "0" : "1"}, function (data) {
                    if (data.success) {
                        table.reload("users-table");
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
                        $.post(_ctx + "/mhusers/deleteUsers", {ids: ids}, function (data) {
                            if (data.success) {
                                table.reload("users-table");
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

    // 表格的行双击事件
    table.on('rowDouble(users-table)', function (obj) {
        if (obj.data.userType !== 1) {
            layer.open({
                type: 2,
                content: _ctx + "/mhmenu/tree?ids=" + obj.data.ids,
                title: "<font color='blue'>" + obj.data.rname + "</font> 的权限",
                area: ["300px", "600px"],
                offset: "10%"
            });
        } else {
            layer.alert("超级管理员默认拥有所有菜单权限 !");
        }
    });

    // 监听表格上方按钮的事件
    table.on("toolbar(users-table)", function (obj) {
        if (!(obj.event.indexOf('LAYTABLE') >= 0)) {
            active[obj.event](obj);
        }
    });

    // 监听表格右侧的工具栏
    table.on("tool(users-table)", function (obj) {
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
        var tpl = document.getElementById("user-addOrEdit").innerHTML;
        laytpl(tpl).render(data, function (html) {
            openDialog(html, title, ['330px', '420px'], function (idx) {
                var formdata = $("#form-data-user").serializeArray();
                var result = validateForm(formdata); // 表单验证
                if (result) {
                    $.ajax({
                        url: url,
                        type: 'post',
                        data: formdata,
                        dataType: 'json',
                        success: function (data) {
                            if (data.success) {
                                table.reload("users-table");
                                layer.close(idx);
                            } else {
                                layer.alert(data.message, {icon: data.iconType, time: 3000});
                            }
                        },
                        error: function () {
                            layer.msg('出现异常 !');
                        }
                    });
                }
            });
        });
    }

    /**
     * 格式化一下数据
     * layui表格中取出的行对象如果没有对应的值则设置为空字符串
     * @param updateData
     * @returns {*}
     */
    function parseData(updateData) {
        for (var p in tempData) {
            if (updateData[p] === undefined) {
                updateData[p] = "";
            }
        }
        return updateData;
    }

    // 自定义表单验证规则
    var form_validation = {
        uname: function (value) {
            if (!value.length > 0) {
                layer.msg("必须填写用户名 !", {icon: 5});
                return false;
            }
            return true;
        },
        rname: function (value) {
            if (value == null || value == undefined || value == "") {
                layer.msg("必须填写姓名 !", {icon: 5});
                return false;
            }
            return true;
        },
        userType: function (value) {
            if (value == null || value == undefined || value == "") {
                layer.msg("必须选择用户类型 !", {icon: 5});
                return false;
            }
            return true;
        }
    };

    /**
     * 表单验证
     * @param formObj
     * @returns {*}
     */
    function validateForm(formObj) {
        var temp = {};
        for (var attr in formObj) {
            temp[formObj[attr].name] = formObj[attr].value;
        }
        for (var attr in form_validation) {
            var r = form_validation[attr](temp[attr]);
            if (!r) {
                return false;
            }
        }
        return true;
    }
});