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
int SubId=Integer.parseInt(request.getParameter("subid"));
String SubName2=request.getParameter("subname");
SubjectPOJO supojo =new SubjectPOJO();
supojo.setSubjectID(SubId);
supojo.setSubjectName(SubName2);
SubjectDAO dao=new SubjectDAO();
int row=dao.updatesubject(supojo);
if(row>0){
	response.sendRedirect("Displaysubjects.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}

%>
</body>
</html>



