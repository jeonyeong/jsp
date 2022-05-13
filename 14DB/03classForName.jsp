<%@page import="com.study.free.vo.FreeBoardVO"%>
<%@page import="oracle.jdbc.driver.OracleDriver"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
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
<%
	request.setCharacterEncoding("UTF-8");
%>
</head>
<body>
<%@include file="/WEB-INF/inc/top.jsp" %>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
// .class로 바뀌는 순간에는 아무것도 안함
// 실행 순간에 OracleDriver를 메모리에 올린다  (런타임 동적 로딩)
// 로딩되는 순간에 OracleDriver가 DriverManager에 등록이 되어있어요


try{//1.로드
Class.forName("oracle.jdbc.driver.OracleDriver");
}catch(ClassNotFoundException e){
 System.out.println("OracleDriver를 찾을 수 없음");
	
}
OracleDriver oracle = new OracleDriver();
Connection conn =null; //연결하는 객체
Statement stmt=null; // 쿼리수행 객체
ResultSet rs=null; // select의 경우 결과 저장 객체
try{
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jsp","oracle");//2 연결
	stmt = conn.createStatement();
	rs=stmt.executeQuery("select * from free_board where bo_no=1");
	if(rs.next()){
		FreeBoardVO freeBoard = new FreeBoardVO();
		freeBoard.setBoNo(rs.getInt("bo_no"));
		freeBoard.setBoTitle(rs.getString("bo_title"));
		request.setAttribute("freeBoard",freeBoard);
	}
	//3.쿼리수행
	
	
}catch(SQLException e){
	e.printStackTrace();
}finally{
	//.종료
	if(rs!=null){try{rs.close();}catch(Exception e){}}
	if(stmt!=null){try{stmt.close();}catch(Exception e){}};
	if(conn!=null){try{conn.close();}catch(Exception e){}}
}
%>



</body>
</html>