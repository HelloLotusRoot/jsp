<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head><title>내장 객체 - out</title></head>
<body>
<%
  // 화면에 지정한 텍스트 출력
  // 버퍼 내용 삭제하기
  out.print("출력되지 않는 텍스트");  // 버퍼에 저장
  // clearBuffer() 를 사용하여 현재 버퍼에 저장된 내용을 삭제
  // 위에서 출력하려고 대기 중인 텍스트를 모두 버림
  out.clearBuffer();  // 버퍼를 비움(윗 줄의 출력 결과 사라짐)

  out.print("<h2>out 내장 객체</h2>");

  // 버퍼 크기 정보 확인
  out.print("출력 버퍼의 크기 : " + out.getBufferSize() + "<br>");
  out.print("남은 버퍼의 크기 : " + out.getRemaining() + "<br>");

  out.flush();  // 버퍼 내용 출력
  out.print("flush 후 버퍼의 크기 : " + out.getRemaining() + "<br>");

  // 다양한 타입의 값 출력
  out.print(1);
  out.print(false);
  out.print('가');
%>
</body>
</html>