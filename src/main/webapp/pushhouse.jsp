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
    <title>房源发布</title>
    <link href="css/header-footer.css" type="text/css" rel="stylesheet"  />
    <link href="css/top.css" type="text/css" rel="stylesheet"  />
    <link href="css/pushhouse.css" type="text/css" rel="stylesheet"  />
    <script src="js/pushhouse.js" type="text/javascript"></script>

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
        <img class="self-pho" src="img/found/luck.png" alt="">
        <a>好名字</a>
    </div>

</div>

<div class="pushhouse">
    <form action="${pageContext.request.contextPath }/addhouse.controller" method="post">
    <div class="first">房源发布</div>
    <hr class="first-line">
    <ul class="push-ul">
        <li>
            <span class="push-describe">房&nbsp;&nbsp;&nbsp;源&nbsp;&nbsp;&nbsp;名</span>
            <input class="push-money" type="text" name="houseName" placeholder=" 请输入房源名">
        </li>
        <li>
            <span class="push-describe">租&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;金</span>
            <input class="push-money" type="text" name="rentPrice" placeholder=" 请输入租金">
        </li>
        <li>
            <span class="push-describe">地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址</span>
            <span class="push-address">
            <select id="One" title="" name="area"></select>
            <select id="Two" title="" name="area"></select>
            <select id="Three" title=""name="area"></select>
            </span>
        </li>
        <li>
            <span class="push-describe">入住时间</span>
            <input class="push-money" type="date" name="checkInDate">
        </li>

        <li>
            <span class="push-describe">房型</span>
            <input class="push-money" type="text" name="houseType" placeholder=" 请输入房型">
        </li>
        <li>
            <span class="push-describe">入住人数</span>
            <input class="push-money" type="text" name="rentNum" placeholder=" 请输入几人入住">
        </li>
        <li>
            <span class="push-describe"> 照&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;片</span>
            <input class="push-photos" type="file" name="image" >
        </li>
        <li>
            <span class="push-describe"> 方&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;式</span>
            <input class="push-photos" type="text" name="way" >
        </li>

        <!-- /*<li>
             /*<span class="push-describe"> 描&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;述</span>*/
             /*<form class="" action="" >*/
                 /*<textarea class="push-content" rows="4" cols="20">*/
                 /*</textarea>*/
             /*</form>*/
         /*</li>*/
         -->
        <li>
            <input class="push-submit" type="submit" value="提交" name="确认">
        </li>
    </ul>
    </form>
</div>



</body>
</html>