<#macro headConfig>
    <script>
        var _ctx = '${ctx}';
    </script>
    <link rel="stylesheet" href="${ctx}/res/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="${ctx}/css/record/xadmin.css">
    <link rel="stylesheet" href="${ctx}/css/custom-style.css">
    <script type="text/javascript" src="${ctx}/res/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${ctx}/res/jquery/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="${ctx}/js/record/xadmin.js"></script>
    <script type="text/javascript" src="${ctx}/js/record/common.js"></script>
</#macro>
<#macro footer company="" year="">
    <div class="footer">
        <div class="copyright">
            Copyright ©${year} ${company} v2.3 All Rights Reserved
        </div>
    </div>
</#macro>