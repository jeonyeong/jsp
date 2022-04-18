<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

String idol=request.getParameter("idol");
//04form.jsp랑 04junction은 다른 request

// 04junction이랑 bts,gg,rv.jsp는 같은 request

List<String> memberList= new ArrayList<>();
String viewPage="";
if(idol.equals("rv")){
	memberList.add("조이");
	memberList.add("아이린");
	memberList.add("웬디");
	memberList.add("슬기");
	memberList.add("예리");
	viewPage="rv.jsp";
}else if(idol.equals("bts")){
	memberList.add("뷔");
	memberList.add("정국");
	memberList.add("RM");
	viewPage="bts.jsp";
}else{
	memberList.add("수영");
	memberList.add("윤아");
	viewPage="gg.jsp";
}
request.setAttribute("memberList",memberList);

%>
<jsp:forward page="<%= viewPage %>"></jsp:forward>



</body>
</html>