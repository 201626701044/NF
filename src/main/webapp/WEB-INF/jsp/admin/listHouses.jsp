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
    <link href="main.css" type="text/css" rel="stylesheet">
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
            <th>图片</th>
            <th>cc</th>
            <th>城市</th>


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
                <td><img src="${c.image}"></td>

                <c:forEach items="${c.rentrequests}" var="d"   varStatus="status">
                    <td>${c.rentrequests.get(status.index).reqId}</td>
                    <td>${c.rentrequests.get(status.index).city}</td>
                </c:forEach>

            </tr>
        </c:forEach>
        </tbody>
    </table>
    <div style="text-align:center">
        <a href="?start=1">首页</a>
        <a href="?start=${page.start-page.count}">上一页</a>
        <a href="?start=${page.start+page.count}">下一页</a>
        <a href="?start=${page.last}">末  页</a>
    </div>
</div>
</body>
</html>
