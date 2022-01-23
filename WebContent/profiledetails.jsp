<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile Details</title>
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
<th>Mobile 
<th>Age
<th>Gender

</tr>
<%
Connection con;
PreparedStatement pst;
ResultSet rs;


try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nirmalgram?user=root&password=shubham");
	pst=con.prepareStatement("select * from regpersonal where aadhar=?;");
	pst.setString(1,ano);
	rs=pst.executeQuery();
	while(rs.next())
	{
		%>
		<tr>
		<td><%=rs.getString("aadhar") %>
	    <td><%=rs.getString("mobile") %>
	    <td><%=rs.getInt("age") %>
	    <td><%=rs.getString("gender") %>
	
</table>

<div class="containner">
<br><br>

<table class="table table-bordered table-hover">
<tr style="background-color:azure">
<th>Security Question
<th>Answer
</tr>

<tr>
<td><%=rs.getString("sqque") %>
<td><%=rs.getString("ans") %>
</tr>

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