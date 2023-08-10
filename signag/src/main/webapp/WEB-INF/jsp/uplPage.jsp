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
 <!-- <button onClick="pickerDialog()">show Picker Dialog</button>
 <script type="text/javascript" src="https://apis.google.com/js/api.js">
     </script>
 <script>
var clientId=844101305622-dnbiq24ep2g4oibhgnt03oibu6g84p51.apps.googleusercontent.com
var key ='AIzaSyAvtV-h0ptKYGqCsaR4dbEX3xJb-sM0vk0'
var project_id= '844101305622'
var oauthToken
var pickerApiLoaded=false
// scope for google drive
var scope = "https://www.googleapis.com/auth/drive.file*

	function pickerDialog(){
   		loadPicker()
}

function loadPicker(){
    gapi.load ('auth',{'callback':onAuthApiLoad})
    gapi.load 'picker',{'callback' :onPickerApiLoad})
}
function onAuthApiLoad (){
    window.gapi.auth.authorize({
        'client_id':clientId,
        'scope' : scope,
        'immediate':false
    },
    handleAuthResult
    )
}
function onPickerApiLoad()
{
	pickerApiLoaded=true
	createPicker()
	}
function handleAuthResult(authResult){
    // access token
    if(authResult && !authResult.error){
      oauthToken = authResult. access_token
      createPicker()
     }
}

function createPicker()
{
	if(pickerApiloaded && oauthToken)
		     var view = new google.picker.View(google.picker.ViewId.DOCS)
		     view.setMimeTypes('image/png,image/jpeg,image/jpg')
		     var picker = new google.picker.PickerBuilder()
		                                                
		      .enableFeature (google.picker.Feature.NAV_HIDDEN)
		      .enableFeature (google.picker.Feature.MULTISELECT_ENABLED)
		      .setAppId(project_id)
		      .setoAuthToken(oauthToken)
		      .addView (view)
		      .addView(new google.picker.DocsUploadview())
		      .setDeveloperKey(key)
		      .setCallback(pickerCallback)
		      .build()
		    picker.setvisible(true)
		    
		    
}
}
function  pickerCallback(data)
{
	if(data.action==google.picker.Action.PICKED)
		{
		var field=data.docs[0].id
        alert("The user has selected"+ field)
		}
		}

     </script>-->
<style>
.login {
    width: 600px;
    overflow: hidden;
    margin: auto;
    margin: 20 0 0 450px;
    padding: 50px;
    background: #ffffff;
    border-radius: 15px;
}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.button {
  background-color: #1976d2;
  border: none;
  color: white;
  padding:  10px 24px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
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
<div align="center">
<h2 style="color:#ffffff">Upload Installables</h2>
<br>
<div class="login">
<h3>
<form:form action="/next">
   <h5 style="text-align: center;">Choose Device Type:
     <select  id="fileTypeSelect" name="fileTypeSelect" onchange="showFileInput();show()">
        <option id="types" value="android">Android</option>
        <option id="types" value="windows">Windows</option>    
    </select></h5>
    <h4 style="color:red"> </h4>
    <br>
    
    <svg onFocus="fileman()" xmlns="http://www.w3.org/2000/svg" width="51" height="51" fill="currentColor" class="bi bi-folder" viewBox="0 0 16 16" id="IconChangeColor"> <path d="M.54 3.87.5 3a2 2 0 0 1 2-2h3.672a2 2 0 0 1 1.414.586l.828.828A2 2 0 0 0 9.828 3h3.982a2 2 0 0 1 1.992 2.181l-.637 7A2 2 0 0 1 13.174 14H2.826a2 2 0 0 1-1.991-1.819l-.637-7a1.99 1.99 0 0 1 .342-1.31zM2.19 4a1 1 0 0 0-.996 1.09l.637 7a1 1 0 0 0 .995.91h10.348a1 1 0 0 0 .995-.91l.637-7A1 1 0 0 0 13.81 4H2.19zm4.69-1.707A1 1 0 0 0 6.172 2H2.5a1 1 0 0 0-1 .981l.006.139C1.72 3.042 1.95 3 2.19 3h5.396l-.707-.707z" id="mainIconPathAttribute"></path> </svg>
<svg onFocus="drive()"  role="img" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg" id="IconChangeColor" height="51" width="51"><title>Google Drive</title><path d="M12.01 1.485c-2.082 0-3.754.02-3.743.047.01.02 1.708 3.001 3.774 6.62l3.76 6.574h3.76c2.081 0 3.753-.02 3.742-.047-.005-.02-1.708-3.001-3.775-6.62l-3.76-6.574zm-4.76 1.73a789.828 789.861 0 0 0-3.63 6.319L0 15.868l1.89 3.298 1.885 3.297 3.62-6.335 3.618-6.33-1.88-3.287C8.1 4.704 7.255 3.22 7.25 3.214zm2.259 12.653-.203.348c-.114.198-.96 1.672-1.88 3.287a423.93 423.948 0 0 1-1.698 2.97c-.01.026 3.24.042 7.222.042h7.244l1.796-3.157c.992-1.734 1.85-3.23 1.906-3.323l.104-.167h-7.249z" id="mainIconPathAttribute"></path></svg>
    <!-- <p> Upload File: <input type="file" id="file" required="true"  name="file"  ></p>-->
    <script>
    var k=0;
    function fileman()
	{
		k=1;
		 if (fileTypeSelect.value === 'android') 
			 {
		androidInput.style.display = 'block';
			 }
		 else
			 {
			 windowsInput.style.display = 'block';
			 }
	}
    function drive()
	{
    	 if (fileTypeSelect.value === 'android') 
		 {
    		 document.getElementById("android").value="";
	androidInput.style.display = 'none';
	document.getElementById("success").innerHTML="";
		document.getElementById("buta").style.display='none';
		document.getElementById("fileuploada").style.display='none';
		document.getElementById("submita").style.display='none';
		
		
		 }
	 else
		 {
		 document.getElementById("windows").value="";
		 windowsInput.style.display = 'none';
		 document.getElementById("success").innerHTML="";
			document.getElementById("butw").style.display='none';
			document.getElementById("fileuploadw").style.display='none';
			document.getElementById("submitw").style.display='none';
			
		
		 }
	}
    </script>
    <div  id="androidInput" style="display: none;padding-left: 40px">
        <h5>Select .apk File:
        <input type="file" name="android" id="android" accept=".apk" required="true"></h5>
    </div>

    <div  id="windowsInput" style="display: none;padding-left: 40px">
        <h5 style="text-align: center;">Select .exe File:
        <input type="file" name="windows" id="windows" accept=".msi,.exe" required="true"></h5>
    </div>

    <script>
    
    //androidInput.style.display = 'block';
        function showFileInput() {
            var fileTypeSelect = document.getElementById('fileTypeSelect');
            var androidInput = document.getElementById('androidInput');
            var windowsInput = document.getElementById('windowsInput');
           if(k===1)
        	   {
        	   
            if (fileTypeSelect.value === 'android') {
            	
                androidInput.style.display = 'block';
                windowsInput.style.display = 'none';
                
            } else if (fileTypeSelect.value === 'windows') {
                androidInput.style.display = 'none';
                windowsInput.style.display = 'block';
            }
        }
        }
    </script>
    <br>
    <a class="button" id="buta"  onClick="move()">Upload</a>
    <a class="button" id="butw"  onClick="win()">Upload</a></h3>
    <br/><br>
    <script>
    function show() {
    	document.getElementById("buta").style.display='none';
    	document.getElementById("butw").style.display='none';
    	document.getElementById("fileuploada").style.display='none';
    	document.getElementById("fileuploadw").style.display='none';
       if(k===1)
    	   {
    	   
        if (document.getElementById('fileTypeSelect').value === 'android') {
        	
            document.getElementById("buta").style.display='none';
            document.getElementById("fileuploada").style.display='none';
            document.getElementById("windows").value="";
            
            
          
        } else if (document.getElementById('fileTypeSelect').value === 'windows') {
          
            document.getElementById("butw").style.display='none';
            document.getElementById("fileuploadw").style.display='none';
            document.getElementById("android").value="";
        }
    }
    }
    </script>
    <div id="fileuploada"  class="w3-light-grey">
  <div id="myBar" class="w3-container w3-green w3-center" style="width:20%">0%</div>
</div>
<div id="fileuploadw"  class="w3-light-grey">
  <div id="myBarw" class="w3-container w3-green w3-center" style="width:20%">0%</div>
</div>
    <script>
    
    //if((document.getElementById("android").files.length)  ===0)
    	//{
    	
    	
    	  
    	document.getElementById("buta").style.display='none';
    	 
           	 document.getElementById("fileuploada").style.display='none';
           	document.getElementById("butw").style.display='none';
       	 
         	 document.getElementById("fileuploadw").style.display='none';
         
           	
    	var c=0;
    	var b=0;
    	//}

    document.getElementById("android").addEventListener('change',()=>
    {
    	document.getElementById("buta").style.display='none';
    	    	if(document.getElementById("android").files.length===0)
    		{
    		document.getElementById("buta").style.display='none';
    		//document.getElementById("myBar").style.width=20%;
    		 document.getElementById("success").innerHTML="";
    		}
    	else
    		{
    		document.getElementById("buta").style.display='inline-block';
    		document.getElementById("windows").removeAttribute('required');
    		document.getElementById("fileuploada").style.display='block';
    		
    		}
    });
    document.getElementById("windows").addEventListener('change',()=>
    {
    	document.getElementById("butw").style.display='none';
    	    	if(document.getElementById("windows").files.length===0)
    		{
    		document.getElementById("butw").style.display='none';
    		//document.getElementById("myBar").style.width=20%;
    		 document.getElementById("success").innerHTML="";
 	  		
    		}
    	else
    		{
    		document.getElementById("butw").style.display='inline-block';
    		document.getElementById("android").removeAttribute('required');
    		document.getElementById("fileuploadw").style.display='block';
    		}
    });
    function move() {
    	c=1;
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
    	      if(width===100)
    	    	  {
    	    	 
    	  		  document.getElementById("success").innerHTML="Application successfully uploaded to cloud!";
    	  		document.getElementById("buta").style.display='none';
    	  		document.getElementById("submit").style.display='inline-block';
    	  		
    	  		document.getElementById("fileTypeSelect").disabled=true;
    	  		
    	  		document.getElementById("android").disabled=true;
    	  		
    	  		 
    	  		
    	    	  }
    	    }
    	  }
    	}
    if(c===1)
	{
    	
	document.getElementById("submit").style.display='inline-block';
	 console.log(document.getElementById("submit"));
	
	}
    function win() {
        c=2;
    	var elem = document.getElementById("myBarw");
    	  var width = 20;
    	  var id = setInterval(frame, 10);
    	  function frame() {
    	    if (width >= 100) {
    	      clearInterval(id);
    	    } else {
    	      width++; 
    	      elem.style.width = width + '%'; 
    	      elem.innerHTML = width * 1  + '%';
    	      if(width===100)
    	    	  {
    	    	  
    	  		  document.getElementById("success").innerHTML="Application successfully uploaded to cloud!";
    	  		document.getElementById("butw").style.display='none';
    	  		document.getElementById("submitw").style.display='inline-block';
    	  		
    	  		 document.getElementById("fileTypeSelect").disabled=true;
    	  		document.getElementById("windows").disabled=true;
    	  		
    	  		
    	    	  }
    	    }
    	  }
    	}
    if(c===2)
	{
    	
	document.getElementById("submitw").style.display='inline-block';
	 console.log(document.getElementById("submitw"));
	
	}
    </script>

   
    <p id="success"></p>
    <br><br>
    <input type="submit" id="submit"  onclick="and()" value="Next"/>
    <input type="submit" id="submitw" onclick="wind()" value="Next"/>
     <script>
    
    
    document.getElementById("submit").style.display='none';
    document.getElementById("submitw").style.display='none';
    console.log(document.getElementById("submit"));
    </script>
    <script>
    function and()
    {
    	document.getElementById("android").disabled=false;
    }
    function wind()
    {
    	document.getElementById("windows").disabled=false;
    }
    </script>
</form:form>

</div>
<br>
<button id="button"  onclick="history.back()">Back</button>

</div>

</body>
</html>