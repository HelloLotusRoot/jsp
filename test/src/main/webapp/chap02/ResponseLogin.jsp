<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head><title>내장 객체 - Response</title></head>
<body>
<%
    // 클라이언트에서 request 내장객체를 통해서 전달받은 데이터 가져오기
    String id = request.getParameter("user_id");
    String pwd = request.getParameter("user_pwd");
    if (id.equalsIgnoreCase("must") && pwd.equalsIgnoreCase("1234")) {
      // 내장객체 response에서 제공하는 페이지 이동 명령
        response.sendRedirect("ResponseWelcome.jsp");
    }
    else {
      // 내장객체 request에서 제공하는 페이지 이동 명령
        request.getRequestDispatcher("ResponseMain.jsp?loginErr=1")
                .forward(request, response);
    }
%>
</body>
</html>