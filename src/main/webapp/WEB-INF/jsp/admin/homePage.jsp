<%--
  Created by IntelliJ IDEA.
  User: Zoe
  Date: 2018/12/9
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta content="text/css " charset="utf-8">
    <title>主页面</title>
    <link href="css/header-footer.css" type="text/css" rel="stylesheet"  />
    <link href="css/homePage.css" type="text/css" rel="stylesheet"/>
    <link href="../css/all-house.css" type="text/css" rel="stylesheet"/>
    <link rel="stylesheet" href="css/cityselect.css">
    <script type="text/javascript" src="js/cityselect.js"></script>
    <script src="../js/all-house.js" type="text/javascript"></script>
    <!--<script src="../js/tools.js" type="text/javascript"></script>-->
</head>
<body>

<div class="header">
    <span class="word">客服电话：4000-888-888</span>
    <ul>
        <li><a href="#">用户帮助</a></li>
        <li ><a href="register.jsp">注册</a></li>
        <li ><a href="login.jsp">登录</a></li>
    </ul>
</div>


<div class="main">

    <div class="top">

        <div class="nav">
            <ul >
                <li><a href="#">个人中心</a> </li>
                <li><a href="#">下载App</a> </li>
                <li><a href="#">租客论坛</a> </li>
            </ul>
        </div>

        <div class="logo">
            <a href="#">
                <img src="../img/index.img/logo.png" alt="我们的logo">
            </a>
        </div>

        <div class="search">
            <form >
                <input type="text" class="search1"id="citySelect" placeholder=" 请输入关键字 地段···"/>
            </form>
        </div>

    </div>

    <!--<div class="center-nav">
        <ul >
            <li><a href="#">区域找房</a> </li>
            <li><a href="#">地图找房</a> </li>
            <li><a href="found.html">我要求租</a> </li>
            <li><a href="advice.html">猜你喜欢</a> </li>
            <li><a href="#">房源发布</a></li>
        </ul>
    </div>-->

    <div class="search-title">
        <a href="#" class="big">城市</a>
        <i>&gt;</i>
        <a href="#">南昌租房</a>
    </div>

    <div class="sort-select">

        <!--位置选择-->
        <div class="sort">

            <div class="sort-left">
                <span class="">位置：</span>
            </div>

            <div class="sort-right">
                <a href="#" class="active">不限</a>
                <a href="#" class="">新建</a>
                <a href="#" class="">红谷滩</a>
                <a href="#" class="">西湖</a>
                <a href="#" class="">青山湖</a>
                <a href="#" class="">高新区</a>
                <a href="#" class="">高新区</a>
                <a href="#" class="">南昌县</a>
                <a href="#" class="">青云谱</a>
                <a href="#" class="">经开区</a>
                <a href="#" class="">湾里</a>
                <a href="#" class="">进贤</a>
                <a href="#" class="">安义</a>
            </div>

        </div>

        <div class="sort-line"></div>

        <!--入驻人数-->
        <div class="sort">

            <div class="sort-left">
                <span class="">人数：</span>
            </div>

            <div class="sort-right">
                <a href="#" class="active">不限</a>
                <a href="#" class="wither">单人入住</a>
                <a href="#" class="wither">双人入住</a>
                <a href="#" class="wither">三人入住</a>
                <a href="#" class="wither">四人入住</a>
                <a href="#" class="wither"><!--五室及以上--></a>
            </div>

        </div>
        <div class="sort-line"></div>

        <!--预期价格-->
        <div class="sort">

            <div class="sort-left">
                <span class="">价格：</span>
            </div>

            <div class="sort-right">
                <a href="#" class="active">不限</a>
                <a href="#" class="wither">500元以下</a>
                <a href="#" class="wither">500-800元</a>
                <a href="#" class="wither">800-1000元</a>
                <a href="#" class="wither">1000-1500元</a>
                <a href="#" class="wither">1500-2000元</a>
                <a href="#" class="wither">2500-3000元</a>
                <a href="#" class="wither">3000-4000元</a>
                <a href="#" class="wither">4000及以上</a>
            </div>

        </div>

        <div class="sort-line"></div>

        <!--预约时间-->
        <div class="sort">

            <div class="sort-left">
                <span class="">时间：</span>
            </div>

            <div class="sort-right">
                <a href="#" class="active">不限</a>
                <a href="#" class="wither">最近入住</a>
                <a href="#" class="wither">一月后入住</a>
                <a href="#" class="wither">两月后入住</a>
                <a href="#" class="wither">三月后入住</a>
                <a href="#" class="wither"><!--五室及以上--></a>
            </div>

        </div>

        <div class="sort-line"></div>

        <!--性别选择-->
        <div class="sort">

            <div class="sort-left">
                <span class="">性别：</span>
            </div>

            <div class="sort-right">
                <a href="#" class="active">不限</a>
                <a href="#" class="">男</a>
                <a href="#" class="">女</a>
            </div>

        </div>
        <div class="sort-line"></div>

        <!--性别选择-->
        <div class="sort">

            <div class="sort-left">
                <span class="">方式：</span>
            </div>

            <div class="sort-right">
                <a href="#" class="active">不限</a>
                <a href="#" class="">室友合租</a>
                <a href="#" class="">业主出租</a>
            </div>

        </div>
        <div class="sort-line"></div>
    </div>
    <!--选择结束-->

    <!--标签开始-->
    <div  class="title ">
        <ul>
            <li><a href="#" class="all" >房源信息</a></li>
            <li class="shipin2"><a href="../../../requestPage.jsp" >求租信息</a></li>
            <!--<li class="shipin2"><a href="#" ><img class="shipin" src="../img/index.img/shipin.png" alt=""><span class="shipin1">视频看房</span></a></li>-->
            <!--<li><a href="found.html" >我要求租</a></li>-->
            <!--<li><a href="#" >个性推荐</a></li>-->
        </ul>
    </div>
    <div class="title-line"></div>

    <!--第一栏房子-->
    <c:forEach items="${cs}" var="c">
    <div class="content">

        <div class="content-left">
            <div id="outer">
                <!--房屋图片-->
                <ul id="imgList">
                    <li><img src="${c.image}" alt="" width="200px" height="300px"></li>
                </ul>
            </div>
        </div>

        <div class="content-right">
            <div class="content-right-top">
                <p class="one"><a href="#">${c.houseName}</a></p>
                <p class="two">${c.houseType} </p>
                <span><img src="${c.image}" alt=""><p class="three">${c.area}</p></span>
                <p class="four"> </p>
            </div>

            <div class="content-right-bottom">
                <p class="five">${c.rentPrice}</p>
                <p class="photo">业主出租</p>
                <p class="six"><a href="#">查看详情</a> </p>
            </div>
        </div>

    </div>
    </c:forEach>
</div>
<div style="text-align:center">
    <a href="?start=1">首页</a>
    <a href="?start=${page.start-page.count}">上一页</a>
    <a href="?start=${page.start+page.count}">下一页</a>
    <a href="?start=${page.last}">末  页</a>
</div>
<div class="footer">
    <div class="footer1">
        <a href="#">关于我们 </a><span>‖</span>
        <a href="#">网站合作</a><span>‖</span>
        <a href="#">联系我们 </a><span>‖</span>
        <a href="#">招聘信息 </a><span>‖</span>
        <a href="#">服务声明 </a><span>‖</span>
        <a href="#">加入我们 </a><span>‖</span>
        <a href="#">意见反馈 </a>
    </div>
    <div class="footer2">
        <span>Copyright &copy; 2018 江西师范大学 软件学院</span>
    </div>
    <div class="footer3">
        违法和不良信息举报电话：<em>010-56318764</em> &nbsp;&nbsp; 举报邮箱：<a href="#"><em>let's share rant@fang.com</em></a>
    </div>
</div>

<!-- 实例化 -->
<script type="text/javascript">
    var test=new Vcity.CitySelector({input:'citySelect'});
</script>

<!-- 使用三步: 1.引入css和js文件;2.在需要的输入框加id;3.js创建一个实例,需要传入输入框id; -->

</body>

</html>