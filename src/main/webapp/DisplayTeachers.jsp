<%@page import="com.learner.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
                
<h1>Teacher list</h1>
<table border="1">
<%TeacherDAO tdao=new TeacherDAO();
List<TeacherPOJO> tpojo=(List<TeacherPOJO>)tdao.display();
%>
                       <!--Table Header-->
<tr>
   <th>TeacherFirstName</th>
   <th>TeacherFirstName</th>
   <th>Designation</th>
   <th colspan="2" >Action</th> 
</tr>
<%for(TeacherPOJO t:tpojo){ %>
                       <!--Table Data-->
<tr>
   <td><%=t.getTeacherFName()%></td>
   <td><%=t.getTeacherLName()%></td>
   <td><%=t.getDesignation()%></td>
   <td><a href="editteacher.jsp">Edit TeacherFName & Lname</a></td>
   <td><a href="deleteteacher.jsp">Delete Teacher Details</a></td>  
</tr>
<%} %>
</table>
</body>
</html>