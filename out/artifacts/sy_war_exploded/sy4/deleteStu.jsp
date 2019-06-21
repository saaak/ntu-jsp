<%--
  Created by IntelliJ IDEA.
  User: 王康
  Date: 2019/6/21
  Time: 19:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<html>
<head></head>
<body><% request.setCharacterEncoding("utf-8");//设定从 request 对象中读取参数的编码方式。
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student? useUnicode=true&characterEncoding=GBk", "root", "caonima!!!");
    Statement stmt = con.createStatement();
    String s_xh = request.getParameter("pram_xh");
    String delsql = "delete from stuinfo where xh='" + s_xh + "';";
    stmt.executeUpdate(delsql);
    response.sendRedirect("showInfo.jsp");
%>
</body>
</html>