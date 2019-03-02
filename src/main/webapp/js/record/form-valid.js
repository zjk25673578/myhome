/**
 * 非空判断
 * @param value
 * @returns {boolean}
 */
function notEmpty(value) {
    if (value === null || value === undefined) {
        return false;
    }
    return value.trim().length === 0;
}

// 全局自定义表单验证规则
var formValid = {

    // 支出记录验证
    createtype: function (value) {
        if (notEmpty(value)) {
            layer.msg("必须选择类型 !", {icon: 5});
            return false;
        }
        return true;
    },
    reason: function (value) {
        if (notEmpty(value)) {
            layer.msg("必须填写备注 !", {icon: 5});
            return false;
        }
        return true;
    },
    prodate: function (value) { // 兼顾验证租住房费用的发生时间
        if (notEmpty(value)) {
            layer.msg("必须选择发生(缴费)日期 !", {icon: 5});
            return false;
        }
        return true;
    },
    cash: function (value) {
        if (notEmpty(value)) {
            layer.msg("必须填写金额 !", {icon: 5});
            return false;
        }
        if (!(/^\d{1,6}\.?\d{0,2}$/.test(value))) {
            layer.msg("金额的整数位最多6位, 小数位最多2位 !", {icon: 5});
            return false;
        }
        return true;
    },

    // 用户列表页面验证
    uname: function (value) {
        if (notEmpty(value)) {
            layer.msg("必须填写用户名 !", {icon: 5});
            return false;
        }
        return true;
    },
    rname: function (value) {
        if (notEmpty(value)) {
            layer.msg("必须填写姓名 !", {icon: 5});
            return false;
        }
        return true;
    },
    userType: function (value) {
        if (notEmpty(value)) {
            layer.msg("必须选择用户类型 !", {icon: 5});
            return false;
        }
        return true;
    },

    // 字典管理验证
    diccode: function (value) {
        if (notEmpty(value)) {
            layer.msg("必须填写CDKEY !", {icon: 5});
            return false;
        }
        return true;
    },
    dicvalue: function (value) {
        if (notEmpty(value)) {
            layer.msg("必须填写值 !", {icon: 5});
            return false;
        }
        return true;
    },

    // 用户组管理验证
    groupname: function (value) {
        if (notEmpty(value)) {
            layer.msg("必须填写用户组名称 !", {icon: 5});
            return false;
        }
        return true;
    },

    // 家庭地址验证
    community: function (value) {
        if (notEmpty(value)) {
            layer.msg("必须填写小区名称 !", {icon: 5});
            return false;
        }
        return true;
    },
    province: function (value) {
        if (notEmpty(value)) {
            layer.msg("必须选择省 !", {icon: 5});
            return false;
        }
        return true;
    },
    city: function (value) {
        if (notEmpty(value)) {
            layer.msg("必须选择市 !", {icon: 5});
            return false;
        }
        return true;
    },
    area: function (value) {
        if (notEmpty(value)) {
            layer.msg("必须选择所在区县 !", {icon: 5});
            return false;
        }
        return true;
    },

    // 租住房费用表单验证
    bedate: function (value) {
        if (notEmpty(value)) {
            layer.msg("必须选择所属月份 !", {icon: 5});
            return false;
        }
        return true;
    }
};