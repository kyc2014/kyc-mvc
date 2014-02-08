<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 <script type="text/javascript" src="<c:out value="${pageContext.request.contextPath}"/>/Resources/scripts/menu.js"></script>
<header>
<a href="<c:out value="${pageContext.request.contextPath}"/>/"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/Images/KYC%20Logo.png" id="logo" alt="Logo" /></a>
<div id="logArea">
Login/Sign Up
</div>
</header>	
<div id="menuBar">
<div id="menuWrapper">
<div id="menuContainer">
<ul id="menuList">
<li><a href="<c:out value="${pageContext.request.contextPath}"/>/">Home</a></li>
<li>Assembly Candidates
<div id="assemblyCandidatesBox">
<div class="assemblyStatesListColumn">
<a href="<c:out value="${pageContext.request.contextPath}"/>/web/state/andaman-and-nicobar-islands/" id=""><span class="stateSeal"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/seals/andaman-and-nicobar-islands.png" /></span><span class="stateName">Andaman and Nicobar Islands</span></a> 
<a href="<c:out value="${pageContext.request.contextPath}"/>/web/state/andhra-pradesh/" id=""><span class="stateSeal"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/seals/andhra-pradhesh.png" /></span><span class="stateName">Andhra Pradesh</span></a>
<a href="<c:out value="${pageContext.request.contextPath}"/>/web/state/arunachal-pradesh/" id=""><span class="stateSeal"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/seals/arunachal-pradhesh.png" /></span><span class="stateName">Arunachal Pradesh</span></a>
<a href="<c:out value="${pageContext.request.contextPath}"/>/web/state/assam/" id=""><span class="stateSeal"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/seals/assam.png" /></span><span class="stateName">Assam</span></a>
<a href="<c:out value="${pageContext.request.contextPath}"/>/web/state/bihar/" id=""><span class="stateSeal"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/seals/bihar.png" /></span><span class="stateName">Bihar</span></a>
<a href="<c:out value="${pageContext.request.contextPath}"/>/web/state/chandigarh/" id=""><span class="stateSeal"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/seals/chandigarh.png" /></span><span class="stateName">Chandigarh</span></a> 
<a href="<c:out value="${pageContext.request.contextPath}"/>/web/state/chhattisgarh/" id=""><span class="stateSeal"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/seals/chhattisgarh.png" /></span><span class="stateName">Chhattisgarh</span></a>
<a href="<c:out value="${pageContext.request.contextPath}"/>/web/state/dadra-and-nagar-haveli/" id=""><span class="stateSeal"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/seals/dadra-and-nagar-haveli.png" /></span><span class="stateName">Dadra and Nagar Haveli</span></a> 
<a href="<c:out value="${pageContext.request.contextPath}"/>/web/state/daman-and-diu/" id=""><span class="stateSeal"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/seals/daman-and-diu.png" /></span><span class="stateName">Daman and Diu</span></a> 
</div>
<div class="assemblyStatesListColumn">
<a href="<c:out value="${pageContext.request.contextPath}"/>/web/state/nct-delhi/" id=""><span class="stateSeal"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/seals/nct-delhi.png" /></span><span class="stateName">National Capital Territory of Delhi</span></a> 
<a href="<c:out value="${pageContext.request.contextPath}"/>/web/state/goa/" id=""><span class="stateSeal"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/seals/goa.png" /></span><span class="stateName">Goa</span></a>
<a href="<c:out value="${pageContext.request.contextPath}"/>/web/state/gujarat/" id=""><span class="stateSeal"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/seals/gujarat.png" /></span><span class="stateName">Gujarat</span></a>
<a href="<c:out value="${pageContext.request.contextPath}"/>/web/state/haryana/" id=""><span class="stateSeal"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/seals/haryana.png" /></span><span class="stateName">Haryana</span></a>
<a href="<c:out value="${pageContext.request.contextPath}"/>/web/state/himachal-pradesh/" id=""><span class="stateSeal"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/seals/himachal-pradhesh.png" /></span><span class="stateName">Himachal Pradesh</span></a>
<a href="<c:out value="${pageContext.request.contextPath}"/>/web/state/jammu-and-kashmir/" id=""><span class="stateSeal"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/seals/jammu-and-kashmir.png" /></span><span class="stateName">Jammu and Kashmir</span></a>
<a href="<c:out value="${pageContext.request.contextPath}"/>/web/state/jharkhand/" id=""><span class="stateSeal"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/seals/jharkhand.png" /></span><span class="stateName">Jharkhand</span></a>
<a href="<c:out value="${pageContext.request.contextPath}"/>/web/state/karnataka/" id=""><span class="stateSeal"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/seals/karnataka.png" /></span><span class="stateName">Karnataka</span></a>
<a href="<c:out value="${pageContext.request.contextPath}"/>/web/state/kerala/" id=""><span class="stateSeal"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/seals/kerala.png" /></span><span class="stateName">Kerala</span></a>
</div>
<div class="assemblyStatesListColumn">
<a href="<c:out value="${pageContext.request.contextPath}"/>/web/state/lakshadweep/" id=""><span class="stateSeal"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/seals/lakshadweep.png" /></span><span class="stateName">Lakshadweep</span></a>
<a href="<c:out value="${pageContext.request.contextPath}"/>/web/state/madhya-pradhesh/" id=""><span class="stateSeal"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/seals/madhya-pradhesh.png" /></span><span class="stateName">Madhya Pradesh</span></a>
<a href="<c:out value="${pageContext.request.contextPath}"/>/web/state/maharastra/" id=""><span class="stateSeal"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/seals/maharashtra.png" /></span><span class="stateName">Maharashtra</span></a>
<a href="<c:out value="${pageContext.request.contextPath}"/>/web/state/manipur/" id=""><span class="stateSeal"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/seals/manipur.png" /></span><span class="stateName">Manipur</span></a>
<a href="<c:out value="${pageContext.request.contextPath}"/>/web/state/meghalaya/" id=""><span class="stateSeal"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/seals/meghalaya.png" /></span><span class="stateName">Meghalaya</span></a>
<a href="<c:out value="${pageContext.request.contextPath}"/>/web/state/mizoram/" id=""><span class="stateSeal"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/seals/mizoram.png" /></span><span class="stateName">Mizoram</span></a>
<a href="<c:out value="${pageContext.request.contextPath}"/>/web/state/nagaland/" id=""><span class="stateSeal"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/seals/nagaland.png" /></span><span class="stateName">Nagaland</span></a>
<a href="<c:out value="${pageContext.request.contextPath}"/>/web/state/orissa/" id=""><span class="stateSeal"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/seals/orissa.png" /></span><span class="stateName">Orissa</span></a>
<a href="<c:out value="${pageContext.request.contextPath}"/>/web/state/puducherry/" id=""><span class="stateSeal"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/seals/puducherry.png" /></span><span class="stateName">Puducherry</span></a> 
</div>
<div class="assemblyStatesListColumn">
<a href="<c:out value="${pageContext.request.contextPath}"/>/web/state/punjab/" id=""><span class="stateSeal"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/seals/punjab.png" /></span><span class="stateName">Punjab</span></a>
<a href="<c:out value="${pageContext.request.contextPath}"/>/web/state/rajasthan/" id=""><span class="stateSeal"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/seals/rajasthan.png" /></span><span class="stateName">Rajasthan</span></a>
<a href="<c:out value="${pageContext.request.contextPath}"/>/web/state/sikkim/" id=""><span class="stateSeal"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/seals/sikkim.png" /></span><span class="stateName">Sikkim</span></a>
<a href="<c:out value="${pageContext.request.contextPath}"/>/web/state/tamil-nadu/" id=""><span class="stateSeal"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/seals/tamil-nadu.png" /></span><span class="stateName">Tamil Nadu</span></a>
<a href="<c:out value="${pageContext.request.contextPath}"/>/web/state/tripura/" id=""><span class="stateSeal"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/seals/tripura.png" /></span><span class="stateName">Tripura</span></a>
<a href="<c:out value="${pageContext.request.contextPath}"/>/web/state/uttar-pradhesh/" id=""><span class="stateSeal"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/seals/uttar-pradhesh.png" /></span><span class="stateName">Uttar Pradesh</span></a>
<a href="<c:out value="${pageContext.request.contextPath}"/>/web/state/uttarakhand/" id=""><span class="stateSeal"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/seals/uttarakhand.png" /></span><span class="stateName">Uttarakhand</span></a>
<a href="<c:out value="${pageContext.request.contextPath}"/>/web/state/west-bengal/" id=""><span class="stateSeal"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/seals/west-bengal.png" /></span><span class="stateName">West Bengal</span></a>
</div>
</div>
</li>
<li><a href="<c:out value="${pageContext.request.contextPath}"/>/web/ministers/list/1">Parliamentary Candidates</a></li>
</ul>
<div style="clear:both"></div>
</div>
</div>
</div>
<div id="signupPop">
          <div id="signupPopCloseButton">&times;</div>
          <div style="clear:both" id="signupContainer">
            <div id="signupLeft">
              <div class="diffSignup"><img src="<c:out value="${pageContext.request.contextPath}" />/Resources/Images/gsignup.png" alt=""><span>Sign up using Google</span></div>
              <div class="diffSignup"><img src="<c:out value="${pageContext.request.contextPath}" />/Resources/Images/fb.png" alt=""><span>Sign up using Facebook</span></div>
              
            </div>
            <div id="signupRight">
              <form id="loginForm">
              <input type="text" placeholder="username" id="userName" spellcheck="false" class="signupFormBox">
              <input type="password" placeholder="password" id="password" spellcheck="false" class="signupFormBox">
              <input type="submit" id="loginButton" value="Sign in" class="signupFormButton">
              </form>
              <div id="createAccount">Create an account with us !!</div>
              <form id="signupForm">
              <input type="text" placeholder="username" spellcheck="false" class="signupFormBox">
              <input type="password" placeholder="password" spellcheck="false" class="signupFormBox">
              <input type="text" placeholder="constituency" spellcheck="false" class="signupFormBox">
              <input type="text" placeholder="email" spellcheck="false" class="signupFormBox">
              <input type="submit" id="signupButton" value="Sign up" class="signupFormButton">
              </form>
              <div id ="accountExists">Already have an account ?</div>
            </div>
          </div>
</div>
