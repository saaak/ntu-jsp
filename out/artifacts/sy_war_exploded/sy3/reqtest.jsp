<%--
  Created by IntelliJ IDEA.
  User: ����
  Date: 2019/6/21
  Time: 16:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" contentType="text/html;charset=gb2312" %>
<html>
<head><title>request ��Ҫ��������ʾ��</title>
</head>
<body><font size="2"> request ��Ҫ��������ʾ����<br>
<%
    request.setAttribute("attr", "Hello!");
    out.println("attr ���Ե�ֵΪ��" + request.getAttribute("attr") + "<br>");
    out.println("������·��Ϊ��" + request.getContextPath() + "<br>");
    out.println("Cookies:" + request.getCookies() + "<br>");
    out.println("Host:" + request.getHeader("Host") + "<br>");
    out.println("ServerName:" + request.getServerName() + "<br>");
    out.println("ServerPort:" + request.getServerPort() + "<br>");
    out.println("RemoteAddr:" + request.getRemoteAddr() + "<br>");
    request.removeAttribute("attr");
    out.println("�����Ƴ������Ժ� attr ���Ե�ֵΪ��" + request.getAttribute("attr") + "<br>");
    out.println("WEB��Ŀ������·����" + this.getServletContext().getRealPath("") + "<br>");
%></font>
</body>
</html>