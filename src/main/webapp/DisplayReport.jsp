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
</table>
                       <!--Student table for respective class-->
<% 
String CName=request.getParameter("class");
StudentPOJO stpojo=new StudentPOJO();
stpojo.setClassname(CName);
StudentDAO stdao=new StudentDAO();
List<StudentPOJO> pojo=(List<StudentPOJO>)stdao.displayreport();
%>
<h1>Student list for class <%=CName%></h1> 
 
                       <!--Table Header-->
<tr>
   <th>StudentFirstName</th>
   <th>StudentLastName</th>
   <th>ClassName</th> 
   <th colspan="2" >Action</th> 
</tr>
<%for(StudentPOJO s:pojo){ %>
                       <!--Table Data-->
<tr>
   <td><%=s.getFirstName()%></td>
   <td><%=s.getLastName()%></td>
   <td><%=s.getClassname()%></td> 
</tr>
<%} %>
</table>

                     <!--Subject and Teacher  table for respective class-->

</table>
<% 
String ClassName=request.getParameter("class");
SubjectTeacherPOJO subtpojo=new SubjectTeacherPOJO();
subtpojo.setClassName(ClassName);
SubjectTeacherDAO dao=new SubjectTeacherDAO();
List<SubjectTeacherPOJO> bean=(List<SubjectTeacherPOJO>)dao.displaysubteacher();
%>
<h1>Subject and Teacher List for class<%=ClassName%>></h1>

                       <!--Table Header-->
<tr>
   <th>StudentFirstName</th>
   <th>StudentLastName</th>
   <th>ClassName</th> 
   <th colspan="2" >Action</th> 
</tr>
<%for(SubjectTeacherPOJO b:bean){ %>
                       <!--Table Data-->
<tr>
   <td><%=b.getClassName()%></td>
   <td><%=b.getSubject()%></td>
   <td><%=b.getTeacher()%></td> 
</tr>
<%} %>
</table>
</body>
</html>