<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<img alt="" src="로제.jpeg" style="width:50px;height:50px"><br>
<img alt="" src="한요한.jpeg" style="width:50px;height:50px"><br>
<hr>
<img alt="" src="<%=request.getContextPath() %>/01basic/로제.jpeg" style="width:50px;height:50px"><br>
<img alt="" src="<%=request.getContextPath() %>/01basic/한요한.jpeg" style="width:50px;height:50px"><br>
<hr>
<%=request.getContextPath() %>
</body>
</html>