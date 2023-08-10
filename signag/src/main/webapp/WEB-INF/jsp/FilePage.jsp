<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Jio Signage</title>
</head>
<body>
<div align="center">
<h3>
<form:form action="/login">
<h2 style="color: #512DA8">Jio Signage</h2>
<input type="radio" id="serial"  name="select" value="serial">
<label for="serial">serial</label>
<input type="radio" id="file"  name="select" value="file">
<label for="file">file</label>
<br>
<br>
<input type="file" id="myfile" name="myfile">
<input type="submit" value="Submit"/>
</form:form>
</h3>
</div>

</body>
</html>