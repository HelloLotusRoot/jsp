<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    pageContext.setAttribute("pAttr", "김유신");
    request.setAttribute("rAttr", "계백");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>액션 태그 - forward</title>
</head>
<body>
<h2>액션 태그를 이용한 포워딩</h2>
<%-- 포워드로 페이지 이동 시 request 영역의 데이터는 유지 됨 --%>
<jsp:forward page="ForwardSub.jsp" />

<%-- 링크로 페이지 이동 시 page, request 영역의 데이터 삭제 --%>
<a href="ForwardSub.jsp">link로 페이지 이동</a>
</body>
</html>