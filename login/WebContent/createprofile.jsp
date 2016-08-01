<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="/login/style.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Profile</title>
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

<h1>Hi <%=username %></h1>
<h2>Login Sucessfull</h2>
<form method="post" action="UserProfile">
	<label>First Name :</label></br> <input type="text" name="firstname"> </br>
	<label>Last Name :</label></br> <input type="text" name="lastname"> </br>
	<label>Email :</label></br> <input type="email" name="email"> </br>
	<label>Contact :</label></br> <input type="tel" name="contact"> </br></br>
				   <input type="submit" name="contact" value="Submit">
	
</form>
</body>
</html>