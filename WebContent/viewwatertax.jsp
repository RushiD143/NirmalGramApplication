<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="bootstrap.min.css">
<title>View Home Tax</title>
</head>
<body>
<br>
<%
String ano=String.valueOf(session.getAttribute("aadhar"));
String pno=request.getParameter("pno");
double totaltax=0.0;;


Connection con;
PreparedStatement pst;
ResultSet rs;
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nirmalgram?user=root&password=shubham");
	
	pst=con.prepareStatement("select * from properties where prop_no=? and aadhar=?;");
	pst.setString(1,pno);
	pst.setString(2,ano);
	rs=pst.executeQuery();
	if(rs.next())
	{
	    pst=con.prepareStatement("select prop_no,SUM(tax) from water_tax where prop_no=?;");
       	pst.setString(1,pno);
	    rs=pst.executeQuery();
	    if(rs.next())
	    {
		pno=rs.getString("prop_no");
		totaltax=rs.getDouble(2);
		
	    }
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
<hr>
<br>
<a href="User.jsp">Back</a> ||
<a href="watertaxhistoryusers.html">Show Taxes History</a>
</div>
</body>
</html>