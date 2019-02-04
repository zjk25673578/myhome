<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${label}记录</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8"/>
    <link rel="shortcut icon" href="${ctx}/images/world.png" type="image/x-icon"/>
    <@macros.headConfig />
    <script type="text/javascript" src="${ctx}/js/record/finance/finance.js"></script>
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
            <legend><i class="fa fa-search-plus fa-fw" aria-hidden="true"></i>${label}记录</legend>
            <div class="layui-field-box">
                <!-- 查询表单 -->
                <form id="search-form" class="layui-form layui-col-md12">

                    <!-- 1: 收入记录, 2: 支出记录 -->
                    <input type="hidden" id="ftype" name="ftype" value="${ftype}">

                    <div class="layui-form-item layui-col-space20">
                        <div class="layui-col-lg2 layui-col-md3 layui-col-sm4 layui-col-xs12">
                            <select name="createtype">
                                <option value="">选择类型</option>
                                <#list financeTypeList as financeType>
                                    <option value="${financeType.ids}">${financeType.dicvalue}</option>
                                </#list>
                            </select>
                        </div>
                        <div class="layui-col-lg2 layui-col-md3 layui-col-sm4 layui-col-xs12">
                            <input id="prodate" class="layui-input" name="prodate" placeholder="发生时间(只支持月份查询)">
                        </div>
                        <div class="layui-col-lg2 layui-col-md3 layui-col-sm4 layui-col-xs6">
                            <div class="layui-input-inline" style="width: 85px;">
                                <input type="text" name="minprice" placeholder="￥最小" autocomplete="off"
                                       class="layui-input">
                            </div>
                            <div class="layui-input-inline" style="width: 85px;">
                                <input type="text" name="maxprice" placeholder="￥最多" autocomplete="off"
                                       class="layui-input">
                            </div>
                        </div>
                        <div class="layui-col-lg2 layui-col-md2 layui-col-sm4 layui-col-xs6">
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
    <table id="finance-table" class="layui-table" lay-filter="finance-table"></table>
</div>

<!-- layui模板 -->
<script type="text/html" id="toolbar">
    <!-- 顶部功能菜单 -->
    <div class="layui-btn-container">
        <#--<button class="layui-btn layui-btn-sm" lay-event="add">
            <i class="fa fa fa-plus-circle fa-fw"></i> 添加
        </button>-->
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
<script type="text/html" id="finance-edit">
    <div class="layui-form-item"></div>
    <form id="form-finance" lay-filter="finance" class="layui-form">
        <input type="hidden" name="ids" value="{{ d.ids }}"/>
        <div class="layui-form-item">
            <label class="layui-form-label">类型：</label>
            <div class="layui-input-inline">
                <select name="createtype" lay-verify="required">
                    <option value=""></option>
                    <#list financeTypeList as financeType>
                        <option value="${financeType.ids}" {{ d.createtype == ${financeType.ids} ? 'selected' : '' }}>${financeType.dicvalue}</option>
                    </#list>
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">发生时间：</label>
            <div class="layui-input-inline">
                <input type="text" id="prodate-field" name="prodate" lay-verify="required" readonly="readonly" class="layui-input" value="{{ d.prodate }}"/>
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