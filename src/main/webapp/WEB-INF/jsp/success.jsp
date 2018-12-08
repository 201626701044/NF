<%--
  Created by IntelliJ IDEA.
  User: Zoe
  Date: 2018/11/30
  Time: 18:23
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
    <meta http-equiv="refresh" content="2;url=<%=basePath%>login1.jsp"/>

    <title>注册页面</title>
</head>
<body>
    <div>
       <p>${memberName},用户注册成功！2秒后自动跳转到登录页面，</p>
       <p>如果无法跳转，请单击<a href="${pageContext.request.contextPath }/login1.jsp">去登录</a></p>
    </div>
</body>
</html>


