<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 <script>
 $(function(){
	 $("#footer_subscribe_button").click(function(){
			var mail = $("#footer_subscribe_email").val();
			if(mail=="" || invalid(mail))
	        {
	          return false;
	        }
			$.ajax({
	            type: 'POST',
	            url: "/web/user/subscribe",
	            data: "email="+mail,
	            success: function(data){	            	
	                  if(data	 == "success"){
	                  	$(".subscribe_fields").hide();
	                  	$(".subscribe_thanks_text").show();
	                  	$.cookie("email_subscription","true");
	                  }
	                  else{
	                  	alert("Technical problem please try again later");
	                }
	            }
	            });
		});
	var subscribe_cookie = $.cookie("email_subscription");
	if(subscribe_cookie == 'true')
	{
		$(".footer_subscribe_div").hide();
	}
 });
 </script>
<footer id="footer">
 <section id="footerContents">
	<div id="copyright">
	    Copyright &copy;  2013-2014 
	 </div>
    <ul id="footerLinks">
        <li><a href="/web/contact">Contact Us-</a></li>
        <li><a href="/web/about">About Us-</a></li>
        <li><a href="/web/feedback/">Feedback </a></li>
    </ul>
    <div id="footerSocial">
	    <div class="SocialImage"><a href="http://www.facebook.com/knwurcandidate"><img src="/Resources/images/fb.png"/></a></div>
	    <div class="SocialImage"><a href="https://plus.google.com/104349164165785185482" rel="publisher"><img src="/Resources/images/gp.png"/></a></div>
	   <!-- <div class="SocialImage"><a href="http://www.twitter.com/"><img src="/Resources/images/t.png"/></a></div> -->
    </div>
    <div class="footer_subscribe_div">
    	<input type="text" class="subscribe_fields footer_subscribe_text" placeholder="Enter email address" name="footer_subscribe_email" id="footer_subscribe_email"/>
    	<input type="button" class="subscribe_fields footer_subscribe_button" name="footer_subscribe_button" id="footer_subscribe_button" value="Subscribe"/>
    	<span class="subscribe_thanks_text" style="display:none">Thanks for subscribing</span>
    </div>    
</section>
    
    <div id="madeWithLove">
          Proudly made in INDIA
    </div>
    
</footer>
<style>
.footer_subscribe_button{
	font: 14px opensans;
}
.footer_subscribe_text{
	width: 143px;
	height: 21px;
}
</style>
