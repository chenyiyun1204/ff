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
<%
    request.setCharacterEncoding("gb2312");
    String backMoneyStr=request.getParameter("number");
    String mess=request.getParameter("mess");
    int backMoney=0;
    int count=0;
    int coin=5;
    backMoney=Integer.parseInt(backMoneyStr);
    while (true){
        count++;
        if (count*coin>backMoney){
            break;
        }
    }
    backMoney=backMoney-(count-1)*coin;
    mess=mess+"<br>找钱"+(count-1)+"张面值为："+coin+"元的钱币";
    if (backMoney>0){
        %>
        <jsp:forward page="give2.jsp">
            <jsp:param name="number" value="<%=backMoney%>"/>
            <jsp:param name="mess" value="<%=mess%>"/>
        </jsp:forward>
<%
    }else {
        out.println(mess);
        %>
        <br><embed src="mp4/2.mp4" width="500" height="470" autostart="false">
        看唱歌
        <%
    }
%>
</body>
</html>
