<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*" %>
    <%@page import="java.io.*" %>
    <%@page import="javax.servlet.http.Cookie" %>
    <%@page import="javax.servlet.RequestDispatcher" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

PrintWriter pw=response.getWriter();
Cookie c=new Cookie("userid","");
c.setMaxAge(0);
response.addCookie(c);
RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
rd.include(request, response);
pw.println("logout successfull");

%>
</body>
</html>