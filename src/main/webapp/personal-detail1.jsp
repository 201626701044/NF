<%--
  Created by IntelliJ IDEA.
  User: Zoe
  Date: 2018/12/23
  Time: 13:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta content="text/css" charset="UTF-8">
    <link href="css/header-footer.css" type="text/css" rel="stylesheet"  />
    <link href="css/top.css" type="text/css" rel="stylesheet"  />
    <link href="css/personal-drtail.css" type="text/css" rel="stylesheet"  />
    <script src="js/personal-detail.js" type="text/javascript"></script>
    <script src="js/jquery-1.10.1.js" type="text/javascript"></script>

    <title>个人资料</title>


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

<div class="nav">
    <ul class="nav-left">
       <li  onclick="show(1);"><a href="#">个人资料</a></li>
        <li  onclick="show(2);"><a href="">信息修改</a></li>
        <li  onclick="show(3);"><a href="#">我的收藏</a></li>
        <li  onclick="show(4);"><a href="#">我的动态</a></li>
        <li  onclick="show(5);"><a href="#">访客足迹</a></li>
        <li class="long"></li>
    </ul>
</div>

<div class="nav-right">
    <div id="d1" class="holder">
            <ul class="nav-right-ul">
                <li class="first">个人资料</li>
                <hr class="first-line">

                <li class="second photo">
                    <span  class="describe">头&nbsp;像</span>
                    <img class="photo01" src="img/found/luck.png" alt="个人头像">
                    <!--<span  class="photo02"><a id="myphoto" href="#">修改</a></span>-->
                </li>
                <li class="second name">
                    <span class="describe">昵&nbsp;称</span>
                    <span class=" name01">小猪佩琪</span>
                    <!--<span class="photo02"><a href="#">修改</a></span>-->
                </li>
                <li class="second sex">
                    <span class="describe">性&nbsp;别</span>
                    <span class=" name01">男</span>
                        <!--<input type="radio" name="sex" value="male">男&nbsp;&nbsp;-->
                        <!--<input type="radio" name="sex" value="female">女-->

                    <!--<span class="photo02"><a href="#">修改</a></span>-->
                </li>
                <li class="second job">
                    <span class="describe">职&nbsp;业</span>
                    <span class=" name01">软件工程师</span>
                    <!--<span class="photo02"><a href="#">修改</a></span>-->
                </li>
                <li class="second phone">
                    <span class="describe">手&nbsp;机</span>
                    <span class=" name01">15089875689</span>
                    <!--<span class="photo02"><a href="#">修改</a></span>-->
                </li>
                <li class="second phone">
                </li>
            </ul>
    </div>
    <div id="d2" class="holder01">
        <ul class="nav-right-ul01">
            <li class="first">信息修改</li>
            <hr class="first-line">
            <!--<a id="myphoto" type="file" href="#">上传</a>-->
            <li class="third xg-photo">
                <span  class="xg-describe">头&nbsp;像</span>
                <img class="xg-photo01" src="img/found/luck.png" alt="个人头像">
                <input class="xg-file" type="file" >
                <span  class="xg-photo02"></span>
            </li >
            <li class="third xg-name">
                <span class="xg-describe">昵&nbsp;称</span>
                <input class="input-name" type="text" name="newname" size="20"  placeholder=" 请输入新昵称">
            </li>
            <li class="third xg-sex">
                <span class="xg-describe">性&nbsp;别</span>
                <span class=" xg-sex01">
                     <input type="radio" name="sex" value="male" checked="checked">男&nbsp;&nbsp;
                      <input type="radio" name="sex" value="female">女
                </span>
            </li>
            <li class="third xg-job">
                <span class="xg-describe">职&nbsp;业</span>
                <input class="input-name" type="text" name="newjob" size="20"  placeholder=" 请输入您的职业">
            </li>
            <li class="third xg-phone">
                <span class="xg-describe">手&nbsp;机</span>
                <input id="new-phonenum" class="input-name" type="text" name="newjob" size="20"  placeholder=" 请输入您的手机号">
            </li>
            <li>
                <input class="xg-submit" type="submit" name="asubmit" value="确认修改"  >
            </li>

        </ul>
    </div>
    <div id="d3" class="holder01">
        3333
    </div>
    <div id="d4" class="holder01">
        4444
    </div>
    <div id="d5" class="holder01">
        5555
    </div>
</div>

<!--<script type="text/javascript">-->
    <!--alert(56)-->
    <!--show(1);-->
    <!--function show(num)-->
    <!--{-->
        <!--for(var i=1; i<=4; i++)-->
        <!--{-->
            <!--$("d"+i).style.display="none";-->
            <!--//document.getElementById("d"+i).style.display="none";-->

        <!--}-->
        <!--$("d"+num).style.display="block";-->
        <!--//  document.getElementById("d"+num).style.display="block";-->

    <!--}-->


<!--//</script>-->
</body>
</html>