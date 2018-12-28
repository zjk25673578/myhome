/* 菜单树页面 */
layui.config({
    base: _ctx + '/res/layui/lay/mymodules/'
}).use(['layer', 'eleTree'], function () {
    var $ = layui.jquery,
        eleTree = layui.eleTree;

    var ids = $("#ids").val();

    $.post(_ctx + "/usermenu/getChecked", {ids: ids}, function (data) {
        if (data.success) {
            var el = eleTree.render({
                elem: '#menu-tree',
                method: 'post',
                url: _ctx + '/mhmenu/menuTree',
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
        var menuid = d.data.currentData.id;
        if (ids && d.isChecked) {
            console.log(ids);
            console.log(menuid);
        }
    })
});