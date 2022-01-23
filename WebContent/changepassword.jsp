<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Password Change</title>
<link rel="stylesheet" href="bootstrap.min.css">
<script language="javascript">
function validate()
{
	p1=document.frm.newps.value
	p2=document.frm.confps.value
	if(p1!=p2)
		{
		alert("New passwords mismatched")
		document.frm.newps.value=""
		document.frm.confps.value=""
		return false
		}
	else
		return true
	}
</script>
</head>
<body>
<%
String ano=String.valueOf(session.getAttribute("aadhar"));
%>
<div class="container">
<h2>Change Password Form</h2>
<hr>
<form name="frm" method="post" action="ChangePass" onsubmit="return validate()">
<table width="450">
<tr>
<td>UserID
<td><input type="text" name="ano" value="<%=ano%>" class="form-control" readonly>
</tr>
<tr>
<td>Current Password
<td><input type="password" name="curps" class="form-control">
</tr>
<tr>
<td>New Password
<td><input type="password" name="newps" class="form-control">
</tr>
<tr>
<td>Confirm Password
<td><input type="password" name="confps" class="form-control">
</tr>
<tr>
<td><input type="Submit" value="Submit" class="form-control">
<td>
</tr>
</table>
</form>
</div>
</body>
</html>