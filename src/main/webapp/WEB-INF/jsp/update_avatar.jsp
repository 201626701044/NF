<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Zoe
  Date: 2018/11/30
  Time: 18:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
</head>
<body>
<div style="margin-left: 17%">
    <form  action="/member/settings/avatar/update" enctype="multipart/form-data" method="post" class="form-horizontal" role="form">
        <div style="margin-left: 17%">
            <div class="col-sm-10">
                <p class="form-control-static">${memberName}</p>

            </div>
            <img width="60px" height="60px" src="${member.member_image}" class="img-rounded">
            <input type="file"  name="avatar" accept="image/png,image/jpeg,image/jpg" >
            <br/>
            <input class="btn btn-default" type="submit" value="上传头像">
        </div>
    </form>
</div>
</body>
</html>
