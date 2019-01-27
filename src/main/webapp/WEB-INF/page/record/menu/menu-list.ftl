<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>菜单管理</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8"/>
    <link rel="shortcut icon" href="${ctx}/images/world.png" type="image/x-icon"/>
    <@macros.headConfig />
    <link rel="stylesheet" href="${ctx}/res/layui/css/eleTree.css">
    <script type="text/javascript" src="${ctx}/js/record/mhmenu/mhmenu-list.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="layui-anim layui-anim-fadein">
<div class="x-body">
    <div class="layui-fluid">
        <div class="layui-col-lg3 layui-col-md4 layui-col-sm5 layui-col-xs10">
            <div class="layui-form-item p-15">
                <div id="menu-tree" class="eleTree" lay-filter="menuTree"></div>
            </div>
        </div>
        <div class="layui-col-lg7 layui-col-md6 layui-col-sm5 layui-col-xs10 p-15">
            <div class="layui-form-item">
                <form class="layui-form" lay-filter="formMenu">
                    <input name="ids" class="layui-input layui-hide">
                    <div class="layui-form-item">
                        <label class="layui-form-label">菜单名称</label>
                        <div class="layui-input-inline">
                            <input name="menuname" required lay-verify="required" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">菜单路径</label>
                        <div class="layui-input-inline">
                            <input name="murl" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">图标</label>
                        <div class="layui-input-inline">
                            <input name="icon" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">排序号</label>
                        <div class="layui-input-inline">
                            <input name="sort" class="layui-input" style="width: 80px;">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <div class="layui-input-block">
                            <button class="layui-btn" lay-submit lay-filter="menuForm">
                                <i class="fa fa-save fa-lg"></i> 保存
                            </button>
                            <button type="reset" class="layui-btn layui-btn-primary">
                                <i class="fa fa-undo fa-lg"></i> 重置
                            </button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="layui-form-item">
                <table id="tableMenu"></table>
            </div>
        </div>
        <div class="layui-col-lg2 layui-col-md2 layui-col-sm2 layui-col-xs2 tac test"
             style="height: 300px;font-size: 18px;line-height: 300px;margin-top: 10px;">
            广告位招租
        </div>
    </div>
</div>
</body>

</html>