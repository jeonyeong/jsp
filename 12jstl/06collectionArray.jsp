<%@page import="com.study.login.vo.UserVO"%>
<%@page import="java.util.Map"%>
<%@page import="com.study.common.util.UserList"%>
<%@page import="com.study.common.util.ProductList"%>
<%@page import="com.study.common.vo.ProdVO"%>
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
String[] kindPeople = {"민우","재훈","서준","원태"};
request.setAttribute("kindPeople",kindPeople);
List<ProdVO> prodList = ProductList.getProductList();
request.setAttribute("prodList",prodList);
UserList userList = new UserList();
Map<String, UserVO> userMap = userList.getUsersMap();
request.setAttribute("userMap",userMap);

%>
배열 <br>
<c:forEach var="kindPerson" items="${kindPeople }">
${kindPerson }
</c:forEach>
<hr>
리스트<br>
<c:forEach var="prod" items="${prodList }">
${prod.prodId },${prod.prodName } <br>
</c:forEach>
<hr>

<c:forEach var="entry" items="${userMap }">
${entry.key } : ${entry.value }<br>
</c:forEach>



</body>
</html>