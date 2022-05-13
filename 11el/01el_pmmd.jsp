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
02el_pmmd +-X/
EL도 언어에요. 기본적으로 화면에 출력을 하는데.
${userasd } 처럼 setAttribute가 안 되어있는 이름을 쓰면 아무것도 출력 안 함.
<hr>
${3+5}  3+5<br>
${"나는 배부르다" }  "나는 배부르다"   <br>
${3+"3" } : EL은 기본적으로 산술연산만 지원해줍니다.<br>
			 "3"을 숫자 long으로 바꿔서 3+3=6 출력.<br>
<%-- ${3+"아" } : "아"를 숫자로 못 바꿔서 에러--%>


</body>
</html>