<%@page import="java.util.*" %>
<%@page import="com.learner.StudentPOJO"%>
<%@page import="com.learner.StudentDAO"%>
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
String StFName=request.getParameter("stfname");
String StLName=request.getParameter("stlname");
String StCName=request.getParameter("stcname");
StudentPOJO stpojo =new StudentPOJO();
stpojo.setFirstName(StFName);
stpojo.setLastName(StLName);
stpojo.setClassname(StCName);
StudentDAO dao=new StudentDAO();
int row=dao.updatestudent(stpojo);
if(row>0){
	response.sendRedirect("DisplayStudents.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}

%>
</body>
</html>