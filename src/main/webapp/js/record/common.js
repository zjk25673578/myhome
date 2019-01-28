layui.use(['form', 'table', 'layer', 'laytpl'], function () {
    // var form = layui.form;

    // 监听查询表单的重置事件
/*    form.on("submit(searchReset)", function (data) {
        data.form.reset();
        return false;
    });*/
});

/**
 * 全局表单验证公共方法
 * @param formObj jquery序列化的表单对象
 * @returns {*}
 */
function validJqueryForm(formObj) {
    if (formObj) {
        for (var i = 0; i < formObj.length; i++) {
            var name = formObj[i]["name"];
            if (!formValid[name]) { // 如果没有验证规则, 跳过
                continue;
            }
            var value = formObj[i]["value"];
            var r = formValid[name](value);
            if (!r) {
                return false;
            }
        }
    }
    return true;
}

/**
 * 全局表单验证公共方法
 * @param formObj layui.form的data.field对象
 * @returns {*}
 */
function validLayForm(formObj) {
    if (formObj) {
        for (var p in formObj) {
            if (!formValid[p]) { // 如果没有验证规则, 跳过
                continue;
            }
            var r = formValid[p](formObj);
            if (!r) {
                break;
            }
        }
    }
    return false;
}