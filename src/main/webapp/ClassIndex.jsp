<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
<p>Please click on below link to view respective details. By default Classes is choosed</p>
<p><a href="ClassIndex.jsp">Classes</a>,<a href="StudentIndex.jsp">Students</a>,<a href="SubjectIndex.jsp">Subjects</a>,<a href="TeacherIndex.jsp">Teachers</a>, <a href="logout.jsp">Logout</a></p>
<p>To add new Class Please fill below fields</p>   
                             
<form action="Addclass.jsp">
ClassId:<br><input type="text" name="cid"><br>
Classname:<br><input type="text" name="cname"><br>
<input type="submit"><br>
<%RequestDispatcher rd=request.getRequestDispatcher("Displayclass.jsp");
  rd.include(request,response); 
%>
</form>
</body>
</html>




