<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
	<title>About Us</title>
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
		<style>
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
		.us_wrapper p{
		font: inherit;
		line-height: 23px;
		}
		</style>
	</head>
		<jsp:include page="header.jsp" />
		<div class="us_wrapper">
			<h1>Who we are?</h1>
			<p>We are students of SASTRA University. We are trying bring awareness among Indian youth population about the elections and other political events. This initiative is 
			taken under national interest. The information displayed in the website is taken from the government websites</p>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
</html>
	