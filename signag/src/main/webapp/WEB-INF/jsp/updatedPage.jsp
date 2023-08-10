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
    /* Style for the tooltip popup */
        .tooltip {
            position: relative;
            display: inline-block;
        }

        .tooltip .tooltiptext {
            visibility: hidden;
            width: 400px;
            background-color: #555;
            color: #fff;
            text-align: center;
            border-radius: 6px;
            padding: 5px;
            position: absolute;
            z-index: 2;
            top:30px;
    
            left: 50%;
            transform: translateX(-50%);
            opacity: 0;
            transition: opacity 0.3s;
        }

        .tooltip:hover .tooltiptext {
            visibility: visible;
            opacity: 1;
        }
.login {
    width: 800px;
    overflow: hidden;
    margin: auto;
    margin: 20 0 0 450px;
    padding: 120px;
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
#button {
  background-color: #455A64;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
}
</style>
<button id="button" onclick="window.location.href='/logout';">Log Out</button>
<div class="sc-kFuwaP gSlDUV" id="boxer">
        <div class="sc-csCMJt ixchdn">
          <span class="sc-irTswW jplYCh">spring</span>
          </div>
          </div>
          <script>
document.getElementById("boxer").style.display='none';
console.log(document.getElementById("boxer"));
  function click()
  {
	  document.getElementById("boxer").style.display='inline-block';
	  console.log("yes");
  }
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
<!--  <td align="center"><input type="submit" name="id" value="${jio.serialNo}"/></td>-->
<td align="center"><div class="tooltip">
${jio.serialNo} 
<div class="tooltiptext">
          Serial No : ${jio.serialNo}<br>
          Path : ${jio.path}<br>
          Type : ${jio.type}<br>
          version: ${jio.version}<br>
            </div>
        </div></td>
<td align="center">${jio.path}</td>
<td align="center">${li}</td>
<!-- <td align="center"><button name="id" value="${jio.serialNo}">View</button></td>-->
</tr>
</form:form>
</c:forEach>
</table>
</div>

<br>

<button id="button" onclick="history.back()">Back</button>
</div>
</body>
</html>