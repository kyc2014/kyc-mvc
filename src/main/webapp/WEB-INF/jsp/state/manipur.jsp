<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<title>Manipur | State of India | Know Your Candidate</title>
<link rel="shortcut icon" href="/Resources/images/title_icon.png">
<meta name="description" content="Manipur - State of India. List of Chief Ministers, Political Parties and Politicians of Manipur."/>
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
          ['Year', 'INC', 'AITC', 'MSCP','Others'],
          ['2012',  42,      7, 5,6],
          ['2007',  30,     0, 0,30],
          ['2002',  20,       0, 7,33],
          ['2000',  11,    0, 23,26]
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
		  [ 'Mohammed Alimuddin','MPP',new Date(1972, 3, 23), new Date(1973, 3, 27) ],
		    [ 'President\'s Rule', '',  new Date(1973, 3, 28),  new Date(1974, 3, 3) ],
		  [ 'Mohammed Alimuddin','MPP' , new Date(1974, 3, 4),  new Date(1974,7,9) ],
		    [ 'Yangmasho Shaiza', 'MHU', new Date(1974,7,10),  new Date(1974, 12, 5) ],
		    [ 'RajKumar Dorendra Singh','INC', new Date(1974, 12, 6), new Date(1977, 5, 15) ],
		    ['President\'s Rule','',new Date(1977,5,16),new Date(1977,6,28)],
		    ['Yangmasho Shaiza','JP',new Date(1977,6,29),new Date(1979,11,13)],
		    ['President\'s Rule','',new Date(1979,11,14),new Date(1980,1,13)],
		    ['RajKumar Dorendra Singh','INC',new Date(1980,1,14),new Date(1980,11,26)],
		    ['Rishang Keishing','INC',new Date(1980,11,27),new Date(1981,2,27)],
		    ['President\'s Rule','',new Date(1981,2,28),new Date(1981,6,18)],
		    ['Rishang Keishing','INC-Indira',new Date(1981,6,19),new Date(1988,3,3)],
		    ['RajKumar Jaichandra Singh','INC',new Date(1988,3,4),new Date(1990,2,22)],
		    ['RajKumar Ranbir Singh	','MPP',new Date(1990,2,23),new Date(1992,1,6)],
		    ['President\'s Rule','',new Date(1992,1,7),new Date(1992,4,7)],
		    ['RajKumar Dorendra Singh','INC',new Date(1992,4,8),new Date(1993,4,10)],
		    ['President\'s Rule','',new Date(1993,12,31),new Date(1994,12,13)],
		    ['Rishang Keishing','INC',new Date(1994,12,14),new Date(1997,12,15)],
		    ['Wahengbam Nipamacha Singh','MSCP',new Date(1997,12,16),new Date(2001,2,14)],
		    ['Radhabinod Koijam ','SAP',new Date(2001,2,15),new Date(2001,6,1)],
		    ['President\'s Rule','',new Date(2001,6,2),new Date(2002,3,6)],
		    ['Okram Ibobi Singh','INC',new Date(2002,3,7),new Date(2007,3,1)],
		    ['Okram Ibobi Singh','INC',new Date(2007,3,2), new Date(2012,3,13)],
		    ['Okram Ibobi Singh','INC',new Date(2012,3,14),new Date()]
		    
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
			<h1>MANIPUR</h1>
			</div>
			<div id="dof">
				<span>Date of Formation - </span><span id="dofValue">21 January 1972</span>
			</div>
			<div id="totConst">
				<span>Number of Lok Sabha Seats - <span><span id="totConstValue"><a href="">2</a></span>
			</div>
		</div>
		<div id="personalities">
			<div id="leftPersonalities">
				<div  class="mainPersonalityBlock">
					<div class="mdesignation">
					Chief Minister
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/manipur/cm.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Okram Ibobi Singh</a></div>
						<div class="mparty"><a href="">INC</a></div>
						</div>
					</div>
					
				</div>
				<div class="mainPersonalityBlock">
					<div class="mdesignation">
					Governor
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/manipur/governor.png">
						<div class="mphotoDetails">
						<div class="mname">Vinod Duggal</div>
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
					<img src="/Resources/images/state/manipur/1.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Rishang Keishing</a></div>
						<div class="mparty"><a href="">INC</a></div>
						<div class="mpost">Member of Rajya Sabha</div>
						</div>
					</div>
					<div id="minister2" class="photo">
						<img src="/Resources/images/state/manipur/2.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Thokchom Meinya</a></div>
						<div class="mparty"><a href="">INC</a></div>
						<div class="mpost">Member of Lok Sabha</div>
						</div>
					</div>
					<div id = "minister3" class="photo">
						<img src="/Resources/images/state/manipur/3.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Thangso Baite</a></div>
						<div class="mparty"><a href="">INC</a></div>
						<div class="mpost">Member of Lok Sabha</div>
						</div>
					</div>
				</div>
			</div>
		</div><!--end of personalities -->
		<div id = "partiesInfo">
		<div id="partiesInfoHeading">List of Prominent Political Parties</div>
			<div id="partiesInfoCont">
			    
			    <a href="" class="PartiesList">INC</a>
			    <a href="" class="PartiesList">MSCP</a>
			    <a href="" class="PartiesList">AITC</a>
			    
			   

			</div>
		</div>
		<div id="chartContainer" style="width:500px;height:400px;display:inline-block;vertical-align:top;">

		</div>
		<div id="povertyStatus" style="display:inline-block;width:400px;height:400px;margin:0 auto;vertical-align:top; ">
		</div>
		<div id="chiefMinistersHeading">Chief Ministers of Manipur</div>
		<div id="pastChiefMinisters" style="width:100%;height:400px">
		</div>
		


	</div><!-- end of container -->
</div><!-- end of wrapper -->
<jsp:include page="../footer.jsp" />
</body>
</html>
