<%--
  Created by IntelliJ IDEA.
  User: ning
  Date: 2023/3/29
  Time: 15:10
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
        int coin=1;
        backMoney=Integer.parseInt(backMoneyStr);
        while (true){
            count++;
            if (count*coin>backMoney){
                break;
            }
        }
        backMoney=backMoney-(count-1)*coin;
        mess=mess+"<br>找钱"+(count-1)+"张面值为："+coin+"元的钱币";
        out.println("<br>"+mess);
        %>
<br><embed src="mp4/c.mp4" width="500" height="470" autostart="false">
看城市
</body>
</html>
