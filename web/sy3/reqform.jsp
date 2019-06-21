<%--
  Created by IntelliJ IDEA.
  User: 王康
  Date: 2019/6/21
  Time: 16:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="utf-8" %>
<html>
<body>
<form action="req_recv.jsp" method="post">
    <table border="1">
        <tr>
            <td>用户名：</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><input type="password" name="password"></td>
        </tr>
        <tr>
            <td colspan=2><input type="checkbox" name="like" value="骑车"/>骑自行车 <input type="checkbox" name="like"
                                                                                     value="驾车"/>驾驶小汽车
            </td>
        </tr>
        <tr align=center>
            <td colspan=2><input type="submit" value="提交"> <input type="reset" value="取消"></td>
        </tr>
    </table>
</form>
</body>
</html>