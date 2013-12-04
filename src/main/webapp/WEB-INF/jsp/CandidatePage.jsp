<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>

<html>
	<head>
		<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}"/>/Resources/CSS/reset.css">
		<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}" />/Resources/CSS/header.css">
		<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}" />/Resources/CSS/CandidatePage.css">
		<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}" />/Resources/CSS/footer.css">
		<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}" />/Resources/CSS/SuggestionBox.css">
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
		<script src="<c:out value="${pageContext.request.contextPath}" />/Resources/Libraries/jquery-2.0.2.min.js" /></script>
		<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
		<script src="<c:out value="${pageContext.request.contextPath}" />/Resources/scripts/mapPlugin.js"></script>
		<style>
		#map{
			width:350px;
			height:300px;
			position:absolute;
			border:1px solid #ccc;
			display:none;
			top:50%;
			left:50%;
			margin-top:-225px;
			margin-left:-225px;
		}
		#constituency:hover
		{
			cursor:pointer;
			text-decoration:underline;
		}		
		</style>
		<script>
		$(function()
		{
			var i=0;
			$('#constituency,#map').hover(function()
					{
							if(i==0)
							{
								i=1;
								initialize();
							}
							$('#map').css('display','block');
							
					},function(){
						$('#map').css('display','none');
					});
		});
		</script>
		
	</head>
	<body>	
	<!-- ********************************************************************************header **********************************************************************-->
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
<li>Home</li>
<li>Assembly Candidates</li>
<li>Parliamentary Candidates</li>
</ul>
<div style="clear:both"></div>
</div>
</div>
</div>
<!--*********************************************************************candidate page ***********************************************************************-->

	

		<div id="wrapperCP">
			<div id="containerCP" class="Cont">
				<div id="innerContainerCP" >
					<div id="topCP">
						<section id="wcandidateImageCP" class="col">
							<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/ministers/<c:out value="${candidate.name}" />.jpg" id="candidateImageCP">
						</section>
						<section id="candidateDetailsCP" class="col">
							<p id="nameCP">  <span id="name"><c:out value="${candidate.name}" /></span>    
							<p id="partyNameCP"><span id="value"><c:out value="${candidate.partyName}" /></span></p>
							<p id="genderCP"><span id="age">Age : <c:out value="${candidate.dob}" /></span> , <span id="gender">Gender : <c:out value="${candidate.gender}" /></span> </p>
							<p id="supporterCP"><span id="supporterCount"><c:out value="${candidate.supporters}" /></span><span> supporters</span><span><button id="supporterButton" value="Support">&#10003; Support</button></span></p>
							

						</section>
						<section id="wpartyImageCP" class="col"> 
							<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/party/<c:out value="${candidate.partyShortName}" />.png" alt="" id="partyImageCP">
						</section>
					
						
					</div>
					<hr id="topAndBottom" />
					<div id="bottomCP">
							
						  <div id="leftCP">
								<div id="firstBoxCP" class="BoxSettingCP">
									<table class="ContainerCP">
										<th class="FirstBoxTitle" >Position</th>
										<th class="FirstBoxTitle" >Educational Qualification</th>
										<tr>
											<td class="BoxContentCP" id="position">Minister , <span id="constituency"><c:out value="${candidate.constituency}" /><input type="hidden" id="ccode" value="<c:out value="${candidate.constituencyCode}" />" /></span></td>
											<div id="map"></div>
											<td class="BoxContentCP" id="education"><c:out value="${candidate.education}" /></td>
										</tr>
									</table>
								</div>
								<div id="secondBoxCP" class="BoxSettingCP">
								      <table class="ContainerCP">
								      	<th class="SecondBoxTitle">Past Positions</th>
								      		<tr>
								      			<td class="BoxContentCP" id="pastPositions"><c:out value="${candidate.previousPositions}" /></td>
								      		</tr>
								      </table>
								</div>
							</div>
					</div>
				</div>   
			</div>
		</div>
<!-- *********************************************************************************footer**********************************************************-->
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
					        <li><a href="#">Feedback </a></li>
					           
					    </ul>
					    <div id="footerSocial">
						    <div class="SocialImage"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/Images/fb.png"/></div>
						    <div class="SocialImage"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/Images/gp.png"/></div>
						    <div class="SocialImage"><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/Images/t.png"/></div>
						   
					    
					    </div>
			    </section>
    
	
		</footer>
	<div id="mask">
	</div>
	</body>
	
	
</html>
