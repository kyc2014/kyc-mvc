<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>

<html>
	<head>
		<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}"/>/test.css">
		<!-- <link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}"/>/Resources/CSS/fonts.css"> -->
		<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}" />/Resources/CSS/header.css">
		<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}" />/Resources/CSS/CandidatePage.css">
		
		<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}" />/Resources/CSS/footer.css">
		
		<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}" />/Resources/CSS/prettyCheckable.css">
		<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}" />/Resources/CSS/SuggestionBox.css">
		<script src="<c:out value="${pageContext.request.contextPath}" />/Resources/Libraries/jquery-2.0.2.min.js"></script>
		<script src="<c:out value="${pageContext.request.contextPath}" />/Resources/Libraries/prettyCheckable.js"></script>
		

	</head>
	<body>	
		<div id="popupForAchievements">
							<div id="closeButton">&times;</div>
							<textarea id="writeAchievements" spellcheck="false"></textarea>
							</div>
	<!-- ********************************************************************************header **********************************************************************-->
	<header>
<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/Images/KYC%20Logo.png" id="logo" alt="Logo" />
<div id="smallMenu">
<div></div>
<div></div>
<div></div>
</div>
<div id="logArea">
Login/Sign Up
</div>

</header>
<div id="menuBar">
<div id="menuWrapper">
<div id="menuContainer">
<ul id="menuList">
<li>Home</li>
<li>Articles</li>
<li>Candidates</li>
<li>Ballot Box</li>
<li><span style="visibility:hidden;">d</span><input type="text" id="searchBox" class="SearchBox" spellCheck="false" /></li>

</ul>
<div style="clear:both"></div>
<section id="suggestionBox">

<section class="Candidate">
	
   <a href="#" id="">
    	 <div class="CandidateImage"/><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/" /></div>      
                                      <section class="SearchDetails"> 
        											 <section class="CandidateDetails">
                                                     <section class="CandidateDetailsContent"><p class="Name">Kotala Chandrangandha Reddy Suryasimhudu Mathveera Junga Banga</p><p class="Position">Gujarat Chief Minister</p><p class="Constituency">Prime Ministerial Candidate</p></section> 
                                                     <div class="PartyImage">
                                                     <img src="../Resources/Images/bjp.png" />
                                                     </div>
                                                     
                                                     </section>
                                                     <div style="display:table" class="Opinion">
                                                       		<div style="display:table-row">
                                                       			<div style="display:table-cell" class="Reviews">173 reviews</div>
                                                       			<div style="display:table-cell" class="Supporters">1000 supporters</div>
                                                       		</div> 
                                                     </div> 
                                                       
                                      </section> 
                                      
                                     
        </a >      
        
    
        
    <a href="#" id="">
           <div class="CandidateImage"/><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/Images/dwa.png" /></div>      
                                      <section class="SearchDetails"> 
        											 <section class="CandidateDetails">
                                                     <section class="CandidateDetailsContent"><p class="Name">RahulGandhi</p><p class="Position">Gujarat Chief Minister</p><p class="Constituency">Prime Ministerial Candidate</p></section> 
                                                     <div class="PartyImage">
                                                     <img src="../Resources/Images/bjp.png" />
                                                     </div>
                                                     
                                                     </section>
                                                     <div style="display:table" class="Opinion">
                                                       		<div style="display:table-row">
                                                       			<div style="display:table-cell" class="Reviews">173 reviews</div>
                                                       			<div style="display:table-cell" class="Supporters">1000 supporters</div>
                                                       		</div> 
                                                     </div> 
                                                       
                                      </section> 
                                               
                    
    </a>
     
    <a href="#" id="">
    	<div class="CandidateImage"/><img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/Images/dwa.png"/></div>      
                                      <section class="SearchDetails"> 
        											 <section class="CandidateDetails">
                                                     <section class="CandidateDetailsContent"><p class="Name">Sonia Gandhi </p><p class="Position">Hon'ble Minister of State for Agriculture and Economy</p><p class="Constituency">Prime Ministerial Candidate</p></section> 
                                                     <div class="PartyImage">
                                                     <img src="../Resources/Images/bjp.png"/>
                                                     </div>
                                                     
                                                     </section>
                                                     <div style="display:table" class="Opinion">
                                                       		<div style="display:table-row">
                                                       			<div style="display:table-cell" class="Reviews">1,73,00,000 reviews</div>
                                                       			<div style="display:table-cell" class="Supporters">1,00,00,000 supporters</div>
                                                       		</div> 
                                                     </div> 
                                                       agdish%20Sharma
                                      </section> 
                                      
    </a>

 
<div id="moreResults">
<a href="#" id="">See all Results</a>
</div>
</section>

</section>
</div>
</div>
</div>
<div id="smallSearchBox">
<input type="text" id="searchBox2" class="SearchBox" spellCheck="false"/>
</div>
<div id="smallSuggestionBox">
<a href="#" id="">Adilabad</a>
<a href="#" id="">NarendraModi</a>
<a href="#" id="">Vishwa ramakrishna junga banga</a>
<a href="#" id="">asdsassd</a>
<a href="#" id="">asdadas</a>
<a href="#" id="">daasd</a>
</div>
<!--*********************************************************************candidate page ***********************************************************************-->

	

		<div id="wrapperCP">
			<div id="containerCP" class="Cont">
				<div id="innerContainerCP" >
					<div id="topCP">
						<section id="wcandidateImageCP" class="col">
							<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/<c:out value="${candidate.candidateImage}" />" id="candidateImageCP">
						</section>
						<section id="candidateDetailsCP" class="col">
							<p id="nameCP">  <span id="name"><c:out value="${candidate.name}" /></span>    <span id="partyNameCP"><span id="value"><c:out value="${candidate.partyName}" /></span></span></p>
							<p id="genderCP"><span id="age"><c:out value="${candidate.age}" /></span> <span id="gender"><c:out value="${candidate.gender}" /></span> </p>
							<p id="educationCP"><c:out value="${candidate.education}" /></p>
							<p id="supporterCP"><span id="supporterCount"><c:out value="${candidate.supporters}" /></span><span> supporters</span><span><button id="supporterButton" value="Support">&#10003; Support</button></span></p>
							

						</section>
						<section id="wpartyImageCP" class="col"> 
							<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/Images/<c:out value="${candidate.partyImage}" />.png" alt="" id="partyImageCP">
						</section>
					
						
					</div>
					<hr id="topAndBottom" />
					<div id="bottomCP">
							
						  <div id="leftCP">
								<div id="firstBoxCP" class="BoxSettingCP">
									<table class="ContainerCP">
										<th class="FirstBoxTitle" >Position</th>
										<th class="FirstBoxTitle" >Competing For</th>
										<th class="FirstBoxTitle" >Constituency</th>
										<tr>
											<td class="BoxContentCP" id="position"><c:out value="${candidate.currentPosition}" /></td>
											<td class="BoxContentCP" id="competingFor">Prime Minister</td>
											<td class="BoxContentCP" id="constituency">Constituency</td>
										</tr>
									</table>
								</div>
								<div id="secondBoxCP" class="BoxSettingCP">
								      <table class="ContainerCP">
								      	<th class="SecondBoxTitle">Achievements<spam id="achievementsEdit">&#9998;</spam></th>
								      	<th class="SecondBoxTitle">Past Positions</th>
								      		<tr>
								      			<td class="BoxContentCP" id="achievements"></td>
								      			<td class="BoxContentCP" id="pastPositions"><c:out value="${candidate.positions}" /></td>

								      		</tr>
								      </table>
								</div>
								<div id="thirdBoxCP" >
										<p>Elections</p>
										<section class="ElectionContainerCP">
											Previous Election Data.
										</section>
								</div>
							</div>
						<div id="rightCP">
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
						    <div class="SocialImage"><img src="fb.png"/></div>
						    <div class="SocialImage"><img src="gp.png"/></div>
						    <div class="SocialImage"><img src="t.png"/></div>
						   
					    
					    </div>
			    </section>
    
	
		</footer>
	<div id="mask">
	</div>
	</body>
	
	
</html>
