<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<title>Assam | State of India | Know Your Candidate</title>
<link rel="shortcut icon" href="/Resources/images/title_icon.png">
<meta name="description" content="Assam - State of India. List of Chief Ministers, Political Parties and Politicians of Assam."/>
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
		if($(this).find('.mphotoDetails').height() == 134)
		{
			$(this).find('.mname').css({"font":"12pt opensans"});
		}
		$(this).find('.mphotoDetails').css({"transform":"translate(0px,"+neg+")","-ms-transform":"translate(0px,"+neg+")","-webkit-transform":"translate(0px,"+neg+")"});
		
	},function(){
		
		$(this).find('.mphotoDetails').css({"transform":"translate(0px,0px)","-ms-transform":"translate(0px,0px)","-webkit-transform":"translate(0px,0px)"});
	});
		
	
		function drawChart()
		{

		var data1 = google.visualization.arrayToDataTable([
          ['Year', 'AGP', 'AIUDF', 'BPF','BJP','INC','Others'],
          ['2011',  10,      18, 12,5,78,3],
          ['2006',  24,     10, 3,10,53,26],
          ['2001',  19,       0, 0,8,71,28],
          ['1996',  59,    0, 0,4,34,29]
        ]);
/*total assembly const - 126*/
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
		  [ 'Gopinath Bordoloi','INC',new Date(1947, 7, 15), new Date(1950, 7, 6) ],
		    [ 'Bishnu Ram Medhi', 'INC',  new Date(1950, 7, 9),  new Date(1957, 11, 27) ],
		  [ 'Bimala Prasad Chaliha','INC' , new Date(1957, 11, 28),  new Date(1970, 10, 6) ],
		  [ 'Mahendra Mohan Choudhry','INC' , new Date(1970, 10, 11),  new Date(1972,0,30) ],
		    [ 'Sarat Chandra Sinha', 'INC', new Date(1972, 0, 31),  new Date(1978, 2, 12) ],
		    [ 'Golap Borbora', 'JP', new Date(1978, 2, 12),  new Date(1979,8,4) ],
		    [ 'Jogendra Nath Hazarika','JP', new Date(1979,8,9), new Date(1979,11,11) ],
		    ['President rule','',new Date(1979, 11, 12),new Date(1980,11,5)],
		    ['Anowara Taimur','INC',new Date(1980,11,6),new Date(1981,5,30)],
		    ['President rule','',new Date(1981,5,30),new Date(1982,0,13)],
		    ['Kesab Chandra Gogoi','INC',new Date(1982,0,13),new Date(1982,2,19)],
		    ['President rule','',new Date(1982,2,19),new Date(1983,1,27)],
		    ['Hiteswar Saikia','INC',new Date(1983,1,27),new Date(1985,11,23)],
		    ['Prafulla Kumar Mahanta','AGP',new Date(1985,11,24),new Date(1990,10,28)],
		    ['President rule','',new Date(1990,10,28),new Date(1991,5,30)],
		    ['Hiteswar Saikia','INC',new Date(1991,5,30),new Date(1996,3,22)],
		    ['Bhumidhar Barman','INC',new Date(1996,3,22),new Date(1996,4,14)],
		    ['Prafulla Kumar Mahanta','AGP',new Date(1996,4,15),new Date(2001,4,17)],
		    ['Tarun Gogoi','INC',new Date(2001,4,17),new Date()]
		    
		    
		    


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
			<h1>ASSAM</h1>
			</div>
			<div id="dof">
				<span>Date of Formation - </span><span id="dofValue">15 August 1947</span>
			</div>
			<div id="totConst">
				<span>Number of Lok Sabha Seats - <span><span id="totConstValue"><a href="">14</a></span>
			</div>
		</div>
		<div id="personalities">
			<div id="leftPersonalities">
				<div  class="mainPersonalityBlock">
					<div class="mdesignation">
					Chief Minister
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/Assam/cm.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Tarun Gogoi</a></div>
						<div class="mparty"><a href="">INC</a></div>
						</div>
					</div>
					
				</div>
				<div class="mainPersonalityBlock">
					<div class="mdesignation">
					Governor
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/Assam/governor.jpg">
						<div class="mphotoDetails">
						<div class="mname">J.B Patnaik</div>
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
					<img src="/Resources/images/state/Assam/1.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Badruddin Ajmal</a></div>
						<div class="mparty"><a href="">AIUDF</a></div>
						<div class="mpost">Party Chairperson</div>
						</div>
					</div>
					<div id="minister2" class="photo">
						<img src="/Resources/images/state/Assam/2.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Paban Singh Ghatowar</a></div>
						<div class="mparty"><a href="">INC</a></div>
						<div class="mpost">Minister of State (Independent Charges) - Development of North Eastern Region,Parliamentary Affairs</div>
						</div>
					</div>
					<div id = "minister3" class="photo">
						<img src="/Resources/images/state/Assam/3.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Prafulla Kumar Mahanta</a></div>
						<div class="mparty"><a href="">AGP</a></div>
						<div class="mpost">Party Chairperson,Former CM</div>
						</div>
					</div>
				</div>
			</div>
		</div><!--end of personalities -->
		<div id = "partiesInfo">
		<div id="partiesInfoHeading">List of Prominent Political Parties</div>
			<div id="partiesInfoCont">
				<a href="" class="PartiesList">AGP</a>
			    <a href="" class="PartiesList">AIUDF</a>
			    <a href="" class="PartiesList">BPF</a>
			    <a href="" class="PartiesList">BJP</a>
			    <a href="" class="PartiesList">INC</a>
			   
			       
			    
			   

			</div>
		</div>
		<div id="chartContainer">

		</div>
		<div id="povertyStatus" style="display:inline-block;width:400px;height:400px;margin:0 auto;vertical-align:top; ">
		</div>
		<div id="chiefMinistersHeading">Chief Ministers of Assam</div>
		<div id="pastChiefMinisters" >
		</div>
		


	</div><!-- end of container -->
</div><!-- end of wrapper -->
<jsp:include page="../footer.jsp" />
</body>
</html>
