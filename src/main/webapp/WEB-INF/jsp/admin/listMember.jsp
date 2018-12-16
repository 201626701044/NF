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
    <title>Title</title>
</head>
<body>
<div class="listDataTableDiv">
    <table class="table table-striped table-bordered table-hover  table-condensed">
        <thead>
        <tr class="success">
            <th>用户ID</th>
            <th>用户名</th>
            <th>用户密码</th>
            <th>用户性别</th>
            <th>身份证号</th>
            <th>用户电话</th>
            <th>邮件</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${cs1}" var="c">
            <tr>
                <td>${c.memberID}</td>
                <td>${c.memberName}</td>
                <td>${c.memberPassword}</td>
                <td>${c.memberSex}</td>
                <td>${c.memberIdcard}</td>
                <td>${c.memberPhone}</td>
                <td>${c.memberEmail}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
