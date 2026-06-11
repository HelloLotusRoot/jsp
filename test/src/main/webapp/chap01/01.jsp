<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2026-06-11
  Time: 오전 10:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%-- jsp의 스크립트 태그 선언부 사용 --%>
<%!
    // 일반 변수 선언
    String str1 = "JSP";
    String str2 = "안녕하세요..";
%>

<%-- jsp 코드는 JSP 파일 내에서 여러번 나누어 사용 가능 --%>
<%!
    // 메소드 선언
    public int add(int num1, int num2) {
        return num1 + num2;
    }
%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Hello JSP</title>
</head>
<body>
<%-- 선언부에서 만든 멤버 변수를 표현식에서 출력 --%>
<h2>처음 만들어보는 <%= str1 %></h2>
<%-- 선언부에서 만든 메소드를 표현식에서 출력 --%>
<%= add(10, 20) %>
<p>
    <%
        // 스크립틀릿에서 자바 코드 사용하여 연산 후 out.println()으로 화면에 출력
        out.println(str2 + str1 + "입니다. 열공합시다.");
        // 선언부에서 만든 메소드를 스크립틀릿에서 out.println()을 사용하여 출력
        out.println(add(10, 20));
    %>
</p>
</body>
</html>
