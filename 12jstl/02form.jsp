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
<form action="02if.jsp">
이름 : <input type="text" name="name" value=""><br>
나이 : <input type="number" name="age" value=""><br>
점수 : <input type="number" name="score" value=""><br>
<button type="submit">제출</button>


</form>
</body>
</html>