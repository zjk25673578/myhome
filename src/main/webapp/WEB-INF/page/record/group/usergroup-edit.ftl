<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户组信息修改页</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8"/>
    <link rel="shortcut icon" href="${ctx}/images/world.png" type="image/x-icon"/>
    <@macros.headConfig />
    <link rel="stylesheet" href="${ctx}/res/layui/css/eleTree.css">
    <script type="text/javascript" src="${ctx}/js/record/mhgroups/groups-edit.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="layui-anim layui-anim-fadein">
<div class="layui-row">
    <div class="form-box">
        <form id="form-data-usergroup" lay-filter="form-usergroup" class="layui-form">
            <input type="hidden" name="ids" value="${mhUsersGroup.ids}"/>
            <div class="layui-form-item">
                <label class="layui-form-label">用户组名：</label>
                <div class="layui-input-inline">
                    <input type="text" name="groupname" lay-verify="required" placeholder="请输入用户组名"
                           class="layui-input" value="${mhUsersGroup.groupname}"/>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">管理员：</label>
                <div class="layui-input-inline">
                    <select id="master" name="master">
                        <option value="">下拉以选择</option>
                        <#list userList as user>
                            <option value="${user.ids}" ${(mhUsersGroup.master == user.ids)?string('selected', '')}>${user.rname}${(user.setups == 1)?string('', '(已禁用)')}</option>
                        </#list>
                    </select>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">选择家庭：</label>
                <div class="layui-input-inline">
                    <select name="homeid">
                        <option value="">下拉以选择</option>
                    </select>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block tar">
                    <button class="layui-btn layui-btn-sm" lay-submit lay-filter="form-usergroup">
                        <i class="fa fa-save fa-lg"></i> 保存
                    </button>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>