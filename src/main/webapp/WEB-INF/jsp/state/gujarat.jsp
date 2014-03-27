<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<title>Gujarat | State of India | Know Your Candidate</title>
<link rel="shortcut icon" href="/Resources/images/title_icon.png">
<meta name="description" content="Gujarat - State of India. List of Chief Ministers, Political Parties and Politicians of Gujarat."/>
<link rel="stylesheet" type="text/css" href="/Resources/CSS/reset.css">
<link rel="stylesheet" type="text/css" href="/Resources/CSS/state.css">
<link rel="stylesheet" type="text/css" href="/Resources/CSS/header3.css">
<link rel="stylesheet" type="text/css" href="/Resources/CSS/footer.css">
<script type="text/javascript" src="/Resources/Libraries/jquery-2.0.2.min.js"></script>
<script type="text/javascript" src="/Resources/scripts/signin.js"></script>
<script type="text/javascript" src="/Resources/scripts/analytics.js"></script>
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
		  	['Jivraj Narayan Mehta','INC',new Date(1960,4,1),new Date(1962,2,3)],
		  	['Jivraj Narayan Mehta','INC',new Date(1962,2,3),new Date(1963,8,19)],
		  	['Balwantrai Mehta','INC',new Date(1963,8,19),new Date(1965,8,20)],
		  	['Hitendra K Desai','INC',new Date(1965,8,20),new Date(1967,3,3)],
		  	['Hitendra K Desai','INC',new Date(1967,3,3),new Date(1971,3,6)],
		  	['Hitendra K Desai','INC',new Date(1971,3,7),new Date(1971,4,12)],
		  	['President\'s Rule','INC',new Date(1971,4,12),new Date(1972,2,17)],
		  	['Ghanshyambhai C. Oza','INC',new Date(1972,2,17),new Date(1973,6,17)],
		  	['Chimanbhai Patel','INC',new Date(1973,6,18),new Date(1974,1,9)],
		  	['President\'s rule','INC',new Date(1974,1,9),new Date(1975,5,18)],
		  	['Babubhai J. Patel','Janata Front',new Date(1975,5,18),new Date(1976,2,12)],
		  	['President\'s rule','',new Date(1976,2,12),new Date(1976,11,24)],
		  	['Madhav Singh Solanki','INC',new Date(1976,11,24),new Date(1977,3,10)],
		  	['Babubhai J. Patel','JP',new Date(1977,3,11),new Date(1980,1,17)],
		  	['President\'s rule','',new Date(1980,1,17),new Date(1980,5,7)],
		  	['Madhav Singh Solanki','INC',new Date(1980,5,7),new Date(1985,2,10)],
		  	['Madhav Singh Solanki','INC',new Date(1985,2,11),new Date(1985,6,6)],
		  	['Amarsinh Chaudhary','INC',new Date(1985,6,6),new Date(1989,11,9)],
		  	['Madhav Singh Solanki','BJP',new Date(1989,11,10),new Date(1990,2,4)],
		  	['Chimanbhai Patel','JD(G) + JD + BJP',new Date(1990,2,4),new Date(1990,9,25)],
		  	['Chimanbhai Patel','JD(G) + JD + INC',new Date(1990,9,25),new Date(1994,1,17)],
		  	['Chhabildas Mehta','INC',new Date(1994,1,17),new Date(1995,2,14)],
		  	['Keshubhai Patel','BJP',new Date(1995,2,14),new Date(1995,9,21)],
		  	['Suresh Mehta','BJP',new Date(1995,9,21),new Date(1996,8,19)],
		  	['President\'s rule','',new Date(1996,8,19),new Date(1996,9,23)],
		  	['Shankersinh Vaghela','RJP',new Date(1996,9,23),new Date(1997,9,27)],
		  	['Dilipbhai Ramanbhai Parikh','RJP',new Date(1997,9,28),new Date(1998,2,04)],
		  	['Keshubhai Patel','BJP',new Date(1998,2,04),new Date(2001,9,06)],
		  	['Narendra Modi','BJP',new Date(2001,9,07),new Date(2002,11,22)],
		  	['Narendra Modi','BJP',new Date(2002,11,22),new Date(2007,11,22)],
		  	['Narendra Modi','BJP',new Date(2007,11,23),new Date(2012,11,20)],
		  	['Narendra Modi','BJP',new Date(2012,11,20),new Date()]
		    
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
			<h1>GUJARAT</h1>
			</div>
			<div id="dof">
				<span>Date of Formation - </span><span id="dofValue">1 May 1960</span>
			</div>
			<div id="totConst">
				<span>Number of Lok Sabha Seats - <span><span id="totConstValue"><a href="http://164.100.47.132/lssnew/Members/Statewiselist.aspx" target=_blank>33</a></span>
			</div>
		</div>
		<div id="personalities">
			<div id="leftPersonalities">
				<div  class="mainPersonalityBlock">
					<div class="mdesignation">
					Chief Minister
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/gujarat/cm.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://www.narendramodi.in/" target=_blank>Narendra Modi</a></div>
						<div class="mparty"><a href="http://www.bjpgujarat.org/" target=_blank>BJP</a></div>
						</div>
					</div>
					
				</div>
				<div class="mainPersonalityBlock">
					<div class="mdesignation">
					Governor
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/gujarat/governor.png">
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
					<img src="/Resources/images/state/gujarat/1.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://www.archive.india.gov.in/govt/loksabhampbiodata.php?mpcode=4038" target=_blank>Bharatsinh Madhavsinh Solanki</a></div>
						<div class="mparty"><a href="http://www.gujaratcongress.org/" target=_blank>INC</a></div>
						<div class="mpost">Ministers of State (Independent Charges) - Drinking Water and Sanitation</div>
						</div>
					</div>
					<div id="minister2" class="photo">
						<img src="/Resources/images/state/gujarat/2.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://archive.indianexpress.com/news/profile-keshubhai-patel/1047649/" target=_blank>Keshubhai Patel</a></div>
						<div class="mparty"><a href="http://indiatoday.intoday.in/story/keshubhai-patel-steps-down-as-gpp-president/1/339810.html" target=_blank>GPP</a></div>
						<div class="mpost">Former CM</div>
						</div>
					</div>
					<div id = "minister3" class="photo">
						<img src="/Resources/images/state/gujarat/3.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://www.archive.india.gov.in/govt/rajyasabhampbiodata.php?mpcode=205" target=_blank>Ahmed Patel</a></div>
						<div class="mparty"><a href="http://www.gujaratcongress.org/" target=_blank>INC</a></div>
						<div class="mpost">Senior Leader (INC)</div>
						</div>
					</div>
				</div>
			</div>
		</div><!--end of personalities -->
		<div id = "partiesInfo">
		<div id="partiesInfoHeading">List of Prominent Political Parties</div>
			<div id="partiesInfoCont">
			    
			    <a href="http://www.bjpgujarat.org/" target=_blank class="PartiesList">BJP</a>
			    <a href="http://www.gujaratcongress.org/" target=_blank class="PartiesList">INC</a>
			    <a href="http://indianexpress.com/article/india/politics/gujarat-parivartan-party-gpp-joins-hand-with-bjp/" target=_blank class="PartiesList">GPP</a>
			    
			   

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
<jsp:include page="../footer.jsp" />
</body>
</html>
