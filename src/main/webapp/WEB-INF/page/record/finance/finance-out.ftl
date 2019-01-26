<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>支出记录</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8"/>
    <link rel="shortcut icon" href="${ctx}/images/world.png" type="image/x-icon"/>
    <@header.baseConfig />
    <script type="text/javascript" src="${ctx}/js/record/finance/finance-out.js"></script>
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
            <legend><i class="fa fa-search-plus fa-fw" aria-hidden="true"></i>数据搜索</legend>
            <div class="layui-field-box">
                <!-- 查询表单 -->
                <form id="search-form" class="layui-form layui-col-md12">
                    <div class="layui-form-item layui-col-space20">
                        <div class="layui-col-lg2 layui-col-md3 layui-col-sm6 layui-col-xs12">
                            <select name="diccode">
                                <option value="">下拉以选择</option>
                                <#list financeOutList as financeOut>
                                    <option value="${financeOut.ids}">${financeOut.dicvalue}</option>
                                </#list>
                            </select>
                        </div>
                        <div class="layui-col-lg2 layui-col-md3 layui-col-sm6 layui-col-xs12">
                            <input class="layui-input" name="dicvalue" placeholder="">
                        </div>
                        <div class="layui-col-lg1 layui-col-md2 layui-col-sm12 layui-col-xs12">
                            <button class="layui-btn layui-btn-primary layui-btn-fluid layui-btn-sm" lay-submit
                                    lay-filter="searchSubmit">
                                <i class="fa fa-search fa-lg"></i> 搜索
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </fieldset>
    </div>
    <table id="finance-out-table" class="layui-table" lay-filter="finance-out-table"></table>
</div>

<!-- layui模板 -->
<script type="text/html" id="toolbar">
    <!-- 顶部功能菜单 -->
    <div class="layui-btn-container">
        <button class="layui-btn layui-btn-danger layui-btn-sm" lay-event="del_multiple">
            <i class="fa fa fa-minus-circle fa-fw"></i> 删除
        </button>
    </div>
</script>
<script type="text/html" id="opera-btns">
    <!-- 右侧的菜单 -->
    <a lay-event="update" lay-data="{{ d.ids }}"
       class="layui-btn layui-btn-xs layui-btn-normal">编辑</a>
    <a lay-event="del" lay-data="{{ d.ids }}"
       class="layui-btn layui-btn-xs layui-btn-danger">删除</a>
</script>
<script type="text/html" id="finance-out-edit">
    <div class="layui-form-item"></div>
    <form id="form-finance-out" lay-filter="finance-out" class="layui-form">
        <input type="hidden" name="ids" value="{{ d.ids }}"/>
        <div class="layui-form-item">
            <label class="layui-form-label">类型：</label>
            <div class="layui-input-inline">
                <select name="createtype" lay-verify="required">
                    <option value=""></option>
                    <#list financeOutList as financeOut>
                        <option value="${financeOut.ids}" {{ d.createtype == ${financeOut.ids} ? 'selected' : '' }}>${financeOut.dicvalue}</option>
                    </#list>
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">金额：</label>
            <div class="layui-input-inline">
                <input type="text" name="cash" lay-verify="required|number" class="layui-input" value="{{ d.cash }}"/>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">备注：</label>
            <div class="layui-input-inline">
                <textarea name="reason" lay-verify="required" class="layui-textarea">{{ d.reason }}</textarea>
            </div>
        </div>
    </form>
</script>
</body>
</html>