<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<html>
<head><title>액션 태그 - UseBean</title></head>
<body>
<h3>액션 태그로 폼값 한 번에 받기</h3>
<jsp:useBean id="person" class="bitc.java405.jsp02.Person"/>
<%-- form으로 전송받은 데이터 중 input 태그의 name값과 setProperty의 property의 값이 *일 경우 멤버 변수에 데이터가 자동으로 저장됨 --%>
<jsp:setProperty property="*" name="person"/>
<ul>
    <li>이름 :
        <jsp:getProperty name="person" property="name"/>
    </li>
    <li>나이 :
        <jsp:getProperty name="person" property="age"/>
    </li>
</ul>
</body>
</html>