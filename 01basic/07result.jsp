<%@page import="java.util.Map.Entry"%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%request.setCharacterEncoding("utf-8"); %>
<body>
이름 : <%=request.getParameter("name") %><br> 
나이 : <%=request.getParameter("age") %><br>
취미 : 
<%String[] hobbies =  request.getParameterValues("hobby");

for(String hobby : hobbies){
	out.print(hobby + " ");
}

%>
<hr>
<h1>enum</h1>
<%
Enumeration<String> enumParamNames = request.getParameterNames();
while(enumParamNames.hasMoreElements()){
	String paramName=enumParamNames.nextElement();
	request.getParameterValues(paramName);
	String[] paramValues = request.getParameterValues(paramName);
	out.print(paramName+" : ");
	for(int i =0;i<paramValues.length;i++){
		String paramVal = paramValues[i];
		out.print(paramVal + " ");
	}
	out.print("<br>");
}

%>

<hr>
<h1>map keySet for</h1>


<%
Map<String, String[]> paramMap=request.getParameterMap();
Set<String> keySet = paramMap.keySet(); // name,age,hobby
for(String key : keySet){
	String[] values = paramMap.get(key);
	out.print(key);
	for(String val : values){
		out.print(val+" ");
	}
	out.print("<br>");
}
%>
<hr>
<h1>map keySet Iterator</h1>
<%

Iterator<String> iterator = keySet.iterator();
while(iterator.hasNext()){
	String a = iterator.next(); // a= name,age,hobby
			String[] value= paramMap.get(a);
}

%>
<hr>
 <% Set<Entry<String,String[]>> entrySet = paramMap.entrySet(); 
 for(Entry<String,String[]>entry : entrySet){
	 String key = entry.getKey();
	 String[] values = entry.getValue();
	 
 }
 
 %>







</body>
</html>