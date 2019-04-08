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

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <base href="<%=basePath%>"/>
    <meta content="text/css " charset="utf-8">
    <title>我要求租</title>
    <link href="css/header-footer.css" type="text/css" rel="stylesheet"  />
    <link href="css/found.css" type="text/css" rel="stylesheet"  />
    <link href="css/top.css" type="text/css" rel="stylesheet"  />

    <script src="js/found.js" type="text/javascript"></script>
    <script src="js/jquery-1.10.1.js" type="text/javascript"></script>


</head>
<style type="text/css">
    .page{
        text-align: center;
    }
</style>
<body>
<%@include file="top.jsp" %>

<div class="top">
    <div class="top-left" >
        <a  href="#">
            <img src="img/index.img/logo.png" alt="logo">
        </a>
        <span class="word">缺室友，找合租，就到我们合租吧 ！</span>
    </div>

    <div class="top-right">
        <a><img src="img/house/address.png" >南昌</a>
        <a href="#">下载App</a>
    </div>

</div>

<div class="main">
    <c:forEach items="${cs}" var="c">
    <div id="to-fount-tip" class="content">
        <div class="cont-top">
            <img class="photo" src="${ctx}/upload/${c.image}" alt="">
            <div class="name">
                <a class="a-one" href="#">${c.nickname}</a><br>
                <a class="a-two">${c.job}</a>
            </div>
            <a class="date">${c.reqTime}</a>
            <hr>
        </div>

        <div class="cont-middle">
            <p class="title1">￥${c.budget}</p>
            <%--<p class="title2">${c.reqTime}</p>--%>
            <a class="title3"><img src="img/house/address.png" >${c.city}</a>
        </div>

        <div class="cont-bottom">
            ${c.mateCharacter}
        </div>
    </div>
    </c:forEach>
<!--个人提示-->

<div  class="found-tip">
    <span class="found-tip-title">--------------- 预期室友 ---------------</span>
</div>

<div  class="found-tip01">
    <span class="found-tip-title"></span>
</div>

<div class="dismain">

    <p class="dismain-title">关于我们</p>
    <hr class="dismain-line">
    <div class="dismain-content">
        简称“江西师大”，位于历史文化名城江西省会南昌市，<br>
        由江西省人民政府、教育部共建，<br>
        中国首批“中西部高校基础能力建设工程”,<br>
        “卓越教师培养计划”、<br>
        “江西省2011计划”入选高校、<br>
        江西省一流学科建设高校，<br>
        中国政府奖学金来华留学生接收院校。<br>
        学校融文学、历史学、哲学、经济学、管理学、<br>
        法学、理学、工学、教育学、艺术学等十大学科门类于一体<br>
        是江西省人民政府确定为优先发展的省属重点（师范）大学。<br>
    </div>

</div>
    <div class="page">
        <p>当前页是${pageInfo.pageNum}/${pageInfo.pages}</p>
        <a href="/request/admin_rentrequest_list?page=${pageInfo.firstPage}">第一页</a>
        <a href="/request/admin_rentrequest_list?page=${pageInfo.nextPage}">下一页</a>
        <a href="/request/admin_rentrequest_list?page=${pageInfo.prePage}">上一页</a>
        <a href="/request/admin_rentrequest_list?page=${pageInfo.lastPage}">最后页</a></div>
    <%--<%@include file="adminPage.jsp"%>--%>
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

</body>
</html>