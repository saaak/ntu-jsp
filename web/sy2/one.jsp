<%--
  Created by IntelliJ IDEA.
  User: 王康
  Date: 2019/6/21
  Time: 15:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=GB2312" language="java" %>
<html>
<head>
    <meta charset="UTF-8"> <!-- for HTML5 -->

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
<jsp:include page="head.html" />
    <form action="" method="get" name="form">
        请输入1至100之间的整数<br>
        1~50转two.jsp，51~100转three.jsp<br>
        并显示图片，图片大小与输入数值一致<br>
        （输入非数字转error.jsp）:<br>
        <input type="text" name="number">
        <input type="submit" value="送出" name="submit">
    </form>
<%
    String num=request.getParameter("number");
    if(num==null){
        num = "0";
    }
    try{
        int n=Integer.parseInt(num);
        if(n>=1&&n<=50){
%>
        <jsp:forward page="two.jsp">
            <jsp:param name="number" value="<%=n%>"/>
        </jsp:forward>
<%
        }else if(n>50&&n<=100){
%>
        <jsp:forward page="three.jsp">
            <jsp:param name="number" value="<%=n%>"/>
        </jsp:forward>
<%
        }
    }catch (Exception e){
%>
        <jsp:forward page="error.jsp">
            <jsp:param name="mess" value="<%=e.toString()%>"/>
        </jsp:forward>
<%
    }
%>
</body>
</html>
