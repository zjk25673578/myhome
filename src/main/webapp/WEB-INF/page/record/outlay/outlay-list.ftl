<!DOCTYPE html>
<html lang="en">
<head>
    <title>租住房费用</title>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8"/>
    <link rel="shortcut icon" href="${ctx}/images/world.png" type="image/x-icon"/>
    <@macros.headConfig />
    <script type="text/javascript" src="${ctx}/js/record/outlay/outlay-list.js"></script>
    <script type="text/javascript" src="${ctx}/js/echarts/echarts.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="layui-anim layui-anim-fadein">
<div class="x-body layui-col-space30">
    <div class="layui-col-lg3 layui-col-md5 layui-col-sm12 layui-col-xs12">
        <div class="layui-form-item tac layui-form">
            <div class="layui-form-item">
                <input id="year" type="hidden" value="${year}">
                <h1 id="view" style="margin-bottom: 15px;">${year}年</h1>
                <div id="laydateSelector"></div>
            </div>
            <div class="layui-form-item">
                <button class="layui-btn layui-btn-sm layui-btn-normal" type="button" lay-filter="add" lay-submit>
                    <i class="fa fa-anchor"></i> 添加
                </button>
                <#--<button class="layui-btn layui-btn-sm layui-btn-warm" type="button" lay-filter="bar" lay-submit>
                    <i class="fa fa-bar-chart"></i> 生成柱状图
                </button>-->
            </div>
        </div>
        <div class="layui-form-item tac">
            <h2>
                当前住所：${provinceName} ${cityName} ${areaName} ${address}
            </h2>
            <hr class="layui-bg-red">
        </div>
    </div>
    <div class="layui-col-lg9 layui-col-md7 layui-col-sm12 layui-col-xs12">
        <div class="layui-col-lg12 layui-col-md12 layui-col-sm12 layui-col-xs12">
            <div class="layui-row">
                <div id="bar" style="width: 100%;height: 290px;"></div>
            </div>
        </div>
        <div class="layui-col-lg12 layui-col-md12 layui-col-sm12 layui-col-xs12">
            <div class="layui-row">
                <table id="lease-table" lay-filter="lease-table"></table>
            </div>
        </div>

    </div>
</div>
<script type="text/javascript" src="${ctx}/js/record/outlay/outlay-bar.js"></script>
<!-- layui模板 -->
<script type="text/html" id="toolbar">
    <!-- 顶部功能菜单 -->
    <form class="layui-form">
        <div class="layui-form-item">
            <div class="layui-form-label">月份：</div>
            <div class="layui-input-inline" style="width: 80px;">
                <select name="month" id="month" lay-filter="month-select">
                    <option value="">全部</option>
                    <#list 1..12 as m>
                        <option value="${(m >= 10)?string('' + m, '0' + m)}">${m}月</option>
                    </#list>
                </select>
            </div>
        </div>
    </form>
</script>
<script type="text/html" id="opera-btns">
    <!-- 右侧的菜单 -->
    <a lay-event="update" class="layui-btn layui-btn-xs layui-btn-normal">编辑</a>
</script>
<script type="text/html" id="outlay-addOrEdit">
    <div class="form-box">
        <form class="layui-form" id="outlay-form-data">
            <div class="layui-col-lg5 layui-col-md5 layui-col-sm10 layui-col-xs10">
                <div class="layui-form-item">
                    <label class="layui-form-label">水费</label>
                    <div class="layui-input-block">
                        <input type="text" name="water" class="layui-input" value="{{ d.water }}">
                    </div>
                </div>
            </div>
            <div class="layui-col-lg5 layui-col-md5 layui-col-sm10 layui-col-xs10">
                <div class="layui-form-item">
                    <label class="layui-form-label">电费</label>
                    <div class="layui-input-block">
                        <input type="text" name="electric" class="layui-input" value="{{ d.electric }}">
                    </div>
                </div>
            </div>
            <div class="layui-col-lg5 layui-col-md5 layui-col-sm10 layui-col-xs10">
                <div class="layui-form-item">
                    <label class="layui-form-label">煤气费</label>
                    <div class="layui-input-block">
                        <input type="text" name="gas" class="layui-input" value="{{ d.gas }}">
                    </div>
                </div>
            </div>
            <div class="layui-col-lg5 layui-col-md5 layui-col-sm10 layui-col-xs10">
                <div class="layui-form-item">
                    <label class="layui-form-label">暖气费</label>
                    <div class="layui-input-block">
                        <input type="text" name="warm" class="layui-input" value="{{ d.warm }}">
                    </div>
                </div>
            </div>
            <div class="layui-col-lg5 layui-col-md5 layui-col-sm10 layui-col-xs10">
                <div class="layui-form-item">
                    <label class="layui-form-label">物业费</label>
                    <div class="layui-input-block">
                        <input type="text" name="property" class="layui-input" value="{{ d.property }}">
                    </div>
                </div>
            </div>
            <div class="layui-col-lg5 layui-col-md5 layui-col-sm10 layui-col-xs10">
                <div class="layui-form-item">
                    <label class="layui-form-label">按揭/房租</label>
                    <div class="layui-input-block">
                        <input type="text" name="loanrent" class="layui-input" value="{{ d.loanrent }}">
                    </div>
                </div>
            </div>
            <div class="layui-col-lg5 layui-col-md5 layui-col-sm10 layui-col-xs10">
                <div class="layui-form-item">
                    <label class="layui-form-label">缴费日期</label>
                    <div class="layui-input-block">
                        <input type="text" id="prodate" name="prodate" class="layui-input" value="{{ d.prodate }}">
                    </div>
                </div>
            </div>
            <div class="layui-col-lg5 layui-col-md5 layui-col-sm10 layui-col-xs10">
                <div class="layui-form-item">
                    <label class="layui-form-label">所属月份</label>
                    <div class="layui-input-block">
                        <input type="text" id="bedate" name="bedate" class="layui-input" value="{{ d.bedate }}">
                    </div>
                </div>
            </div>
            <div class="layui-col-lg10 layui-col-md10 layui-col-sm10 layui-col-xs10">
                <div class="layui-form-item layui-form-text">
                    <label class="layui-form-label">备注</label>
                    <div class="layui-input-block">
                        <textarea name="note" placeholder="请输入内容" class="layui-textarea">{{ d.note }}</textarea>
                    </div>
                </div>
            </div>
        </form>
    </div>
</script>
</body>
</html>