<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2026-06-11
  Time: 오전 11:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>에러 발생 테스트</title>
</head>
<body>
<%
  int myAge = Integer.parseInt(request.getParameter("age")) + 10;  // 에러 발생
  out.println("10년 후 당신의 나이는 " + myAge + "입니다.");  // 실행되지 않음
%>
</body>
</html>
