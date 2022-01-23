<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Residence People</title>
<link rel="stylesheet" href="bootstrap.min.css">
</head>
<body>
<div class="container">
<br><br>
<h2>New Residence form</h2>
<br><hr><br>
<div class="container">
	<form name="frm" method="post" action="AddNewResidence">
	<table>
	<tr>
	<td>Aadhar Number</td>
	<td><input type="text" name="ano" class="form-control"></td>
	</tr>
	<tr>
	<td>Name </td>
	<td><input type="text" name="nm" class="form-control"></td>
	</tr>
	<tr>
	<td>Mobile</td>
	<td><input type="text" name="mo" class="form-control"></td>
	</tr>
	<tr>
	<td>Address</td>
	<td><input type="text" name="addr" class="form-control"></td>
	</tr>
	<tr>
	<td></td>
	<td><input type="submit" value="Submit" class="form-control"></td>
	</tr>
	
	</table>
	
	</form>

</div>
</div>
</body>
</html>