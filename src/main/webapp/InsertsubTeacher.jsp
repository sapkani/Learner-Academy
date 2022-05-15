<%@page import="com.learner.SubjectTeacherPOJO"%>
<%@page import="com.learner.SubjectTeacherDAO"%>
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
String Subject=(request.getParameter("subject"));
String Teacher=request.getParameter("teacher");
String ClassName=request.getParameter("class");
SubjectTeacherPOJO pojo=new SubjectTeacherPOJO();
pojo.setSubject(Subject);
pojo.setTeacher(Teacher);
pojo.setClassName(ClassName);
SubjectTeacherDAO dao=new SubjectTeacherDAO();
int row=dao.insertSubTeacher(pojo);
if(row>0){
	response.sendRedirect("DisplaysubTeacher.jsp");
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



