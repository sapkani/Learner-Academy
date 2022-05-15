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
<h1>Student list</h1>
<table border="1">
<%StudentDAO stdao=new StudentDAO();
List<StudentPOJO> stpojo=(List<StudentPOJO>)stdao.display();
%>
                       <!--Table Header-->
<tr>
   <th>StudentFirstName</th>
   <th>StudentLastName</th>
   <th>ClassName</th> 
   <th colspan="2" >Action</th> 
</tr>
<%for(StudentPOJO s:stpojo){ %>
                       <!--Table Data-->
<tr>
   <td><%=s.getFirstName()%></td>
   <td><%=s.getLastName()%></td>
   <td><%=s.getClassname()%></td>
   <td><a href="editstudent.jsp">Edit StudentFName & LName</a></td>
   <td><a href="deletestudent.jsp">Delete Student Detail</a></td>  
</tr>
<%} %>
</table>
</body>
</html>
