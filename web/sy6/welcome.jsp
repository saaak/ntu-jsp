<%--
  Created by IntelliJ IDEA.
  User: 王康
  Date: 2019/6/21
  Time: 20:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <title>登录成功</title>
</head>
<body>
<font size="2" color="red">
<%
    Date today = new Date();
    int d = today.getDay();
    int h = today.getHours();
    String s = "";
    if (h > 0 && h < 12) s = "上午好!";
    else if (h >= 12) s = "下午好!";
    String day[] = {"日", "一", "二", "三", "四", "五", "六"};
    out.println(s + " 今天是: 星期" + day[d]);
%>
</font>
<br>
<%=session.getAttribute("userName")%>恭喜你，登录成功！ <br>
</body>
</html>