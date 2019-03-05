<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户组列表</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8"/>
    <link rel="shortcut icon" href="${ctx}/images/world.png" type="image/x-icon"/>
    <@macros.headConfig />
    <link rel="stylesheet" href="${ctx}/res/layui/css/eleTree.css">
    <script type="text/javascript" src="${ctx}/js/record/mhgroups/groups-list.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="layui-anim layui-anim-fadein">
<div class="x-body">
    <div class="layui-row">
        <fieldset class="layui-elem-field">
            <legend><i class="fa fa-search-plus fa-fw" aria-hidden="true"></i> 用户组搜索</legend>
            <div class="layui-field-box">
                <!-- 查询表单 -->
                <form id="search-form" class="layui-form layui-col-md12">
                    <div class="layui-form-item layui-col-space10">
                        <div class="layui-col-lg2 layui-col-md3 layui-col-sm4 layui-col-xs12">
                            <input class="layui-input" name="groupname" placeholder="用户组名">
                        </div>
                        <div class="layui-col-lg2 layui-col-md2 layui-col-sm4 layui-col-xs12">
                            <div class="layui-col-lg6 layui-col-md6 layui-col-sm6 layui-col-xs6 p-r-5">
                                <button class="layui-btn layui-btn-fluid layui-btn-sm" lay-submit
                                        lay-filter="searchSubmit">
                                    <i class="fa fa-search fa-lg"></i> 搜索
                                </button>
                            </div>
                            <div class="layui-col-lg6 layui-col-md6 layui-col-sm6 layui-col-xs6 p-l-5">
                                <button type="reset" class="layui-btn layui-btn-primary layui-btn-fluid layui-btn-sm">
                                    <i class="fa fa-eraser fa-lg"></i> 清空
                                </button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </fieldset>
    </div>
    <table id="usergroup-table" class="layui-table" lay-filter="usergroup-table"></table>
</div>

<!-- layui模板 -->
<script type="text/html" id="toolbar">
    <!-- 顶部功能菜单 -->
    <div class="layui-btn-container">
        <button class="layui-btn layui-btn-sm" lay-event="add">
            <i class="fa fa-user-plus fa-fw"></i> 添加
        </button>
        <#--<button class="layui-btn layui-btn-danger layui-btn-sm" lay-event="del_multiple">
            <i class="fa fa-trash fa-fw"></i> 删除
        </button>-->
    </div>
</script>
<script type="text/html" id="opera-btns">
    <!-- 右侧的菜单 -->
    <a lay-event="update" class="layui-btn layui-btn-xs layui-btn-normal">编辑</a>
    <a lay-event="del" class="layui-btn layui-btn-xs layui-btn-danger">删除</a>
</script>
<script type="text/html" id="usergroup-addOrEdit">
    <div class="form-box">
        <form id="form-data-usergroup" lay-filter="form-user" class="layui-form">
            <input type="hidden" name="ids" value="{{ d.ids }}"/>
            <div class="layui-form-item">
                <label class="layui-form-label">用户组名：</label>
                <div class="layui-input-inline">
                    <input type="text" name="groupname" lay-verify="required" placeholder="请输入用户组名"
                           class="layui-input" value="{{ d.groupname }}"/>
                </div>
            </div>
        </form>
    </div>
</script>
</body>
</html>