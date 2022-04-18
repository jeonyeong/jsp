<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>include 전</h1>
<%request.setAttribute("main","메인에서담은데이터"); %>
<jsp:include page="02sub.jsp"></jsp:include>
<h1>include 후</h1>
sub에서 담은 데이터 : <%=request.getAttribute("sub") %>
</body>
</html>