<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="bootstrap.min.css">
<title>View Home Tax</title>
<script language="Javascript" type="text/javascript">
            
            
            function createRequestObject() {
                var tmpXmlHttpObject;
                if (window.XMLHttpRequest) {
                        tmpXmlHttpObject = new XMLHttpRequest();
                } else if (window.ActiveXObject) {
                    tmpXmlHttpObject = new ActiveXObject("Microsoft.XMLHTTP");
                }
            
                return tmpXmlHttpObject;
            }
            
            
            var http = createRequestObject();
            
            function makeGetRequest() {
                no=document.frm.pno.value;
                http.open('get', 'viewhometax.jsp?pno=' + no);
                http.onreadystatechange = processResponse;
                http.send(null);
            }
            
            function processResponse() {
                if(http.readyState == 4){
                    var response = http.responseText;
                    document.getElementById('searchres').innerHTML = response;
                }
            }
            
            </script>
</head>
<body>
<br><br><br>
<%
String ano=String.valueOf(session.getAttribute("aadhar"));
%>
<div class="container">
<br><h3 style="color:darkblue">Your Aadhar Number : <%=ano %> </h3>
<br><hr><br>
<div class="container">
<form name="frm">
Property Number <input type="text" name="pno" required>
<input type="button" value="Search" onclick="makeGetRequest()">
</form>
<br><br>
<div id="searchres">
<img src="images/linked.gif">
<br><br><hr><br><br>
</div>
</div>
</div>
</body>
</html>