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
<!--  쿠키 삭제 방법은 따로 없습니다. 
지속시간을 0으로 만듭니다.
-->
<%
Cookie[] cookies = request.getCookies();
if(cookies!=null){
	for(Cookie cookie : cookies){
		if(cookie.getName().equals("key")){
			cookie.setMaxAge(0);
			response.addCookie(cookie);
		}
	}
}

%>


</body>
</html>