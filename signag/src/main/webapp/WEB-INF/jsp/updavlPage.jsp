<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
      <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>jio signage</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
<div align="center">
<h2>Hello!</h2>
<h3>Device details</h3>
<p>Serial Number : ${jio.serialNo}</p>
<p style="color:#4caf50" id="avl">${u}</p>
<p id="path">path:  <a href="path">${jio.path}</a> </p>
<script>
var e=document.getElementById("avl").value;
if(e==="Update is available")
	{
	 path.style.display = 'none';
	}
else
	{
	path.style.display = 'block';
	}
</script>
<p></p>
</div>
</body>
</html>