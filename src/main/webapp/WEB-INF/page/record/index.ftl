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
    <@macros.headConfig />
    <script type="text/javascript" src="${ctx}/js/record/index/index.js"></script>
</head>
<body>
<!-- 顶部开始 -->
<div class="container">
    <div class="logo">
        <a href="${ctx}/blog/index"><i class="fa fa-hand-o-left fa-fw fa-lg"></i>去我家博客</a>
    </div>
    <div class="left_open">
        <i title="展开左侧栏" class="fa fa-th fa-fw fa-lg"></i>
    </div>
    <ul class="layui-nav left fast-add" lay-filter="">
        <li class="layui-nav-item">
            <a href="javascript:;">
                <i class="fa fa-sitemap"></i> 新增
            </a>
            <dl class="layui-nav-child">
                <dd>
                    <a onclick="x_admin_show('资讯','http://www.baidu.com')">
                        <i class="fa fa-rss-square"></i> 资讯
                    </a>
                </dd>
                <dd>
                    <a onclick="x_admin_show('图片','http://www.baidu.com')">
                        <i class="fa fa-sticky-note"></i> 图片
                    </a>
                </dd>
            </dl>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:;">
                <i class="fa fa-bomb"></i> 备用
            </a>
        </li>
    </ul>
    <ul class="layui-nav right">
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
                    <a href="${ctx}/mhusers/toLogin?loginOut=true">退出</a>
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
                <i class="fa fa-institution fa-fw fa-lg"></i>我的桌面
            </li>
        </ul>
        <div class="layui-tab-content">
            <div class="layui-tab-item layui-show layui-anim layui-anim-fadein">
                <#--<iframe src='${ctx}/record/welcome' frameborder="0" scrolling="yes"
                        class="x-iframe"></iframe>-->
                <div class="x-body">
                    <blockquote class="layui-elem-quote">
                        欢迎：<#if currentUser.userType == 1><span class="x-red">超级管理员</span></#if>
                        <span>${currentUser.rname}</span>
                    </blockquote>
                    <fieldset class="layui-elem-field">
                        <legend>数据统计</legend>
                        <div class="layui-field-box">
                            <div class="layui-col-md12">
                                <div class="layui-card">
                                    <div class="layui-card-body">
                                        <div class="layui-carousel x-admin-carousel x-admin-backlog" lay-anim=""
                                             lay-indicator="inside"
                                             lay-arrow="none" style="width: 100%; height: 90px;">
                                            <div carousel-item="">
                                                <ul class="layui-row layui-col-space10 layui-this">
                                                    <li class="layui-col-xs2">
                                                        <a href="javascript:;" class="x-admin-backlog-body">
                                                            <h3>文章数</h3>
                                                            <p>
                                                                <cite>66</cite>
                                                            </p>
                                                        </a>
                                                    </li>
                                                    <li class="layui-col-xs2">
                                                        <a href="javascript:;" class="x-admin-backlog-body">
                                                            <h3>会员数</h3>
                                                            <p>
                                                                <cite>12</cite>
                                                            </p>
                                                        </a>
                                                    </li>
                                                    <li class="layui-col-xs2">
                                                        <a href="javascript:;" class="x-admin-backlog-body">
                                                            <h3>回复数</h3>
                                                            <p>
                                                                <cite>99</cite>
                                                            </p>
                                                        </a>
                                                    </li>
                                                    <li class="layui-col-xs2">
                                                        <a href="javascript:;" class="x-admin-backlog-body">
                                                            <h3>商品数</h3>
                                                            <p>
                                                                <cite>67</cite>
                                                            </p>
                                                        </a>
                                                    </li>
                                                    <li class="layui-col-xs2">
                                                        <a href="javascript:;" class="x-admin-backlog-body">
                                                            <h3>文章数</h3>
                                                            <p>
                                                                <cite>67</cite>
                                                            </p>
                                                        </a>
                                                    </li>
                                                    <li class="layui-col-xs2">
                                                        <a href="javascript:;" class="x-admin-backlog-body">
                                                            <h3>文章数</h3>
                                                            <p>
                                                                <cite>6766</cite>
                                                            </p>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset class="layui-elem-field">
                        <legend>系统信息</legend>
                        <div class="layui-field-box">
                            <table class="layui-table">
                                <tbody>
                                <tr>
                                    <th>管理系统版本号</th>
                                    <td>${version}</td>
                                </tr>
                                <tr>
                                    <th>服务器操作系统</th>
                                    <td>${osName}</td>
                                </tr>
                                <tr>
                                    <th>运行环境</th>
                                    <td>${environment}</td>
                                </tr>
                                <tr>
                                    <th>java版本</th>
                                    <td>JRE - ${javaVersion}</td>
                                </tr>
                                <tr>
                                    <th>当前时区</th>
                                    <td>${timezone}</td>
                                </tr>
                                <tr>
                                    <th>数据库名称及版本</th>
                                    <td>${databaseInfo}</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </fieldset>
                    <#if currentUser.userType == 1>
                        <fieldset class="layui-elem-field">
                            <legend>服务器信息</legend>
                            <div class="layui-field-box">
                                <div class="layui-form-item">
                                    <div class="layui-form-label">
                                        服务器地址
                                    </div>
                                    <div class="layui-input-inline">
                                        <span class="layui-input">${serverName}</span>
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <div class="layui-form-label">
                                        剩余空间
                                    </div>
                                    <div class="layui-input-inline">
                                        <span class="layui-input">86015.2M</span>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </#if>
                    <div style="height: 100px;"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 右侧主体结束 -->
<!-- 中部结束 -->
<!-- 底部开始 -->
<@macros.footer year='${currentYear}' company="小熊科技" />
<!-- 底部结束 -->
</body>
</html>