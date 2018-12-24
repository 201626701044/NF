<%--
  Created by IntelliJ IDEA.
  User: Zoe
  Date: 2018/12/9
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
    <base href="<%=basePath%>"/>
    <meta content="text/css " charset="utf-8">
    <title>主页面</title>
    <link href="css/header-footer.css" type="text/css" rel="stylesheet"  />
    <link href="css/homePage.css" type="text/css" rel="stylesheet"/>
    <link href="../css/all-house.css" type="text/css" rel="stylesheet"/>
    <link rel="stylesheet" href="css/cityselect.css">
    <script type="text/javascript" src="js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="js/cityselect.js"></script>
    <script src="../js/all-house.js" type="text/javascript"></script>
    <!--<script src="../js/tools.js" type="text/javascript"></script>-->
    <script  src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js">
    </script>

</head>
<script >
    $(document).ready(function() {
        $(".lookfor").click(function() {

            $(".lookfor").removeClass("active");
            $(this).addClass("active");

            $.get("<%=basePath%>queryHouse.controller",
                {alink:$("#area1234 .active").attr("addlist"),
                    numlink:$("#num1234  .active").attr("numLimit"),
                    pricelink1:$("#price1234 .active").attr("priceMin"),
                    pricelink2:$("#price1234 .active").attr("priceMax"),
                    timelink:$("#time1234 .active").attr("timeLimit") ,
                    sexlink:$("#sex1234 .active").attr("sexLimit"),
                    waylink:$("#way1234 .active").attr("wayLimit")},function(msg){
                    if (msg) {
                        var result = eval(msg);
                        if (result) {
                            var content = "";
                            for (var i = 0; i < result.length; i++) {
                                content += "<div id='listHouse'>" +
                                    "    <!--第一栏房子-->" +
                                    "        <div class='content'>" +
                                    "            <div class='content-left'>" +
                                    "                <div id='outer'>" +
                                    "                    <!--房屋图片-->" +
                                    "                    <ul id='imgList'>" +
                                    "                        <li><img src='" + result[i].image + "' alt='' width='200px' height='300px'></li>" +
                                    "                    </ul>" +
                                    "                </div>" +
                                    "            </div>" +
                                    "            <div class='content-right'>" +
                                    "                <div class='content-right-top'>" +
                                    "                    <p class='one'><a href='#'>" + result[i].houseName + "</a></p>" +
                                    "                    <p class='two'>" + result[i].houseType + "</p>" +
                                    "                    <span><img src='" + result[i].image + "' alt=''><p class='three'>" + result[i].area +"</p></span>" +
                                    "                    <p class='four'> </p>" +
                                    "                </div>" +
                                    "                <div class='content-right-bottom'>" +
                                    "                    <p class='five'>" + result[i].rentPrice + "</p>" +
                                    "                    <p class='photo'>业主出租</p>" +
                                    "                    <p class='six'><a href='#'>查看详情</a> </p>" +
                                    "                </div>" +
                                    "            </div>" +
                                    "        </div>" +
                                    "</div>"
                            }
                            $("#listHouse").html(content);
                        }
                    }
                })

        });

        $(".num").click(function(){
            $(".num").removeClass("active");
            $(this).addClass("active");

            $.get("<%=basePath%>queryHouse.controller",
                {alink:$("#area1234 .active").attr("addlist"),
                    numlink:$("#num1234  .active").attr("numLimit"),
                    pricelink1:$("#price1234 .active").attr("priceMin"),
                    pricelink2:$("#price1234 .active").attr("priceMax"),
                    timelink:$("#time1234 .active").attr("timeLimit") ,
                    sexlink:$("#sex1234 .active").attr("sexLimit"),
                    waylink:$("#way1234 .active").attr("wayLimit")},function(msg){
                    if (msg) {
                        var result = eval(msg);
                        if (result) {
                            var content = "";
                            for (var i = 0; i < result.length; i++) {
                                content += "<div id='listHouse'>" +
                                    "    <!--第一栏房子-->" +
                                    "        <div class='content'>" +
                                    "            <div class='content-left'>" +
                                    "                <div id='outer'>" +
                                    "                    <!--房屋图片-->" +
                                    "                    <ul id='imgList'>" +
                                    "                        <li><img src='" + result[i].image + "' alt='' width='200px' height='300px'></li>" +
                                    "                    </ul>" +
                                    "                </div>" +
                                    "            </div>" +
                                    "            <div class='content-right'>" +
                                    "                <div class='content-right-top'>" +
                                    "                    <p class='one'><a href='#'>" + result[i].houseName + "</a></p>" +
                                    "                    <p class='two'>" + result[i].houseType + "</p>" +
                                    "                    <span><img src='" + result[i].image + "' alt=''><p class='three'>" + result[i].area +"</p></span>" +
                                    "                    <p class='four'> </p>" +
                                    "                </div>" +
                                    "                <div class='content-right-bottom'>" +
                                    "                    <p class='five'>" + result[i].rentPrice + "</p>" +
                                    "                    <p class='photo'>业主出租</p>" +
                                    "                    <p class='six'><a href='#'>查看详情</a> </p>" +
                                    "                </div>" +
                                    "            </div>" +
                                    "        </div>" +
                                    "</div>"
                            }
                            $("#listHouse").html(content);
                        }
                    }
                })
        });

        $(".price").click(function(){
            $(".price").removeClass("active");
            $(this).addClass("active");

            $.get("<%=basePath%>queryHouse.controller",
                {alink:$("#area1234 .active").attr("addlist"),
                    numlink:$("#num1234  .active").attr("numLimit"),
                    pricelink1:$("#price1234 .active").attr("priceMin"),
                    pricelink2:$("#price1234 .active").attr("priceMax"),
                    timelink:$("#time1234 .active").attr("timeLimit") ,
                    sexlink:$("#sex1234 .active").attr("sexLimit"),
                    waylink:$("#way1234 .active").attr("wayLimit")},function(msg){
                    if (msg) {
                        var result = eval(msg);
                        if (result) {
                            var content = "";
                            for (var i = 0; i < result.length; i++) {
                                content += "<div id='listHouse'>" +
                                    "    <!--第一栏房子-->" +
                                    "        <div class='content'>" +
                                    "            <div class='content-left'>" +
                                    "                <div id='outer'>" +
                                    "                    <!--房屋图片-->" +
                                    "                    <ul id='imgList'>" +
                                    "                        <li><img src='" + result[i].image + "' alt='' width='200px' height='300px'></li>" +
                                    "                    </ul>" +
                                    "                </div>" +
                                    "            </div>" +
                                    "            <div class='content-right'>" +
                                    "                <div class='content-right-top'>" +
                                    "                    <p class='one'><a href='#'>" + result[i].houseName + "</a></p>" +
                                    "                    <p class='two'>" + result[i].houseType + "</p>" +
                                    "                    <span><img src='" + result[i].image + "' alt=''><p class='three'>" + result[i].area +"</p></span>" +
                                    "                    <p class='four'> </p>" +
                                    "                </div>" +
                                    "                <div class='content-right-bottom'>" +
                                    "                    <p class='five'>" + result[i].rentPrice + "</p>" +
                                    "                    <p class='photo'>业主出租</p>" +
                                    "                    <p class='six'><a href='#'>查看详情</a> </p>" +
                                    "                </div>" +
                                    "            </div>" +
                                    "        </div>" +
                                    "</div>"
                            }
                            $("#listHouse").html(content);
                        }
                    }
                })
        });

        $(".time").click(function(){
            $(".time").removeClass("active");
            $(this).addClass("active");
            $.get("<%=basePath%>queryHouse.controller",
                {alink:$("#area1234 .active").attr("addlist"),
                    numlink:$("#num1234  .active").attr("numLimit"),
                    pricelink1:$("#price1234 .active").attr("priceMin"),
                    pricelink2:$("#price1234 .active").attr("priceMax"),
                    timelink:$("#time1234 .active").attr("timeLimit") ,
                    sexlink:$("#sex1234 .active").attr("sexLimit"),
                    waylink:$("#way1234 .active").attr("wayLimit")},function(msg){
                    if (msg) {
                        var result = eval(msg);
                        if (result) {
                            var content = "";
                            for (var i = 0; i < result.length; i++) {
                                content += "<div id='listHouse'>" +
                                    "    <!--第一栏房子-->" +
                                    "        <div class='content'>" +
                                    "            <div class='content-left'>" +
                                    "                <div id='outer'>" +
                                    "                    <!--房屋图片-->" +
                                    "                    <ul id='imgList'>" +
                                    "                        <li><img src='" + result[i].image + "' alt='' width='200px' height='300px'></li>" +
                                    "                    </ul>" +
                                    "                </div>" +
                                    "            </div>" +
                                    "            <div class='content-right'>" +
                                    "                <div class='content-right-top'>" +
                                    "                    <p class='one'><a href='#'>" + result[i].houseName + "</a></p>" +
                                    "                    <p class='two'>" + result[i].houseType + "</p>" +
                                    "                    <span><img src='" + result[i].image + "' alt=''><p class='three'>" + result[i].area +"</p></span>" +
                                    "                    <p class='four'> </p>" +
                                    "                </div>" +
                                    "                <div class='content-right-bottom'>" +
                                    "                    <p class='five'>" + result[i].rentPrice + "</p>" +
                                    "                    <p class='photo'>业主出租</p>" +
                                    "                    <p class='six'><a href='#'>查看详情</a> </p>" +
                                    "                </div>" +
                                    "            </div>" +
                                    "        </div>" +
                                    "</div>"
                            }
                            $("#listHouse").html(content);
                        }
                    }
                })
        });

        $(".sex").click(function(){
            $(".sex").removeClass("active");
            $(this).addClass("active");
            $.get("<%=basePath%>queryHouse.controller",
                {alink:$("#area1234 .active").attr("addlist"),
                    numlink:$("#num1234  .active").attr("numLimit"),
                    pricelink1:$("#price1234 .active").attr("priceMin"),
                    pricelink2:$("#price1234 .active").attr("priceMax"),
                    timelink:$("#time1234 .active").attr("timeLimit") ,
                    sexlink:$("#sex1234 .active").attr("sexLimit"),
                    waylink:$("#way1234 .active").attr("wayLimit")},function(msg){
                    if (msg) {
                        var result = eval(msg);
                        if (result) {
                            var content = "";
                            for (var i = 0; i < result.length; i++) {
                                content += "<div id='listHouse'>" +
                                    "    <!--第一栏房子-->" +
                                    "        <div class='content'>" +
                                    "            <div class='content-left'>" +
                                    "                <div id='outer'>" +
                                    "                    <!--房屋图片-->" +
                                    "                    <ul id='imgList'>" +
                                    "                        <li><img src='" + result[i].image + "' alt='' width='200px' height='300px'></li>" +
                                    "                    </ul>" +
                                    "                </div>" +
                                    "            </div>" +
                                    "            <div class='content-right'>" +
                                    "                <div class='content-right-top'>" +
                                    "                    <p class='one'><a href='#'>" + result[i].houseName + "</a></p>" +
                                    "                    <p class='two'>" + result[i].houseType + "</p>" +
                                    "                    <span><img src='" + result[i].image + "' alt=''><p class='three'>" + result[i].area +"</p></span>" +
                                    "                    <p class='four'> </p>" +
                                    "                </div>" +
                                    "                <div class='content-right-bottom'>" +
                                    "                    <p class='five'>" + result[i].rentPrice + "</p>" +
                                    "                    <p class='photo'>业主出租</p>" +
                                    "                    <p class='six'><a href='#'>查看详情</a> </p>" +
                                    "                </div>" +
                                    "            </div>" +
                                    "        </div>" +
                                    "</div>"
                            }
                            $("#listHouse").html(content);
                        }
                    }
                })
        });

        $(".way").click(function(){
            $(".way").removeClass("active");
            $(this).addClass("active");
            $.get("<%=basePath%>queryHouse.controller",
                {alink:$("#area1234 .active").attr("addlist"),
                    numlink:$("#num1234  .active").attr("numLimit"),
                    pricelink1:$("#price1234 .active").attr("priceMin"),
                    pricelink2:$("#price1234 .active").attr("priceMax"),
                    timelink:$("#time1234 .active").attr("timeLimit") ,
                    sexlink:$("#sex1234 .active").attr("sexLimit"),
                    waylink:$("#way1234 .active").attr("wayLimit")},function(msg){
                    if (msg) {
                        var result = eval(msg);
                        if (result) {
                            var content = "";
                            for (var i = 0; i < result.length; i++) {
                                content += "<div id='listHouse'>" +
                                    "    <!--第一栏房子-->" +
                                    "        <div class='content'>" +
                                    "            <div class='content-left'>" +
                                    "                <div id='outer'>" +
                                    "                    <!--房屋图片-->" +
                                    "                    <ul id='imgList'>" +
                                    "                        <li><img src='" + result[i].image + "' alt='' width='200px' height='300px'></li>" +
                                    "                    </ul>" +
                                    "                </div>" +
                                    "            </div>" +
                                    "            <div class='content-right'>" +
                                    "                <div class='content-right-top'>" +
                                    "                    <p class='one'><a href='#'>" + result[i].houseName + "</a></p>" +
                                    "                    <p class='two'>" + result[i].houseType + "</p>" +
                                    "                    <span><img src='" + result[i].image + "' alt=''><p class='three'>" + result[i].area +"</p></span>" +
                                    "                    <p class='four'> </p>" +
                                    "                </div>" +
                                    "                <div class='content-right-bottom'>" +
                                    "                    <p class='five'>" + result[i].rentPrice + "</p>" +
                                    "                    <p class='photo'>业主出租</p>" +
                                    "                    <p class='six'><a href='#'>查看详情</a> </p>" +
                                    "                </div>" +
                                    "            </div>" +
                                    "        </div>" +
                                    "</div>"
                            }
                            $("#listHouse").html(content);
                        }
                    }
                })
        });

    });

</script>

<body>
<%@include file="top.jsp" %>


<div class="main">

    <div class="top">

        <div class="nav">
            <ul >
                <li><a href="loginfirst.jsp">个人中心</a> </li>
                <li><a href="#">下载App</a> </li>
                <li><a href="#">租客论坛</a> </li>
            </ul>
        </div>

        <div class="logo">
            <a href="#">
                <img src="img/index.img/logo.png" alt="我们的logo">
            </a>
        </div>

        <div class="search">
            <form >
                <input type="text" class="search1"id="citySelect" placeholder=" 请输入关键字 地段···"/>
            </form>
        </div>

    </div>

    <div class="center-nav">
        <ul >
            <li><a href="pushhouse.jsp">房源发布</a> </li>
            <li><a href="pushrequest.jsp">求租发布</a> </li>
            <li><a href="#">猜你喜欢</a></li>
        </ul>
    </div>

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

            <div class="sort-right" id="area1234">
                <a  href="javaScript:;" class="active lookfor" addlist="no">不限</a>
                <a class="lookfor"  addlist="红谷滩"   href="javaScript:;" >红谷滩</a>
                <a class="lookfor"  addlist="西湖"   href="javaScript:;" >西湖</a>
                <a class="lookfor"  addlist="青山湖"   href="javaScript:;" >青山湖</a>
                <a class="lookfor"  addlist="高新区"   href="javaScript:;" >高新区</a>
                <a class="lookfor"  addlist="南昌县"   href="javaScript:;" >南昌县</a>
                <a class="lookfor"  addlist="青云谱"   href="javaScript:;" >青云谱</a>
                <a class="lookfor"  addlist="经开区"   href="javaScript:;" >经开区</a>
                <a class="lookfor"  addlist="湾里"   href="javaScript:;" >湾里</a>
                <a class="lookfor"  addlist="进贤"   href="javaScript:;" >进贤</a>
                <a class="lookfor"  addlist="安义"   href="javaScript:;" >安义</a>
            </div>

        </div>

        <div class="sort-line"></div>

        <!--入驻人数-->
        <div class="sort">

            <div class="sort-left">
                <span class="">人数：</span>
            </div>

            <div class="sort-right" id="num1234">
                <a  href="javaScript:;" class="active num" numLimit="no">不限</a>
                <a  href="javaScript:;"class="num"  numLimit="单人入住">单人入住</a>
                <a  href="javaScript:;"class="num"  numLimit="双人入住">双人入住</a>
                <a  href="javaScript:;"class="num"  numLimit="三人入住">三人入住</a>
                <a  href="javaScript:;"class="num"  numLimit="四人入住">四人入住</a>
                <a href="#" class="wither"><!--五室及以上--></a>
            </div>

        </div>
        <div class="sort-line"></div>

        <!--预期价格-->
        <div class="sort">

            <div class="sort-left">
                <span class="">价格：</span>
            </div>

            <div class="sort-right" id="price1234">
                <a  href="javaScript:;" class="active price" priceMin="0" priceMax="50000">不限</a>

                <a  href="javaScript:;" class="price" priceMin="0" priceMax="500">500元以下</a>
                <a href="javaScript:;" class="price" priceMin="500" priceMax="1000">500-1000元</a>
                <a href="javaScript:;" class="price" priceMin="1000" priceMax="1500">1000-1500元</a>
                <a href="javaScript:;" class="price" priceMin="1500" priceMax="2000">1500-2000元</a>
                <a href="javaScript:;" class="price" priceMin="2500" priceMax="3000">2500-3000元</a>
                <a href="javaScript:;" class="price" priceMin="300" priceMax="4000">3000-4000元</a>
                <a href="javaScript:;" class="price" priceMin="4000" priceMax="50000">4000元以上</a>
            </div>

        </div>

        <div class="sort-line"></div>

        <!--预约时间-->
        <div class="sort">

            <div class="sort-left">
                <span class="">时间：</span>
            </div>

            <div class="sort-right" id="time1234">
                <a href="javaScript:;" class="active time" timeLimit="0">不限</a>
                <a href="javaScript:;" class="time" timeLimit="0">最近入住</a>
                <a href="javaScript:;" class="time" timeLimit="1">一月后入住</a>
                <a href="javaScript:;" class="time" timeLimit="2">两月后入住</a>
                <a href="javaScript:;" class="time" timeLimit="3">三月后入住</a>
                <a href="#" class="wither"><!--五室及以上--></a>
            </div>

        </div>

        <div class="sort-line"></div>

        <!--性别选择-->
        <div class="sort">

            <div class="sort-left">
                <span class="">性别：</span>
            </div>

            <div class="sort-right" id="sex1234">
                <a href="javaScript:;" class="active sex" sexLimit="no">不限</a>
                <a href="javaScript:;" class="sex" sexLimit="男">男</a>
                <a href="javaScript:;" class="sex" sexLimit="女">女</a>
            </div>

        </div>
        <div class="sort-line"></div>

        <!--性别选择-->
        <div class="sort">

            <div class="sort-left">
                <span class="">方式：</span>
            </div>

            <div class="sort-right" id="way1234">
                <a href="javaScript:;" class="active way" wayLimit="no">不限</a>
                <a href="javaScript:;" class="way" wayLimit="室友合租">室友合租</a>
                <a href="javaScript:;" class="way" wayLimit="业主出租">业主出租</a>
            </div>

        </div>
        <div class="sort-line"></div>
    </div>
    <!--选择结束-->

    <!--标签开始-->
    <div  class="title ">
        <ul>
            <li><a href="#" class="all" >房源信息</a></li>
            <li class="shipin2"><a href="requestPage.jsp" >求租信息</a></li>
            <!-- <li class="shipin2"><a href="pushhouse.jsp" >发布房源</a></li>-->
            <!-- <li class="shipin2"><a href="pushrequest.jsp" >发布求租</a></li>-->


            <!--<li class="shipin2"><a href="#" ><img class="shipin" src="../img/index.img/shipin.png" alt=""><span class="shipin1">视频看房</span></a></li>-->
            <!--<li><a href="found.html" >我要求租</a></li>-->
            <!--<li><a href="#" >个性推荐</a></li>-->
        </ul>
    </div>
    <div class="title-line"></div>
<div id="listHouse">
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