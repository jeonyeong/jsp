<%@page import="com.study.member.vo.MemberVO"%>
<%@page import="java.util.ArrayList"%>
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
// 제발 commit하세요.(에러가 안남, 데이터도 안 나와...)



//JDBC 코딩 순서
// 1.드라이버 로드
// 2.연결
// 3.쿼리수행 및 여러가지
// 4.종료


try{//1.로드
Class.forName("oracle.jdbc.driver.OracleDriver");
}catch(ClassNotFoundException e){
 System.out.println("OracleDriver를 찾을 수 없음");
	
}
Connection conn =null; //연결하는 객체
Statement stmt=null; // 쿼리수행 객체
ResultSet rs=null; // select의 경우 결과 저장 객체
try{
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jsp","oracle");//2 연결
	//3.쿼리수행
	
	stmt = conn.createStatement();
	StringBuffer sb = new StringBuffer();
	sb.append("       SELECT    									      ")	;	
	sb.append("           mem_id       								   ")	;	
	sb.append("           , mem_pass   , mem_name   , mem_bir         ")	;	
	sb.append("           , mem_zip    , mem_add1   , mem_add2        ")	;	
	sb.append("           , mem_hp     , mem_mail   , mem_job         ")	;	
	sb.append("           , mem_hobby  , mem_mileage, mem_del_yn      ")	;	
	sb.append("       FROM        member							       ")	;	
	rs = stmt.executeQuery(sb.toString()); // ;쓰지 마
	
	List<MemberVO> memberList =new ArrayList<>();
	
	while(rs.next()){
		MemberVO member = new MemberVO();
		 
		member.setMemId( rs.getString("mem_id") );
		member.setMemPass( rs.getString("mem_pass") );
		member.setMemName( rs.getString("mem_name") );
		member.setMemBir( rs.getString("mem_bir") );
		member.setMemZip( rs.getString("mem_zip") );
		member.setMemAdd1( rs.getString("mem_add1") );
		member.setMemAdd2( rs.getString("mem_add2") );
		member.setMemHp( rs.getString("mem_hp") );
		member.setMemMail( rs.getString("mem_mail") );
		member.setMemJob( rs.getString("mem_job") );
		member.setMemHobby( rs.getString("mem_hobby") );
		member.setMemMileage( rs.getInt("mem_mileage") );
		member.setMemDelYn( rs.getString("mem_del_yn") );
		memberList.add(member);
		
	}
	request.setAttribute("memberList", memberList);
	
	
}catch(SQLException e){
	e.printStackTrace();
}finally{
	//.종료
	if(rs!=null){try{rs.close();}catch(Exception e){}}
	if(stmt!=null){try{stmt.close();}catch(Exception e){}};
	if(conn!=null){try{conn.close();}catch(Exception e){}}
}



%>
<table class="table table-striped table-bordered">
<tbody>
<c:forEach items="${memberList }" var="member">
<tr>
	<td>${member.memId }</td>
	<td><a href="01memberView.jsp?memId=${member.memId }">${member.memName }</a></td>
	<td>${member.memBir }</td>
	<td>${member.memZip }</td>
	<td>${member.memMail }</td>
</tr>
</c:forEach>	

</tbody>


</table>


<c:forEach items="${memIdList }" var= "memId">
${memId },
</c:forEach>

</body>
</html>