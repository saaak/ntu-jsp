<%--
  Created by IntelliJ IDEA.
  User: 王康
  Date: 2019/6/21
  Time: 17:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" contentType="text/html;charset=gb2312" %>
<html>
<head>
    <title>利用 application 对象实现的计数器示例</title>
</head>
<body><font size="2"><%
    int count = 0;
    if (application.getAttribute("count") == null) {
        count = count + 1;
        application.setAttribute("count", count);
    } else {
        count = Integer.parseInt(application.getAttribute("count").toString());
        count = count + 1;
        application.setAttribute("count", count);
    }
    out.println("您是本系统的第" + count + "访问者！"); %></font>
</body>
</html>