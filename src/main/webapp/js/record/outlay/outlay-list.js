layui.use(['laydate', 'element', 'form', 'table', 'layer'], function () {
    var laydate = layui.laydate,
        element = layui.element,
        form = layui.form,
        table = layui.table,
        layer = layui.layer,
        $ = layui.jquery;

    /**
     * 新增数据模型
     * @type {{note: string, warm: number, loanrent: number, prodate: string, electric: number, gas: number, property: number, water: number}}
     */
    var tempAddData = {
        gas: 0,
        water: 0,
        warm: 0,
        property: 0,
        electric: 0,
        loanrent: 0,
        note: '',
        prodate: timestamp2Date(new Date().getTime())
    };

    // 渲染日期选择框
    laydate.render({
        elem: '#laydateSelector',
        position: 'static',
        btns: ['now'],
        type: 'year',
        min: '1949-10-01',
        max: '2099-12-31',
        change: function (value, date) { // 监听日期切换
            lay('#view').html(value + '年');
            lay('#year').val(value);
            console.log(date);
        },
        done: function (value, date) { // 点击'现在'按钮会执行这个函数
            lay('#view').html(value + '年');
            lay('#year').val(value);
            console.log(val);
            console.log(date);
        }
    });

    var tableIns = table.render({
        elem: '#lease-table',
        url: _ctx + '/outlay/getList',
        cols: [[
            {field: '', type: 'checkbox'},
            {field: '', title: '序号', type: 'numbers'},
            {field: 'ids', title: 'ID', width: 50, hide: true},
            {field: 'ptname', title: '类型'},
            {field: 'cash', title: '金额'},
            {field: 'transferName', title: '方式'},
            {field: 'homeAddress', title: '家庭地址', width: 200, hide: true},
            {field: 'username', title: '创建人'}, // 缴费人
            {field: 'bedate', title: '所属日期'},
            {
                field: 'createtime', title: '创建时间', templet: function (d) {
                    return timestamp2Date(d.createtime);
                }
            },
            {field: '', title: '管理', toolbar: '#opera-btns', fixed: 'right', width: 80}
        ]],
        toolbar: '#toolbar',
        defaultToolbar: ['filter', 'print', 'exports'], // 'filter', 'print', 'exports'
        page: true,
        limit: 6,
        limits: [6, 12, 24, 48]
    });

    var active = {
        update: function (obj) {
            layer.msg(JSON.stringify(obj.data));
        }
    };

    // 监听表格右侧的工具栏
    table.on("tool(lease-table)", function (obj) {
        active[obj.event](obj);
    });

    // 点击'添加'按钮
    form.on("submit(add)", function () {
        tempAddData["currYear"] = $("#year").val();
        tempAddData["bedate"] = "";
        saveOrUpdate(tempAddData, "添加数据", _ctx + "/outlay/insert");
    });

    // 点击'月份'下拉框
    form.on("select(month-select)", function (obj) {
        var param = {month: obj.value, year: $("#year").val()};
        tableIns.reload({
            where: {
                key: JSON.stringify(param)
            },
            method: "post",
            page: {
                curr: 1
            }
        });
        return false;
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
            openDialog(html, title, ['600px', '465px'], function (idx) {
                var formData = $("#outlay-form-data").serializeArray();
                var result = validJqueryForm(formData); // 表单验证
                if (result) {
                    $.ajax({
                        url: url,
                        type: 'post',
                        data: formData,
                        dataType: 'json',
                        success: function (resultData) {
                            if (resultData.success) {
                                layer.close(idx);
                            }
                            layer.msg(resultData.message);
                        },
                        error: ajaxError
                    });
                }
            }, ["#prodate"]);

            // 渲染所属月份
            laydate.render({
                elem: '#bedate',
                btns: ['confirm', 'clear'],
                type: 'month',
                min: data.currYear + '-01-01',
                max: data.currYear + '-12-31'
            });
        });
    }
});