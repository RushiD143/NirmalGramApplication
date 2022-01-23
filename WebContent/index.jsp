<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="bootstrap.min.css">
</head>
<body>
<div class="container">
<br>
<h2>Nirmal Gram Application</h2>
<br><hr><br>
<form name="frm" method="post" action="check">
<table>
<tr>
<td>Aadhar Number</td>
<td><input type="text" name="ano" class="form-control" required> </td>
</tr>
<tr>
<td>Password</td>
<td><input type="password" name="pswd" class="form-control" required> </td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="Login" class="form-control"></td>
</tr>
</table>
</form>
<br>
</div>
<div class="container">
<a href="newreg.html">Create New Account</a><br>
<a href="recoverpassword.html">Forget Password</a>
</div>
<br><br>
</body>
</html>
 