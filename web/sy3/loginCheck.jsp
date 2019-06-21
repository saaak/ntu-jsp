<%--
  Created by IntelliJ IDEA.
  User: 王康
  Date: 2019/6/21
  Time: 17:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" contentType="text/html;charset=utf-8" %>
<html>
<head><title>用户登录验证页面</title>
</head>
<%
    request.setCharacterEncoding("utf-8");
    String userName = request.getParameter("userName");
    String passWord = request.getParameter("passWord");
    if (userName.length() > 0 && passWord.length() > 0) {
        session.setAttribute("uname", userName);
        response.sendRedirect("main.jsp");
    } else response.sendRedirect("login.jsp");
%>
<body></body>
</html>