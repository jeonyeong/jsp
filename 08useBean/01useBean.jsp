<%@page import="com.study.login.vo.UserVO"%>
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
01useBean.jsp<br>
<pre>
자바빈규약
1.패키지에 있어야 한다.
2.기본 생성자가 꼭 있어야 한다.
3.필드는 private
4.get/set
5.직렬화(선택)



</pre>
<%
UserVO user = new UserVO();
	UserVO user2= new UserVO("a001","한창희","1004","MEMBER");
	System.out.println(user);
	System.out.println(user2);
%>



</body>
</html>