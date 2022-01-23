<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="bootstrap.min.css">
<title>People Home Page</title>
</head>
<body>
<% String ano=String.valueOf(session.getAttribute("aadhar"));
%>
<div class="container">
<br><h3 style="color:darkblue">Login As : <%=ano %> </h3>
<br><hr><br>
 <div class="container">
 	 <br>
 	 <a href="showprofile.jsp">Show Profile</a> ||
 	<a href="changepassword.jsp">Change Password</a> ||
 	<a href="request.jsp">Send Request or Complaint</a> ||
 	<a href="viewtaxes.jsp">Show Taxes</a> ||
 	<a href="showmeetings.jsp">Show Meetings Date</a> ||
 	<a href="logout.jsp">Logout</a> ||
 </div>
</div>
</body>
</html>