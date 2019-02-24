$(function () {
    // 加载弹出层
    layui.use(['form', 'element', 'laydate', 'form', 'laytpl', 'table'], function () {
        layer = layui.layer;
        element = layui.element;
        laydate = layui.laydate;
        table = layui.table;
        laytpl = layui.laytpl;
        form = layui.form;
    });

    // 触发事件
    var tab = {
        tabAdd: function (title, url, id) {
            // 新增一个Tab项
            element.tabAdd('xbs_tab', {
                title: title,
                content: '<iframe tab-id="' + id + '" frameborder="0" src="' + url + '" scrolling="yes" class="x-iframe"></iframe>',
                id: id
            })
        },
        tabDelete: function (othis) {
            // 删除指定Tab项
            element.tabDelete('xbs_tab', '44'); // 删除：“商品管理”
            othis.addClass('layui-btn-disabled');
        },
        tabChange: function (id) {
            // 切换到指定Tab项
            element.tabChange('xbs_tab', id); // 切换到：用户管理
        }
    };

    tableCheck = {
        init: function () {
            $(".layui-form-checkbox").click(
                function (event) {
                    if ($(this).hasClass('layui-form-checked')) {
                        $(this).removeClass('layui-form-checked');
                        if ($(this).hasClass('header')) {
                            $(".layui-form-checkbox").removeClass('layui-form-checked');
                        }
                    } else {
                        $(this).addClass('layui-form-checked');
                        if ($(this).hasClass('header')) {
                            $(".layui-form-checkbox").addClass('layui-form-checked');
                        }
                    }
                });
        },
        getData: function () {
            var obj = $(".layui-form-checked").not('.header');
            var arr = [];
            obj.each(function (index, el) {
                arr.push(obj.eq(index).attr('data-id'));
            });
            return arr;
        }
    };

    // 开启表格多选
    tableCheck.init();

    $('.container .left_open i').click(function (event) {
        if ($('.left-nav').css('left') == '0px') {
            $('.left-nav').animate({
                left: '-221px'
            }, 100);
            $('.page-content').animate({
                left: '0px'
            }, 100);
            $('.page-content-bg').hide();
        } else {
            $('.left-nav').animate({
                left: '0px'
            }, 100);
            $('.page-content').animate({
                left: '221px'
            }, 100);
            if ($(window).width() < 768) {
                $('.page-content-bg').show();
            }
        }
    });

    $('.page-content-bg').click(function (event) {
        $('.left-nav').animate({
            left: '-221px'
        }, 100);
        $('.page-content').animate({
            left: '0px'
        }, 100);
        $(this).hide();
    });

    $('.layui-tab-close').click(function (event) {
        $('.layui-tab-title li').eq(0).find('i').remove();
    });

    $("tbody.x-cate tr[fid!='0']").hide();

    // 栏目多级显示效果
    $('.x-show').click(
        function () {
            if ($(this).attr('status') == 'true') {
                $(this).html('&#xe625;');
                $(this).attr('status', 'false');
                cateId = $(this).parents('tr').attr('cate-id');
                $("tbody tr[fid=" + cateId + "]").show();
            } else {
                cateIds = [];
                $(this).html('&#xe623;');
                $(this).attr('status', 'true');
                cateId = $(this).parents('tr').attr('cate-id');
                getCateId(cateId);
                for (var i in cateIds) {
                    $("tbody tr[cate-id=" + cateIds[i] + "]").hide().find(
                        '.x-show').html('&#xe623;').attr('status',
                        'true');
                }
            }
        });

    // 左侧菜单效果
    // $('#content').bind("click",function(event){
    $('.left-nav').on("click", "#nav li", function (event) {

        if ($(this).children('.sub-menu').length) {
            if ($(this).hasClass('open')) {
                $(this).removeClass('open');
                $(this).find('.nav_right').removeClass("fa-angle-down").addClass("fa-angle-left");
                $(this).children('.sub-menu').stop().slideUp("fast");
                $(this).siblings().children('.sub-menu').slideUp("fast");
            } else {
                $(this).addClass('open');
                $(this).children('a').find('.nav_right').removeClass("fa-angle-left").addClass("fa-angle-down");
                $(this).children('.sub-menu').stop().slideDown("fast");
                $(this).siblings().children('.sub-menu').stop().slideUp("fast");
                $(this).siblings().find('.nav_right').removeClass("fa-angle-down").addClass("fa-angle-left");
                $(this).siblings().removeClass('open');
            }
        } else {

            var url = $(this).children('a').attr('_href');
            var title = $(this).find('cite').html();
            var index = $('.left-nav #nav li').index($(this));

            for (var i = 0; i < $('.x-iframe').length; i++) {
                if ($('.x-iframe').eq(i).attr('tab-id') == index + 1) {
                    tab.tabChange(index + 1);
                    event.stopPropagation();
                    return;
                }
            }

            tab.tabAdd(title, url, index + 1);
            tab.tabChange(index + 1);
        }
        event.stopPropagation();
    });

});
var cateIds = [];

function getCateId(cateId) {
    $("tbody tr[fid=" + cateId + "]").each(function (index, el) {
        id = $(el).attr('cate-id');
        cateIds.push(id);
        getCateId(id);
    });
}

/* 弹出层 */
/**
 * 参数解释：
 * title 标题
 * url 请求的url
 * id 需要操作的数据id
 * w 弹出层宽度（缺省调默认值）
 * h 弹出层高度（缺省调默认值）
 */
function x_admin_show(title, url, w, h) {
    if (title == null || title == '') {
        title = false;
    }
    if (url == null || url == '') {
        url = _ctx + "error404";
    }
    if (w == null || w == '') {
        w = ($(window).width() * 0.6);
    }
    if (h == null || h == '') {
        h = ($(window).height() * 0.6);
    }
    layer.open({
        type: 2,
        area: [w + 'px', h + 'px'],
        fix: false, // 不固定
        maxmin: true,
        offset: '15%',
        // shadeClose: true,
        shade: 0.3,
        title: title,
        content: url
    });
}

/**
 * @param tpl 需要渲染的模板
 * @param title 对话框的标题
 * @param area 对话框的宽高
 * @param dates 需要渲染的日期框的id
 * @param callback 点击确定的回调函数
 * @returns {*} 当前打开的对话框的layui索引
 */
function openDialog(tpl, title, area, callback, dates) {
    layer.open({
        type: 1,
        content: tpl,
        title: title,
        area: area,
        maxmin: true,
        // shade: false,
        // shadeClose: true,
        // offset: "20%",
        btn: ["保存", "取消"],
        yes: function (idx) {
            callback(idx);
        }
    });
    if (dates) {
        for (var i = 0; i < dates.length; i++) {
            laydate.render({
                elem: dates[i]
            });
        }
    }
    return form.render();
}

/* 关闭弹出框口 */
function x_admin_close() {
    var index = parent.layer.getFrameIndex(window.name);
    parent.layer.close(index);
}

/**
 * 时间戳转换成yyyy-MM-dd HH:mm:ss
 * @param timestamp
 * @returns {string}
 */
function timestamp2Datetime(timestamp) {
    var dateStr = timestamp2Date(timestamp);
    if (dateStr && dateStr.length > 0) {
        var time = new Date(timestamp).toTimeString().substr(0, 8);
        return dateStr + ' ' + time;
    }
    return "";
}

/**
 * 时间戳转换成yyyy-MM-dd
 * @param timestamp
 * @returns {string}
 */
function timestamp2Date(timestamp) {
    if (timestamp) {
        var date = new Date(timestamp);
        var y = date.getFullYear(),
            m = date.getMonth() + 1,
            d = date.getDate();
        return y + "-" + (m < 10 ? "0" + m : m) + "-" + (d < 10 ? "0" + d : d);
    } else {
        return "";
    }
}

/**
 * 处理一下对象的字段
 * 将undefined和null转换成''的空字符串
 * @param obj
 * @returns {*}
 */
function handleUndefinedAndNull(obj) {
    for (var p in obj) {
        if (obj[p] != null && obj[p] != 'null' && obj[p] != undefined && obj[p] != 'undefined') {
            continue;
        }
        obj[p] = '';
    }
    for (var k = 1; k < arguments.length; k++) {
        var timestamp = obj[arguments[k]];
        console.log(timestamp);
        obj[arguments[k]] = timestamp2Date(timestamp);
        console.log(obj[arguments[k]]);
    }
    return obj;
}

// 全局自定义表单验证规则
var formValid = {

    // 支出记录验证
    createtype: function (value) {
        if (!value.length > 0) {
            layer.msg("必须选择类型 !", {icon: 5});
            return false;
        }
        return true;
    },
    reason: function (value) {
        if (value == null || value === "") {
            layer.msg("必须填写备注 !", {icon: 5});
            return false;
        }
        return true;
    },
    prodate: function (value) {
        if (value == null || value === "") {
            layer.msg("必须选择发生日期 !", {icon: 5});
            return false;
        }
        return true;
    },
    cash: function (value) {
        if (value == null || value === "") {
            layer.msg("必须填写金额 !", {icon: 5});
            return false;
        }
        if (!(/\d{1,6}\.?\d{0,2}/.test(value))) {
            layer.msg("整数位最多6位, 小数位最多2位 !", {icon: 5});
            return false;
        }
        return true;
    },

    // 用户列表页面验证
    uname: function (value) {
        if (!value.length > 0) {
            layer.msg("必须填写用户名 !", {icon: 5});
            return false;
        }
        return true;
    },
    rname: function (value) {
        if (value == null || value == undefined || value == "") {
            layer.msg("必须填写姓名 !", {icon: 5});
            return false;
        }
        return true;
    },
    userType: function (value) {
        if (value == null || value == undefined || value == "") {
            layer.msg("必须选择用户类型 !", {icon: 5});
            return false;
        }
        return true;
    },

    // 字典管理验证
    diccode: function (value) {
        if (!value.length > 0) {
            layer.msg("必须填写CDKEY !", {icon: 5});
            return false;
        }
        return true;
    },
    dicvalue: function (value) {
        if (value == null || value == undefined || value == "") {
            layer.msg("必须填写值 !", {icon: 5});
            return false;
        }
        return true;
    },

    // 用户组管理验证
    groupname: function (value) {
        if (value == null || value == undefined || value == "") {
            layer.msg("必须填写用户组名称 !", {icon: 5});
            return false;
        }
        return true;
    },

    // 家庭地址验证
    community: function (value) {
        if (value == null || value == undefined || value == "") {
            layer.msg("必须填写小区名称 !", {icon: 5});
            return false;
        }
        return true;
    },
    province: function (value) {
        if (value == null || value == undefined || value == "") {
            layer.msg("必须选择省 !", {icon: 5});
            return false;
        }
        return true;
    },
    city: function (value) {
        if (value == null || value == undefined || value == "") {
            layer.msg("必须选择市 !", {icon: 5});
            return false;
        }
        return true;
    },
    area: function (value) {
        if (value == null || value == undefined || value == "") {
            layer.msg("必须选择所在区县 !", {icon: 5});
            return false;
        }
        return true;
    }
};