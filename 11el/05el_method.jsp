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
UserId:${user.userId }, userName:${user.userName}<hr>
<!--  메소드도 그대로 사용가능합니다.  -->
userId:${user.getUserId() },변경 후 userId:${user.getUserId("sunja") },,,,,,${user.userId }<br>
</body>
</html>