<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="/login/style.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LoginApp</title>
</head>
<body>
<h1>LOGIN INTO ACCOUNT</h1>
<form method="post" action=ProfileServlet>
  <label>Username : </label><br>
  <input type="text" name="username"> <br>
  <label>Password : </label><br>
  <input type="password" name="password"> <br> <br>
  <input type="submit" name="submit form" value="SUBMIT">
</form>
</body>
</html>