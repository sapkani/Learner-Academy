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
<p>To add new Student Please fill below fields<p>
<body>
<form action="Insertstudent.jsp">
StudentFirstName<br><input type="text" name="fname"><br>
StudentLastName<br><input type="text" name="lname"><br>
<%ClassDAO dao=new ClassDAO();
List<ClassPOJO> pojo=(List<ClassPOJO>)dao.display();
%>

Select class:
<select name="cname" id="class-select">
    <option value="">--Please choose an option--</option>
 <%for(ClassPOJO c:pojo){ %>
    <option value=<%=c.getClassname()%>><%=c.getClassname()%></option>
 <%} %>
</select><br>
<input type="submit" value="Save"> 
</form>
<%RequestDispatcher rd=request.getRequestDispatcher("DisplayStudents.jsp");
  rd.include(request,response); 
%>
</body>
</html>