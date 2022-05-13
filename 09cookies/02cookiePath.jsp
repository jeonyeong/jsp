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
Cookie path1 = new Cookie("path1","path1");
Cookie path2 = new Cookie("path2","path2");
Cookie basic = new Cookie("basic","basic");
Cookie absolute = new Cookie("absolute","absolute");
path1.setPath(request.getContextPath()+"09cookies/path1");
path2.setPath(request.getContextPath()+"09cookies/path2");
absolute.setPath(request.getContextPath());

response.addCookie(path1);
response.addCookie(path2);
response.addCookie(basic);
response.addCookie(absolute);
// 경로지정하면 해당경로 포함 하위경로에서 쿠키 사용가능(관찰가능)
// absolute는 아무데서나 다 보임
// basic은 현재 폴더, path1,path2 폴더에서.
// path1은 path1에서만, path2는 path2에서만

%>


</body>
</html>