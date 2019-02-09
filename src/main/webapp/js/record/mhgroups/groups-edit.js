layui.use(['form'], function () {
    var form = layui.form,
        $ = layui.jquery;

    form.on("submit(form-usergroup)", function (data) {
        $.post(_ctx + "/group/updateGroup", data.field, function(resultData) {
            if (resultData.success) {
                x_admin_close();
                parent.table.reload("usergroup-table");
            }
            parent.layer.alert(resultData.message, {icon: resultData.iconType});
        }, "json");
        return false;
    });
});