<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
</body>
</html>

<table border='1'><tbody>
<c:forEach begin="2" end="9" var="i" step="1">
<tr>
<c:forEach begin="1" end="9" var="j" step="1">
<td>${i}${"x"}${j}${"=" }${j*i }</td>
</c:forEach>
</tr>
</c:forEach>
