<%--
  Created by IntelliJ IDEA.
  User: Zoe
  Date: 2018/12/8
  Time: 23:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<form action="${pageContext.request.contextPath }/house_list.controller">
    <td><input type="submit" value="house"></td>
</form>
<form action="${pageContext.request.contextPath }/member/admin_member_list.controller">
    <td><input type="submit" value="member"></td>
</form>
<form action="${pageContext.request.contextPath }/admin_house_list.controller">
    <td><input type="submit" value="houselist"></td>
</form>
<form action="${pageContext.request.contextPath }/request/admin_rentrequest_list.controller">
    <td><input type="submit" value="request"></td>
</form>
</body>
</html>