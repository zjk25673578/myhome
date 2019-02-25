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
        .layui-timeline-content {
            padding-left: 50px;
        }
    </style>
</head>
<body class="layui-anim layui-anim-fadein">
<div class="x-body">
    <div class="layui-col-lg3 layui-col-lg-offset1 layui-col-md5 layui-col-md-offset1 layui-col-sm6 layui-col-sm-offset1 layui-col-xs12">
        <div class="layui-form-item tac">
            <div class="layui-form-item">
                <input id="year" type="hidden" value="${year}">
                <h1 id="view">${year}年</h1>
                <div id="laydateSelector"></div>
            </div>
            <div class="layui-form-item">
                <button class="layui-btn layui-btn-sm layui-btn-normal" type="button">
                    <i class="fa fa-anchor"></i> 添加
                </button>
                <button class="layui-btn layui-btn-sm layui-btn-warm" type="button">
                    <i class="fa fa-circle-o-notch"></i> 现在
                </button>
                <button class="layui-btn layui-btn-sm layui-btn-primary" type="button">
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
    <div class="layui-col-lg3 layui-col-lg-offset1 layui-col-md5 layui-col-md-offset1 layui-col-sm4 layui-col-sm-offset1 layui-col-xs12">
        <div class="layui-form-item">
            <ul class="layui-timeline">
                <li class="layui-timeline-item">
                    <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                    <div class="layui-timeline-content layui-text">
                        <h2 class="layui-timeline-title">1月份</h2>
                        <table class="layui-table" lay-size="sm">
                            <thead>
                            <tr>
                                <th>类型</th>
                                <th>金额</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>水费</td>
                                <td>24元</td>
                            </tr>
                            <tr>
                                <td>电费</td>
                                <td>67元</td>
                            </tr>
                            <tr>
                                <td>煤气费</td>
                                <td>7元</td>
                            </tr>
                            <tr>
                                <td>暖气费</td>
                                <td>50元</td>
                            </tr>
                            <tr>
                                <td>物业费</td>
                                <td>24元</td>
                            </tr>
                            <tr>
                                <td>按揭/房租</td>
                                <td>1800元</td>
                            </tr>
                            <tr>
                                <td>合计</td>
                                <td>1972元</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </li>
                <li class="layui-timeline-item">
                    <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                    <div class="layui-timeline-content layui-text">
                        <h2 class="layui-timeline-title">2月份</h2>
                        <table class="layui-table" lay-size="sm">
                            <thead>
                            <tr>
                                <th>类型</th>
                                <th>金额</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>水费</td>
                                <td>24元</td>
                            </tr>
                            <tr>
                                <td>电费</td>
                                <td>67元</td>
                            </tr>
                            <tr>
                                <td>煤气费</td>
                                <td>7元</td>
                            </tr>
                            <tr>
                                <td>暖气费</td>
                                <td>50元</td>
                            </tr>
                            <tr>
                                <td>物业费</td>
                                <td>24元</td>
                            </tr>
                            <tr>
                                <td>按揭/房租</td>
                                <td>1800元</td>
                            </tr>
                            <tr>
                                <td>合计</td>
                                <td>1972元</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </li>
                <li class="layui-timeline-item">
                    <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                    <div class="layui-timeline-content layui-text">
                        <h2 class="layui-timeline-title">3月份</h2>
                        <table class="layui-table" lay-size="sm">
                            <thead>
                            <tr>
                                <th>类型</th>
                                <th>金额</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>水费</td>
                                <td>24元</td>
                            </tr>
                            <tr>
                                <td>电费</td>
                                <td>67元</td>
                            </tr>
                            <tr>
                                <td>煤气费</td>
                                <td>7元</td>
                            </tr>
                            <tr>
                                <td>暖气费</td>
                                <td>50元</td>
                            </tr>
                            <tr>
                                <td>物业费</td>
                                <td>24元</td>
                            </tr>
                            <tr>
                                <td>按揭/房租</td>
                                <td>1800元</td>
                            </tr>
                            <tr>
                                <td>合计</td>
                                <td>1972元</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </li>
                <li class="layui-timeline-item">
                    <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                    <div class="layui-timeline-content layui-text">
                        <h2 class="layui-timeline-title">4月份</h2>
                        <table class="layui-table" lay-size="sm">
                            <thead>
                            <tr>
                                <th>类型</th>
                                <th>金额</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>水费</td>
                                <td>24元</td>
                            </tr>
                            <tr>
                                <td>电费</td>
                                <td>67元</td>
                            </tr>
                            <tr>
                                <td>煤气费</td>
                                <td>7元</td>
                            </tr>
                            <tr>
                                <td>暖气费</td>
                                <td>50元</td>
                            </tr>
                            <tr>
                                <td>物业费</td>
                                <td>24元</td>
                            </tr>
                            <tr>
                                <td>按揭/房租</td>
                                <td>1800元</td>
                            </tr>
                            <tr>
                                <td>合计</td>
                                <td>1972元</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </li>
                <li class="layui-timeline-item">
                    <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                    <div class="layui-timeline-content layui-text">
                        <h2 class="layui-timeline-title">5月份</h2>
                        <table class="layui-table" lay-size="sm">
                            <thead>
                            <tr>
                                <th>类型</th>
                                <th>金额</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>水费</td>
                                <td>24元</td>
                            </tr>
                            <tr>
                                <td>电费</td>
                                <td>67元</td>
                            </tr>
                            <tr>
                                <td>煤气费</td>
                                <td>7元</td>
                            </tr>
                            <tr>
                                <td>暖气费</td>
                                <td>50元</td>
                            </tr>
                            <tr>
                                <td>物业费</td>
                                <td>24元</td>
                            </tr>
                            <tr>
                                <td>按揭/房租</td>
                                <td>1800元</td>
                            </tr>
                            <tr>
                                <td>合计</td>
                                <td>1972元</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>
</body>
</html>