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
<form:form action="/user" method="get">
<h2 style="color: #512DA8">Jio Signage</h2>
Enter Serial Id:
<input type="text" name="serialId"/>
<br>
<input type="text" name="type"/>
<br>
<input type="text" name="key" value="ril"/>
<input type="submit" value="Submit"/>
</form:form>
<p></p>
</div>
</body>
</html>