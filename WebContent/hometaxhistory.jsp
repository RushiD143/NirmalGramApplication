<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Property Number</title>
<link rel="stylesheet" href="bootstrap.min.css">
</head>
<body>
<div class="container">
<br><br><h2>Tax Result</h2><br><hr><br>
<%
String pno=request.getParameter("pno");
String year="Not Found";
double tax=0.0;
%>
<table class="table table-bordered table-hover">
<tr style="background-color:azure">
<th>Property Number
<th>Tax Amount
<th>Tax Year
</tr>
<% 
Connection con;
PreparedStatement pst;
ResultSet rs;
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nirmalgram?user=root&password=shubham");
	pst=con.prepareStatement("select * from home_tax where prop_no=?;");
	pst.setString(1,pno);
	rs=pst.executeQuery();
	while(rs.next())
	{
		%>
		<tr>
		<td><%=rs.getString("prop_no")%></td>
		<td><%=rs.getDouble("tax")%></td>
		<td><%=rs.getString("year")%></td>
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
</div>

</body>
</html>