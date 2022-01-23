<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Request or Complaint</title>
<link rel="stylesheet" href="bootstrap.min.css">
</head>
<body>
<div class="container">
    <br><br><h2>Request or Complaint Form</h2><br><hr><br>
    <div class="container">
        <form name="frm" method="post" action="SendReq">
            <table>
            <tr>
                    <td>Aadhar</td>
                    <td><input type="text" name="ano" class="form-control"></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="nm" class="form-control"></td>
                </tr>
                <tr>
                    <td>To</td>
                    <td>
                        <select name="to" class="form-control">
                            <option value="sachiv">Gram Sachiv
                            <option value="clerk">Clerk
                           </select>
                    </td>
                </tr>
                <tr>
                    <td>Message</td>
                    <td><input type="text" name="msg" class="form-control"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Send" class="form-control" ></td>
                </tr>
               
            </table>
        </form>
    </div>
</div>
</body>
</html>