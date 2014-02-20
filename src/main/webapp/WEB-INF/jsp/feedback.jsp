	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<link rel="stylesheet" type="text/css" href="/Resources/CSS/reset.css" />
<link rel="stylesheet" type="text/css" href="/Resources/CSS/header3.css">
<link rel="stylesheet" type="text/css" href="/Resources/CSS/footer.css">
<link rel="stylesheet" type="text/css" href="/Resources/CSS/feedback.css">
<link rel="stylesheet" type="text/css" href="/Resources/CSS/prettyCheckable.css">
<script type="text/javascript" src="/Resources/Libraries/jquery-2.0.2.min.js"></script>
<script src="/Resources/Libraries/prettyCheckable.js"></script>

</head>

<body>

<jsp:include page="header.jsp" />
<script>
  $(document).ready(function()
  {
      $('input.MyClass').prettyCheckable();
      $('#male').parent().find('a').addClass('checked');
      $('#age').keydown(function(e)
      {
        c = e.keyCode;
        if((c>=48&&c<=57 || c>=96&&c<=105 )&&(!e.shiftKey))
        return true;
        if((c==190||c==8||c==9||c==46||c==32||(c>=37&&c<=40))&&(!e.shiftKey))
        return true;
        else
        return false;
      });
      
      $('.Textbox,.Ta,.Age').on('focusout',function()
      {
         
          var val = $.trim($(this).val());
          if(val!="")
          {
          
          if($(this).attr('id')=="email")
          {
            
              if(invalid(val))
                $(this).removeClass('normal').addClass('required');
              else
                $(this).removeClass('required').addClass('normal');
          }
          else
          $(this).removeClass('required').addClass('normal');
          
          }
          else
          {
            if($(this).hasClass('normal'))
              $(this).removeClass('normal').addClass('required');
          }
      });
$("#feedback_submit").click(function(e){
      	  e.preventDefault();
          var url = "/kyc-mvc/web/user/feedback";
          var name = $.trim($('#name').val());
          var mail = $.trim($('#email').val());
          var gender = $('input:radio[name="gender"]:checked').val();
          var age = $.trim($('#age').val());
          var fb = $.trim($('#feedback').val());
          var flag = true;
          if(name=="")
          {
            $('#name').removeClass('normal').addClass('required');
            flag= false;
          }
          if(mail=="" || invalid(mail))
          {
            $('#email').removeClass('normal').addClass('required');
            flag= false;

          }
          if(age=="")
          {
              $('#age').removeClass('normal').addClass('required');
              flag= false;
          }
          if(fb=="")
          {
            
            $('#feedback').removeClass('normal').addClass('required');
            flag=false;
          }
          if(flag==true)
          {       
                 $.ajax({
                  type: 'POST',
                  url: $("#feedback_form").attr("action"),
                  data: $("#feedback_form").serialize()+'&gender='+gender,
                  success: function(data){
                  		var obj = eval("("+data+")");
                  		alert(obj.state);
                        if(obj.state == "success"){
                        	$("#container").html("Thanks for your valuable feedback");
                        }
                        else if(obj.state == "Invalid Captcha")
                        	alert("Please retry entering captcha");
                        	Recaptcha.reload();
                      }
                  });
          }
          return false;
         
      });
  });
function invalid(mail)
{
   var regex = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
  if(regex.test(mail) === false)
    return true;
  else
    return false;
  }
function resetForm()
{
  $('.Ta,.Textbox,.Age').val("");
  $('#male').parent().find('a').addClass('checked');
  if($('#female').parent().find('a').hasClass('checked'))
  $('#female').parent().find('a').removeClass('checked');
}
</script>
<div id="container">
	  <span>Feedback</span>
	  <form id="feedback_form" action="/web/user/feedback">
      <input type="text" name="name" id="name" placeholder="Name" class="justify ours Textbox normal" spellcheck="false" autocomplete="off"/><br/>
      <input type="text" name="email" id="email" placeholder="E-mail" class="justify ours Textbox normal" spellcheck="false" autocomplete="off"/><br/>

      <div id="genderWrapper">
          <input type="radio" class="MyClass" id="male" value="Male" checked name="gender" data-color="gray" data-label="Male" data-customClass="styleRadio"/>
          <input type="radio" class="MyClass" id="female" name="gender" value="Female" data-color="gray" data-label="Female" data-customClass="styleRadio"/>
    </div>
    <input type="text" name="age" id="age" placeholder="Age" class="Age normal" spellcheck="false" autocomplete="off" maxlength="3" /><br/>
    <textarea name="feedback" id="feedback" placeholder="Write your feedback" class="Ta normal ours" rows="8" cols="40"  spellcheck="false" autocomplete="off"></textarea><br/>
  <script type="text/javascript" src="http://www.google.com/recaptcha/api/challenge?k=6Lc7au4SAAAAAEAJ_3BehGUGkzB5S8zs-zLA-a5Y"></script>
  <noscript>
     <iframe id="captcha" src="http://www.google.com/recaptcha/api/noscript?k=6Lc7au4SAAAAAEAJ_3BehGUGkzB5S8zs-zLA-a5Y" height="300" width="500" frameborder="0"></iframe><br>
     <textarea name="recaptcha_challenge_field" rows="3" cols="40"></textarea>
     <input type="hidden" name="recaptcha_response_field" value="manual_challenge">
  </noscript>
<button id="feedback_submit">Send</button>
</form>


</div>
 <jsp:include page="footer.jsp" /> 


</body>
</html>
