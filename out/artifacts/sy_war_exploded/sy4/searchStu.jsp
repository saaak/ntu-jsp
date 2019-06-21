<%--
  Created by IntelliJ IDEA.
  User: 王康
  Date: 2019/6/21
  Time: 17:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head><title>查询学生信息</title>
</head>
<body bgcolor="#99DD99">
<form action="byXh.jsp" Method="post">
    根据学号查询<br>
    输入学号:<Input type=text name="xh">
    <Input type=submit value="提交">
</form>
<form action="byName.jsp" Method="post">
    根据姓名（可模糊）查询<BR>
    姓名含有：<Input type=text name="name" size=5>
    <Input type=submit value="提交">
</form>
<a href="allStu.jsp">显示全部学生信息</a>
</body>
</html>