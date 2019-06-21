<%--
  Created by IntelliJ IDEA.
  User: 王康
  Date: 2019/6/21
  Time: 19:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<html>
<head><title>My JSP 'updateInfo.jsp' starting page</title>
</head>
<body>
<% Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student? useUnicode = true & characterEncoding = GBk","root","caonima!!!");
    Statement stmt = con.createStatement();
    String seleStr="SELECT * FROM stuinfo where xh = '"+request.getParameter("pram_xh")+"'";
    ResultSet rs=stmt.executeQuery(seleStr);
    rs.next();
    session.setAttribute("pram_xh",request.getParameter("pram_xh"));
%>
<form action="updateExec.jsp" method="post">
    <table bgcolor=red>
        <tr bgcolor=yellow>
            <td align="center" colspan="2">
                要修改信息的同学学号是：<%= request.getParameter("pram_xh")%>
            </td>
        <tr bgcolor="#88FF99">
            <td align="center">原始信息</td>
            <td align="center">修改信息</td>
        </tr>
        <tr bgcolor=yellow>
            <td> 姓名 :<%= rs.getString("name")%>
            </td>
            <td>
                <input name="pram_name">
            </td>
        </tr>
        <tr bgcolor=yellow>
            <td>性别:<%= rs.getString("sex")%></td>
            <td>
                <input type="radio" value="男" name="pram_sex" checked="checked">男
                <input type="radio" value="女" name="pram_sex">女</td>
        </tr>
        <tr bgcolor=yellow>
        <td>电话:<%= rs.getString("tele")%>
        </td>
        <td><input type="text" value=<%= rs.getString("tele")%> name="pram_tele"></td>
        </tr>
        <tr bgcolor=yellow>
            <td align="center" colspan="2">
                <input type="submit" value="提交" name="B1">
                <input type="reset" value="重置" name="B2">
            </td>
        </tr>
    </table>
</form>
</body>
</html>