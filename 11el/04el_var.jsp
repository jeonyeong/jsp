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
04el_var
<!-- EL에서는 기본적으로 setAttribute 담긴 걸 변수로 사용가능 
EL에서도 변수선언 가능
-->
<%request.setAttribute("name","스타벅스"); %>
${a=5;""} ${b="목요일" }${c= name }<!-- EL은 기본적으로 화면에 출력,출력 안 하고 변수만 선언할래 ;앞은 출력 안 함 ; 으로 끝나면 안됨. --><br>
${a }
</body>
</html>