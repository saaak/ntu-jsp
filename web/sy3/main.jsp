<%--
  Created by IntelliJ IDEA.
  User: 王康
  Date: 2019/6/21
  Time: 17:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" contentType="text/html;charset=utf-8" %>
<html>
<head><title>系统主界面</title>
</head>
<body><font size="2">
    <%
    String uname = (String) session.getAttribute("uname");
    if (uname != null) out.print("登录成功！欢迎" + uname + "浏览站点！");
    else response.sendRedirect("login.jsp");
%> <br>
    <font size="1" color="green">上述名字<%=uname%>是从 session 中取出的</font>
</font>
</body>
</html>