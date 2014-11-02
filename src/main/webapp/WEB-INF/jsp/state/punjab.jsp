<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<title>Punjab | State of India | Know Your Candidate</title>
<link rel="shortcut icon" href="/Resources/images/title_icon.png">
<meta name="description" content="Punjab - State of India. List of Chief Ministers, Political Parties and Politicians of Punjab."/>
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
          ['Year', 'SAD', 'INC', 'BJP','Others'],
          ['2012',  56,      46, 12,3],
          ['2007',  48,     44, 19,5],
          ['2002',  41,       62, 9,5],
	  ['1997',  75,       14, 18,10]
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
		  	['Gopi Chand Bhargava','INC',new Date(1947,7,15),new Date(1949,3,13)],
			['Bhim Sen Sachar','INC',new Date(1949,3,13),new Date(1949,9,18)],
			['Gopi Chand Bhargava','INC',new Date(1949,9,18),new Date(1951,5,20)],
			['President\'s rule','',new Date(1951,5,20),new Date(1952,3,17)],
			['Bhim Sen Sachar','INC',new Date(1952,3,17),new Date(1956,0,23)],
			['Pratap Singh Kairon','INC',new Date(1956,0,23),new Date(1964,5,21)],
			['Gopi Chand Bhargava','INC',new Date(1964,5,21),new Date(1964,6,6)],
			['Ram Kishan','INC',new Date(1964,6,7),new Date(1966,6,5)],
			['President\'s rule','',new Date(1966,6,5),new Date(1966,10,1)],
			['Giani Gurmukh Singh Mussafir','INC',new Date(1966,10,1),new Date(1967,2,8)],
			['Gurnam Singh','SAD',new Date(1967,2,8),new Date(1967,10,25)],
			['Lachhman Singh Gill','SAD',new Date(1967,10,25),new Date(1968,7,23)],
			['President\'s rule','',new Date(1968,7,23),new Date(1969,1,17)],
			['Gurnam Singh','SAD',new Date(1969,1,17),new Date(1970,2,27)],
			['Parkash Singh Badal','SAD',new Date(1970,2,27),new Date(1971,5,14)],
			['President\'s rule','',new Date(1971,5,14),new Date(1972,2,17)],
			['Zail Singh','INC',new Date(1972,2,17),new Date(1977,3,30)],
			['President\'s rule','',new Date(1977,3,30),new Date(1977,5,20)],
			['Parkash Singh Badal','SAD',new Date(1977,5,20),new Date(1980,1,17)],
			['President\'s rule','',new Date(1980,1,17),new Date(1980,5,6)],
			['Darbara Singh','INC',new Date(1980,5,6),new Date(1983,9,10)],
			['President\'s rule','',new Date(1983,9,10),new Date(1985,8,29)],
			['Surjit Singh Barnala','SAD',new Date(1985,8,29),new Date(1987,5,11)],
			['President\'s rule','',new Date(1987,5,11),new Date(1992,1,25)],
			['Beant Singh','INC',new Date(1992,1,25),new Date(1995,7,31)],
			['Harcharan Singh Brar','INC',new Date(1995,7,31),new Date(1996,0,21)],
			['Rajinder Kaur Bhattal','INC',new Date(1996,0,21),new Date(1997,1,11)],
			['Parkash Singh Badal','SAD',new Date(1997,1,12),new Date(2002,1,26)],
			['Amarinder Singh','INC',new Date(2002,1,26),new Date(2007,2,1)],
			['Parkash Singh Badal','SAD',new Date(2007,2,1),new Date()]
		  
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
			<h1>PUNJAB</h1>
			</div>
			<div id="dof">
				<span>Date of Formation - </span><span id="dofValue">1 November 1966</span>
			</div>
			<div id="totConst">
				<span>Number of Lok Sabha Seats - <span><span id="totConstValue"><a href="http://164.100.47.132/lssnew/Members/Statewiselist.aspx" target=_blank>13</a></span>
			</div>
		</div>
		<div id="personalities">
			<div id="leftPersonalities">
				<div  class="mainPersonalityBlock">
					<div class="mdesignation">
					Chief Minister
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/punjab/cm.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://www.colorofnation.com/profile/parkash_singh_badal" target=_blank>Parkash Singh Badal</a></div>
						<div class="mparty"><a href="http://www.shiromaniakalidal.org.in/" target=_blank>SAD</a></div>
						</div>
					</div>
					
				</div>
				<div class="mainPersonalityBlock">
					<div class="mdesignation">
					Governor
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/punjab/governor.png">
						<div class="mphotoDetails">
						<div class="mname">Shivraj Patil</div>
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
					<img src="/Resources/images/state/punjab/1.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://www.archive.india.gov.in/govt/loksabhampbiodata.php?mpcode=4430" target=_blank>Manish Tewari</a></div>
						<div class="mparty"><a href="http://ppcc.in/" target=_blank>INC</a></div>
						<div class="mpost">Ministers of State (Independent Charges) - Information and Broadcasting</div>
						</div>
					</div>
					<div id="minister2" class="photo">
						<img src="/Resources/images/state/punjab/2.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://www.archive.india.gov.in/govt/loksabhampbiodata.php?mpcode=186" target=_blank>Preneet Kaur</a></div>
						<div class="mparty"><a href="http://ppcc.in/" target=_blank>INC</a></div>
						<div class="mpost">Ministers of State - External Affairs</div>
						</div>
					</div>
					<div id = "minister3" class="photo">
						<img src="/Resources/images/state/punjab/3.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://www.archive.india.gov.in/govt/rajyasabhampbiodata.php?mpcode=1902" target=_blank>Ashwani Kumar</a></div>
						<div class="mparty"><a href="http://ppcc.in/" target=_blank>INC</a></div>
						<div class="mpost">Member of Rajya Sabha & retired IPS officer</div>
						</div>
					</div>
				</div>
			</div>
		</div><!--end of personalities -->
		<div id = "partiesInfo">
		<div id="partiesInfoHeading">List of Prominent Political Parties</div>
			<div id="partiesInfoCont">
			    
			    <a href="http://ppcc.in/" target=_blank class="PartiesList">INC</a>
			    <a href="http://www.bjppunjab.in/" target=_blank class="PartiesList">BJP</a>
			    <a href="http://www.shiromaniakalidal.org.in/" target=_blank class="PartiesList">SAD</a>
			    
			   

			</div>
		</div>
		<div id="chartContainer" style="width:500px;height:400px;display:inline-block;vertical-align:top;">

		</div>
		<div id="povertyStatus" style="display:inline-block;width:400px;height:400px;margin:0 auto;vertical-align:top; ">
		</div>
		<div id="chiefMinistersHeading">Chief Ministers of Punjab</div>
		<div id="pastChiefMinisters" style="width:100%;height:400px">
		</div>
		


	</div><!-- end of container -->
</div><!-- end of wrapper -->
<jsp:include page="../footer.jsp" />
</body>
</html>
