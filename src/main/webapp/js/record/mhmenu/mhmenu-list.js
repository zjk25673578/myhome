layui.config({
    base: _ctx + '/res/layui/lay/mymodules/'
}).use(['layer', 'form', 'table', 'eleTree'], function () {
    var $ = layui.jquery,
        layer = layui.layer,
        form = layui.form,
        table = layui.table,
        eleTree = layui.eleTree;

    var el = eleTree.render({
        elem: '#menu-tree',
        method: 'post',
        url: _ctx + '/mhmenu/menuTree',
        // showCheckbox: true,
        contextmenuList: ['add', 'remove'],
        draggable: true,
        indent: 20,
        defaultExpandAll: true, // 默认展开全部
        defaultExpandedKeys: [0],
        expandOnClickNode: false, // 点击展开或者只有点击下拉三角才展开
        // defaultCheckedKeys: [19], // 默认选中的
        accordion: false
    });

    // 拖拽改变menuTree的结构
    eleTree.on('nodeDrag(menuTree)', function (d) {
        $.post(_ctx + '/mhmenu/updateMenuStructure', {
            currentId: d.current.data.currentData.id,
            targetId: d.target.data.currentData.id
        }, function (data) {
            if (!data.success) {
                layer.msg(data.message, {icon: data.iconType});
            }
            el.reload();
        }, 'json');
    });

    // 添加子节点事件
    eleTree.on("nodeAppend(menuTree)", function (d) {
        var index = layer.load(2);
        var menu = {             // 自定义数据
            parentid: d.data.id,
            menuname: "新的菜单",
            label: "新的菜单",
            icon: "fa fa-circle"
        };
        d.setData(menu); // 在js层面刷新的显示
        $.post(_ctx + "/mhmenu/appendMenu", menu, function (resultData) {
            layer.msg(resultData.message, {icon: resultData.iconType});
            layer.close(index);
            el.reload();
        }, "json");
    });

    // 添加节点之前事件
    eleTree.on("nodeInsertBefore(menuTree)", function (d) {
        layer.msg("没有这个功能, 只能添加子节点");
    });

    // 添加节点之后事件
    eleTree.on("nodeInsertAfter(menuTree)", function (d) {
        layer.msg("没有这个功能, 只能添加子节点");
    });

    // 节点被删除事件
    eleTree.on("nodeRemove(menuTree)", function (d) {
        d.stop();
        layer.confirm('确定删除<font color="blue">' + d.data.label + '</font>？', {
            btn: ['确定', '取消'] //可以无限个按钮
            , yes: function (index, layero) {
                $.post(_ctx + "/mhmenu/removeMenu", {ids: d.data.id}, function (resultData) {
                    layer.msg(resultData.message, {icon: resultData.iconType});
                    layer.close(index);
                    el.reload();
                }, "json");
            }
        });
    });

    /**
     * eleTree的点击事件
     * 点击tree控件将值赋值给form
     */
    eleTree.on('nodeClick(menuTree)', function (d) {
        var treeData = d.data.currentData;

        table.reload('tableMenu', {
            where: {
                id: treeData.id
            }
        });

        form.val('formMenu', handleUndefinedAndNull({
            ids: treeData.id,
            menuname: treeData.label,
            murl: treeData.url,
            icon: treeData.icon,
            sort: treeData.attr.sort
        }));
    });

    /**
     * 监听表单提交
     */
    form.on('submit(menuForm)', function (data) {
        if (data.field.ids === "0") {
            layer.msg('这个改不了...没有为啥就是改不了', {icon: 1});
            return false;
        }
        layer.confirm("即将做修改操作, 确定要这样吗 ?", {
            yes: function (index) {
                $.post(_ctx + '/mhmenu/updateMenu', data.field, function (resultData) {
                    if (resultData.success) {
                        el.reload();
                        layer.msg(resultData.message);
                    } else {
                        layer.msg(resultData.message);
                    }
                }, 'json');
                layer.close(index);
            }
        });
        return false;
    });

    /**
     * 渲染表格
     */
    table.render({
        elem: '#tableMenu'
        , url: _ctx + '/mhmenu/listByParentId' //数据接口
        , cols: [[ //表头
            {field: 'ids', title: 'ID', width: 60}
            , {field: 'parentname', title: '父级菜单', width: 100}
            , {field: 'menuname', title: '菜单名称', width: 150}
            , {field: 'sort', title: '排序', width: 60}
            , {
                field: 'createtime', title: '创建时间', templet: function (d) {
                    return timestamp2Date(d.createtime);
                }
            }
            , {field: 'createname', title: '创建人'}
            , {
                field: 'updatetime', title: '最后修改时间', templet: function (d) {
                    return timestamp2Date(d.updatetime);
                }
            }
            , {field: 'updatename', title: '修改人'}
        ]]
    });

});

/**
 * 验证, 不允许在最外层前后添加菜单
 * @param data
 * @returns {boolean} true: 可以添加, false: 不允许添加
 */
function validParentId(data) {
    return data.id !== 0;
}

function appendMenu() {
    $.ajax({
        url: "",
        type: "",
        data: {},
        dataType: "json",
        success: function () {

        },
        error: function () {

        }
    });
}