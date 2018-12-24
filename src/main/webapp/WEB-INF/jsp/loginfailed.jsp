<%--
  Created by IntelliJ IDEA.
  User: Zoe
  Date: 2018/12/8
  Time: 23:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="refresh" content="2;url=<%=basePath%>login.jsp"/>
    <link href="css/login.css" type="text/css" rel="stylesheet"/>
    <script src="js/jquery-1.10.1.js" type="text/javascript"></script>
    <script src="js/login.js"></script>
    <title>登录页面</title>
</head>
<body>

<div class="header">
    <a  href="#">
        <img src="img/index.img/logo.png" alt="logo">
    </a>
    <a class="word">欢迎登录</a>
</div>

<main>

    <div class="pho">
        <img src="img/login/hezu.jpg" alt="">
    </div>

    <div class="tab">
        <span>用户登录</span>
        <div class="tab-content content">
            <p>用户或密码错误！2秒后自动跳转到登录页面，</p>
            <p>如果无法跳转，请单击<a href="${pageContext.request.contextPath }/login.jsp">去登录</a></p>
        </div>
    </div>
</main>

</body>
</html>