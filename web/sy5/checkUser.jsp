<%--
  Created by IntelliJ IDEA.
  User: 王康
  Date: 2019/6/21
  Time: 20:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.sql.*" contentType="text/html; charset=utf-8" %>
<jsp:useBean id="db" class="bean.DBcon" scope="request"/>
<html>
<head>
    <title>登录验证页面[checkUser.jsp]</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");//解决 post 提交的中文乱码
    String name=request.getParameter("loginName");
    String password=request.getParameter("passWord");
%>
    你输入的用户名是：<%=name %><br><br>
<%
    Connection con = db.getConnction();
    Statement stmt = con.createStatement();
    String sql = "select * from userinfo"; //查询 userinfo 表中的用户信息
    sql+= " where loginname='"+name+"' and password='"+password+"'"; ResultSet rs = stmt.executeQuery(sql);
    if (rs.next())//验证通过
    {
        session.setAttribute("userName", name); //将用户名保存到 session 中
        response.sendRedirect("main.jsp");
    }
    else
    {
        //验证未通过
        out.print("无此用户或密码有误，登录失败！<br><br>");
        out.print("<a href='login.jsp'>重新登录</a>");
    }
%>
</body>
</html>