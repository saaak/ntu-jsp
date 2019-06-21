<%--
  Created by IntelliJ IDEA.
  User: 王康
  Date: 2019/6/21
  Time: 20:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<html>
<head><title>登录成功</title>
</head>
<body>
<%=session.getAttribute("userName")%>
恭喜你，登录成功！ <br>
<a href=login.jsp>返回登录页面</a>
</body>
</html>