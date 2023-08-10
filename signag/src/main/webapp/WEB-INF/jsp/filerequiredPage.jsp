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
<body style="background-color:#4b9fc4";>
<style>
.login {
    width: 350px;
    overflow: hidden;
    margin: auto;
    margin: 20 0 0 450px;
    padding: 50px;
    background: #ffffff;
    border-radius: 15px;
}
</style>
<!--  <script>
document.getElementById("serialId").addEventListener('change',()=>
{
	if(document.getElementById("serialId").value)
		{
		document.getElementById("file").style.display='none';
		}
	else
		{
		document.getElementById("file").style.display='inline-block';
		}
});
	
</script>-->
<div align="center">
<h3>
<form:form action="/upload">
<h2 style="color: #ffffff;text-align: center;">Dashboard</h2>
<br>
<div class="login">
<p style="color:red">File or Serial Number required </p>
<p>Enter Serial Number: <span> <h3><input type="text"  id="serialId" name="serialId"  onfocus="onTextboxFocus()" onblur="onTextboxBlur()"/> </h3></span></p>
<p> or <p>
<!--  <h4>Choose File Type:
    <select id="fileTypeSelect" onchange="showFileInput()">
        <option value="excel">Excel</option>
        <option value="csv">CSV</option>
    </select>
    </h4>
    <div id="excelInput" style="display: none;">
        <h4>Upload Excel File:</h4>
        <input type="file" name="file" id="excelFileInput" accept=".xls, .xlsx">
    </div>

    <div id="csvInput" style="display: none;">
        <h4>Upload CSV File: 
        </h4><input type="file" name="csv" id="csvFileInput" accept=".csv">
    </div>

    <script>
    excelInput.style.display = 'block';
        function showFileInput() {
            var fileTypeSelect = document.getElementById('fileTypeSelect');
            var excelInput = document.getElementById('excelInput');
            var csvInput = document.getElementById('csvInput');

            if (fileTypeSelect.value === 'excel') {
                excelInput.style.display = 'block';
                csvInput.style.display = 'none';
            } else if (fileTypeSelect.value === 'csv') {
                excelInput.style.display = 'none';
                csvInput.style.display = 'block';
            }
        }
    </script>-->
    <script>
function onTextboxFocus() {
  const fileInput = document.getElementById('file');
  fileInput.disabled = true;
  fileInput.value="";
  document.getElementById("file-name").textContent = " ";
}
 
}

function onTextboxBlur() {
  const fileInput = document.getElementById('file');
	  fileInput.disabled = false; 
}
function onfileboxFocus() {
    const filInput = document.getElementById('serialId');
    filInput.disabled = true;
    filInput.value="";

  }

function onfileboxBlur() {
    const filInput = document.getElementById('serialId');
    filInput.disabled = false;
   
    
  }
 
    </script>
  

<p>Import File:<p>
<p></p>
<input type="file"  style="padding-left: 70px;" name="file"  id="file"  onfocus="onfileboxFocus()" onblur="onfileboxBlur()" accept=".xls, .xlsx,.csv">
<h3 id="file-name" style="color:#757575"></h3>
  <script>
        document.getElementById('file-name').textContent = " ";
        function updateFileName() {
            const fileInput = document.getElementById('file');
            const fileNameDisplay = document.getElementById('file-name');
            

            if (fileInput.files.length > 0) {
                fileNameDisplay.textContent = fileInput.files[0].name;
               
            } else {
                fileNameDisplay.textContent = 'No File Here';
            }
        }
    </script>

<br>
<input type="submit"  value="Submit"/>
<script>  


</script>
</div>
</form:form>

</h3>
</div>

</body>
</html>