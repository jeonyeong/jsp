<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
00main
<h1>include 전 내용</h1>
<%int a= 5; %>
<jsp:include page="00sub.jsp"></jsp:include>
<h1>include 후 내용</h1>

</body>
</html>