<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>04errorAndBuffer</h1>
<%
out.flush();
String a = null;
a.substring(3);
%>

04errorAndBuffer
</body>
</html>