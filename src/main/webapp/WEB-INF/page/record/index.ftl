<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>希望多年以后, 归来仍是少年</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8"/>
    <link rel="shortcut icon" href="${ctx}/images/world.png" type="image/x-icon"/>
    <@header.baseConfig />
    <script type="text/javascript" src="${ctx}/js/index/index.js"></script>
</head>
<body>
<!-- 顶部开始 -->
<div class="container">
    <div class="logo">
        <a href="${ctx}/blog/index">去我家博客</a>
    </div>
    <div class="left_open">
        <i title="展开左侧栏" class="layui-icon layui-icon-spread-left"></i>
    </div>
    <ul class="layui-nav left fast-add" lay-filter="">
        <li class="layui-nav-item">
            <a href="javascript:;">
                <i class="layui-icon layui-icon-add-1"></i>新增
            </a>
            <dl class="layui-nav-child">
                <dd>
                    <a onclick="x_admin_show('资讯','http://www.baidu.com')">
                        <i class="iconfont">&#xe6a2;</i>资讯</a>
                </dd>
                <dd>
                    <a onclick="x_admin_show('图片','http://www.baidu.com')"><i
                            class="iconfont">&#xe6a8;</i>图片</a>
                </dd>
                <dd>
                    <a onclick="x_admin_show('用户','http://www.baidu.com')"><i
                            class="iconfont">&#xe6b8;</i>用户</a>
                </dd>
            </dl>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:;">
                <i class="layui-icon layui-icon-set-sm"></i>备用
            </a>
        </li>
    </ul>
    <ul class="layui-nav right" lay-filter="">
        <li class="layui-nav-item">
            <a href="javascript:;">
                <#if currentUser??><#-- 或者这样写<#if currentUser?exists> -->
                    ${currentUser.rname}
                <#else>
                    没有登陆
                </#if>
            </a>
            <dl class="layui-nav-child">
                <!-- 二级菜单 -->
                <dd>
                    <a onclick="x_admin_show('个人信息','http://www.baidu.com')">个人信息</a>
                </dd>
                <dd>
                    <a href="${ctx}/toLogin?loginOut=true">退出</a>
                </dd>
            </dl>
        </li>
    </ul>
</div>
<!-- 顶部结束 -->
<!-- 中部开始 -->
<!-- 左侧菜单开始 -->
<div class="left-nav">
    <div id="side-nav">
    </div>
</div>
<!-- 左侧菜单结束 -->
<!-- 右侧主体开始 -->
<div class="page-content">
    <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
        <ul class="layui-tab-title">
            <li class="home layui-this">
                <i class="layui-icon layui-icon-home"></i>我的桌面
            </li>
        </ul>
        <div class="layui-tab-content">
            <div class="layui-tab-item layui-show">
            <iframe src='${ctx}/record/welcome' frameborder="0" scrolling="yes"
                    class="x-iframe"></iframe>
            </div>
        </div>
    </div>
</div>
<div class="page-content-bg"></div>
<!-- 右侧主体结束 -->
<!-- 中部结束 -->
<!-- 底部开始 -->
<@copyright.footer year='2018' company="小熊科技" />
<!-- 底部结束 -->
</body>
</html>