<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
	<title>Contact Us</title>
	<head>
			<link rel="stylesheet" type="text/css" href="/Resources/CSS/reset.css">
		<link rel="stylesheet" type="text/css" href="/Resources/CSS/Map.css">
		<link rel="stylesheet" type="text/css" href="/Resources/CSS/header3.css">
		<link rel="stylesheet" type="text/css" href="/Resources/CSS/CandidatePage.css">
		<link rel="stylesheet" type="text/css" href="/Resources/CSS/footer.css">
		<link rel="stylesheet" type="text/css" href="/Resources/CSS/SuggestionBox.css">
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
		<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
		<script src="/Resources/scripts/mapPlugin.js"></script>
		<script type="text/javascript" src="/Resources/scripts/analytics.js"></script>
		<style type="text/css">
		.us_wrapper{
		width: 900px;
		margin: 35px auto;
		height: auto;
		font: inherit;
		font-family: raleway;
		}
		.us_wrapper h1{
		font: inherit;
		font-weight: bold;
		font-size: 26px;
		margin: 0 0 10px 0;
		}
		.us_wrapper h2{
		font: inherit;
		font-weight: italic;
		font-size: 18px;
		margin: 10px 0 10px 0;
		}
		.us_wrapper p{
		font: inherit;
		}
		span.contact{
		font-weight: bold;
		}
		.contact-img{
		width: 65px;
		height: 47px;
		display: inline-block;
		margin: 0 15px 0 0;
		}
		.contact-email-img{
		background-image: url("/Resources/images/icon-email.gif");
		}
		.contact-text{
		display:inline;
		position: absolute;
		margin: 15px 15px 0 76px;
		}
		.contact-mobile-img{
		background-image: url("/Resources/images/telephone.jpg");
		background-repeat: no-repeat;
		}
		.contact-wrapper{
		margin:10px 0 0 0;
		}
		</style>
	</head>
		<jsp:include page="header.jsp" />
		<div class="us_wrapper">
			<h1>We'd Love to Hear from You!</h1>
			<h2>Email us</h2>
			<div class="contact-wrapper">
			<div class="contact-text"><span class="contact">knowyourcandidate2014@gmail.com</span></div>
			<div class="contact-img contact-email-img"></div>
			</div>
			<h2>Call us</h2>
			<div class="contact-wrapper">
			<div class="contact-text"><span class="contact">+91 9791797049</span></div>
			<div class="contact-img contact-mobile-img"></div>
			</div>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
</html>
	