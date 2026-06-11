<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         isErrorPage="true"%>
<!-- isErrorPage 속성은 현재 jsp 페이지가 오류를 처리하기 위한 페이지일 경우에만 사용 -->
<!-- isErrorPage 속성에 true를 설정 시 exception 객체가 자동으로 등록됨 -->
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>page 지시어 - errorPage/isErrorPage 속성</title>
</head>
<body>
<h2>서비스 중 일시적인 오류가 발생하였습니다.</h2>
<p>
    오류명 : <%= exception.getClass().getName() %> <br />
    오류 메시지 : <%= exception.getMessage() %>
</p>
</body>
</html>