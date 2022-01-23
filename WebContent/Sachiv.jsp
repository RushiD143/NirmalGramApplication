<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="bootstrap.min.css">
<title>Sachiv Home Page</title>
</head>
<body>
<% String ano=String.valueOf(session.getAttribute("aadhar"));%>
<div class="container">
<h3 style="color:darkblue">Information Officer
<br><h3 style="color:darkblue">Login As : <%=ano %> </h3>
<br><hr><br>
 <div class="container">
 	 <br>
 	 <a href="showprofile.jsp">Show Profile</a>||
 	 <a href="addnewpeople.jsp">New Residence People</a>||
 	 <a href="addnewproperty.jsp">New Property</a> ||
 	 <a href="SearchProperty.html">Housing Taxes</a> ||
 	 <a href="SearchWaterProperty.html">Water Taxes</a> ||
 	<a href="showpeoples.jsp">Show Peoples</a> ||
 	<a href="showpropertiesandholder.jsp">Show Properties And Holder</a> ||
 	<a href="showrequest.jsp">Show Request</a> ||
 	<a href="addnewbirth.jsp">New Birth</a> ||
 	<a href="adddeath.jsp">Death</a> ||
 	<a href="updateproperty.jsp">Update Property</a> ||
 	<a href="arriengemeeting.jsp">Arrienge Meeting</a>||
 	<a href="logout.jsp">Logout</a> ||
 	<a href="changepassword.jsp">ChangePassword</a> ||
 </div>
</div>
</body>
</html>