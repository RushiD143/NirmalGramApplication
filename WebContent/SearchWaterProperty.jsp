<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Properties</title>
<link rel="stylesheet" href="bootstrap.min.css">
</head>
<body>
<br><br>
<%
String pno=request.getParameter("pno");
String name="Not Found",pdes="Not Found";
Connection con;
PreparedStatement pst;
ResultSet rs;
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nirmalgram?user=root&password=shubham");
	pst=con.prepareStatement("select * from properties where prop_no=?;");
	pst.setString(1,pno);
	rs=pst.executeQuery();
	if(rs.next())
	{
		pno=rs.getString("prop_no");
		name=rs.getString("name");
		pdes=rs.getString("description");
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
Holder Name : <%=name %>
<br>
Description : <%=pdes %>

</p>

</div>

</body>
</html>