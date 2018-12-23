<%--
  Created by IntelliJ IDEA.
  User: Zoe
  Date: 2018/11/30
  Time: 18:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>首页</title>
</head>
<body>
<div style="margin-left: 17%">
    <div class="col-sm-10">
        <p class="form-control-static">${memberName}</p>
    </div>
    <img width="60px" height="60px" src="${member.member_image}" class="img-rounded">
    <a class="btn btn-default" href="/member/settings/avatar" role="button">更换头像</a>
</div>
</body>
</html>
