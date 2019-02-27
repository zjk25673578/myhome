layui.use(['table', 'layer', 'laydate'], function () {
    var table = layui.table,
        form = layui.form,
        laydate = layui.laydate,
        layer = layui.layer;

    var tempAddObj = {
        ids: "",
        hname: "",
        community: "",
        province: "",
        city: "",
        area: "",
        begintime: timestamp2Date(new Date().getTime()),
        endtime: "",
        address: ""
    };

    var tableIns = table.render({
        elem: '#homes-table',
        url: _ctx + '/homes/list',
        cols: [[
            {field: '', type: 'checkbox'},
            {field: '', title: '序号', type: 'numbers'},
            {field: 'ids', title: '代号', width: 100, hide: true},
            {field: 'groupname', title: '归属组名称', width: 120},
            {field: 'hname', title: '家昵称', width: 120},
            {field: 'provinceName', title: '省', width: 100},
            {field: 'cityName', title: '市', width: 100},
            {field: 'areaName', title: '区', width: 100},
            {field: 'address', title: '详细地址'},
            {field: 'community', title: '小区名称', width: 120},
            {
                field: 'begintime', title: '开始时间', width: 120, templet: function (d) {
                    return timestamp2Date(d.begintime);
                }
            },
            {
                field: 'endtime', title: '离开时间', width: 120, templet: function (d) {
                    return timestamp2Date(d.endtime);
                }
            },
            {
                field: 'living', title: '当前住所', width: 120, templet: '#livingTpl'
            },
            {field: '', title: '管理', toolbar: '#opera-btns', fixed: 'right', width: 120}
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
                method: "post",
                page: {
                    curr: 1
                }
            });
        },
        // 添加数据
        add: function () {
            saveOrUpdate(tempAddObj, "添加记录", _ctx + "/homes/update");
        },
        // 修改数据
        update: function (obj) {
            obj.data.cityTemplate = '';
            var cityList = buildSelector(obj.data.province);
            for (var i = 0; i < cityList.length; i++) {
                obj.data.cityTemplate += ('<option value="' + cityList[i].ids + '" '
                    + (cityList[i].ids === obj.data.city ? 'selected' : '')
                    + '>' + cityList[i].dicvalue + '</option>');
            }
            obj.data.areaTemplate = '';
            var areaList = buildSelector(obj.data.city);
            for (var j = 0; j < areaList.length; j++) {
                obj.data.areaTemplate += ('<option value="' + areaList[j].ids + '" '
                    + (areaList[j].ids === obj.data.area ? 'selected' : '')
                    + '>' + areaList[j].dicvalue + '</option>');
            }
            saveOrUpdate(handleUndefinedAndNull(obj.data, "begintime", "endtime"), "修改记录", _ctx + "/homes/update");
        },

        // 删除数据
        del: function (obj) {
            var row = obj.data;
            layer.confirm("确定删除 <font color='blue'>" + row.hname + " </font>这条记录吗 ?", {icon: 3}, function (index) {
                var ids = row.ids;
                $.post(_ctx + "/homes/delete", {ids: ids}, function (data) {
                    if (data.success) {
                        tableIns.reload({
                            page: {
                                curr: 1
                            }
                        });
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
                        $.post(_ctx + "/homes/deleteMultiple", {ids: ids}, function (data) {
                            if (data.success) {
                                tableIns.reload({
                                    page: {
                                        curr: 1
                                    }
                                });
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

    form.on('switch(living)', function(obj){
        layer.tips(this.value + ' ' + this.name + ' '+ obj.elem.checked, obj.othis);
    });

    // 监听查询表单的提交事件
    form.on("submit(searchSubmit)", function (data) {
        active["search"](data.field);
        return false;
    });

    // 监听表格上方按钮的事件
    table.on("toolbar(homes-table)", function (obj) {
        if (!(obj.event.indexOf('LAYTABLE') >= 0)) {
            active[obj.event](obj);
        }
    });

    // 监听表格右侧的工具栏
    table.on("tool(homes-table)", function (obj) {
        active[obj.event](obj);
    });

    // 监听省级下拉框事件
    form.on("select(province)", function (obj) {
        getChildrenDistrict("#city", obj.value);
        clearSelector($("#area"));
    });

    // 监听市级下拉框事件
    form.on("select(city)", function (obj) {
        getChildrenDistrict("#area", obj.value);
    });

    /**
     * 添加或者修改的方法
     * @param data
     * @param title
     * @param url
     */
    function saveOrUpdate(data, title, url) {
        var tpl = document.getElementById("homes-addOrEdit").innerHTML;
        laytpl(tpl).render(data, function (html) {
            var width = ($(window).width() * 0.6);
            var height = ($(window).height() * 0.65);
            openDialog(html, title, [width + 'px', height + 'px'], function (idx) {
                var formdata = $("#form-homes").serializeArray();
                var result = validJqueryForm(formdata); // 表单验证
                if (result) {
                    $.ajax({
                        url: url,
                        type: 'post',
                        data: formdata,
                        dataType: 'json',
                        success: function (data) {
                            if (data.success) {
                                tableIns.reload({
                                    page: {
                                        curr: 1
                                    }
                                });
                                layer.close(idx);
                                layer.msg(data.message, {time: 1000});
                            } else {
                                layer.alert(data.message, {icon: data.iconType});
                            }
                        },
                        error: ajaxError
                    });
                }
            }, ["#begintime", "#endtime"]);
        });
    }

    function clearSelector(inputElem) {
        inputElem.empty();
        inputElem.append("<option value=''>下拉以选择</option>");
    }

    function getChildrenDistrict(id, parentid) {
        $.post(_ctx + "/dict/children/district", {
            parentid: parentid
        }, function (resultData) {
            if (resultData.success) {
                var $input = $(id);
                clearSelector($input);
                for (var i = 0; i < resultData.data.length; i++) {
                    var district = resultData.data[i];
                    $input.append("<option value='" + district.ids + "'>" + district.dicvalue + "</option>");
                }
                form.render('select', 'homes');
            } else {
                layer.alert("后台出现异常 ！", {icon: 2});
            }
        }, "json");
    }

    function buildSelector(parentid) {
        var dataList = [];
        $.ajax({
            url: _ctx + "/dict/children/district",
            type: "post",
            data: {
                parentid: parentid
            },
            dataType: "json",
            async: false,
            success: function (resultData) {
                if (resultData.success) {
                    dataList = resultData.data;
                }
            },
            error: ajaxError
        });
        return dataList;
    }

});