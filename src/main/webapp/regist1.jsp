<%--
  Created by IntelliJ IDEA.
  User: Zoe
  Date: 2018/11/30
  Time: 18:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Title</title>
    <script src="js/regist.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js">
    </script>
    <script type="text/javascript">
        function main(){
            $("#mname").bind("blur",fun1)
        }
        function fun1(){
            var paramObj={
                url:"/member/memberNameValidate",
                dataType:"text",
                data:{memberName:$("#mname").val()},
                success:function(returnDate){
                    $("#myFont").text(returnDate);
                }
            };
            $.ajax(paramObj);
        }
        $(main);
    </script>
</head>
<body>
<form action="${pageContext.request.contextPath }/member/regist.controller">
    <table border="1">
        <tr>
            <td>用户名</td>
            <td><input id="mname" type="text" name="memberName">
                <font id="myFont" color="red">*</font>
            </td>
        </tr>
        <tr>
            <td>密码</td>
            <td>
                <input type="text" name="memberPassword">
            </td>
        </tr>
        <tr>
            <td><input type="submit" value="注册"></td>
        </tr>
    </table>
</form>
</body>
</html>
