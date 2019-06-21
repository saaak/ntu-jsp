<%--
  Created by IntelliJ IDEA.
  User: 王康
  Date: 2019/6/21
  Time: 19:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<html>
<head><title>添加记录</title>
</head>
<body>
<form action="insertExec.jsp" method="post">
    <table bgcolor=red>
        <tr bgcolor=yellow>
            <td align="center" colspan="2">请在下表中填写新添加的学生信息</td>
        </tr>
        <tr bgcolor="#88FF99">
            <td align="center">学号</td>
            <td><input type="text" name="pram_xh"></td>
        </tr>
        <tr bgcolor=yellow>
            <td align="center">姓名</td>
            <td><input type="text" name="pram_name"></td>
        </tr>
        <tr bgcolor=yellow>
        <td>性别</td>
            <td><input type="radio" value="男" name="pram_sex" checked="checked">男
                <input type="radio" value="女" name="pram_sex">女
            </td>
        </tr>
        <tr bgcolor=yellow>
            <td align="center">电话</td>
            <td><input type="text" name="pram_tele"></td>
        </tr>
        <tr bgcolor=yellow>
            <td align="center" colspan="2"> <input type="submit" value="提交"> <input type="reset" value="重置"></td>
        </tr>
    </table>
</form>
</body>
</html>