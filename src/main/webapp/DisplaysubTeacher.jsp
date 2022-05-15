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
                
<h1> List of Subject and Teacher assinged to Class</h1>
<table border="1">
<%SubjectTeacherDAO  dao=new SubjectTeacherDAO ();
List<SubjectTeacherPOJO> pojo=(List<SubjectTeacherPOJO>)dao.display();
%>
                       <!--Table Header-->
<tr>
   <th>SNo</th>
   <th>Class</th>
   <th>Subject</th>
   <th>Teacher</th>
   <th colspan="4" >Action</th> 
</tr>
<%for(SubjectTeacherPOJO s:pojo){ %>
                       <!--Table Data-->
<tr>
   <td><%=s.getClassName() %></td>
   <td><%=s.getSubject() %></td>
   <td><%=s.getTeacher() %></td>
   <td><a href="deletesubteacher.jsp">Delete</a></td>   
</tr>
<%} %>
</table>
</body>
</html>