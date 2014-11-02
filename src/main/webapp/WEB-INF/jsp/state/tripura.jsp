<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<title>Tripura | State of India | Know Your Candidate</title>
<link rel="shortcut icon" href="/Resources/images/title_icon.png">
<meta name="description" content="Tripura - State of India. List of Chief Ministers, Political Parties and Politicians of Tripura."/>
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
          ['Year', 'CPI(M)', 'INC', 'CPI','Others'],
          ['2013',  49,      10, 1,0],
          ['2008',  46,     10, 1,3],
          ['2004',  38,       13, 1,8],
          ['1999',  38,    13, 1,8]
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
		  [ 'Sukhamoy Sen Gupta','INC',new Date(1972, 2, 20), new Date(1977, 2, 31) ],
		    [ 'Prafulla Kumar Das', 'CFD',  new Date(1977, 5, 1),  new Date(1977, 6, 25) ],
		  [ 'Radhika Ranjan Gupta','JP' , new Date(1977, 6, 26),  new Date(1977,10,4) ],
		    [ 'President\'s Rule', '', new Date(1977,10,5),  new Date(1978, 0, 5) ],
		    [ 'Nripen Chakraborty','CPI(M)', new Date(1978, 0, 5), new Date(1988, 1, 5) ],
		    ['Sudhir Ranjan Majumdar','INC',new Date(1988,1,5),new Date(1992,1,19)],
		    ['Samir Ranjan Barman','INC',new Date(1992,1,19),new Date(1993,2,10)],
		    ['President\'s Rule','',new Date(1993,2,11),new Date(1993,3,10)],
		    ['Dasarath Deb','CPI(M)',new Date(1993,3,10),new Date(1998,2,11)],
		    ['Manik Sarkar','CPI(M)',new Date(1998,2,11),new Date()]
		    
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
			<h1>TRIPURA</h1>
			</div>
			<div id="dof">
				<span>Date of Formation - </span><span id="dofValue">21 January 1972</span>
			</div>
			<div id="totConst">
				<span>Number of Lok Sabha Seats - <span><span id="totConstValue"><a href="http://164.100.47.132/lssnew/Members/Statewiselist.aspx" target=_blank>2</a></span>
			</div>
		</div>
		<div id="personalities">
			<div id="leftPersonalities">
				<div  class="mainPersonalityBlock">
					<div class="mdesignation">
					Chief Minister
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/tripura/cm.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://www.tripurainfo.com/info/ATripura/Chief_Minister.htm" target=_blank>Manik Sarkar</a></div>
						<div class="mparty"><a href="http://cpim.org/tags/tripura" target=_blank>CPI(M)</a></div>
						</div>
					</div>
					
				</div>
				<div class="mainPersonalityBlock">
					<div class="mdesignation">
					Governor
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/tripura/governor.png">
						<div class="mphotoDetails">
						<div class="mname">Devanand Konwar</div>
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
					<img src="/Resources/images/state/tripura/1.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://archive.india.gov.in/govt/loksabhampbiodata.php?mpcode=3957" target=_blank>Khagen Das</a></div>
						<div class="mparty"><a href="http://cpim.org/tags/tripura" target=_blank>CPI(M)</a></div>
						<div class="mpost">Member of Lok Sabha</div>
						</div>
					</div>
					<div id="minister2" class="photo">
						<img src="/Resources/images/state/tripura/2.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://archive.india.gov.in/govt/loksabhampbiodata.php?mpcode=381" target=_blank>Baju Ban Riyan</a></div>
						<div class="mparty"><a href="http://cpim.org/tags/tripura" target=_blank>CPI(M)</a></div>
						<div class="mpost">Member of Lok Sabha</div>
						</div>
					</div>
					<div id = "minister3" class="photo">
						<img src="/Resources/images/state/tripura/3.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://www.archive.india.gov.in/govt/rajyasabhampbiodata.php?mpcode=2141" target=_blank>Jharna Das</a></div>
						<div class="mparty"><a href="http://cpim.org/tags/tripura" target=_blank>CPI(M)</a></div>
						<div class="mpost">Member of Rajya Sabha</div>
						</div>
					</div>
				</div>
			</div>
		</div><!--end of personalities -->
		<div id = "partiesInfo">
		<div id="partiesInfoHeading">List of Prominent Political Parties</div>
			<div id="partiesInfoCont">
			    
			    <a href="http://cpim.org/tags/tripura" target=_blank class="PartiesList">CPI(M)</a>
			    <a href="http://www.inc.in/" target=_blank class="PartiesList">INC</a>
			    <a href="http://www.communistparty.in/" target=_blank class="PartiesList">CPI</a>
			    
			   

			</div>
		</div>
		<div id="chartContainer" style="width:500px;height:400px;display:inline-block;vertical-align:top;">

		</div>
		<div id="povertyStatus" style="display:inline-block;width:400px;height:400px;margin:0 auto;vertical-align:top; ">
		</div>
		<div id="chiefMinistersHeading">Chief Ministers of Tripura</div>
		<div id="pastChiefMinisters" style="width:100%;height:400px">
		</div>
		


	</div><!-- end of container -->
</div><!-- end of wrapper -->
<jsp:include page="../footer.jsp" />
</body>
</html>
