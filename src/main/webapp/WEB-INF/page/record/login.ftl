<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>欢迎登陆</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8"/>
    <link rel="shortcut icon" href="${ctx}/images/world.png" type="image/x-icon"/>
    <link rel="stylesheet" href="${ctx}/css/record/xadmin.css">
    <script type="text/javascript" src="${ctx}/res/layui/layui.js" charset="utf-8"></script>
</head>
<body class="login-bg">
<div class="login layui-anim layui-anim-up">
    <div class="message">
        <a href="${ctx}/blog/index"><i class="layui-icon cus-icon layui-icon-return"></i>前台页面</a>
    </div>
    <div id="darkbannerwrap"></div>
    <form method="post" class="layui-form">
        <input name="uname" placeholder="用户名" type="text" lay-verify="required" class="layui-input" value="admin"/>
        <hr class="hr15">
        <input name="pword" lay-verify="required" placeholder="密码" type="password" class="layui-input" value="123456"/>
        <hr class="hr15">
        <div class="layui-form-item layui-col-space15">
            <div class="layui-col-sm6">
                <input name="validCode" lay-verify="required" maxlength="4" placeholder="验证码" type="text"
                       class="layui-input" value="1111">
            </div>
            <div class="layui-col-sm6">
                <img id="validCode" src="${ctx}/validCode" width="100%" height="50"/>
            </div>
        </div>
        <#--<a id="btn-submit" class="layui-btn layui-btn-fluid" lay-submit lay-filter="login">登　　录</a>-->
        <input type="submit" lay-submit lay-filter="login" value="登　　录">
        <hr class="hr20">
    </form>
</div>
<script>
    if (window !== top) {
        top.location.href = location.href;
    }
    layui.use(['form', 'layer'], function () {
        var form = layui.form,
            layer = layui.layer,
            $ = layui.jquery;

        /**
         * 登陆表单提交
         */
        form.on('submit(login)', function (data) {
            // var that = this;
            // $(that).addClass("layui-btn-disabled").attr("disabled", "disabled");
            var index = layer.open({
                shade: 0.01,
                offset: "35%",
                content: "<span id='info-msg'>系统正在登陆, 请稍后....</span>",
                // icon: 6,
                time: 0
            });
            $.ajax({
                async: false,
                url: "${ctx}/mhusers/login",
                data: data.field,
                dataType: "json",
                success: function (dataResult) {
                    setTimeout(function () {
                        if (dataResult.success) {
                            $("#info-msg").html('(๑•̀ㅂ•́)و✧' + dataResult.message);
                            setTimeout(function () {
                                layer.close(index);
                                window.location.href = "${ctx}/record/index";
                            }, 500);
                        } else {
                            $("#info-msg").html('Σ( ° △ °|||)︴ <font color="red">' + dataResult.message + '</font>');
                        }
                    }, 500);
                },
                error: function (resp) {
                    layer.closeAll();
                    layer.alert('出现异常: ' + resp.status, {icon: 2});
                    console.log(resp);
                }
            });
            // $(that).removeClass("layui-btn-disabled").removeAttr("disabled");
            return false;
        });

        /**
         * 点击更换验证码
         */
        $("#validCode").click(function () {
            var timestamp = new Date().getTime();
            $(this).attr("src", "${ctx}/validCode?t=" + timestamp);
        });
    });
</script>
</body>
</html>