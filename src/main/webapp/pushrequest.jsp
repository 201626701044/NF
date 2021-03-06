<%--
  Created by IntelliJ IDEA.
  User: Zoe
  Date: 2018/12/23
  Time: 13:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta content="text/css" charset="UTF-8">
    <title>求租发布</title>
    <link href="css/header-footer.css" type="text/css" rel="stylesheet"  />
    <link href="css/top.css" type="text/css" rel="stylesheet"  />
    <link href="css/pushhouse.css" type="text/css" rel="stylesheet"  />
    <script src="js/pushhouse.js" type="text/javascript"></script>

    <script type="text/javascript">
        function showPreview(source) {
            var file = source.files[0];
            if(window.FileReader) {
                var fr = new FileReader();
                console.log(fr);
                var portrait = document.getElementById('portrait');
                fr.onloadend = function(e) {
                    portrait.src = e.target.result;
                };
                fr.readAsDataURL(file);
                portrait.style.display = 'block';
            }
        }
    </script>

</head>

<body>

<div class="header">
    <span class="word">客服电话：4000-888-888</span>
    <ul>
        <li><a href="#">用户帮助</a></li>
        <li ><a href="#">注册</a></li>
        <li ><a href="#">登录</a></li>
    </ul>
</div>


<div class="top">
    <div class="top-left" >
        <a  href="#">
            <img src="img/index.img/logo.png" alt="logo">
        </a>
        <span class="word">个人中心</span>
    </div>

    <div class="top-right">
        <a><img src="img/house/address.png" >南昌</a>
        <a href="#">下载App</a>
    </div>

</div>

<div class="pushhouse">
    <div class="first">求租发布</div>
    <hr class="first-line">
    <form action="${ctx}/request/addrequest" method="post" enctype="multipart/form-data">
        <ul class="push-ul">
        <li>
            <span class="push-describe">昵&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称</span>
            <input class="push-money" type="text" name="nickname" placeholder=" 请输入昵称">
        </li>
        <li>
            <span class="push-describe">职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;业</span>
            <input class="push-money" type="text" name="job" placeholder=" 请输入职业">
        </li>
        <li>
            <span class="push-describe">地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址</span>
            <span class="push-address">
            <select id="One" title="" name="city"></select>
            <select id="Two" title="" name="city"></select>
            <select id="Three" title=""name="city"></select>
            </span>
        </li>
        <li>
            <span class="push-describe">发布时间</span>
            <input class="push-money" type="date"  name="reqTime">
        </li>

        <li>
            <span class="push-describe">预算</span>
            <input class="push-money" type="text" name="budget" placeholder=" 请输入预算">
        </li>
        <li>
            <span class="push-describe">描述</span>
            <input class="push-money" type="text" name="mateCharacter" placeholder="请输入要求">
        </li>
        <li>
            <span class="push-describe"> 头&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;像</span>
            <input type="file" name="file" onchange="showPreview(this)" />
            <img id="portrait" src="" style="display:none;width: 100px;height:100px;" />
        </li>

        <li>
            <input class="push-submit" type="submit" value="提交" name="确认">
        </li>
    </ul>
    </form>

</div>


</body>
</html>