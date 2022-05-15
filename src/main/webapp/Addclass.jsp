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
int ID=Integer.parseInt(request.getParameter("cid"));
String Name=request.getParameter("cname");
ClassPOJO pojo =new ClassPOJO();
pojo.setClassId(ID);
pojo.setClassname(Name);
ClassDAO dao=new ClassDAO();
int row=dao.insertclass(pojo);
if(row>0){
	response.sendRedirect("Addedclass.jsp");
}

else{
	response.sendRedirect("fail.jsp");
}

%>
</body>
</html>



