<%@page import="java.util.ArrayList"%>
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
${3>5 }.............${3<5 }...............${3==3}<br>
<%-- ${3 eq 3 } .... .. . . .. . ${3 ne 3 }<br> --%>
<hr>
${!true }
<hr>
<hr>
<!--  empty : null, null이 아니지만 비어있는 컬렉션 배열 -> true -->
<%
request.setAttribute("name", null);
List<String> strList = new ArrayList<>();
strList.add("aa");
List<String> strEmptyList = new ArrayList<>();
request.setAttribute("strl", strList);
request.setAttribute("strEmpty", strEmptyList);

%>
${empty name}.....${empty strL }....${empty strEmpty }



</body>
</html>