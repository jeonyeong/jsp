<%@page import="com.study.login.vo.UserVO"%>
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
UserVO user = new UserVO("mal","자","1004","admin");
request.setAttribute("user",user);
%>
${usar } <!-- 에러 x 화면에 출력도 안 됨 -->
${user.id } <!-- 에러 user는 null이 아닌데 필드를 이상한 것 썼음. -->
</body>
</html>