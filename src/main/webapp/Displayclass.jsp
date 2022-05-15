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
                
<h1>Class list</h1>
<table border="1">
<%ClassDAO dao=new ClassDAO();
List<ClassPOJO> pojo=(List<ClassPOJO>)dao.display();
%>
                       <!--Table Header-->
<tr>
   <th>ClassId</th>
   <th>ClassName</th>
   <th colspan="4" >Action</th> 
</tr>
<%for(ClassPOJO c:pojo){ %>
                       <!--Table Data-->
<tr>
   <td><%=c.getClassId()%></td>
   <td><%=c.getClassname()%></td>
   <td><a href="editclass.jsp">Edit Class Name</a></td>
   <td><a href="deleteclass.jsp">Delete Class</a></td>  
   <td><a href="AssignSubjectTeacher.jsp">Add subject and Teacher</a></td>
   <td><a href="Classreport.jsp">Class Report</a></td>
</tr>
<%} %>
</table>
</body>
</html>