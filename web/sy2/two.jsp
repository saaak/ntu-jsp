<%--
  Created by IntelliJ IDEA.
  User: 王康
  Date: 2019/6/21
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

</head>
<body bgcolor="yellow">
<jsp:include page="head.html" />
<font size=3 color=blue> 这是 two.jsp 页面 </font>
<font size=3><%
    String s = request.getParameter("number");
    out.println("<br>传递过来的值是" + s);
%>
</font><br>
<img src="../img/bdlg.jpg" width="<%=s%>" height="<%=s%>">
<p>
    <a href="one.jsp">返回 one 页面</a>

</body>
</html>
