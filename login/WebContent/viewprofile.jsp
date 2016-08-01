<%@page import="java.util.Enumeration"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="/login/style.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Your Profile</title>
</head>
<body>

<%
String username = null;
Cookie[] cookies = request.getCookies();
if(cookies !=null){
for(Cookie cookie : cookies){
	if(cookie.getName().equals("username"))
		username = cookie.getValue();
}
}
 if(username == null) response.sendRedirect("loginform.jsp"); 
%>

<%
PrintWriter pw = response.getWriter();
Enumeration e = request.getParameterNames();
pw.write("<h1>Your Profile View </h1>");
%>

<%
while(e.hasMoreElements()){
	String paramName = (String)e.nextElement();
	String paramValue = request.getParameter(paramName);
	pw.println("<h3>" + paramName + " : " + paramValue + "</h3>");
}
%>
<form method="POST" action="LogoutServlet">
<input type="submit" value="Logout">
</form>
</body>
</html>