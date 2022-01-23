<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="bootstrap.min.css">
<title>Clerk Home Page</title>
</head>
<body>
<% String ano=String.valueOf(session.getAttribute("aadhar"));%>
<div class="container">
<br>
<h3 style="color:darkblue">Clerk</h3>
<h3 style="color:darkblue">Login As : <%=ano %> </h3>
<br><hr><br>
 <div class="container">
 	 <br>
 	 <a href="showprofile.jsp">Show Profile</a>||
 	<a href="showpeoples.jsp">Show Peoples</a> ||
 	<a href="showrequestclerk.jsp">Show Request</a> ||
 	<a href="showbirth.jsp">Show Birth</a> ||
 	<a href="showdeath.jsp">Show Death</a> ||
 	<a href="showmeetings.jsp">Show Meetings Date</a> ||
 	<a href="logout.jsp">Logout</a>
 </div>
</div>
</body>
</html>