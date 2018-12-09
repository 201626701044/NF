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
            <th>houseID</th>
            <th>房源名</th>
            <th>用户ID</th>
            <th>租房价格</th>
            <th>入住时间</th>
            <th>房子类型</th>
            <th>地区</th>
            <th>电梯</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${cs}" var="c">

            <tr>
                <td>${c.houseID}</td>
                <td>${c.houseName}</td>
                <td>${c.memberID}</td>
                <td>${c.rentPrice}</td>
                <td>${c.checkInDate}</td>
                <td>${c.houseType}</td>
                <td>${c.area}</td>
                <td>${c.elevator}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
