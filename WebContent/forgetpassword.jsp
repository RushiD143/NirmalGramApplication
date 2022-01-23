<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Recover Password</title>
<link rel="stylesheet" href="bootstrap.min.css">
</head>
<body>
<div class="container">
<br>
<h2>Password Recovery Form</h2>
<hr>
<br><h4>Create New Password</h4>
<input type="text" name="npswd" class="form-control">
<br>
<input type="submit" value="Create">
<br>
<% 
String ano,sq,ans,npswd;
Connection con;
PreparedStatement pst;
ResultSet rs;

ano=request.getParameter("ano");
sq=request.getParameter("sec");
ans=request.getParameter("ans");
npswd=request.getParameter("npswd");

try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/nirmalgram?user=root&password=shubham");
	pst=con.prepareStatement("select * from regpersonal where aadhar=? and sqque=? and ans=?;");
	pst.setString(1,ano);
	pst.setString(2,sq);
	pst.setString(3,ans);
	rs=pst.executeQuery();
	if(rs.next())
	{
		
		pst=con.prepareStatement("update registration set pswd=? where aadhar=?;");
		pst.setString(1,npswd);
		pst.setString(2,ano);
		pst.executeUpdate();
		
	}
	else
	{
		out.println("<h3 style='color:red'>User identity failed</h3>");
	}
	con.close();
}
catch(Exception e)
{
	out.println(e);
}
%>
<br>
<a href="index.jsp">Home</a>
</div>
</body>
</html>