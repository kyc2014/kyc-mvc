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