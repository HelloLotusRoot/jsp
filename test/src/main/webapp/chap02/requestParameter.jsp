<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head><title>내장 객체 - request</title></head>
<body>
<%
    // 현재의 웹 환경은 모두 UTF-8 로 통일되어 있어서 문제가 없지만, 혹시 한글이 깨질 경우 설정
    request.setCharacterEncoding("UTF-8");
    // 클라이언트에서 전달한 데이터를 서버에서 가져오기 위한 메소드
    // html input 태그의 name 값과 동일하게 설정
    String id = request.getParameter("id");
    String sex = request.getParameter("sex");
    // 클라이언트에서 전달하는 데이터가 checkbox
    String[] favo = request.getParameterValues("favo");
    String favoStr = "";
    if (favo != null) {
        for (int i = 0; i < favo.length; i++) {
            favoStr += favo[i] + " ";
        }
    }
    String intro = request.getParameter("intro").replace("\r\n", "<br/>");
%>
<ul>
    <li>아이디 : <%= id %></li>
    <li>성별 : <%= sex %></li>
    <li>관심사항 : <%= favoStr %></li>
    <li>자기소개 : <%= intro %></li>
</ul>
</body>
</html>