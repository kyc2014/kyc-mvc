<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<title>Gujarat</title>
<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}" />/Resources/CSS/reset.css">
<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}" />/Resources/CSS/state.css">
<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}" />/Resources/CSS/header3.css">
<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}" />/Resources/CSS/footer.css">
<script type="text/javascript" src="<c:out value="${pageContext.request.contextPath}"/>/Resources/Libraries/jquery-2.0.2.min.js"></script>
<script type="text/javascript" src="<c:out value="${pageContext.request.contextPath}"/>/Resources/scripts/signin.js"></script>
</head>
<body>
<jsp:include page="../header.jsp" />
<script type="text/javascript" src="https://www.google.com/jsapi?autoload={'modules':[{'name':'visualization',
       'version':'1','packages':['timeline','corechart']}]}"></script>



<script type="text/javascript">
$(document).ready(function(){
	
	$('.mphoto,.photo').hover(function(){
		var ht = $(this).find('.mphotoDetails').height();
		ht = ht+10;
		var neg = -ht;
		neg = neg+'px';
		$(this).find('.mphotoDetails').css({"transform":"translate(0px,"+neg+")","-ms-transform":"translate(0px,"+neg+")","-webkit-transform":"translate(0px,"+neg+")"});
	},function(){
		var ht = $(this).find('.mphotoDetails').height();
		ht = ht+10;
		ht = ht+'px';
		$(this).find('.mphotoDetails').css({"transform":"translate(0px,0px)","-ms-transform":"translate(0px,0px)","-webkit-transform":"translate(0px,0px)"});
	});
	
		function drawChart()
		{

		var data1 = google.visualization.arrayToDataTable([
          ['Year', 'BJP', 'INC','Others'],
          ['2012',  115,      61,6],
          ['2007',  117,     59,6],
          ['2002',  127,      51,4],
          ['1998',  117,    53,12]
        ]);
/*total assembly const - 224*/
        var options1 = {
          title: 'Past Legislative Assembly Elections',
          titleTextStyle:{color:'#7c7878',bold:false,fontName:'opensans',fontSize:'18'},
          hAxis:{textStyle:{color:'#7c7878',fontName:'opensans',fontSize:'12'}},
          vAxis: {textStyle:{color:'#7c7878',fontName:'opensans',fontSize:'12'},title: 'Seats won',  titleTextStyle: {color:'#7c7878',italic:false,fontName:'opensans',fontSize:'16'} ,baselineColor:'#CCC'},
          tooltip:{textStyle:{fontName:'opensans',fontSize:'14'}},
          backgroundColor:'#f3f1f1',
          legend:{textStyle:{color:'#7c7878',fontName:'opensans',fontSize:'12'}},
          focusTarget:'category'
    		
        };

        var chart1 = new google.visualization.ColumnChart(document.getElementById('chartContainer'));
        chart1.draw(data1, options1);

         var chart2 = new google.visualization.Timeline(document.getElementById('pastChiefMinisters'));
         var dataTable = new google.visualization.DataTable();
          dataTable.addColumn({ type: 'string', id: 'CM' });
          dataTable.addColumn({ type: 'string', id: 'Party' });
		  dataTable.addColumn({ type: 'date', id: 'Start' });
		  dataTable.addColumn({ type: 'date', id: 'End' });

		  dataTable.addRows([
		  	['Jivraj Narayan Mehta','INC',new Date(1960,5,1),new Date(1962,3,3)],
		  	['Jivraj Narayan Mehta','INC',new Date(1962,03,3),new Date(1963,09,19)],
		  	['Balwantrai Mehta','INC',new Date(1963,09,19),new Date(1965,09,20)],
		  	['Hitendra K Desai','INC',new Date(1965,9,20),new Date(1967,4,3)],
		  	['Hitendra K Desai','INC',new Date(1967,04,3),new Date(1971,3,6)],
		  	['Hitendra K Desai','INC',new Date(1971,04,7),new Date(1971,5,12)],
		  	['President\'s Rule','INC',new Date(1971,5,12),new Date(1972,3,17)],
		  	['Ghanshyambhai C. Oza','INC',new Date(1972,3,17),new Date(1973,7,17)],
		  	['Chimanbhai Patel','INC',new Date(1973,7,18),new Date(1974,2,9)],
		  	['President\'s rule','INC',new Date(1974,2,9),new Date(1975,6,18)],
		  	['Babubhai J. Patel','Janata Front',new Date(1975,6,18),new Date(1976,3,12)],
		  	['President\'s rule','',new Date(1976,3,12),new Date(1976,12,24)],
		  	['Madhav Singh Solanki','INC',new Date(1976,12,24),new Date(1977,4,10)],
		  	['Babubhai J. Patel','JP',new Date(1977,4,11),new Date(1980,2,17)],
		  	['President\'s rule','',new Date(1980,2,17),new Date(1980,6,7)],
		  	['Madhav Singh Solanki','INC',new Date(1980,6,7),new Date(1985,3,10)],
		  	['Madhav Singh Solanki','INC',new Date(1985,03,11),new Date(1985,7,6)],
		  	['Amarsinh Chaudhary','INC',new Date(1985,7,6),new Date(1989,12,9)],
		  	['Madhav Singh Solanki','BJP',new Date(1989,12,10),new Date(1990,3,4)],
		  	['Chimanbhai Patel','JD(G) + JD + BJP',new Date(1990,3,4),new Date(1990,10,25)],
		  	['Chimanbhai Patel','JD(G) + JD + INC',new Date(1990,10,25),new Date(1994,2,17)],
		  	['Chhabildas Mehta','INC',new Date(1994,2,17),new Date(1995,3,14)],
		  	['Keshubhai Patel','BJP',new Date(1995,3,14),new Date(1995,10,21)],
		  	['Suresh Mehta','BJP',new Date(1995,10,21),new Date(1996,9,19)],
		  	['President\'s rule','',new Date(1996,9,19),new Date(1996,10,23)],
		  	['Shankersinh Vaghela','RJP',new Date(1996,10,23),new Date(1997,10,27)],
		  	['Dilipbhai Ramanbhai Parikh','RJP',new Date(1997,10,28),new Date(1998,03,04)],
		  	['Keshubhai Patel','BJP',new Date(1998,03,04),new Date(2001,10,06)],
		  	['Narendra Modi','BJP',new Date(2001,10,07),new Date(2002,12,22)],
		  	['Narendra Modi','BJP',new Date(2002,12,22),new Date(2007,12,22)],
		  	['Narendra Modi','BJP',new Date(2007,12,23),new Date(2012,12,20)],
		  	['Narendra Modi','BJP',new Date(2012,12,20),new Date()]
		    
		    ]);
			var options2 = {
				timeline:{
					barLabelStyle:{color:'#7c7878',fontName:'opensans',fontSize:'12'},
					rowLabelStyle:{color:'#6d93ff',fontName:'opensans',fontSize:'14'}
				},
				backgroundColor:'#fff'
			};
		  chart2.draw(dataTable,options2);


         }
         google.setOnLoadCallback(drawChart);




		
});
</script>

<div id="wrapper">
	<div id="container">
		<div id="stateInfo">
			<div id="stateName">
			GUJARAT
			</div>
			<div id="dof">
				<span>Date of Formation - </span><span id="dofValue">1 May 1960</span>
			</div>
			<div id="totConst">
				<span>Number of Lok Sabha Seats - <span><span id="totConstValue"><a href="">33</a></span>
			</div>
		</div>
		<div id="personalities">
			<div id="leftPersonalities">
				<div  class="mainPersonalityBlock">
					<div class="mdesignation">
					Chief Minister
					</div>
					<div class="mphoto">
						<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/gujarat/cm.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Narendra Modi</a></div>
						<div class="mparty"><a href="">BJP</a></div>
						</div>
					</div>
					
				</div>
				<div class="mainPersonalityBlock">
					<div class="mdesignation">
					Governor
					</div>
					<div class="mphoto">
						<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/gujarat/governor.png">
						<div class="mphotoDetails">
						<div class="mname">Kamla Beniwal</div>
						<div class="mparty"></div>
						<div class="mpost"></div>
						</div>
					</div>
					
				</div>
			</div>
			<div id="rightPersonalities">
				<div class="mdesignation">
				Other notable politicians
				</div>
				<div class="wrapperOthers">
					<div id="minister1" class="photo">
					<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/gujarat/1.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Bharatsinh Madhavsinh Solanki</a></div>
						<div class="mparty"><a href="">INC</a></div>
						<div class="mpost">Ministers of State (Independent Charges) - Drinking Water and Sanitation</div>
						</div>
					</div>
					<div id="minister2" class="photo">
						<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/gujarat/2.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Keshubhai Patel</a></div>
						<div class="mparty"><a href="">GPP</a></div>
						<div class="mpost">Former CM</div>
						</div>
					</div>
					<div id = "minister3" class="photo">
						<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/gujarat/3.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Ahmed Patel</a></div>
						<div class="mparty"><a href="">INC</a></div>
						<div class="mpost">Senior Leader (INC)</div>
						</div>
					</div>
				</div>
			</div>
		</div><!--end of personalities -->
		<div id = "partiesInfo">
		<div id="partiesInfoHeading">List of Prominent Political Parties</div>
			<div id="partiesInfoCont">
			    
			    <a href="" class="PartiesList">BJP</a>
			    <a href="" class="PartiesList">INC</a>
			    <a href="" class="PartiesList">GPP</a>
			    
			   

			</div>
		</div>
		<div id="chartContainer" style="width:500px;height:400px;display:inline-block;vertical-align:top;">

		</div>
		<div id="povertyStatus" style="display:inline-block;width:400px;height:400px;margin:0 auto;vertical-align:top; ">
		</div>
		<div id="chiefMinistersHeading">Chief Ministers of Gujarat</div>
		<div id="pastChiefMinisters" style="width:100%;height:400px">
		</div>
		


	</div><!-- end of container -->
</div><!-- end of wrapper -->
</body>
</html>
