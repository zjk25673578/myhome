<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>菜单树</title>
    <script>
        var _ctx = '${ctx}';
    </script>
    <script type="text/javascript" src="${ctx}/res/layui/layui.js" charset="utf-8"></script>
    <link rel="stylesheet" href="${ctx}/res/layui/css/layui.css">
    <link rel="stylesheet" href="${ctx}/res/layui/css/eleTree.css">
    <script type="text/javascript" src="${ctx}/js/record/common.js"></script>
    <script type="text/javascript" src="${ctx}/js/record/mhmenu/mhmenu-tree.js"></script>
</head>
<body>
<!-- 用户id的隐藏域 -->
<input id="ids" type="hidden" value="${ids}"/>
<div id="menu-tree" class="eleTree" lay-filter="menuTree" style="padding: 5px 20px;"></div>
</body>
</html>