<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logout Page</title>
<br><br>
<link rel="stylesheet" href="bootstrap.min.css">
</head>
<body>
<%
session.invalidate();
%>
 <div class="container">
 <h1>You are Log Out</h1>
 <br><hr>
 <br>
  <a href="index.jsp">log in</a>
 </div>
</body>
</html>