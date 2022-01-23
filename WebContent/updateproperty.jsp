<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Property</title>
<link rel="stylesheet" href="bootstrap.min.css">
</head>
<body>
<div class="container">
<br><br>
<h2>Update Property Form</h2>
<br><hr><br>
<div class="container">
<form name="frm" method="post" action="UpdateProperty">
<table>
<tr>
<td>Property Number</td>
<td><input type="type" name="pno" class="form-control"></td>
</tr>
<tr>
<td>Aadhar Number of Current Holder</td>
<td><input type="type" name="chano" class="form-control"></td>
</tr>
<tr>
<td>Aadhar Number of New Holder</td>
<td><input type="type" name="nhano" class="form-control"></td>
</tr>

<tr>
<td>New Holder Name</td>
<td><input type="type" name="nnm" class="form-control"></td>
</tr>

<tr>
<td></td>
<td><input type="submit" value="Update" class="form-control"></td>
</tr>
</table>
</form>
</div>
</div>
</body>
</html>