<%@page import="java.util.*" %>
<%@page import="com.learner.SubjectDAO"%>
<%@page import="com.learner.SubjectPOJO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try{
	int SubId=Integer.parseInt(request.getParameter("SubID"));
	String SubName=request.getParameter("Subname");
	SubjectPOJO supojo= new SubjectPOJO();
	supojo.setSubjectID(SubId);
	supojo.setSubjectName(SubName);

	SubjectDAO sudao=new SubjectDAO();
	int row=sudao.insertsubject(supojo);
	if(row>0){
		response.sendRedirect("DisplaySubjects.jsp");
	}
	else{
		response.sendRedirect("fail.jsp");
	}	
}
catch(Exception e){
out.print(e.getMessage());	
}
%>
</body>
</html>



