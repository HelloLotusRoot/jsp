<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>액션 태그 - UseBean</title>
</head>
<body>
<h2>useBean 액션 태그</h2>
<h3>자바빈즈 생성하기</h3>
<jsp:useBean id="person" class="bitc.java405.jsp02.Person" scope="request"/>

<h3>setProperty 액션 태그로 자바빈즈 속성 지정하기</h3>
<jsp:setProperty name="person" property="name" value="임꺽정"/>
<jsp:setProperty name="person" property="age" value="41"/>

<h3>getProperty 액션 태그로 자바빈즈 속성 읽기</h3>
<ul>
    <li>이름 :
        <jsp:getProperty name="person" property="name"/>
    </li>
    <li>나이 :
        <jsp:getProperty name="person" property="age"/>
    </li>
</ul>
<%-- 액션 태그의 useBean,setProperty, getProperty를 사용하지 않고 자바 빈즈 사용하기 --%>
<%@ page import="bitc.java405.jsp02.Person" %>
<%
    Person pPerson = new Person("홍길동", 25);

    String name = person.getName();
    int age = person.getAge();
%>

<ul>
    <li>이름: <%= name %></li>
    <li>나이: <%= age %>세</li>
</ul>

</body>
</html>