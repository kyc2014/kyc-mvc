<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
	<title>Honourable Minister - <c:out value="${candidate.name}"/> | Know Your Candidate</title>
	<link rel="shortcut icon" href="/Resources/images/title_icon.png">
	<head>
		<link rel="stylesheet" type="text/css" href="/Resources/CSS/reset.css">
		<link rel="stylesheet" type="text/css" href="/Resources/CSS/Map.css">
		<link rel="stylesheet" type="text/css" href="/Resources/CSS/header3.css">
		<link rel="stylesheet" type="text/css" href="/Resources/CSS/CandidatePage.css">
		<link rel="stylesheet" type="text/css" href="/Resources/CSS/footer.css">
		<link rel="stylesheet" type="text/css" href="/Resources/CSS/SuggestionBox.css">
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
		<script src="/Resources/Libraries/jquery-2.0.2.min.js" /></script>
		<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
		<script src="/Resources/scripts/mapPlugin.js"></script>
		<script type="text/javascript" src="/Resources/scripts/analytics.js"></script>
		<style>
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
							$("#map").css("left",$('#constituency').position().left-$('#map').width());
							$("#map").css("top",$('#constituency').top());
							$('#map').css('display','block');
							$('#map').css('position','relative');
							
					},function(){
						$('#map').css('display','none');
					});
		});
		</script>
		<meta lang="en-US" content="Information about Indian minister <c:out value="${candidate.name}"/> Member of paliament Lok Sabha candidate" name="description"/>
	</head>
	<body>	
	<jsp:include page="../../header.jsp" />
<!--*********************************************************************candidate page ***********************************************************************-->
		<div id="wrapperCP">
			<div id="containerCP" class="Cont">
				<div id="innerContainerCP" >
					<div id="topCP">
						<section id="wcandidateImageCP" class="col">
							<img src="/Resources/images/ministers/<c:out value="${candidate.name}" />.jpg" id="candidateImageCP">
						</section>
						<section id="candidateDetailsCP" class="col">
						<h1 style="display:none">${candidate.name}</h1>
							<p id="nameCP">  <span id="name"><c:out value="${candidate.name}" /></span>    
							<p id="partyNameCP"><span id="value"><c:out value="${candidate.partyName}" /></span></p>
							<p id="genderCP"><span id="gender"><c:out value="${candidate.gender}" /></span> </p>
						</section>
						<section id="wpartyImageCP" class="col"> 
							<img src="/Resources/images/party/<c:out value="${candidate.partyShortName}" />-RO.png" alt="" id="partyImageCP">
						</section>
					
						
					</div>
					<hr id="topAndBottom" />
					<div id="bottomCP">
							
						  <div id="leftCP">
								<div id="firstBoxCP" class="BoxSettingCP">
									<table class="ContainerCP">
										<th class="FirstBoxTitle" >Date Of Birth</th>
										<th class="FirstBoxTitle" >Age</th>
										<th class="FirstBoxTitle" >Position</th>
										<tr>
											<td class="BoxContentCP" id="dob"><c:out value="${candidate.dob}" /></td>
											<td class="BoxContentCP" id="age"><c:out value="${candidate.age}" /></td>
											<td class="BoxContentCP" id="position">Minister , <span id="constituency"><c:out value="${candidate.constituency}" /><input type="hidden" id="ccode" value="<c:out value="${candidate.constituencyCode}" />" /></span></td>
											<div id="map"></div>
										</tr>
									</table>
								</div>
								<div id="secondBoxCP" class="BoxSettingCP">
								      <table class="ContainerCP">
								      	<th class="SecondBoxTitle">Education</th>
								      	<th class="SecondBoxTitle">Past Position</th>
								      	<th class="SecondBoxTitle">Contact</th>
								      		<tr>
								      			<td class="BoxContentCP" id="education"><c:out value="${candidate.education}" /></td>
								      			<td class="BoxContentCP" id="pastPositions"><c:out value="${candidate.previousPositions}" /></td>
								      			<td class="BoxContentCP" id="contact"><c:out value="${candidate.contact}" /></td>
								      		</tr>
								      </table>
								</div>
							</div>
					</div>
				</div>
				<div id="commentSection">
			    <div id="disqus_thread"></div>
		    <script type="text/javascript">
		        /* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
		        var disqus_shortname = 'knowyourcandidatenet'; // required: replace example with your forum shortname
		
		        /* * * DON'T EDIT BELOW THIS LINE * * */
		        (function() {
		            var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
		            dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
		            (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
		        })();
		    </script>
		    <noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
		    <a href="http://disqus.com" class="dsq-brlink">Comments powered by <span class="logo-disqus">Disqus</span></a>	
			</div>   
			</div>
	
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
		 <script type="text/javascript">
		    /* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
		    var disqus_shortname = 'knowyourcandidatenet'; // required: replace example with your forum shortname
		
		    /* * * DON'T EDIT BELOW THIS LINE * * */
		    (function () {
		        var s = document.createElement('script'); s.async = true;
		        s.type = 'text/javascript';
		        s.src = '//' + disqus_shortname + '.disqus.com/count.js';
		        (document.getElementsByTagName('HEAD')[0] || document.getElementsByTagName('BODY')[0]).appendChild(s);
		    }());
		    </script>
	</body>
	
	
</html>
