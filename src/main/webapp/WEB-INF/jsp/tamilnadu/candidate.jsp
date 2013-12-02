<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>

<html>
	<head>
		<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}"/>/Resources/CSS/reset.css">
		<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}" />/Resources/CSS/header.css">
		<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}" />/Resources/CSS/CandidatePage.css">
		<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}" />/Resources/CSS/footer.css">
	</head>
	<body>	
	<!-- ********************************************************************************header **********************************************************************-->
	<header>
<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/Images/KYC%20Logo.png" id="logo" alt="Logo" />
<div id="smallMenu">
<div></div>
<div></div>
<div></div>
</div>
<div id="logArea">
<a href="">Login/Sign Up</a>
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
							<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/ id="candidateImageCP">
						</section>
						<section id="candidateDetailsCP" class="col">
							<p id="nameCP">  <span id="name"><c:out value="${candidate.name}" /></span>    <span id="partyNameCP"><span id="value"><c:out value="${candidate.party}" /></span></span></p>
							<p id="genderCP"><span id="age"><c:out value="${candidate.dob}" /></span> <span id="gender"><c:out value="${candidate.pob}" /></span> </p>
							<p id="supporterCP"><span id="supporterCount"><c:out value="${candidate.supporters}" /></span><span> supporters</span><span><button id="supporterButton" value="Support">&#10003; Support</button></span></p>
						</section>
						<section id="wpartyImageCP" class="col"> 
							<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/party/<c:out value="${candidate.party}"/>.png" alt="" id="partyImageCP">
						</section>
					
						
					</div>
					<hr id="topAndBottom" />
					<div id="bottomCP">
							
						  <div id="leftCP">
								<div id="firstBoxCP" class="BoxSettingCP">
									<table class="ContainerCP">
										<th class="FirstBoxTitle" >Position</th>
										<th class="FirstBoxTitle" >Education</th>
										<th class="FirstBoxTitle" >Mobile Number</th>
										<tr>
											<td class="BoxContentCP" id="position">MLA,Constituency</td>
											<td class="BoxContentCP" id="competingFor"><c:out value="${candidate.education}"/></td>
											<td class="BoxContentCP" id="competingFor"><c:out value="${candidate.mobile}"/></td>
										</tr>
									</table>
								</div>
								<div id="secondBoxCP" class="BoxSettingCP">
								      <table class="ContainerCP">
								      	<th class="SecondBoxTitle">Past Positions</th>
								      		<tr>
								      			<td class="BoxContentCP" id="achievements"></td>
								      			<td class="BoxContentCP" id="pastPositions"></td>

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
						    <div class="SocialImage"><img src="<c:out value="${pageContext.request.contextPath}"/>/fb.png"/></div>
						    <div class="SocialImage"><img src="<c:out value="${pageContext.request.contextPath}"/>/gp.png"/></div>
						    <div class="SocialImage"><img src="<c:out value="${pageContext.request.contextPath}"/>/t.png"/></div>
						   
					    
					    </div>
			    </section>
    
	
		</footer>		

	<div id="mask">
	</div>
	</body>
	
	
</html>
