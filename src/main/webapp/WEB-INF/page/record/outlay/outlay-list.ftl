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
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
        .layui-colla-content {
            padding: 0;
        }

        .layui-table {
            margin: 0;
        }

        .layui-colla-item {
            position: relative;
        }

        .layui-colla-title .btn-update {
            display: none;
            float: right;
            position: absolute;
            top: 10px;
            right: 20px;
        }

        .layui-colla-title:hover {
            background: #e5e5e5;
        }
    </style>
</head>
<body class="layui-anim layui-anim-fadein">
<div class="x-body layui-col-space30">
    <div class="layui-col-lg3 layui-col-lg-offset1 layui-col-md5 layui-col-md-offset1 layui-col-sm6 layui-col-xs12">
        <div class="layui-form-item tac layui-form">
            <div class="layui-form-item">
                <input id="year" type="hidden" value="${year}">
                <h1 id="view">${year}年</h1>
                <div id="laydateSelector"></div>
            </div>
            <div class="layui-form-item">
                <button class="layui-btn layui-btn-sm layui-btn-normal" type="button" lay-filter="add" lay-submit>
                    <i class="fa fa-anchor"></i> 添加
                </button>
                <button class="layui-btn layui-btn-sm layui-btn-warm" type="button" lay-filter="bar" lay-submit>
                    <i class="fa fa-bar-chart"></i> 生成柱状图
                </button>
            </div>
        </div>
        <div class="layui-form-item tac">
            <h2>
                当前住所：${provinceName} ${cityName} ${areaName} ${address}
            </h2>
            <hr class="layui-bg-red">
        </div>
    </div>
    <div class="layui-col-lg4 layui-col-lg-offset1 layui-col-md6 layui-col-sm6 layui-col-xs12">
        <div class="layui-form-item">
            <div class="layui-collapse" lay-accordion lay-filter="outlay">
                <#list 0..11 as i>
                    <div class="layui-colla-item">
                        <h2 class="layui-colla-title">
                            <span>${i + 1}月份</span>
                            <#--<a class="layui-btn layui-btn-normal layui-btn-xs btn-update" href="javascript:;">修改</a>-->
                        </h2>
                        <div class="layui-colla-content">
                            <table class="layui-table" lay-size="sm">
                                <colgroup>
                                    <col>
                                    <col>
                                    <col>
                                    <col width="60">
                                </colgroup>
                                <thead>
                                <tr>
                                    <th>类型</th>
                                    <th>金额</th>
                                    <th>备注</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>水费</td>
                                    <td>24元</td>
                                    <td>24元</td>
                                    <td>
                                        <button class="layui-btn layui-btn-danger layui-btn-xs">修改</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>电费</td>
                                    <td>67元</td>
                                    <td>67元</td>
                                    <td>
                                        <button class="layui-btn layui-btn-danger layui-btn-xs">修改</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>煤气费</td>
                                    <td>7元</td>
                                    <td>7元</td>
                                    <td>
                                        <button class="layui-btn layui-btn-danger layui-btn-xs">修改</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>暖气费</td>
                                    <td>50元</td>
                                    <td>50元</td>
                                    <td>
                                        <button class="layui-btn layui-btn-danger layui-btn-xs">修改</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>物业费</td>
                                    <td>24元</td>
                                    <td>24元</td>
                                    <td>
                                        <button class="layui-btn layui-btn-danger layui-btn-xs">修改</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>按揭/房租</td>
                                    <td>1800元</td>
                                    <td>1800元</td>
                                    <td>
                                        <button class="layui-btn layui-btn-danger layui-btn-xs">修改</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>合计</td>
                                    <td>1972元</td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </#list>
            </div>
        </div>
    </div>
</div>
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