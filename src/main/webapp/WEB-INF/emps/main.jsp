<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <title>员工管理 - 增删改查</title>
    <link rel="stylesheet" href="${ctx}/lib/layui/css/layui.css">
    <link rel="stylesheet" href="${ctx}/css/main.css">
    <script src="${ctx}/lib/layui/layui.js"></script>
    <script src="${ctx}/js/main.js"></script>
</head>
<body>
<div class="layui-container">
    <div class="layui-form-item"></div>
    <div class="layui-row">
        <!-- 查询的搜索框 -->
        <form id="search_form" class="layui-form">
            <div class="layui-form-item">
                <div class="layui-col-xs3">
                    <label class="layui-form-label" for="ename">员工名称：</label>
                    <div class="layui-input-inline">
                        <input id="ename" name="ename" type="text" class="layui-input">
                    </div>
                </div>
                <div class="layui-col-xs3">
                    <label class="layui-form-label" for="sex">性别：</label>
                    <div class="layui-input-inline">
                        <select id="sex" name="sex">
                            <option value="">全部</option>
                            <option value="1">男</option>
                            <option value="0">女</option>
                        </select>
                    </div>
                </div>
                <div class="layui-col-xs3">
                    <label class="layui-form-label">工资区间：</label>
                    <div class="layui-inline">
                        <div class="between-and-text">
                            <input type="text" name="min_sal" class="layui-input"/>
                        </div>
                        -
                        <div class="between-and-text">
                            <input type="text" name="max_sal" class="layui-input"/>
                        </div>
                    </div>
                </div>
                <div class="layui-col-xs3">
                    <label class="layui-form-label">年龄区间：</label>
                    <div class="layui-inline">
                        <div class="between-and-text">
                            <input type="text" name="min_age" class="layui-input"/>
                        </div>
                        -
                        <div class="between-and-text">
                            <input type="text" name="max_age" class="layui-input"/>
                        </div>
                    </div>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-col-xs6">
                    <label class="layui-form-label">入职日期：</label>
                    <div class="layui-inline">
                        <div class="between-and-date">
                            <input type="text" id="start_hiredate" name="start_hiredate" class="layui-input"/>
                        </div>
                        -
                        <div class="between-and-date">
                            <input type="text" id="end_hiredate" name="end_hiredate" class="layui-input"/>
                        </div>
                    </div>
                </div>
                <div class="layui-col-xs3">
                    <button lay-submit class="layui-btn layui-btn-sm" lay-filter="search_form">查询</button>
                    <button type="reset" class="layui-btn layui-btn-sm layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
    </div>
    <div class="layui-row">
        <table id="emps_table" lay-filter="emptable"></table>
    </div>
</div>
<script type="text/html" id="opera_btns">
    <!-- 右侧的菜单 -->
    <a href="javascript:;" lay-event="update" lay-data="{{ d.empno }}"
       class="layui-btn layui-btn-xs layui-btn-warm">编辑</a>
    <a href="javascript:;" lay-event="del" lay-data="{{ d.empno }}"
       class="layui-btn layui-btn-xs layui-btn-danger">删除</a>
</script>
<script type="text/html" id="toolbarDemo">
    <!-- 顶部功能菜单 -->
    <div class="layui-btn-container">
        <button class="layui-btn layui-btn-sm" lay-event="add">添加</button>
        <button class="layui-btn layui-btn-sm" lay-event="del_multiple">删除</button>
    </div>
</script>
<script type="text/html" id="form_emp">
    <div class="layui-form-item"></div>
    <form id="form_data_emp" class="layui-form">
        <div class="layui-form-item">
            <label class="layui-form-label">员工姓名：</label>
            <div class="layui-input-inline">
                <input type="text" name="ename" required lay-verify="required" placeholder="请输入员工姓名"
                       class="layui-input"/>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">性别：</label>
            <div class="layui-input-inline">
                <input type="radio" name="sex" value="1" title="男">
                <input type="radio" name="sex" value="0" title="女" checked>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">年龄：</label>
            <div class="layui-input-inline">
                <input type="text" name="age" placeholder="请输入年齡"
                       class="layui-input"/>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">入职时间：</label>
            <div class="layui-input-inline">
                <input type="text" id="hiredate" name="hiredate" placeholder="请选择入职时间"
                       class="layui-input"/>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">工资：</label>
            <div class="layui-input-inline">
                <input type="text" name="sal" placeholder="请填入工资"
                       class="layui-input"/>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">奖金：</label>
            <div class="layui-input-inline">
                <input type="text" name="comm" placeholder="请输入奖金"
                       class="layui-input"/>
            </div>
        </div>
    </form>
</script>
</body>
</html>
