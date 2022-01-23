<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Taxes</title>
<link rel="stylesheet" href="bootstrap.min.css">

</head>
<body>
<div class="container">
<br><br>
<h2>Add Taxes</h2>
<br><hr><br>
<div class="container">
<form action="AddHomeTax" method="post">
<table>
<tr>
<td>Property Number</td>
<td><input type="text" name="pno" class="form-control" required></td>
</tr>
<tr>
<td>Tax</td>
<td><input type="text" name="tax" class="form-control"></td>
</tr>
<tr>
<td>Year</td>
<td><input type="text" name="yr" class="form-control"></td>
</tr>
<tr>
<tr>
<td></td>
<td><input type=submit value="Add Tax" name="addtax" class="form-control"></td>
</tr>
</table>
</form>

</div>
</div>
</body>
</html>