<%@page import="com.learner.TeacherDAO"%>
<%@page import="com.learner.TeacherPOJO"%>
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
String TFName=request.getParameter("Tfname");
String TLName=request.getParameter("Tlname");
String TDes=request.getParameter("TDesig");
TeacherPOJO tpojo= new TeacherPOJO();
tpojo.setTeacherFName(TFName);
tpojo.setTeacherLName(TLName);
tpojo.setDesignation(TDes);
TeacherDAO dao=new TeacherDAO();
int row=dao.insertteacher(tpojo);
if(row>0){
	response.sendRedirect("DisplayTeachers.jsp");
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



