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


%>
<c:forEach begin="1" end="5" var="i">
<c:forEach begin="${i }" end="5" var="j">
</c:forEach>
</c:forEach>
<c:forEach begin="1" end="5" var="i" step="1">
<br>
<c:forEach begin="1" end="${i }" var="j" step="1" >
*


</c:forEach>
</c:forEach>
<hr>

<c:forEach begin="1" end="5" var="i">
	<c:forEach begin="1" end ="${i }" var="e" step="1">
	  &nbsp
	 </c:forEach> 
	<c:forEach begin="1" end="${6-i}" var="j" step="1">
		*
	</c:forEach>
	<br>
</c:forEach>

<hr>
<c:forEach begin="1" end="5" var="i">
<c:forEach begin="${i }" end ="5" var="j" step="1">
&nbsp
</c:forEach>
<c:forEach begin="1" end ="${ i}" var="q" step="1">
*
</c:forEach>
<c:forEach begin="1" end ="${i-1}" var="e" step="1">
*
</c:forEach>
<br>
</c:forEach>




</body>
</html>