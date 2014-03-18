<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 <script type="text/javascript" src="/Resources/scripts/menu.js"></script>
 <script type="text/javascript" src="/Resources/scripts/analytics.js"></script>
 <script type="text/javascript" src="/Resources/scripts/validator.js"></script>
 <script type="text/javascript" src="/Resources/scripts/jquery.cookie.js"></script>
<header>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1&appId=625588524166491";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<a href="/"><img src="/Resources/images/KYC%20Logo.png" id="logo" alt="Logo" /></a>
<!--<div id="logArea">
Login/Sign Up
</div>-->
<div id="socialButtons">
<div class="g-plusone" data-annotation="inline" data-width="90" data-href="https://plus.google.com/104349164165785185482"></div>
<div class="fb-like" data-href="https://www.facebook.com/knwurcandidate" data-width="60" data-share="true" data-height="25" data-colorscheme="light" data-show-faces="false" data-header="false" data-stream="false" data-show-border="true"></div>
</div>
</header>	
<div id="menuBar">
<div id="menuWrapper">
<div id="menuContainer">
<ul id="menuList">
<li><a href="/">Home</a></li>
<li>Assembly Members
<div id="assemblyCandidatesBox">
<div class="assemblyStatesListColumn">

<a href="/web/state/andhra-pradesh/" id=""><span class="stateSeal"><img src="/Resources/images/state/seals/andhra-pradhesh.png" /></span><span class="stateName">Andhra Pradesh</span></a>
<a href="/web/state/arunachal-pradesh/" id=""><span class="stateSeal"><img src="/Resources/images/state/seals/arunachal-pradhesh.png" /></span><span class="stateName">Arunachal Pradesh</span></a>
<a href="/web/state/assam/" id=""><span class="stateSeal"><img src="/Resources/images/state/seals/assam.png" /></span><span class="stateName">Assam</span></a>
<a href="/web/state/bihar/" id=""><span class="stateSeal"><img src="/Resources/images/state/seals/bihar.png" /></span><span class="stateName">Bihar</span></a>
<a href="/web/state/chhattisgarh/" id=""><span class="stateSeal"><img src="/Resources/images/state/seals/chhattisgarh.png" /></span><span class="stateName">Chhattisgarh</span></a>
<a href="/web/state/goa/" id=""><span class="stateSeal"><img src="/Resources/images/state/seals/goa.png" /></span><span class="stateName">Goa</span></a>
<a href="/web/state/gujarat/" id=""><span class="stateSeal"><img src="/Resources/images/state/seals/gujarat.png" /></span><span class="stateName">Gujarat</span></a>
<a href="/web/state/haryana/" id=""><span class="stateSeal"><img src="/Resources/images/state/seals/haryana.png" /></span><span class="stateName">Haryana</span></a>
<a href="/web/state/himachal_pradesh/" id=""><span class="stateSeal"><img src="/Resources/images/state/seals/himachal_pradhesh.png" /></span><span class="stateName">Himachal Pradesh</span></a>
<a href="/web/state/jammu-and-kashmir/" id=""><span class="stateSeal"><img src="/Resources/images/state/seals/jammu-and-kashmir.png" /></span><span class="stateName">Jammu and Kashmir</span></a>
</div>

<div class="assemblyStatesListColumn">
<div class="stateTitle">States</div>
<a href="/web/state/jharkhand/" id=""><span class="stateSeal"><img src="/Resources/images/state/seals/jharkhand.png" /></span><span class="stateName">Jharkhand</span></a>
<a href="/web/state/karnataka/" id=""><span class="stateSeal"><img src="/Resources/images/state/seals/karnataka.png" /></span><span class="stateName">Karnataka</span></a>
<a href="/web/state/kerala/" id=""><span class="stateSeal"><img src="/Resources/images/state/seals/kerala.png" /></span><span class="stateName">Kerala</span></a>
<a href="/web/state/madhya_pradesh/" id=""><span class="stateSeal"><img src="/Resources/images/state/seals/madhya_pradesh.png" /></span><span class="stateName">Madhya Pradesh</span></a>
<a href="/web/state/maharastra/" id=""><span class="stateSeal"><img src="/Resources/images/state/seals/maharashtra.png" /></span><span class="stateName">Maharashtra</span></a>
<a href="/web/state/manipur/" id=""><span class="stateSeal"><img src="/Resources/images/state/seals/manipur.png" /></span><span class="stateName">Manipur</span></a>
<a href="/web/state/meghalaya/" id=""><span class="stateSeal"><img src="/Resources/images/state/seals/meghalaya.png" /></span><span class="stateName">Meghalaya</span></a>
<a href="/web/state/mizoram/" id=""><span class="stateSeal"><img src="/Resources/images/state/seals/mizoram.png" /></span><span class="stateName">Mizoram</span></a>
<a href="/web/state/nagaland/" id=""><span class="stateSeal"><img src="/Resources/images/state/seals/nagaland.png" /></span><span class="stateName">Nagaland</span></a>
<a href="/web/state/odisha/" id=""><span class="stateSeal"><img src="/Resources/images/state/seals/odisha.png" /></span><span class="stateName">Odisha</span></a>
</div>

<div class="assemblyStatesListColumn">
<a href="/web/state/punjab/" id=""><span class="stateSeal"><img src="/Resources/images/state/seals/punjab.png" /></span><span class="stateName">Punjab</span></a>
<a href="/web/state/rajasthan/" id=""><span class="stateSeal"><img src="/Resources/images/state/seals/rajasthan.png" /></span><span class="stateName">Rajasthan</span></a>
<a href="/web/state/sikkim/" id=""><span class="stateSeal"><img src="/Resources/images/state/seals/sikkim.png" /></span><span class="stateName">Sikkim</span></a>
<a href="/web/state/tamil-nadu/" id=""><span class="stateSeal"><img src="/Resources/images/state/seals/tamil-nadu.png" /></span><span class="stateName">Tamil Nadu</span></a>
<a href="/web/state/tripura/" id=""><span class="stateSeal"><img src="/Resources/images/state/seals/tripura.png" /></span><span class="stateName">Tripura</span></a>
<a href="/web/state/uttar_pradesh/" id=""><span class="stateSeal"><img src="/Resources/images/state/seals/uttar_pradesh.png" /></span><span class="stateName">Uttar Pradesh</span></a>
<a href="/web/state/uttarakhand/" id=""><span class="stateSeal"><img src="/Resources/images/state/seals/uttarakhand.png" /></span><span class="stateName">Uttarakhand</span></a>
<a href="/web/state/west_bengal/" id=""><span class="stateSeal"><img src="/Resources/images/state/seals/west_bengal.png" /></span><span class="stateName">West Bengal</span></a>
<a href="" id=""><span class="stateSeal"></span><span class="stateName"></span></a>
<a href="" id=""><span class="stateSeal"></span><span class="stateName"></span></a>
</div>

<div class="assemblyStatesListColumn"><div class="stateTitle">Union Territories</div>
<a href="/web/state/andaman_and_nicobar_islands/" id=""><span class="stateSeal"><img src="/Resources/images/state/seals/andaman_and_nicobar_islands.png" /></span><span class="stateName">Andaman and Nicobar Islands</span></a> 
<a href="/web/state/chandigarh/" id=""><span class="stateSeal"><img src="/Resources/images/state/seals/chandigarh.png" /></span><span class="stateName">Chandigarh</span></a> 
<a href="/web/state/dadra_and_nagar_haveli/" id=""><span class="stateSeal"><img src="/Resources/images/state/seals/dadra_and_nagar_haveli.png" /></span><span class="stateName">Dadra and Nagar Haveli</span></a> 
<a href="/web/state/daman-and-diu/" id=""><span class="stateSeal"><img src="/Resources/images/state/seals/daman-and-diu.png" /></span><span class="stateName">Daman and Diu</span></a> 
<a href="/web/state/nct-delhi/" id=""><span class="stateSeal"><img src="/Resources/images/state/seals/nct-delhi.png" /></span><span class="stateName">National Capital Territory of Delhi</span></a> 
<a href="/web/state/lakshadweep/" id=""><span class="stateSeal"><img src="/Resources/images/state/seals/lakshadweep.png" /></span><span class="stateName">Lakshadweep</span></a>
<a href="/web/state/puducherry/" id=""><span class="stateSeal"><img src="/Resources/images/state/seals/puducherry.png" /></span><span class="stateName">Puducherry</span></a> 
<a href="" id=""><span class="stateSeal"></span><span class="stateName"></span></a>
<a href="" id=""><span class="stateSeal"></span><span class="stateName"></span></a>
<a href="" id=""><span class="stateSeal"></span><span class="stateName"></span></a>
</div>
</div>
</li>
<li><a href="/web/ministers/list/1">Parliament Members</a></li>
</ul>
<div style="clear:both"></div>
</div>
</div>
</div>
<div id="signupPop">
          <div id="signupPopCloseButton">&times;</div>
          <div style="clear:both" id="signupContainer">
            <div id="signupLeft">
              <div class="diffSignup"><img src="/Resources/images/gp.png" alt=""><span>Sign up using Google</span></div>
              <div class="diffSignup"><img src="/Resources/images/fb.png" alt=""><span>Sign up using Facebook</span></div>
              
            </div>
            <div id="signupRight">
              <form id="loginForm">
              <input type="text" placeholder="username" id="userName" spellcheck="false" class="signupFormBox">
              <input type="password" placeholder="password" id="password" spellcheck="false" class="signupFormBox">
              <input type="submit" id="loginButton" value="Sign in" class="signupFormButton">
              </form>
              <div id="createAccount">Create an account with us !!</div>
              <form id="signupForm" method="POST" action="/web/user/add">
              <input type="text" name="user_name" placeholder="username" spellcheck="false" class="signupFormBox">
              <input type="password" name="password" placeholder="password" spellcheck="false" class="signupFormBox">
              <input type="text" name="constituency" placeholder="constituency" spellcheck="false" class="signupFormBox">
              <div id="constituencySuggest"></div>
              <input type="text" name="email" placeholder="email" spellcheck="false" class="signupFormBox">
              <select name="date" id="date">
              </select>
              <select name="month" id="month">
              </select>
              <select name="year" id="year">
              </select>
              <select name="gender" id="gender">
              <option>Male</option>
              <option>Female</option>
              </select>
              <input type="submit" id="signupButton" value="Sign up" class="signupFormButton">
              </form>
              <div id ="accountExists">Already have an account ?</div>
            </div>
          </div>
</div>
<script type="text/javascript">
  (function() {
    var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
    po.src = 'https://apis.google.com/js/platform.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
  })();
</script>