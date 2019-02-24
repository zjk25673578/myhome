<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>家庭住址管理</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8"/>
    <link rel="shortcut icon" href="${ctx}/images/world.png" type="image/x-icon"/>
    <@macros.headConfig />
    <script type="text/javascript" src="${ctx}/js/record/homes/homes-list.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
        .layui-form-item .layui-form-checkbox {
            margin-top: 0;
        }
    </style>
</head>
<body class="layui-anim layui-anim-fadein">
<div class="x-body">
    <div class="layui-row">
        <fieldset class="layui-elem-field">
            <legend><i class="fa fa-search-plus fa-fw" aria-hidden="true"></i>家庭地址历史记录</legend>
            <div class="layui-field-box">
                <!-- 查询表单 -->
                <form id="search-form" class="layui-form layui-col-md12">
                    <div class="layui-form-item layui-col-space20">
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
    <table id="homes-table" class="layui-table" lay-filter="homes-table"></table>
</div>

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
<script type="text/html" id="homes-addOrEdit">
    <div class="layui-form-item"></div>
    <form id="form-homes" lay-filter="homes" class="layui-form">
        <div class="layui-fluid">
            <!-- 数据主键 -->
            <input type="hidden" name="ids" value="{{ d.ids }}"/>
            <div class="layui-row">
                <div class="layui-col-lg4 layui-col-md12 layui-col-sm12 layui-col-xs12">
                    <div class="layui-form-item">
                        <label class="layui-form-label">家庭昵称：</label>
                        <div class="layui-input-inline">
                            <input type="text" class="layui-input" name="hname"
                                   value="{{ d.hname }}"/>
                        </div>
                    </div>
                </div>
                <div class="layui-col-lg4 layui-col-md12 layui-col-sm12 layui-col-xs12">
                    <div class="layui-form-item">
                        <label class="layui-form-label">小区名称：</label>
                        <div class="layui-input-inline">
                            <input type="text" class="layui-input" name="community"
                                   value="{{ d.community }}"/>
                        </div>
                    </div>
                </div>
                <#if currentUser.userType == 1>
                    <div class="layui-col-lg4 layui-col-md12 layui-col-sm12 layui-col-xs12">
                        <div class="layui-form-item">
                            <label class="layui-form-label">用户组：</label>
                            <div class="layui-input-inline">
                                <select name="groupid" lay-filter="groupid">
                                    <option value="">下拉以选择</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </#if>
            </div>
            <div class="layui-col-lg4 layui-col-md12 layui-col-sm12 layui-col-xs12">
                <div class="layui-form-item">
                    <label class="layui-form-label">所在省：</label>
                    <div class="layui-input-inline">
                        <select name="province" lay-verify="required" lay-filter="province">
                            <option value="">下拉以选择</option>
                            <#list provinceList as province>
                                <option value="${province.ids}" {{ d.province == ${province.ids} ? 'selected' : '' }}>${province.dicvalue}</option>
                            </#list>
                        </select>
                    </div>
                </div>
            </div>
            <div class="layui-col-lg4 layui-col-md12 layui-col-sm12 layui-col-xs12">
                <div class="layui-form-item">
                    <label class="layui-form-label">所在市：</label>
                    <div class="layui-input-inline">
                        <select id="city" name="city" lay-verify="required" lay-filter="city">
                            <option value="">下拉以选择</option>
                            {{ d.cityTemplate }}
                        </select>
                    </div>
                </div>
            </div>
            <div class="layui-col-lg4 layui-col-md12 layui-col-sm12 layui-col-xs12">
                <div class="layui-form-item">
                    <label class="layui-form-label">所在区：</label>
                    <div class="layui-input-inline">
                        <select id="area" name="area" lay-verify="required" lay-filter="area">
                            <option value="">下拉以选择</option>
                            {{ d.areaTemplate }}
                        </select>
                    </div>
                </div>
            </div>
            <div class="layui-col-lg4 layui-col-md12 layui-col-sm12 layui-col-xs12">
                <div class="layui-form-item">
                    <label class="layui-form-label">开始时间：</label>
                    <div class="layui-input-inline">
                        <input id="begintime" name="begintime" readonly="readonly"
                               class="layui-input" value="{{ d.begintime }}"/>
                    </div>
                </div>
            </div>
            <div class="layui-col-lg4 layui-col-md12 layui-col-sm12 layui-col-xs12">
                <div class="layui-form-item">
                    <label class="layui-form-label">结束时间：</label>
                    <div class="layui-input-inline">
                        <input type="text" id="endtime" name="endtime" readonly="readonly"
                               class="layui-input" value="{{ d.endtime }}"/>
                    </div>
                </div>
            </div>
            <div class="layui-col-lg4 layui-col-md12 layui-col-sm12 layui-col-xs12">
                <div class="layui-form-item">
                    <label class="layui-form-label">居住状态：</label>
                    <div class="layui-input-block">
                        <input type="checkbox" name="living" value="1" {{ d.living == '1' ? 'checked' : '' }} title="当前住所">
                    </div>
                </div>
            </div>
            <div class="layui-col-lg12 layui-col-md12 layui-col-sm12 layui-col-xs12">
                <div class="layui-form-item">
                    <label class="layui-form-label">详细地址：</label>
                    <div class="layui-input-block">
                        <textarea name="address" class="layui-textarea" id="address">{{ d.address }}</textarea>
                    </div>
                </div>
            </div>
        </div>
    </form>
</script>
</body>
</html>