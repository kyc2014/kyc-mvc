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
<style type="text/css">
input[type=text]
{
	width:200px;
}
#wrapper
{
	width:1000px;
	maring:0px auto;
}
</style>
</head>
<body>
<div id="wrapper">
<form method="POST" action="editorLogin.jsp">
<table>
<tr><td>Title : </td><td><input type="text" name="title" placeholder="Give a Brief Title"</td></tr>
<tr><td>Tempting Text : </td><td><input type="text" name="tempt" placeholder="Short Title to tempt the readers"</td></tr>
<tr><td>Picture(Choose a relevant picture) : </td><td><input type="file" name="picture"</td></tr>
<tr><td>Content :	</td><td><textarea rows="40" cols="300" name="content"></textarea></td></tr>
</table>
</form>
</div>
</body>
</html>