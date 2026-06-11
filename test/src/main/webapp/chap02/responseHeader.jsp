<%@ page import="java.util.Collection" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    // 응답 헤더에 추가할 값 준비
    SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd HH:mm");
    long add_date = s.parse(request.getParameter("add_date")).getTime();

    java.sql.Date date2 = new java.sql.Date(add_date);
    System.out.println(date2);

    // getParameter()로 전달받은 데이터는 모두 문자열, 정수 데이터는 정수 타입으로 변환 필수
    int add_int = Integer.parseInt(request.getParameter("add_int"));
    String add_str = request.getParameter("add_str");

    // response 응답 객체에 데이터를 추가
    response.addDateHeader("myBirthday", add_date);
    // myNumber라는 이름으로 데이터 저장
    response.addIntHeader("myNumber", add_int);
    // 동일한 myNumber 이름으로 데이터를 저장
    response.addIntHeader("myNumber", 1004); // 추가
    response.addHeader("myName", add_str);
    // setHeader()
    response.setHeader("myName", "안중근");  // 수정
%>
<html>
<head><title>내장 객체 - response</title></head>
<body>
<h2>응답 헤더 정보 출력하기</h2>
<%
    // response 내장객체에 저장된 내용 가져오기
    Collection<String> headerNames = response.getHeaderNames();
    for (String hName : headerNames) {
        String hValue = response.getHeader(hName);
%>
<li><%= hName %> : <%= hValue %>
</li>
<%
    }
%>

<h2>myNumber만 출력하기</h2>
<%
    // getHeaders() : 동일한 header 이름으로 여러개의 데이터가 저장되어 있을 경우 동일한 이름의 헤더 데이터를 모두 가져오는 명령어
    Collection<String> myNumber = response.getHeaders("myNumber");
    for (String myNum : myNumber) {
%>
<li>myNumber : <%= myNum %>
</li>
<%
    }
%>
</body>
</html>