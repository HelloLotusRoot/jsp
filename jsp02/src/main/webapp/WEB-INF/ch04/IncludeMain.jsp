<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    // 포함할 파일의 경로
    String outerPath1 = "./OuterPage1.jsp";
    String outerPath2 = "./OuterPage2.jsp";

    // page 영역과 request 영역에 속성 저장
    pageContext.setAttribute("pAttr", "동명왕");
    // request 영역에 데이터 저장
    request.setAttribute("rAttr", "온조왕");
%>
<html>
<head><title>지시어와 액션 태그 동작 방식 비교</title></head>
<body>
<h2>지시어와 액션 태그 동작 방식 비교</h2>
<!-- 지시어 방식 -->
<h3>지시어로 페이지 포함하기</h3>
<%@ include file="./OuterPage1.jsp" %>
<%-- 지시어의 include 사용 시 표현식 사용이 불가함 --%>
<%--@ include file="<%=outerPath1OuterPage1%>" --%>
<p>외부 파일에 선언한 변수 : <%=newVar1%>
</p>

<!-- 액션 태그 방식 -->
<h3>액션 태그로 페이지 포함하기</h3>
<jsp:include page="./OuterPage2.jsp"/>
<jsp:include page="<%=outerPath2%>"/>
<%-- 액션 태그의 include로 가져온 파일에서 선언한 변수는 가져올 수 없음 --%>
<%-- 액션 태그의 include는 페이지 이동이므로 현재 파일에서 사용할 수 없음--%>
<p>외부 파일에 선언한 변수 : <%--=newVar2 --%></p>
</body>
</html>
