<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="../Resources/CSS/reset.css">
		<link rel="stylesheet" type="text/css" href="../Resources/CSS/fonts.css">
		<link rel="stylesheet" type="text/css" href="../Resources/CSS/header.css">
		<link rel="stylesheet" type="text/css" href="../Resources/CSS/CandidatePage.css">
		
		<link rel="stylesheet" type="text/css" href="../Resources/CSS/footer.css">
		
		<link rel="stylesheet" type="text/css" href="../Resources/CSS/prettyCheckable.css">
		<link rel="stylesheet" type="text/css" href="../Resources/CSS/SuggestionBox.css">
		<script src=""></script>
		<script src="../Resources/Libraries/prettyCheckable.js"></script>
		<script src="../Resources/Libraries/"></script>

	</head>
	<script>
		
	
	
		
	
	
		$(document).ready(
		function()
		{
			$('.DownTriangle').css({"left":$('.DownTriangleWrapper').position().left+$('.DownTriangleWrapper').width()/2-$('.DownTriangle').outerWidth()/2});
			var popupactive = 0;

		
			$(window).resize(
				function()
				{
					
					$('.DownTriangle').css({"left":$('.DownTriangleWrapper').position().left+$('.DownTriangleWrapper').width()/2});
					if($(window).width() > 800)
					{
						$('#menuBar').toggle(true);
						 $('#smallSuggestionBox').hide();
					}
					
				});
			$('.SearchBox').focusin(function(){

				if($(window).width() > 800 )
				{
					$('#suggestionBox').css({"display":"none","left":$('.SearchBox').position().left,"top":$('.SearchBox').position().top+$('.SearchBox').height()});
	                $('#suggestionBox').fadeIn();

				}
				else
				{
					$('#smallSuggestionBox').css({"display":"none","top":$('#smallSearchBox').position().top+$('#smallSearchBox').height()-20,"left":$('#searchBox2').position().left});
	                $('#smallSuggestionBox').fadeIn();
	                console.log($('#smallSuggestionBox').position().left);
	                console.log($('#searchBox2').position().top);
				}
			
			

			});
		$('.SearchBox').focusout(function(e){
			$('#suggestionBox').fadeOut();
			$('#smallSuggestionBox').fadeOut();

		}
			);
				




			$('#smallMenu').hover(function(){
				$('#smallMenu>div').css({"background-color":"#6d93ff"});
			},function(){
				$('#smallMenu>div').css({"background-color":"#999"});
			});
			
			$('#smallMenu').click(function()
				{
					$('#menuBar').toggle();
					//$('#smallMenu:after').css({"display":"block","position":"absolute","min-height":"40px","width":"40px","background-color":"red","content:"hi da"});
				});
			

			$('#achievementsEdit').click(
				function()
				{
					var wid = $('#popupForAchievements').width();
					var ht = $('#popupForAchievements').height();
					popupactive = 1;
					$('#mask').css({"display":"block","width":$(window).width(),"height":$(document).height()});
					
					$('#popupForAchievements').css({"display":"none","top":$(window).height()/2 - ht/2,"left":$(window).width()/2-wid/2}).slideDown(400);
				});
			$('#closeButton').click(
				function()
				{
					$('#mask').css({"display":"none"});
					$('#popupForAchievements').css({"display":"none"});
					popupactive = 0;

			});

			var e = document.getElementById("navigateSlides");
			var i = e.childElementCount;
			var c = e.children;

			console.log(c);
			var noc = Math.ceil(i/4);
			console.log(noc);
			var node = [];

			for(k=0;k<noc;k++)
			{
				node[k] = document.createElement("div");
				node[k].className = "slideFrame";
				node[k].id = ""+k;
				e.appendChild(node[k]);
			}
			var d = 0;

			var parent = document.getElementsByClassName("slideFrame");
			//parent[3].appendChild(document.createElement("div"));
			console.log(parent[0]);
			for(j=0;j<i;j++)
			{
				var temp;
				console.log(j);
				temp = c[j].cloneNode();
				parent[d].appendChild(temp);
				if((j+1)%4 == 0)
					{
						d++;
						console.log("d val="+d);
					}
			}
			var j = e.childElementCount;
			var c = e.children;
			var str;

			for(z=j-noc-1;z>=0;z--)
			{	
				console.log("z val"+z);
				str = c[z].className;
				if(str==="small")
				{
					e.removeChild(c[z]);
				}
			}



			$('input.MyClass').prettyCheckable();
			$('.insideORC button').click(function(){
			var id = $(this).attr('id');
			$('.DownTriangle').css({"display":"none"});

				if(id=="allReviews")
				{
					$("#downTriangle1").css({"display":"block"});
				}
				else if(id=="positiveReviews")
				{
					
					$("#downTriangle2").css({"display":"block"});
				}
				else
				{
					$("#downTriangle3").css({"display":"block"});
				}
				
			});

			$('#navigateSlides .slideFrame .small').click(function(e)
			{
				var id = $(this).text();
				e.preventDefault();
				$('#slides img').css({"right":"-250px","top":"-150px","z-index":"1","opacity":"0"});
				$('#slides img').css({"transition":"all ease-out 400ms","-webkit-transition":"all ease-out 300ms"});
				$('#'+id+'0').css({"top":"0px","left":"0px","z-index":"5","opacity":"1"});
				console.log(id);
			});
			var slideCount = 0;
			$('#leftFrame').css({"visibility":"hidden"});
			if(noc == 1)
			{
				$('#rightFrame').css({"visibility":"hidden"});
			}
			$('#rightFrame').click(function()
				{
					
					if(slideCount === (noc-2))
					{
						$('#rightFrame').css({"visibility":"hidden"});
					}
					else
					{
						$('#rightFrame').css({"visibility":"visible"});
					}

					//$('.slideFrame').css({"transition":"all linear 500ms","-webkit-transition":"all linear 500ms"});
					$('#'+slideCount).css({"top":"0px","left":"-250px","z-index":"5","opacity":"1"});
					slideCount++;
					if(slideCount !=0)
					{
						$('#leftFrame').css({"visibility":"visible"});
					}
					console.log(slideCount);
					$('#'+slideCount).css({"top":"0px","left":"0px","z-index":"5","opacity":"1"});
				});
			$('#leftFrame').click(function()
			{	
				if(slideCount != (noc-2))
				{
					$('#rightFrame').css({"visibility":"visible"});
				}
				
				
				//$('.slideFrame').css({"transition":"all linear 500ms","-webkit-transition":"all linear 500ms"});
				$('#'+slideCount).css({"top":"0px","left":"250px","z-index":"5","opacity":"1"});
				slideCount--;
				if(slideCount == 0)
				{
					$('#leftFrame').css({"visibility":"hidden"});
				}
				else
				{
					$('#leftFrame').css({"visibility":"visible"});
				}
				console.log(slideCount);
				$('#'+slideCount).css({"top":"0px","left":"0px","z-index":"5","opacity":"1"});
			});
		}

		);

	</script>
	<body>	
		<div id="popupForAchievements">
							<div id="closeButton">&times;</div>
							<textarea id="writeAchievements" spellcheck="false"></textarea>
							</div>
	<!-- ********************************************************************************header **********************************************************************-->
	<header>
<img src="../Resources/Images/KYC%20Logo.png" id="logo" alt="Logo" />
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
</ul>
<div style="clear:both"></div>
<section id="suggestionBox">

<section class="Candidate">
	
   <a href="#" id="">
    	 <div class="CandidateImage"/><img src="../Resources/images/" /></div>      
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
           <div class="CandidateImage"/><img src="../Resources/Images/dwa.png" /></div>      
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
    	<div class="CandidateImage"/><img src="../Resources/Images/dwa.png"/></div>      
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
							<img src="../Resources/images/<c:out value="${candidate.candidateImage}" />" id="candidateImageCP">
						</section>
						<section id="candidateDetailsCP" class="col">
							<p id="nameCP">  <span id="name"><c:out value="${candidate.candidateName}" /></span>    
							<p id="partyNameCP"><span id="value"><c:out value="${candidate.party.partyName}" /></span></p>
							<p id="genderCP"><span id="age">Age : <c:out value="${candidate.candidateAge}" /></span> , <span id="gender">Gender : <c:out value="${candidate.candidateGender}" /></span> </p>
							<p id="supporterCP"><span id="supporterCount"><c:out value="${candidate.candidateSupporters}" /></span><span> supporters</span><span><button id="supporterButton" value="Support">&#10003; Support</button></span></p>
							

						</section>
						<section id="wpartyImageCP" class="col"> 
							<img src="../Resources/images/party/<c:out value="${candidate.party.partyImage}" />" alt="" id="partyImageCP">
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
											<td class="BoxContentCP" id="position"><c:out value="${candidate.candidateCurrentPosition}" />,<c:out value="${candidate.candidateConstituency}" /></td>
											<td class="BoxContentCP" id="competingFor"><c:out value="${candidate.candidateEducation}" /></td>
										</tr>
									</table>
								</div>
								<div id="secondBoxCP" class="BoxSettingCP">
								      <table class="ContainerCP">
								      	<th class="SecondBoxTitle">Past Positions</th>
								      		<tr>
								      			<td class="BoxContentCP" id="pastPositions"><c:out value="${candidate.candidatePreviousPositions}" /></td>

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
						    <div class="SocialImage"><img src="../Resources/Images/fb.png"/></div>
						    <div class="SocialImage"><img src="../Resources/Images/gp.png"/></div>
						    <div class="SocialImage"><img src="../Resources/Images/t.png"/></div>
						   
					    
					    </div>
			    </section>
    
	
		</footer>
	<div id="mask">
	</div>
	</body>
	
	
</html>
