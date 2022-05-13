<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="/WEB-INF/inc/header.jsp" %>
<%request.setCharacterEncoding("UTF-8"); %>
</head>
<body>
<%@include file="/WEB-INF/inc/top.jsp" %>
<!-- 쿠키 : name, value 필수
maxAge, path, domain 선택
  쿠키 수정 : 같은 이름의 쿠키를 만들어서 보내면 됩니다.
  			브라우저는 response로부터 받은 쿠키가 쿠키저장소에 있으면 기존에 있는 쿠키 삭제 후 새로받은 쿠키를 저장해요.
 -->
 <%
 Cookie cookie = new Cookie("key", "value2");
 response.addCookie(cookie);
 
 
 %>
 
 
</body>
</html>