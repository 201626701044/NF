<%--
  Created by IntelliJ IDEA.
  User: Zoe
  Date: 2018/12/23
  Time: 10:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="header">
    <span class="word">客服电话：4000-888-888</span>
    <ul>
        <li><a href="#">用户帮助</a></li>
        <c:if test="${not empty memberName}">
            <li ><a href="#">wellcome,${memberName}</a></li>
            <li ><a href="#">退出</a></li>
        </c:if>
        <c:if test="${empty memberName}">
            <li ><a href="register.jsp">注册</a></li>
            <li ><a href="login.jsp">登录</a></li>
        </c:if>

    </ul>
</div>
