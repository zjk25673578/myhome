<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>字典管理</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8"/>
    <link rel="shortcut icon" href="${ctx}/images/world.png" type="image/x-icon"/>
    <@macros.headConfig />
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
                        <div class="layui-col-lg2 layui-col-md3 layui-col-sm6 layui-col-xs12">
                            <select name="diccode">
                                <option value="">CDKEY</option>
                                <#list dicList as dic>
                                    <option value="${dic.diccode}">${dic.desp}</option>
                                </#list>
                            </select>
                        </div>
                        <div class="layui-col-lg2 layui-col-md3 layui-col-sm6 layui-col-xs12">
                            <input class="layui-input" name="dicvalue" placeholder="值">
                        </div>
                        <div class="layui-col-lg2 layui-col-md3 layui-col-sm12 layui-col-xs12">
                            <div class="layui-col-lg6 layui-col-md6 layui-col-sm6 layui-col-xs6 p-r-5">
                                <button class="layui-btn layui-btn-fluid layui-btn-sm" lay-submit
                                        lay-filter="searchSubmit">
                                    <i class="fa fa-search fa-lg"></i> 搜索
                                </button>
                            </div>
                            <div class="layui-col-lg6 layui-col-md6 layui-col-sm6 layui-col-xs6 p-l-5">
                                <button class="layui-btn layui-btn-primary layui-btn-fluid layui-btn-sm" lay-submit
                                        lay-filter="searchReset">
                                    <i class="fa fa-eraser fa-lg"></i> 清空
                                </button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </fieldset>
    </div>
    <table id="dict-table" class="layui-table" lay-filter="dict-table"></table>
</div>
</body>

<!-- layui模板 -->
<script type="text/html" id="toolbar">
    <!-- 顶部功能菜单 -->
    <div class="layui-btn-container">
        <button class="layui-btn layui-btn-sm" lay-event="add">
            <i class="fa fa fa-plus-circle fa-fw"></i> 添加
        </button>
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
<script type="text/html" id="dict-addOrEdit">
    <div class="layui-form-item"></div>
    <form id="form-data-dict" class="layui-form">
        <input type="hidden" name="ids" value="{{ d.ids }}"/>
        <div class="layui-form-item">
            <label class="layui-form-label">父级数据：</label>
            <div class="layui-input-inline">
                <input type="text" name="parentid"
                       class="layui-input" value="{{ d.parentid }}"/>
            </div>
        </div>
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
                       class="layui-input" value="{{ d.dicvalue }}" placeholder="支持多个, 逗号(不分中英)隔开"/>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">描述：</label>
            <div class="layui-input-inline">
                <input type="text" lay-verify="required" name="desp"
                       class="layui-input" value="{{ d.desp }}"/>
            </div>
        </div>
        <div class="layui-form-item" style="padding:0 20px;">
            <fieldset class="layui-elem-field">
                <legend>说明</legend>
                <div class="layui-field-box">
                    CDKEY代表分类, 同一类别的字典数据CDKEY请写成相同的<br>
                    比如: 性别有"男", "女"<br>
                    CDKEY可以记录为"xingbie"
                </div>
            </fieldset>
        </div>
    </form>
</script>
</html>