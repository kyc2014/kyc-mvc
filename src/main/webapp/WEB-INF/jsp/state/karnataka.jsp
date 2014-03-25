<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<title>Karnataka | State of India | Know Your Candidate</title>
<link rel="shortcut icon" href="/Resources/images/title_icon.png">
<meta name="description" content="Karnataka - State of India. List of Chief Ministers, Political Parties and Politicians of Karnataka."/>
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
          ['Year', 'INC', 'BJP', 'JD(S)','Others'],
          ['2013',  122,      40, 40,22],
          ['2008',  80,     110, 28,6],
          ['2004',  64,       79, 58,23],
          ['1999',  132,    44, 10,36]
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
		  [ 'D. Devaraj Urs','INC',new Date(1972, 2, 20), new Date(1977, 11, 31) ],
		    [ 'President Rule', '',  new Date(1977, 11, 31),  new Date(1978, 1, 28) ],
		  [ 'D. Devaraj Urs','INC' , new Date(1978, 1, 28),  new Date(1980,0,7) ],
		    [ 'R. Gundu Rao', 'INC', new Date(1980,0,12),  new Date(1983, 0, 6) ],
		    [ 'Ramakrishna Hegde','JP', new Date(1983, 0, 10), new Date(1984, 11, 29) ],
		    ['Ramakrishna Hegde','JP',new Date(1985,2,8),new Date(1986,1,13)],
		    ['Ramakrishna Hegde','JP',new Date(1986,1,16),new Date(1988,7,10)],
		    ['S. R. Bommai','JP',new Date(1988,2,13),new Date(1989,3,21)],
		    ['President Rule','',new Date(1989,3,21),new Date(1989,10,30)],
		    ['Veerendra Patil','INC',new Date(1989,10,30),new Date(1990,9,10)],
		    ['President Rule','',new Date(1990,9,10),new Date(1990,9,17)],
		    ['S. Bangarappa','INC',new Date(1990,9,17),new Date(1992,10,19)],
		    ['M. Veerappa Moily','INC',new Date(1992,10,19),new Date(1994,11,11)],
		    ['H. D. Deve Gowda	','JD',new Date(1994,11,11),new Date(1996,4,31)],
		    ['J. H. Patel','JD',new Date(1996,4,31),new Date(1999,9,7)],
		    ['S. M. Krishna','INC',new Date(1999,9,11),new Date(2004,4,28)],
		    ['Dharam Singh','INC',new Date(2004,4,28),new Date(2006,4,28)],
		    ['H. D. Kumaraswamy','JD(S)',new Date(2006,1,3),new Date(2007,9,8)],
		    ['President Rule','',new Date(2007,9,9),new Date(2007,10,11)],
		    ['B. S. Yeddyurappa ','BJP',new Date(2007,10,12),new Date(2007,10,19)],
		    ['President Rule','',new Date(2007,10,20),new Date(2008,4,27)],
		    ['B. S. Yeddyurappa','BJP',new Date(2008,4,30),new Date(2011,6,31)],
		    ['D. V. Sadananda Gowda','BJP',new Date(2011,7,4), new Date(2012,6,12)],
		    ['Jagadish Shettar','BJP',new Date(2012,6,12),new Date(2013,4,12)],
		    ['Siddaramaiah','INC',new Date(2013,4,13),new Date()]


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
			<h1>KARNATAKA</h1>
			</div>
			<div id="dof">
				<span>Date of Formation - </span><span id="dofValue">1 November 1956</span>
			</div>
			<div id="totConst">
				<span>Number of Lok Sabha Seats - <span><span id="totConstValue"><a href="">28</a></span>
			</div>
		</div>
		<div id="personalities">
			<div id="leftPersonalities">
				<div  class="mainPersonalityBlock">
					<div class="mdesignation">
					Chief Minister
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/Karnataka/cm.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Siddaramaiah</a></div>
						<div class="mparty"><a href="">INC</a></div>
						</div>
					</div>
					
				</div>
				<div class="mainPersonalityBlock">
					<div class="mdesignation">
					Governor
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/Karnataka/governor.jpg">
						<div class="mphotoDetails">
						<div class="mname">Hansraj Bhardwaj</div>
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
					<img src="/Resources/images/state/Karnataka/1.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">H.D Deve Gowda</a></div>
						<div class="mparty"><a href="">JD(S)</a></div>
						<div class="mpost">Former PM</div>
						</div>
					</div>
					<div id="minister2" class="photo">
						<img src="/Resources/images/state/Karnataka/2.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">K.H Muniyappa</a></div>
						<div class="mparty"><a href="">INC</a></div>
						<div class="mpost">Minister of State(Independent Charges) - Micro,Small and Medium Enterprises</div>
						</div>
					</div>
					<div id = "minister3" class="photo">
						<img src="/Resources/images/state/Karnataka/3.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">H.D Kumaraswamy</a></div>
						<div class="mparty"><a href="">JD(S)</a></div>
						<div class="mpost">Former CM</div>
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
			    <a href="" class="PartiesList">JD(S)</a>
			    
			   

			</div>
		</div>
		<div id="chartContainer" style="width:500px;height:400px;display:inline-block;vertical-align:top;">

		</div>
		<div id="povertyStatus" style="display:inline-block;width:400px;height:400px;margin:0 auto;vertical-align:top; ">
		</div>
		<div id="chiefMinistersHeading">Chief Ministers of Karnataka</div>
		<div id="pastChiefMinisters" style="width:100%;height:400px">
		</div>
		


	</div><!-- end of container -->
</div><!-- end of wrapper -->
<jsp:include page="../footer.jsp" />
</body>
</html>
