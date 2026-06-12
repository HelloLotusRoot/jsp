<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>OuterPage</title>
</head>
<body>
<h2>외부 파일 1</h2>
<%
    // 외부 파일에서 선언한 변수
    String newVar1 = "고구려 세운 동명왕";
%>
<ul>
    <%-- includeMain.jsp 파일에서 page 영역에 저장한 데이터 가져오기, 데이터를 가져올 수 없음,
    액션태그의 include는 지정한 페이지로 이동하므로 page 영역에 저장된 데이터를 사용할 수 없음 --%>
    <li>page 영역 속성 : <%= pageContext.getAttribute("pAttr") %>
    </li>
    <%--  --%>
    <li>request 영역 속성 : <%= request.getAttribute("rAttr") %>
    </li>
</ul>
</body>
</html>