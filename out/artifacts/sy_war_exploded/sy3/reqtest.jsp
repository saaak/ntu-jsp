<%--
  Created by IntelliJ IDEA.
  User: 王康
  Date: 2019/6/21
  Time: 16:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" contentType="text/html;charset=gb2312" %>
<html>
<head><title>request 主要方法调用示例</title>
</head>
<body><font size="2"> request 主要方法调用示例：<br>
<%
    request.setAttribute("attr", "Hello!");
    out.println("attr 属性的值为：" + request.getAttribute("attr") + "<br>");
    out.println("上下文路径为：" + request.getContextPath() + "<br>");
    out.println("Cookies:" + request.getCookies() + "<br>");
    out.println("Host:" + request.getHeader("Host") + "<br>");
    out.println("ServerName:" + request.getServerName() + "<br>");
    out.println("ServerPort:" + request.getServerPort() + "<br>");
    out.println("RemoteAddr:" + request.getRemoteAddr() + "<br>");
    request.removeAttribute("attr");
    out.println("属性移除操作以后 attr 属性的值为：" + request.getAttribute("attr") + "<br>");
    out.println("WEB项目的物理路径：" + this.getServletContext().getRealPath("") + "<br>");
%></font>
</body>
</html>