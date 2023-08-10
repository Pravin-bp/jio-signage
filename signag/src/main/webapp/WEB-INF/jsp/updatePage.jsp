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
<table>
<tr>
<th>Serial No</th>
<th>Model</th>
<th>Path</th>


</tr>
<c:forEach  items="${list}" var="jio">
<tr>
<td >${jio.serialNo}</td>
<td>${jio.type}</td>
<td>${jio.path}</td>

</tr>
<br>
</c:forEach>
</table>
</div>
</body>
</html>