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
                
<h1>Subject list</h1>
<table border="1">
<%SubjectDAO sudao=new SubjectDAO();
List<SubjectPOJO> supojo=(List<SubjectPOJO>)sudao.display();
%>
                       <!--Table Header-->
<tr>
   <th>SubjectID</th>
   <th colspan="2" >Action</th> 
</tr>
<%for(SubjectPOJO s:supojo){ %>
                       <!--Table Data-->
<tr>
   <td><%=s.getSubjectName()%></td>
   <td><a href="editsubject.jsp">Edit Subject</a></td>
   <td><a href="deletesubject.jsp">Delete Subject</a></td>  
</tr>
<%} %>
</table>
</body>
</html>