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
cookieUtils라는 만들건데
<%
// han쿠키가 있는지 없는지 확인하고 싶어요.
// Cookie[] cookies = request.getCookies();
// if(cookies!=null){
// 	for(Cookie cookie : cookies){
// 		if(cookie.getName().equals("han")){
// 			//이 if문 안에 왔으면 han이라는 쿠키가 있다.
// 		}
// 	}
// }
//쿠키유틸스 이유2
// Cookie cookie =new Cookie("han","아무값");
// cookie.setMaxAge(60*30);
// cookie.setPath(request.getContextPath()+"/09cookies/path1");
// response.addCookie(cookie);
// new cookie("han","아무값","30분","경로"); response.addCookie();

%>
</body>
</html>