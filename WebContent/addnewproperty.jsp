<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="bootstrap.min.css">
<title>New Property holder</title>
</head>
<body>
<div class="container">
<br><br>
<h2>New Property Holder</h2>
<br><hr><br>
<div class="container">
<form action="NewPro" method="post">
<table>
<tr>
<td>Property Number</td>
<td><input type="text" name="pno" class="form-control" required></td>
</tr>

<tr>
<td>Aadhar Number</td>
<td><input type="text" name="ano" class="form-control"></td>
</tr>

<tr>
<td>Name Of Holder</td>
<td><input type="text" name="nm" class="form-control"></td>
</tr>

<tr>
<td>Property Description</td>
<td><input type="text" name="pdesc" class="form-control"></td>
</tr>
<tr>
<td></td>
<td><input TYPE="submit" value="Save" class="form-control"></td>
</tr>
</table>
</form>

</div>
</div>
</body>
</html>