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
<!-- var의 변수는 forEach태그 안에서 EL로 사용합니다. 
varStatus도 forEach태그 안에서 EL로 사용합니다.
varStatus에는 forEach태그에 대한 정보가 있는 객체입니다.
-->
<!-- <ul> -->
<%-- <c:forEach begin="1" end="10"var="i" step="2"> --%>
<%-- <li>i   :  ${i }</li> --%>
<%-- </c:forEach> --%>
<!-- </ul> -->

<c:forEach begin="1" end="10" var="i" step="2" varStatus="status">
<c:if test="${status.first }">처음에만 실행된은 태그 <br></c:if>
i는 ${ i}입니다   <br>
count : ${status.count }<br>
index : ${status.index }<br>
<c:if test="${status.last }"> 마지막에만 실행되는 태그 <br> </c:if>
</c:forEach>







</body>
</html>