<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>菜单管理</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8"/>
    <link rel="shortcut icon" href="${ctx}/images/world.png" type="image/x-icon"/>
    <@header.baseConfig />
    <link rel="stylesheet" href="${ctx}/res/layui/css/eleTree.css">
    <script type="text/javascript" src="${ctx}/js/record/mhmenu/mhmenu-list.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="layui-anim layui-anim-fadein">
<div class="layui-fluid layui-col-space30">
    <div class="layui-col-sm3">
        <div id="menu-tree" class="eleTree" lay-filter="menuTree"></div>
    </div>
    <div class="layui-col-sm9">

    </div>
</div>
</body>

</html>