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
     
      $('.age').keydown(function(e)
      {
        c = e.keyCode;
        if((c>=48&&c<=57 || c>=96&&c<=105 )&&(!e.shiftKey))
        return true;
        if((c==190||c==8||c==9||c==46||c==32||(c>=37&&c<=40))&&(!e.shiftKey))
        return true;
        else
        return false;
      });
      $("#feedback_submit").click(function(){
         $('#default').prettyCheckable('check');
          var url = "/kyc-mvc/web/user/feedback";
          var name = $.trim($('#name').val());
          var mail = $.trim($('#email').val());
          var sex = $('input:radio[name="sex"]:checked').val();
          var age = $.trim($('.age').val());
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
            console.log("in");
            $('#feedback').removeClass('normal').addClass('required');
            flag=false;
          }
          if(flag==true)
          {

                 var serial = "name="+name+"&mail="+mail+"&sex="+sex+"&age"+age;
                /*$.ajax({
                  type: 'POST',
                  url: url,
                  data:serial,
                  success: function(data){
                        alert(data);
                      }
                  });*/
          }
         
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
  });
function invalid(mail)
{
   var regex = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
  if(regex.test(mail) === false)
    return true;
  else
    return false;
  }
</script>
<div id="container">

      <input type="text" name="name" id="name" placeholder="Name" class="justify ours Textbox normal" spellcheck="false" autocomplete="off"/><br/>
      <input type="text" name="email" id="email" placeholder="E-mail" class="justify ours Textbox normal" spellcheck="false" autocomplete="off"/><br/>

      <div id="genderWrapper">
          <input type="radio" checked="true" class="MyClass" id="default" value="Male" name="sex" data-color="green" data-label="Male" data-customClass="styleRadio"/>
          <input type="radio" class="MyClass" name="sex" value="Female" data-color="green" data-label="Female" data-customClass="styleRadio"/>
    </div>
    <input type="text" name="age" id="age" placeholder="Age" class="Age normal" spellcheck="false" autocomplete="off" maxlength="3" /><br/>
    <textarea name="feedback" id="feedback" placeholder="Write your feedback" class="Ta normal ours" rows="8" cols="40"  spellcheck="false" autocomplete="off"></textarea><br/>
  <script type="text/javascript"

     src="http://www.google.com/recaptcha/api/challenge?k=6Lc7au4SAAAAAEAJ_3BehGUGkzB5S8zs-zLA-a5Y ">
  </script>
  <noscript>
     <iframe id="captcha" src="http://www.google.com/recaptcha/api/noscript?k=6Lc7au4SAAAAAEAJ_3BehGUGkzB5S8zs-zLA-a5Y "
         height="300" width="500" frameborder="0"></iframe><br>
     <textarea name="recaptcha_challenge_field" rows="3" cols="40">
     </textarea>
     <input type="hidden" name="recaptcha_response_field"
         value="manual_challenge">
  </noscript>
<button id="feedback_submit">Submit</button>

</div>
<<<<<<< HEAD
 <jsp:include page="footer.jsp" /> 

=======
>>>>>>> f272b26a2c3188fc0fc697fa819d947a20a81122
</body>
</html>
