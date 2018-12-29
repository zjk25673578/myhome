/* 菜单树页面 */
layui.config({
    base: _ctx + '/res/layui/lay/mymodules/'
}).use(['layer', 'eleTree'], function () {
    var $ = layui.jquery,
        layer = layui.layer,
        eleTree = layui.eleTree;

    // 用户id
    var ids = $("#ids").val();

    $.post(_ctx + "/usermenu/getChecked", {ids: ids}, function (data) {
        if (data.success) {
            var el = eleTree.render({
                elem: '#menu-tree',
                method: 'post',
                url: _ctx + '/mhmenu/menuTree/authority',
                showCheckbox: true,
                indent: 20,
                defaultExpandAll: true, // 默认展开全部
                expandOnClickNode: false, // 点击展开或者只有点击下拉三角才展开
                defaultCheckedKeys: data.checkedId, // 默认选中的
                accordion: false
            });
        }
    }, "json");

    /**
     *
     */
    eleTree.on("nodeChecked(menuTree)", function (d) {
        var index = layer.load();
        $.ajax({
            type: "post",
            url: _ctx + "/usermenu/updateAuthority",
            data: {
                ids: ids, // 用户id,
                checked: d.isChecked,
                menuid: d.data.currentData.id
            },
            dataType: "json",
            success: function (resultData) {
                layer.close(index);
                if (!resultData.success) {
                    layer.msg(resultData.msg, {icon: 2, shade: 0.01});
                }
            },
            error: function (resp) {
                layer.close(index);
                layer.alert(resp.responseText, {icon: 2, title: "出现异常 !"});
            }
        });
    })
});