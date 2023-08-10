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
<body>
<div align="center">
<h3>
<form:form action="/login">
<h2 style="color: #512DA8">Jio Signage</h2>
<h5 style="color:red">serial id not found</h5>
Enter Serial Id: 
<input type="text" name="serialId"/>

<br/><br/>
<input type="submit" value="Submit"/>
</form:form>
</h3>
</div>

</body>
</html>