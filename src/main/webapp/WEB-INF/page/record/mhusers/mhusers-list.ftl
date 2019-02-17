<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户列表</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8"/>
    <link rel="shortcut icon" href="${ctx}/images/world.png" type="image/x-icon"/>
    <@macros.headConfig />
    <script type="text/javascript" src="${ctx}/js/record/mhusers/mhusers-list.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
    </style>
</head>
<body class="layui-anim layui-anim-fadein">
<div class="x-body">
    <div class="layui-row">
        <fieldset class="layui-elem-field">
            <legend><i class="fa fa-search-plus fa-fw" aria-hidden="true"></i>用户搜索</legend>
            <div class="layui-field-box">
                <!-- 查询表单 -->
                <form id="search-form" class="layui-form layui-col-md12">
                    <div class="layui-form-item layui-col-space10">
                        <div class="layui-col-lg2 layui-col-md3 layui-col-sm6 layui-col-xs12">
                            <input class="layui-input" name="uname" placeholder="用户名">
                        </div>
                        <div class="layui-col-lg2 layui-col-md3 layui-col-sm6 layui-col-xs12">
                            <input class="layui-input" name="rname" placeholder="姓名">
                        </div>
                        <div class="layui-col-lg2 layui-col-md3 layui-col-sm6 layui-col-xs12">
                            <select name="groupid" id="groupid">
                                <option value="">选择用户组</option>
                                <#list groupList as group>
                                    <option value="${group.ids}">${group.groupname}</option>
                                </#list>
                            </select>
                        </div>
                        <div class="layui-col-lg2 layui-col-md2 layui-col-sm6 layui-col-xs12">
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
    <table id="users-table" class="layui-table" lay-filter="users-table"></table>
</div>

<!-- layui模板 -->
<script type="text/html" id="toolbar">
    <!-- 顶部功能菜单 -->
    <div class="layui-btn-container">
        <button class="layui-btn layui-btn-sm" lay-event="add">
            <i class="fa fa-user-plus fa-fw"></i> 添加
        </button>
        <button class="layui-btn layui-btn-danger layui-btn-sm" lay-event="del_multiple">
            <i class="fa fa-trash fa-fw"></i> 删除
        </button>
    </div>
</script>
<script type="text/html" id="opera-btns">
    <!-- 右侧的菜单 -->
    <a lay-event="update" lay-data="{{ d.ids }}"
       class="layui-btn layui-btn-xs layui-btn-normal">编辑</a>
    <a lay-event="del" lay-data="{{ d.ids }}"
       class="layui-btn layui-btn-xs layui-btn-danger">删除</a>
    {{# if (d.setups == 1) { }}
    <a lay-event="on_off" lay-data="{{ d.ids }}"
       class="layui-btn layui-btn-xs layui-btn-warm">禁用</a>
    {{# } }}
    {{# if (d.setups == 0) { }}
    <a lay-event="on_off" lay-data="{{ d.ids }}"
       class="layui-btn layui-btn-xs">启用</a>
    {{# } }}
</script>
<script type="text/html" id="user-addOrEdit">
    <div class="layui-form-item"></div>
    <form id="form-data-user" lay-filter="form-user" class="layui-form">
        <input type="hidden" name="ids" value="{{ d.ids }}"/>
        <div class="layui-form-item">
            <label class="layui-form-label">用户名：</label>
            <div class="layui-input-inline">
                <input type="text" name="uname" lay-verify="required" placeholder="请输入用户名"
                       class="layui-input" value="{{ d.uname }}"/>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">姓名：</label>
            <div class="layui-input-inline">
                <input type="text" lay-verify="required" name="rname" placeholder="请输入姓名"
                       class="layui-input" value="{{ d.rname }}"/>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">用户类型：</label>
            <div class="layui-input-inline">
                <select name="userType" lay-verify="required">
                    <option value="">选择用户类型</option>
                    <option value="0" {{ d.userType== 0 ? 'selected' : '' }}>普通用户</option>
                    <option value="1" {{ d.userType== 1 ? 'selected' : '' }}>超级管理员</option>
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">分组：</label>
            <div class="layui-input-inline">
                <select name="groupid" lay-verify="required">
                    <option value="">下拉选择用户组</option>
                    <#list groupList as group>
                        <option value="${group.ids}" {{ d.groupid== ${group.ids} ? 'selected' : '' }}>${group.groupname}</option>
                    </#list>
                </select>
            </div>
        </div>
    </form>
</script>
</body>
</html>