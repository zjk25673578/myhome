layui.config({
    base: _ctx + "/res/layui/lay/mymodules/"
}).use(['layer', 'eleTree'], function () {
    var $ = layui.jquery,
        layer = layui.layer,
        eleTree = layui.eleTree;

    eleTree.render({
        elem: "#menu-tree",
        type: "post",
        url: _ctx + "/mhmenu/menuTree",
        showCheckbox: true,
        // contextmenuList: ["copy", "add", "edit", "remove"],
        drag: true,
        indent: 20,
        accordion: false
    });
});