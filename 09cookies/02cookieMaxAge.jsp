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
<%

Cookie cookie = new Cookie("name","창희");
cookie.setMaxAge(15);

// setMaxAge(15)는 15초 뒤에 쿠키가 삭제돼요.
// setMaxAge()15를 하면 브라우저가 껐다 켜져도 삭제 안돼요.
//  따로 setMaxAge를 설정 안 하면 -1이에요
// -1은 브라우저가 꺼지면 쿠키 삭제.
response.addCookie(cookie);
//02cookieMaxAge -> viewCookie 새로고침 쭈욱

%>
</body>
</html>