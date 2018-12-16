$(function () {

    /**
     * 加载左侧菜单
     */
    $.post(_ctx + "/mhmenu/menus", function (rdata) {
        var html = createMenuTree(rdata.data, 0);
        $("#side-nav").html(html.replace('<ul class="sub-menu">', '<ul id="nav">'));
    }, "json");

    /**
     * 根据id, parentid组装菜单
     * @param list
     * @param parentid
     * @returns {string}
     */
    function createMenuTree(list, parentid) {
        var str = '<ul class="sub-menu">';
        for (var i = 0; i < list.length; i++) {
            var d = list[i];
            if (d.parentid === parentid) {
                var href = d.murl ? '_href="' + _ctx + d.murl + '"' : 'href="javascript:;"';
                str += '<li><a ' + href + '><i class="iconfont">&#xe6b8;</i><cite>' + d.menuname + '</cite>';
                if (hasChildren(d.ids, list)) {
                    str += '<i class="iconfont nav_right">&#xe697;</i>';
                }
                str += '</a>';
                if (hasChildren(d.ids, list)) {
                    str += createMenuTree(list, d.ids);
                }
                str += '</li>';
            }
        }
        str += '</ul>';
        return str;
    }

    /**
     * 判断有没有子菜单
     * @param parentid
     * @param list
     * @returns {boolean}
     */
    function hasChildren(parentid, list) {
        if (list.length && list.length > 0) {
            for (var i = 0; i < list.length; i++) {
                if (list[i].parentid === parentid) {
                    return true;
                }
            }
        }
        return false;
    }
});