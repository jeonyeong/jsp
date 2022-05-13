<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
Class.forName("oracle.jdbc.driver.OracleDriver");
long startTime =System.currentTimeMillis();
for(int i= 0; i<1000; i++){
Connection conn=null;
Statement stmt = null;
ResultSet rs = null;
try{
	conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jsp","oracle");
	stmt=conn.createStatement();
	
		
	rs=stmt.executeQuery("SELECT * FROM member");
	
}catch(SQLException e){
	e.printStackTrace();
}finally{
	if(conn!=null) conn.close();
	if(stmt!=null) stmt.close();
	if(rs!=null)rs.close();
}
}
long endTime =System.currentTimeMillis();
out.print("걸린 시간 : " + (endTime-startTime) ); // 100~200

%>

<!-- conn 객체는 페이지를 열 때 마다 네트워크를 통해서 한번 갔다와요.
페이지를 새로고침할 때마다 conn 객체가 새로 생성이 되죠.
conn 객체를 자체는 자바 프로그램 메모리에 있는 객체입니다.
한번 생성할 때 네트워크를 통해가는건 한번만 하고,,, 연결정보를 가지고 있는 conn 객체를 계속 사용하면 어떨까??
==> DBCP
-->




</body>
</html>