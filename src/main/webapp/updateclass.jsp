<%@page import="com.learner.ClassDAO"%>
<%@page import="com.learner.ClassPOJO"%>
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
int ID=Integer.parseInt(request.getParameter("id"));
String Name=request.getParameter("name");
ClassPOJO pojo =new ClassPOJO();
pojo.setClassId(ID);
pojo.setClassname(Name);
ClassDAO dao=new ClassDAO();
int row=dao.updateclass(pojo);
if(row>0){
	response.sendRedirect("Displayclass.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}

%>
</body>
</html>



