<html>
<head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
<script>
$(function(){
	$("#feedback_submit").click(function(){
		$.ajax({
			type: 'POST',
			url: $("#feedback_form").attr("action"),
			data: $("#feedback_form").serialize(),
			success: function(data){
						alert(data);
					}
			});
	});
});
</script>
</head>

<body>

<div>
<form action="/kyc-mvc/web/user/feedback" method="post" id="feedback_form">
Name:<input type="text" name="name" id="name"/><br/>
Email:<input type="text" name="email" id="email"/><br/>
Age:<input type="text" name="age" id="age"/><br/>
Gender:<input type="text" name="gender" id="gender"/><br/>
Feedback:<textarea name="feedback" id="feedback"></textarea><br/>
  <script type="text/javascript"
     src="http://www.google.com/recaptcha/api/challenge?k=6Lc7au4SAAAAAEAJ_3BehGUGkzB5S8zs-zLA-a5Y ">
  </script>
  <noscript>
     <iframe src="http://www.google.com/recaptcha/api/noscript?k=6Lc7au4SAAAAAEAJ_3BehGUGkzB5S8zs-zLA-a5Y "
         height="300" width="500" frameborder="0"></iframe><br>
     <textarea name="recaptcha_challenge_field" rows="3" cols="40">
     </textarea>
     <input type="hidden" name="recaptcha_response_field"
         value="manual_challenge">
  </noscript>
<button id="feedback_submit">Submit</button>
</form>
</div>
</body>
</html>