<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>jio signage</title>
</head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>
<script>
function move() {
  var elem = document.getElementById("myBar");   
  var width = 20;
  var id = setInterval(frame, 10);
  function frame() {
    if (width >= 100) {
      clearInterval(id);
    } else {
      width++; 
      elem.style.width = width + '%'; 
      elem.innerHTML = width * 1  + '%';
    }
  }
}
</script>
<style>
table, th, td {
  border:1px solid black;
}
</style>
<div align="center">
<form:form action="/next">
<h3>Devices</h3>
<table style="width:100%">
<tr>
<th>Type</th>
<th>File</th>
<th>Loading</th>
</tr>
<c:forEach  items="${set}" var="jio">
<tr>
<td align="center">${jio}</td>
<td align="center"><input type="file"  name="file" onClick="move()"></td>
<td><div class="w3-light-grey">
  <div id="myBar" class="w3-container w3-green w3-center" style="width:20%">0%</div>
</div>
</td>

</tr>
<br>
</c:forEach>
</table>
<br/>
<br/>
<input type="submit" value="next"/>
</form:form>
</div>