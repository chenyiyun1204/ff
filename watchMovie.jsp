<%--
  Created by IntelliJ IDEA.
  User: ning
  Date: 2023/3/29
  Time: 15:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <h1>用一张10元购买票价2元的一张电影票</h1>
  <%
    int money=10;
    money=10-2;

  %>
<jsp:forward page="give5.jsp">
  <jsp:param name="number" value="<%=money%>"/>
  <jsp:param name="mess" value=""/>
</jsp:forward>

</body>
</html>
