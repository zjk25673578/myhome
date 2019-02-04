<!DOCTYPE html>
<html lang="en">
<head>
    <title>添加财政数据</title>
    <meta charset="UTF-8">
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
<body>
<div class="layui-container">
    <div class="layui-col-lg6 layui-col-md6 layui-col-sm6 layui-col-xs12">
        <div class="layui-tab">
            <ul class="layui-tab-title">
                <li class="layui-this">租住费用</li>
                <li>日常消费</li>
                <li>收入</li>
            </ul>
            <div class="layui-tab-content">
                <div class="layui-tab-item layui-show">
                    <fieldset class="layui-elem-field layui-field-title">
                        <legend>租住费用</legend>
                    </fieldset>
                    <form action="${ctx}/finance/lease" class="layui-form2" method="post">
                        <div class="layui-form-item">
                            <label class="layui-form-label">水费</label>
                            <div class="layui-input-inline">
                                <input name="water" lay-verify="number"
                                       autocomplete="off" class="layui-input" value="0.0">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">电费</label>
                            <div class="layui-input-inline">
                                <input name="electric" lay-verify="number"
                                       autocomplete="off" class="layui-input" value="0.0">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">煤气费</label>
                            <div class="layui-input-inline">
                                <input name="gas" lay-verify="number"
                                       autocomplete="off" class="layui-input" value="0.0">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">暖气费</label>
                            <div class="layui-input-inline">
                                <input name="warm" lay-verify="number"
                                       autocomplete="off" class="layui-input" value="0.0">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">物业费</label>
                            <div class="layui-input-inline">
                                <input name="property" lay-verify="number"
                                       autocomplete="off" class="layui-input" value="0.0">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">发生时间</label>
                            <div class="layui-input-inline">
                                <input id="createtime" name="createtime" placeholder="不填写默认当前月份"
                                       autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <!-- lease: 租住, 租赁 -->
                                <button class="layui-btn layui-btn-sm" lay-submit lay-filter="lease">
                                    <i class="fa fa-save fa-lg"></i> 保存
                                </button>
                                <button type="reset" class="layui-btn layui-btn-sm layui-btn-primary">
                                    <i class="fa fa-undo fa-lg"></i> 重置
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="layui-tab-item">内容2</div>
                <div class="layui-tab-item">内容3</div>
            </div>
        </div>
    </div>
    <div class="layui-col-lg6 layui-col-md6 layui-col-sm6 layui-col-xs12">

    </div>
</div>

<script>
    layui.use(['form', 'element', 'laydate'], function () {
        var form = layui.form,
            laydate = layui.laydate,
            element = layui.element;

        laydate.render({
            elem: '#createtime'
        });

        //监听提交
        form.on('submit(lease)', function (data) {
            console.log(JSON.stringify(data.field));
            return true;
        });
    });
</script>
</body>
</html>