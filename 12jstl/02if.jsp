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
<%
String name = request.getParameter("name");
int age = Integer.parseInt(request.getParameter("age"));
int score = Integer.parseInt(request.getParameter("score"));
%>
name: <%=name %>, 나이 <%=age %><br>
<c:if test="<%=score>90 %>"><h1>수</h1></c:if>
<c:if test="<%=score<=90 & score>80 %>"><h2>우</h2></c:if>
<c:if test="<%=score<=80 & score>70 %>"><h3>미</h3></c:if>
<c:if test="<%=score<=70 & score>60 %>"><h4>양</h4></c:if>
<c:if test="<%=score<=60 %>"><h5>가</h5></c:if>
<c:if test="true">test가 "true"일 때 실행됩니다</c:if>

<%
switch(3){
case 3 :
case 4 :
default :

}
%>

<c:choose>
<c:when test=""></c:when>
<c:when test=""></c:when>
<c:when test=""></c:when>
<c:otherwise></c:otherwise>
</c:choose>

</body>
</html>