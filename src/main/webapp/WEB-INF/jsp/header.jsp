<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<header>
<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/Images/KYC%20Logo.png" id="logo" alt="Logo" />
<div id="logArea">
Login/Sign Up
</div>
</header>
<div id="menuBar">
<div id="menuWrapper">
<div id="menuContainer">
<ul id="menuList">
<li><a href="<c:out value="${pageContext.request.contextPath}"/>/web/ministers/list/1">Home</a></li>
<li><a href="<c:out value="${pageContext.request.contextPath}"/>/web/mla/tamilnadu/list/1">Assembly Candidates</a>
<div id="assemblyCandidatesBox">
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