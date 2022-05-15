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
String SubName=request.getParameter("subname");
SubjectPOJO supojo =new SubjectPOJO();
supojo.setSubjectName(SubName);
SubjectDAO dao=new SubjectDAO();
int row=dao.deletesubject(supojo);
if(row>0){
	response.sendRedirect("DisplaySubjects.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}

%>
</body>
</html>