<%--
  Created by IntelliJ IDEA.
  User: 王康
  Date: 2019/6/21
  Time: 17:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head><title>根据学号查询学生信息</title>
</head>
<body bgcolor=cyan>
<%
    String number = request.getParameter("xh");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student?useUnicode=true&characterEncoding=GBk","root","caonima!!!");
    Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
    String seleStr = "SELECT * FROM stuinfo Where xh = '" + number + "'";
    ResultSet rs = stmt.executeQuery(seleStr);
    if (!rs.next()) {
    out.print("没有找到学号为" + number + "的同学！");
    }
    else {
%>根据学号<%=number%>
查询到的学生信息:
<table bgcolor=yellow>
<tr bgcolor="#00FF99">
    <td><%= rs.getString("xh")%></td>
    <td><%= rs.getString("name")%></td>
    <td><%= rs.getString("sex")%></td>
    <td><%= rs.getString("tele")%></td>
</tr>
</table>
<br>
<%
    }
    rs.close();
    stmt.close();
%>
</Font>
</body>
</html>