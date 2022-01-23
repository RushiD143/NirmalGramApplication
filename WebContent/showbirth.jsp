<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Birth</title>
<link rel="stylesheet" href="bootstrap.min.css">

</head>
<body>
<div class="container">
<br><br><h2>Show Birth Information</h2><br><hr><br>

<table class="table table-bordered table-hover">
<tr style="background-color:azure">
<th>Father Aadhar Number
<th>Name
<th>Gender
<th>Place
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
	pst=con.prepareStatement("select * from birth_death where status='birth';");
	rs=pst.executeQuery();
	while(rs.next())
	{
		%>
		<tr>
		<td><%=rs.getString("aadhar") %>
	    <td><%=rs.getString("name") %>
	    <td><%=rs.getString("gender") %>
	    <td><%=rs.getString("place") %>
	    <td><%=rs.getString("date") %>
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
<br>
</div>
</body>
</html>