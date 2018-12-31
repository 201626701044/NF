<%--
  Created by IntelliJ IDEA.
  User: Zoe
  Date: 2018/12/24
  Time: 18:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>文件上传</title>
</head>
<style>
    .form-div {
        text-align: center;
        margin: 0 auto;
    }

    .img-div {
        text-align: center;
        margin-top: 50px;
    }

    .img-div img {
        border: none;
        width: 100px;
        height: 100px;
        line-height: 100px;
        font-size: 12px;
    }
</style>
<body>
<div class="form-div">
    <h3>文件上传</h3>
    <form action="/uploadfile" method="post" enctype="multipart/form-data">
        <input type="file" name="multipartFile"/>
        <button type="submit">上传</button>
    </form>
</div>
<div class="img-div">
    <img src="uploadFile/${sessionScope.imgPath}" alt="等待上传..." onerror="this.style.display='none'"/>
</div>
</body>
</html>