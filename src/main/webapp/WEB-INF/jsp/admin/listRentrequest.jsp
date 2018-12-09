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
            <th>ID</th>
            <th>请求时间</th>
            <th>用户ID</th>
            <th>房源ID</th>
            <th>预算</th>
            <th>城市</th>
            <th>室友性别</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${cs}" var="c">

            <tr>
                <td>${c.reqId}</td>
                <td>${c.reqTime}</td>
                <td>${c.memberID}</td>
                <td>${c.houseID}</td>
                <td>${c.budget}</td>
                <td>${c.city}</td>
                <td>${c.mateSex}</td>


            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
