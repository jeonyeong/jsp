<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%request.setCharacterEncoding("utf-8"); %>
</head>
<body>
<h1>클라이언트 정보</h1>
	IP : <%=request.getRemoteAddr() %> <br>
	url : <%=request.getRequestURL() %> <br>
	uri : <%=request.getRequestURI() %> <br>
	port : <%=request.getServerPort() %><br>
	<hr>
	<h1>파라미터정보 하나하나</h1><br>
	이름 : <%=request.getParameter("name") %> 
	나이 :<%=request.getParameter("age") %>
	취미 :<%=request.getParameter("hobby") %>
	<hr>
	<h1>헤더 정보</h1>
	content-type : <%=request.getHeader("content-type") %>
<hr>
<h1>request모든헤더보기</h1>
<%
Enumeration<String> enumHeaderNames = request.getHeaderNames();
while(enumHeaderNames.hasMoreElements()){
	String headerName = enumHeaderNames.nextElement();
	String headerValue = request.getHeader(headerName);
	out.print(headerName+":" +headerValue + "<br>");
}

%>


</body>
</html>