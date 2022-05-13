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
로그인에서
<%
UserVO user =(UserVO)session.getAttribute("USER_INFO");
if(user!=null){
	
%>
무언가 복잡한 태그
<%
}else{
%>
겁나 복잡한 태그
<%} %>
<if test="<%=user!=null %>" >무언가 복잡한 태그</if>
<if test="<%=user == null %>">겁나 복잡한 태그</if>

JSTL : JSP Standard Tag Library에 이런 유용한 태그들을 모았습니다.



</body>
</html>