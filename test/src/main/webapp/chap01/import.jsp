<%-- import 속성은 java sdk의 클래스나 사용자가 생성한 클래스를 현재 파일로 import 함 --%>
<%-- 자바에서 import하는 방식과 동일하게 사용 가능 --%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2026-06-11
  Time: 오후 12:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container mt-5">
  <h2>import 사용하기</h2>
  <%
    Date today = new Date();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
    String todayStr = sdf.format(today);
    out.println("오늘 날짜 : " + todayStr);
  %>
</div>
</body>
</html>
