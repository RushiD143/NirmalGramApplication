<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Total Tax</title>
<link rel="stylesheet" href="bootstrap.min.css">
</head>
<body>

<%
String pno=request.getParameter("pno");
double totaltax=0.0;

Connection con;
PreparedStatement pst;
ResultSet rs;
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nirmalgram?user=root&password=shubham");
	pst=con.prepareStatement("select prop_no,SUM(tax) from home_tax where prop_no=?;");
	pst.setString(1,pno);
	rs=pst.executeQuery();
	if(rs.next())
	{
		pno=rs.getString("prop_no");
		totaltax=rs.getDouble(2);
		
	}
	con.close();
}
catch(Exception e)
{
	out.println(e);
}
%>

<div class="container">
<h4>Search Result</h4>
<p style="color:purple;font-size:19px">

property Number : <%=pno%>
<br>
Total Tax : <%=totaltax %>
<br>


</div>
<br><br>
</body>
</html>