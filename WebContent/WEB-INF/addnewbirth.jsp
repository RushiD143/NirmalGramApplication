<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Birth Registration</title>
<link rel="stylesheet" href="bootstrap.min.css">
</head>
<body>
<div class="container">
    <br><br><h2>New Birth Registration</h2><br><hr><br>
    <div class="container">
       <br>
       <form name="frm" method="POST" action="AddBirth">
         <table>
             <tr>
                 <td>Name </td>
                 <td><input type="text" name="nm" class="form-control"></td>
             </tr>
             <tr>
                <td>Gender</td>
                <td>
                <input type="radio" name="gen" value="male"> Male
                <input type="radio" name="gen" value="female"> Female
                </td>
            </tr>
             <tr>
                <td>Baby Information</td>
                <td><input type="text" name="info" class="form-control"></td>
            </tr>
            <tr>
                <td>Place</td>
                <td><input type="text" name="place" class="form-control"></td>
            </tr>
            <tr>
                <td>Date</td>
                <td><input type="text" name="dt" class="form-control"></td>
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