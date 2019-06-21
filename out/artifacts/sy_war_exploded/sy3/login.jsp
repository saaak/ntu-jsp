<%--
  Created by IntelliJ IDEA.
  User: 王康
  Date: 2019/6/21
  Time: 17:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" contentType="text/html;charset=utf-8" %>
<html>
<head><title>用户登录界面</title>
</head>
<body><font size="2">
    <form action="loginCheck.jsp" method="post">
        用户名：<input type="text" name="userName" size="10"/> <br>
        密 码：<input type="password" name="passWord" size="10"/><br>
    </font>
    <font size="1" color="green">(提交后，用户名将被存入 session 中)</font><br>
    <input type="submit" value="提交"> </form>
</body>
</html>