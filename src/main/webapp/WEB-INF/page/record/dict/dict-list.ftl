<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>字典管理</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8"/>
    <link rel="shortcut icon" href="${ctx}/images/world.png" type="image/x-icon"/>
    <@header.baseConfig />
    <script type="text/javascript" src="${ctx}/js/record/dict/dict-list.js"></script>
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
            <legend><i class="fa fa-search-plus fa-fw" aria-hidden="true"></i>字典搜索</legend>
            <div class="layui-field-box">
                <!-- 查询表单 -->
                <form id="search-form" class="layui-form layui-col-md12">
                    <div class="layui-form-item layui-col-space20">
                        <div class="layui-col-lg2 layui-col-md3 layui-col-sm5 layui-col-xs12">
                            <input class="layui-input" name="desp" placeholder="描述">
                        </div>
                        <div class="layui-col-lg2 layui-col-md3 layui-col-sm5 layui-col-xs12">
                            <input class="layui-input" name="dicvalue" placeholder="值">
                        </div>
                        <div class="layui-col-lg1 layui-col-md2 layui-col-sm2 layui-col-xs12">
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
    <table id="dict-table" class="layui-table" lay-filter="dict-table"></table>
</div>
</div>
</body>

<!-- layui模板 -->
<script type="text/html" id="toolbar">
    <!-- 顶部功能菜单 -->
    <div class="layui-btn-container">
        <button class="layui-btn layui-btn-sm" lay-event="add">
            <i class="fa fa fa-plus-circle fa-fw"></i>添加
        </button>
        <button class="layui-btn layui-btn-danger layui-btn-sm" lay-event="del_multiple">
            <i class="fa fa fa-minus-circle fa-fw"></i>删除
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
<script type="text/html" id="dict-addOrEdit">
    <div class="layui-form-item"></div>
    <form id="form-data-dict" lay-filter="form-user" class="layui-form">
        <input type="hidden" name="ids" value="{{ d.ids }}"/>
        <input type="hidden" name="parentid" value="{{ d.parentid }}"/>
        <div class="layui-form-item">
            <label class="layui-form-label">CDKEY：</label>
            <div class="layui-input-inline">
                <input type="text" name="diccode" lay-verify="required"
                       class="layui-input" value="{{ d.diccode }}"/>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">值：</label>
            <div class="layui-input-inline">
                <input type="text" lay-verify="required" name="dicvalue"
                       class="layui-input" value="{{ d.dicvalue }}"/>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">描述：</label>
            <div class="layui-input-inline">
                <input type="text" lay-verify="required" name="desp"
                       class="layui-input" value="{{ d.desp }}"/>
            </div>
        </div>
    </form>
</script>
</html>