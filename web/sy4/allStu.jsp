<%--
  Created by IntelliJ IDEA.
  User: 王康
  Date: 2019/6/21
  Time: 18:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head><title>根据查询全部学生信息</title>
</head>
<body bgcolor=cyan><% String number = request.getParameter("xh");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student?useUnicode=true&characterEncoding=GBk","root","caonima!!!");
    Statement stmt = con.createStatement();
    String seleStr=" SELECT * FROM stuinfo";
    ResultSet rs=stmt.executeQuery(seleStr);
%>
查询到全部学生信息:
<table bgcolor=yellow border=1>
    <% while (rs.next()) { %>
    <tr bgcolor="#22FF99">
        <td><%= rs.getString("xh")%></td>
        <td><%= rs.getString("name")%></td>
        <td><%= rs.getString("sex")%></td>
        <td><%= rs.getString("tele")%></td>
    </tr>
    <%}%>
</table>
<br>
<%
    rs.close();
    stmt.close();
%>
</Font>
</body>
</html>