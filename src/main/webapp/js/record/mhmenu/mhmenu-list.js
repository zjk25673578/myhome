layui.config({
    base: _ctx + "/res/layui/lay/mymodules/"
}).use(['layer', 'eleTree'], function () {
    var $ = layui.jquery,
        layer = layui.layer,
        eleTree = layui.eleTree;

    var el = eleTree.render({
        elem: "#menu-tree",
        method: "post",
        url: _ctx + "/mhmenu/menuTree",
        // showCheckbox: true,
        contextmenuList: ["add", "edit", "remove"],
        draggable: true,
        indent: 20,
        defaultExpandAll: true, // 默认展开全部
        defaultExpandedKeys: [0],
        // expandOnClickNode: false,
        // defaultCheckedKeys: [19], // 默认选中的
        accordion: false
    });

    // 拖拽改变menuTree的结构
    eleTree.on("nodeDrag(menuTree)", function (d) {
        $.post(_ctx + "/mhmenu/updateMenuStructure", {
            currentId: d.current.data.currentData.id,
            targetId: d.target.data.currentData.id
        }, function(data) {
            if (!data.success) {
                layer.msg(data.action, {icon: data.iconType});
            }
            el.reload();
        }, "json");
    });
});