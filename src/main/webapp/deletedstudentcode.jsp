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
String StFname=request.getParameter("sfnmae");
StudentPOJO stpojo =new StudentPOJO();
stpojo.setFirstName(StFname);
StudentDAO dao=new StudentDAO();
int row=dao.deletestudent(stpojo);
if(row>0){
	response.sendRedirect("DisplayStudents.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}

%>
</body>
</html>



