<%@page import="com.learner.*"%>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="InsertTeacher.jsp" method="post">
TeacherFirstName<br><input type="text" name="Tfname"><br>
TeacherLastName<br><input type="text" name="Tlname"><br>
TeacherDesignation<br><input type="text" name="TDesig"><br>
<input type="submit" name="save">
</form>
</body>
</html>
