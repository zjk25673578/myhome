<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>欢迎页面</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8"/>
    <link rel="shortcut icon" href="${ctx}/images/world.png" type="image/x-icon"/>
    <link rel="stylesheet" href="${ctx}/css/xadmin.css">
</head>
<body class="layui-anim layui-anim-fadein">
<div class="x-body">
    <blockquote class="layui-elem-quote">欢迎：<#if currentUser.userType == 1>超级管理员</#if>
        <span class="x-red">${currentUser.rname}</span>
    </blockquote>
    <fieldset class="layui-elem-field">
        <legend>数据统计</legend>
        <div class="layui-field-box">
            <div class="layui-col-md12">
                <div class="layui-card">
                    <div class="layui-card-body">
                        <div class="layui-carousel x-admin-carousel x-admin-backlog" lay-anim="" lay-indicator="inside"
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
                                                <cite>12</cite></p>
                                        </a>
                                    </li>
                                    <li class="layui-col-xs2">
                                        <a href="javascript:;" class="x-admin-backlog-body">
                                            <h3>回复数</h3>
                                            <p>
                                                <cite>99</cite></p>
                                        </a>
                                    </li>
                                    <li class="layui-col-xs2">
                                        <a href="javascript:;" class="x-admin-backlog-body">
                                            <h3>商品数</h3>
                                            <p>
                                                <cite>67</cite></p>
                                        </a>
                                    </li>
                                    <li class="layui-col-xs2">
                                        <a href="javascript:;" class="x-admin-backlog-body">
                                            <h3>文章数</h3>
                                            <p>
                                                <cite>67</cite></p>
                                        </a>
                                    </li>
                                    <li class="layui-col-xs2">
                                        <a href="javascript:;" class="x-admin-backlog-body">
                                            <h3>文章数</h3>
                                            <p>
                                                <cite>6766</cite></p>
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
                    <th>xxx版本</th>
                    <td>1.0.180420</td>
                </tr>
                <tr>
                    <th>服务器地址</th>
                    <td>x.xuebingsi.com</td>
                </tr>
                <tr>
                    <th>操作系统</th>
                    <td>WINNT</td>
                </tr>
                <tr>
                    <th>运行环境</th>
                    <td>Apache/2.4.23 (Win32) OpenSSL/1.0.2j mod_fcgid/2.3.9</td>
                </tr>
                <tr>
                    <th>MYSQL版本</th>
                    <td>5.5.53</td>
                </tr>
                <tr>
                    <th>上传附件限制</th>
                    <td>2M</td>
                </tr>
                <tr>
                    <th>剩余空间</th>
                    <td>86015.2M</td>
                </tr>
                </tbody>
            </table>
        </div>
    </fieldset>
    <#if currentUser.userType == 1>
    <fieldset class="layui-elem-field">
        <legend>其他信息</legend>
        <div class="layui-field-box">
            啦啦啦啦啦
        </div>
    </fieldset>
    </#if>
</div>
</body>
</html>