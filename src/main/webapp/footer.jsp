<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<footer id="footer">
 <section id="footerContents">
	<div id="copyright">
	    Copyright &copy;  2013-2014 
	 </div>
    <ul id="footerLinks">
	<li><a href="#">About-</a></li>
        <li><a href="#">Contact Us-</a></li>
        <li><a href="#">PrivacyPolicy-</a></li>
        <li><a href="#">SiteMap-</a></li>
        <li><a href="/feedback/">Feedback </a></li>
           
    </ul>
    <div id="footerSocial">
	    <div class="SocialImage"><a href="http://www.facebook.com/knowyourcandidate"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/Images/fb.png"/></a></div>
	    <div class="SocialImage"><a href="http://www.google.com/"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/Images/gp.png"/></a></div>
	    <div class="SocialImage"><a href="http://www.twitter.com/"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/Images/t.png"/></div>
    </div>
</section>
    
    <div id="madeWithLove">
          Proudly made with <img src="<c:out value="${pageContext.request.contextPath}" />/Resources/Images/heart.svg"> in INDIA
    </div>
    
</footer>
