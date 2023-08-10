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
<body style="background-color:#4b9fc4";>
<style>
.login {
    width: 700px;
    overflow: hidden;
    margin: auto;
    margin: 20 0 0 450px;
    padding: 15px;
    background: #ffffff;
    border-radius: 15px;
}
table, th, td {
  border:1px solid black;
}
.gSlDUV {
    position: absolute;
    width: 240px;
    height: 340px;
    display: flex;
    flex-direction: column;
    padding: 20px;
    border: 1px solid black;
    background-color: white;
    top: 90px;
    right: 40px;
    z-index: 5;
}
.ixchdn {
    height: 240px;
    display: flex;
    flex-direction: column;
    overflow: scroll;
}
.jplYCh {
    font-size: 18px;
    margin: 50px auto;
}
</style>
<div class="sc-kFuwaP gSlDUV" id="boxer">
        <div class="sc-csCMJt ixchdn">
          <span class="sc-irTswW jplYCh">
          Serial No : ${jk.serialNo}<br>
          Path : ${jk.path}<br>
          type : ${jk.type}<br>
          version: ${jk.version}<br>
          </span>
          </div>
          </div>
          <script>
</script>
<div align="center">
<h2 style="color: #ffffff">Jio Signage</h2>
<h3>Devices</h3>
<div class="login">
<table style="width:100%">
<tr>
<th>Serial No</th>
<th>Path</th>
<th>File</th>
<!-- <th>Action</th>-->
</tr>
<c:forEach  items="${list}" var="jio" >
<form:form action="/next/${jio.serialNo}">
<tr>
<td align="center"><input type="submit" name="id" value="${jio.serialNo}"/></td>
<td align="center">${jio.path}</td>
<td align="center">${li}</td>
<!-- <td align="center"><button name="id" value="${jio.serialNo}">View</button></td>-->
</tr>
</form:form>
</c:forEach>
</table>
</div>

           
<br>

</div>
</body>
</html>