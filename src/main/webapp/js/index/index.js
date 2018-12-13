$(function () {

    /**
     * 加载左侧菜单
     */
    $.post(_ctx + "/menu/menus", function (rdata) {
        var html = createMenuTree(rdata.data);
        $("#side-nav").html(html);
    }, "json");

    /**
     * 根据id, parentid组装菜单
     * @param list
     * @returns {string}
     */
    function createMenuTree(list) {
        var str = '<ul id="nav">';
        for (var i = 0; i < list.length; i++) {
            var d = list[i];
            if (d.parentid === 0) {
                str += '<li><a href="javascript:;"><i class="iconfont">&#xe6b8;</i><cite>' + d.menuname + '</cite><i class="iconfont nav_right">&#xe697;</i></a></li>';
            }
        }
        str += '</ul>';
        return str;
    }
});