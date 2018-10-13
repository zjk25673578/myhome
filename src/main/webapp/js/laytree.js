layui.config({
    base: "../lib/layui/lay/mymodules/"
}).use(['jquery', 'eleTree'], function () {
    let $ = layui.jquery;
    let eleTree = layui.eleTree;
    eleTree.render({
        elem: "#elem-tree",
        type: "post",
        url: _ctx + "/elemtree/trees",
        // showCheckbox: true,
        // contextmenuList: ["copy", "add", "edit", "remove"],
        // drag: true,
        indent: 18,
        accordion: false
    });
});