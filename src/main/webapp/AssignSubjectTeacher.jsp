<%@page import="com.learner.SubjectDAO"%>
<%@page import="com.learner.SubjectPOJO"%>
<%@page import="com.learner.TeacherDAO"%>
<%@page import="com.learner.TeacherPOJO"%>
<%@page import="com.learner.ClassDAO"%>
<%@page import="com.learner.ClassPOJO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.learner.*"%>
    <%@page import="java.util.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%SubjectDAO sudao=new SubjectDAO();
List<SubjectPOJO> supojo=(List<SubjectPOJO>)sudao.display();
%>
<%TeacherDAO tdao=new TeacherDAO();
List<TeacherPOJO> tpojo=(List<TeacherPOJO>)tdao.display();
%>

<%ClassDAO dao=new ClassDAO();
List<ClassPOJO> pojo=(List<ClassPOJO>)dao.display();
%>

<form action="InsertsubTeacher.jsp">
  <select name="subject">
<%for(SubjectPOJO s:supojo){ %>
  select a subject to be added in class: <option value=<%=s.getSubjectName()%>><%=s.getSubjectName()%></option>
  </select> <br>
 <%} %>
 <select name="teacher">
 <%for(TeacherPOJO t:tpojo){ %>
   select a Teacher to be added in class: <option value=<%=t.getTeacherFName()%>><%=t.getTeacherFName()%></option>
 </select>
<%} %>
  <br><br> 
 <select name="class">
 <%for(ClassPOJO c:pojo){ %>
   select a Class: <option value=<%=c.getClassname()%>><%=c.getClassname()%></option>
 </select>
<%} %>
  <br><br>
  <input type="submit" value="Submit">
</form>
</body>
</html>