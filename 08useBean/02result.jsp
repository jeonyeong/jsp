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
<%String id = request.getParameter("userId"); %>
<jsp:useBean id="user" class="com.study.login.vo.UserVO"></jsp:useBean>
<h1>setting 전</h1>
<% 
// UserVO user =(UserVO) request.getAttribute("user");
// if(user==null){
// user=new UserVO();
// request.setAttribute("user",user);
// }
// 사용자가 입력한 모든 값들을 DB에 넣을려고해요. user테이블에
user.setUserId(request.getParameter("userId"));
user.setUserId(request.getParameter("userName"));
user.setUserId(request.getParameter("userPass"));
user.setUserId(request.getParameter("userRole"));
// insert(user);
%>
<jsp:setProperty property="*" name="user"/><!-- 위의 set4줄 한번에.. -->
결론: useBean태그 쓰는 이유 : 파라미터로 온거 VO에 자동으로 한번에 세팅(VO는 자바빈규약 잘 지켜야, 파라미터 이름이랑 필드이름이랑 같아야하고..)

id:<jsp:getProperty property="userId" name="user"/><br><!-- name은 useBean id값 -->
name:<jsp:getProperty property="userName" name="user"/><br>
pass:<jsp:getProperty property="userPass" name="user"/><br>
role:<jsp:getProperty property="userRole" name="user"/><br>
<hr>
<h1>setting 후</h1>
<%-- <jsp:setProperty property="userId" name="user"/> --%>
<%-- <jsp:setProperty property="userName" name="user"/> --%>
<%-- <jsp:setProperty property="userPass" name="user"/> --%>
<%-- <jsp:setProperty property="userRole" name="user"/> --%>
<jsp:setProperty property="*" name="user"/>

id:<jsp:getProperty property="userId" name="user"/><br>
name:<jsp:getProperty property="userName" name="user"/><br>
pass:<jsp:getProperty property="userPass" name="user"/><br>
role:<jsp:getProperty property="userRole" name="user"/><br>

id : <%=request.getParameter("userId") %>

</body>
</html>