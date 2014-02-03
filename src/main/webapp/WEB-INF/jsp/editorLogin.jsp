<!DOCTYPE>
<html>
<head>
<title>Know Your Candidate Editor's Login</title>
<script type="text/javascript">
function check()
{
	var user,pass;
	 var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	user=document.getElementById("kyc_mail").value;
	if(re.test(user) && document.getElementById("kyc_pass"))
		alert("Invalid Mail-Id/Password");
	else	
		document.forms[0].submit();
}
</script>
</head>
<body>
<div id="wrapper">
<form method="POST" action="editorLogin.jsp">
<table>
<tr><td>UserName</td><td><input type="text" id="kyc_mail" placeholder="Email" /></td></tr>
<tr><td>Password</td><td><input type="password" id="kyc_pass" placeholder="Password" /></td></tr>
<tr><td></td><td><input type="button" value="submit" onclick="check();" /></td></tr>
</table>
</form>
</div>
</body>
</html>