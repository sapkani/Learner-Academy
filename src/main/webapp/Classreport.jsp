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
<h1> Class Report</h1>
<p1> Please select the class to see the report </p1>

<%ClassDAO dao=new ClassDAO();
List<ClassPOJO> pojo=(List<ClassPOJO>)dao.display();
%>
<form action="DisplayReport.jsp">
<select name="class">
<option value=" ">Choose the option</option>
<%for(ClassPOJO c:pojo){ %>
<option value="<%=c.getClassname()%>"><%=c.getClassname()%></option>
<%} %>
</select>
<br></br>
<input type="submit" value="submit">
</form>
</body>
</html>