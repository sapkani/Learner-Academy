<%@page import="com.learner.StudentDAO"%>
<%@page import="com.learner.StudentPOJO"%>
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
String FName=request.getParameter("fname");
String LName=request.getParameter("lname");
String CName=request.getParameter("cname");

StudentPOJO stpojo =new StudentPOJO();
stpojo.setFirstName(FName);
stpojo.setLastName(LName);
stpojo.setClassname(CName);
StudentDAO dao=new StudentDAO();
int row=dao.insertstudent(stpojo);
if(row>0){
	response.sendRedirect("DisplayStudents.jsp");
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
