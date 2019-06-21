<%--
  Created by IntelliJ IDEA.
  User: 王康
  Date: 2019/6/21
  Time: 15:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

</head>
<body>
<jsp:include page="head.html"/>
<font size=4 color=red>这是 error.jsp 页面 </font>
<font size=2>
<%
    String s = request.getParameter("mess");
    out.println("<br>输入的不是数值哦！<br>数据格式异常信息：" + s);
%>
</font><br>
<img src="../img/error.jpg" width="120" height="120">
<p>
    <a href="one.jsp">返回 one 页面</a>
</body>
</html>
