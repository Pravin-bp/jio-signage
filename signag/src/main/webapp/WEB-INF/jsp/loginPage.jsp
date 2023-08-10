<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


</head>
<body>
<style type="text/css">
.w3-light-grey, .w3-hover-light-grey:hover, .w3-light-gray, .w3-hover-light-gray:hover {
    color: #000!important;
    background-color: #f1f1f1!important;
}
.w3-green, .w3-hover-green:hover {
    color: #fff!important;
    background-color: #4CAF50!important;
}
body
{
   font-family: Arial;
  margin: 0;
  padding: 0;
  
    background-color:#4b9fc4;
    background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
}
.login{
        width: 382px;
        overflow: hidden;
        margin: auto;
        margin: 20 0 0 450px;
        padding: 80px;
        background: #ffffff;
        border-radius: 15px ;

}
h2{
    text-align: center;
    color: #277582;
    padding: 20px;
}
label{
    color:#010a0e87;
    font-size: 17px;
}
#Uname{
    width: 300px;
    height: 30px;
    /*border: none;
    border-radius: 3px;*/
    padding-left: 8px;
}
#Pass{
    width: 300px;
    height: 30px;
    /*border: none;
    border-radius: 3px;*/
    padding-left: 8px;

}
#log{
    width: 300px;
    height: 30px;
    background-color: #00638f;
    border-radius: 17px;
    padding-left: 7px;
   color: #fff


}
span{
    color: white;
    font-size: 17px;
}
.a{
    float: right;
    /*background-color: grey;*/
}
</style>
<c:url value="/login" var="login"/>


    <h1 style="color: #ffffff;text-align: center;">Jio Signage Application Management</h1><br>
    <div class="login">
    <form:form action="${login}">
        <label><b>Email Address
        </b>
        </label>
        <input type="email" name="username" id="Uname" placeholder="Username">
        <br><br>
        <label><b>Password
        </b>
        </label>
        <input type="Password" name="password" id="Pass" placeholder="Password">
        <br><br>
        <input type="submit" name="log" id="log" value="Log In">
        <br><br>
        <a style="float: left;" href="/register">Register for new User</a>
        <a class="a" href="/forget">Forgot Password</a>
        <br>
        <br>
 </form:form>
 </div>
 
</body>
</html>