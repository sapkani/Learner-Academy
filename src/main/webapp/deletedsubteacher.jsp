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
String SubName=request.getParameter("sub");
SubjectTeacherPOJO pojo =new SubjectTeacherPOJO();
pojo.setSubject(SubName);
SubjectTeacherDAO dao=new SubjectTeacherDAO();
int row=dao.deleteSubTeacher(pojo);
if(row>0){
	response.sendRedirect("DisplaysubTeacher.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}

%>
</body>
</html>






