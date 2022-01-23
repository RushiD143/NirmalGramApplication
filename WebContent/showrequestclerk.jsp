<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Complaints/Requests</title>
<link rel="stylesheet" href="bootstrap.min.css">
</head>
<body>
<div class="container">
<h2>Show Complaints/Requests</h2><br>
<hr>


<table class="table table-bordered table-hover">
<tr style="background-color:azure">
<th>Name
<th>Message
<th>Date
</tr>
<%
Connection con;
PreparedStatement pst;
ResultSet rs;


try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nirmalgram?user=root&password=shubham");
	pst=con.prepareStatement("select name,message,dt from request where torequest='clerk';");
	rs=pst.executeQuery();
	while(rs.next())
	{
		%>
		<tr>
		<td><%=rs.getString("name") %>
	    <td><%=rs.getString("message") %>
	    <td><%=rs.getString("dt") %>
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
</div>
</body>
</html>