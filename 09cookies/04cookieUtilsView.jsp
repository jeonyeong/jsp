<%@page import="com.study.common.util.CookieUtils"%>
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
Cookie[] cookies = request.getCookies();
if(cookies!=null){
	for(Cookie cookie : cookies){
		if(cookie.getName().equals("han")){
			out.print(cookie.getName()+":" + cookie.getValue());
			
		}
	}
}
CookieUtils cookieutils = new CookieUtils(request);
if(cookieutils.exists("han")){
	out.print("han"+":"+ cookieutils.getValue("han"));
}
// han 쿠키를 삭제 , 수정도 편하
%>



</body>
</html>