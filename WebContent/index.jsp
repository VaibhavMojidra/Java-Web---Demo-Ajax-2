<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>  
<head>  
<script>  
var request;
function sendInfo(value)  
{  
	var v=value;  
	var url="GetSuggestion.jsp?val="+v;  
  	if(window.XMLHttpRequest)
  	{  
		request=new XMLHttpRequest();  
	}  
	else if(window.ActiveXObject)
	{  
		request=new ActiveXObject("Microsoft.XMLHTTP");  
	}  
  	try
  	{  
		request.onreadystatechange=getInfo;  
		request.open("GET",url,true);  
		request.send();  
	}
  	catch(e)
  	{
  		alert("Unable to connect to server");
	}  
}  
  
	function getInfo()
	{  
		if(request.readyState==4)
		{  
			var val=request.responseText;  
			document.getElementById('VaibhavDiv').innerHTML=val;
		}  
	}  
</script>  
</head>  
<body align="Center">
    <marquee><h1>Ajax Demo for Prachi Part 2</h1></marquee>  
  	<input type="text" onkeyup="sendInfo(document.getElementById('MyTB').value)" id='MyTB'>
  
<div id='VaibhavDiv'></div>
  
</body>  
</html>