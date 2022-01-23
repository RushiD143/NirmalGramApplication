<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Profile</title>
<link rel="stylesheet" href="bootstrap.min.css">
</head>
<body>
<% 
String ano = String.valueOf(session.getAttribute("aadhar"));
%>
<div class="container">
<h2>Profile Information</h2><br><%=ano %>
<hr>


<table class="table table-bordered table-hover">
<tr style="background-color:azure">
<th>Aadhar Number
<th>Name

</tr>
<%
Connection con;
PreparedStatement pst;
ResultSet rs;


try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nirmalgram?user=root&password=shubham");
	pst=con.prepareStatement("select aadhar,name from registration where aadhar=? and status='active';");
	pst.setString(1,ano);
	rs=pst.executeQuery();
	while(rs.next())
	{
		%>
		<tr>
		<td><%=rs.getString("aadhar") %>
	    <td><%=rs.getString("name") %>
		<%
	}
	
	
	con.close();
}
catch(Exception e)
{
	out.println(e);
}
%>
</table>
<div class="containner">
<br><br>
<a href="profiledetails.jsp">Show Personal Information</a>
<br>
</div>
</div>
</body>
</html>