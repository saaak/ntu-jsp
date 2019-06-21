<%--
  Created by IntelliJ IDEA.
  User: 王康
  Date: 2019/6/21
  Time: 16:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="utf-8" contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.Enumeration" %>
<html>
<head><title>request 对象测试</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String parameterName = null;
    String[] parameterValue = null;
%> <p>
    使用 request.getParameter("name")取得的值：
        <%
        out.println(request.getParameter("name"));
        %>
<p>使用 request.getParameterNames()取得表单所有参数的值:<br>
        <% Enumeration en = request.getParameterNames();
        int j=0;
        while(en.hasMoreElements()){
            parameterName =(String) en.nextElement();
            parameterValue = request.getParameterValues(parameterName);
            out.println("表单参数名称:"+parameterName+"=");
%> <% //逐个输出该表单参数的值
for(int i=0;i<parameterValue.length;i++)
{
%>
        <%=parameterValue[i]%> <% } %> <br> <%}%>
</body>
</html>