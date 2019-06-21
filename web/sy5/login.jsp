<%--
  Created by IntelliJ IDEA.
  User: 王康
  Date: 2019/6/21
  Time: 20:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.sql.*" contentType="text/html; charset=utf-8" %>
<html>
<head><title>登录程序实验</title>
</head>
<body>
<table align="center">
    <tr>
        <td><img SRC=../img/logintop.jpg></td>
    </tr>
    <tr>
        <td align="center">
            <p>
                <font color="red" size="5" style="font-family:simhei">请登录：</font>
            </p>

            <form method="post" action="checkUser.jsp" target="_blank">
                用户名:<input type="text" name="loginName" size="20">
                密 码:<input type="password" name="passWord" size="20">

            <input type="submit" value="提交"> <input type="reset" value="重置">

            </form>
        </td>
    </tr>
</table>
</body>
</html>