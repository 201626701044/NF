<%--
  Created by IntelliJ IDEA.
  User: Zoe
  Date: 2018/12/17
  Time: 15:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
${count}
啊啊：${count1}
<form action="/member/clear">
<input type="submit" value="注册">
</form>
姓名：${member.member_name}
密码：${member.member_password}
</body>
</html>
