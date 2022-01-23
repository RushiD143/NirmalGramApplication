<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Meetings Date</title>
<link rel="stylesheet" href="bootstrap.min.css">
</head>
<body>
<div class="container">
<br><br><h2>Meetings Dates</h2><br><Hr><br>
<div class="container">
<table class="table table-bordered table-hover">
<tr style="background-color:azure">
<th>Meeting Name
<th>Description
<th>Date
<th>Place
</tr>
<%
Connection con;
PreparedStatement pst;
ResultSet rs;


try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nirmalgram?user=root&password=shubham");
	pst=con.prepareStatement("select * from meetings;");
	rs=pst.executeQuery();
	while(rs.next())
	{
		%>
		<tr>
		<td><%=rs.getString("meeting_name") %>
	    <td><%=rs.getString("description") %>
	    <td><%=rs.getString("dt") %>
	    <td><%=rs.getString("place") %>
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
</div>
</body>
</html>