<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Meeting</title>
<link rel="stylesheet" href="bootstrap.min.css">
</head>
<body>
<div class="container">
<br><br><h2>Create Meeting</h2><br><hr><br>
<div class="container">
<form name="frm" method="post" action="AddMeeting">
<table>
<tr>
<td>Meeting Name</td>
<td><input type="text" name="mnm" class="form-control"></td>
</tr>
<tr>
<td>Agenda of Meeting</td>
<td><input type="text" name="desc" class="form-control"></td>
</tr>
<tr>
<td>Date</td>
<td><input type="text" name="dt" class="form-control" placeholder="DD-MM-YYYY"></td>
</tr>
<tr>
<td>Place</td>
<td><input type="text" name="place" class="form-control"></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="Create" class="form-control"></td>
</tr>
</table>
</form>
</div>
</div>
</body>
</html>