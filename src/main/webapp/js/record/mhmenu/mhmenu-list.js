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

    // 右键菜单的添加事件
    eleTree.on("add(menuTree)", function (data) {
        console.log(data.value); // 新添加的标签名
        contentHtml(data.currentData); // 添加在哪一个节点下面
        // 若后台修改，则重新获取后台数据，然后重载
        // eleTree.reload(".ele1", {where: {data: JSON.stringify(data.data)}})
    });

    // 右键菜单修改事件
    eleTree.on("edit(menuTree)", function (data) {
        // contentHtml(data.currentData); // 修改后的对象
        contentHtml(data.value); // 修改后的对象的label值
    });

    // 右键菜单移除事件
    eleTree.on("remove(menuTree)", function (data) {
        // contentHtml(data.parentData); // 被删除对象所在的父级对象(删除之后的), 如果被删掉的是最外层节点则返回当前节点
        contentHtml(data.deleteData); // 被删除的对象
        // contentHtml(data.data); // 被删除之后的所有对象

    });

    // 鼠标单击事件
    eleTree.on("toggleSlide(menuTree)", function (data) {
        contentHtml(data.currentData); // 点击的对象
        // contentHtml(data.data); // 全部对象
    });

    // 复选框选中事件
    eleTree.on("checkbox(menuTree)", function (data) {
        // contentHtml(data.checkedData); // 当前状态下所有选中的对象
        contentHtml(data.currentData); // 选中的对象
        // contentHtml(data.data); // 全部对象
    });

    eleTree.on("drag(menuTree)", function (data) {
        console.log("drag(menuTree)");
        console.log(data);
    });

    // 获取所有的数据
    $("#getAll").on("click", function () {
        contentHtml(eleTree.checkedData("#elem-tree", true));
    });

    //获取选中的数据
    $("#getSelect").on("click", function () {
        contentHtml(eleTree.checkedData("#elem-tree"));
    });

    function contentHtml(obj) {
        $("#content").html(JSON.stringify(obj));
    }
});