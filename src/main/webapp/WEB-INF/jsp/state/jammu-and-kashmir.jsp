<<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<title>Jammu and Kashmir</title>
<meta name="description" content="Jammu and Kashmir - State of India. List of Chief Ministers, Political Parties and Politicians of Jammu and Kashmir."/>
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
          ['Year', 'JKN', 'INC', 'Others'],
          ['2008',  28,      17, 42],
          ['2002',  28,     20,  39],
          ['1996',  57,     7,   23],
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
		  [ 'Ghulam Mohammed Sadiq','INC',new Date(1965, 3, 30), new Date(1971, 12, 12) ],
		    [ 'Syed Mir Qasim', 'INC',  new Date(1971, 12, 12),  new Date(1975, 2, 25) ],
		  [ 'Sheikh Abdullah','JKN' , new Date(1975, 2, 25),  new Date(1977,3,26) ],
		    [ 'President\'s Rule', '', new Date(1977,3,26),  new Date(1977, 7, 9) ],
		    [ 'Sheikh Abdullah','JKN', new Date(1977, 7, 9), new Date(1982, 9, 8) ],
		    ['Farooq Abdullah','JKN',new Date(1982,9,8),new Date(1984,7,2)],
		    ['Ghulam Mohammad Shah','Awami National Conference',new Date(1984,7,2),new Date(1986,3,6)],
		    ['President\'s Rule','',new Date(1986,3,6),new Date(1986,11,7)],
		    ['Farooq Abdullah','JKN',new Date(1986,11,7),new Date(1990,1,19)],
		    ['President\'s Rule','',new Date(1990,1,19),new Date(1996,10,9)],
		    ['Farooq Abdullah','JKN',new Date(1996,10,9),new Date(2002,10,18)],
		    ['President\'s Rule','',new Date(2002,10,18),new Date(2002,11,2)],
		    ['Mufti Mohammad Sayeed','PDP',new Date(2002,11,2),new Date(2005,11,2)],
		    ['Ghulam Nabi Azad','INC',new Date(2005,11,2),new Date(2008,7,11)],
		    ['President\'s Rule','',new Date(2008,7,11),new Date(2009,1,5)],
		    ['Omar Abdullah','JKN',new Date(2009,1,5),new Date()]
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
			<h1>JAMMU AND KASHMIR</h1>
			</div>
			<div id="dof">
				<span>Date of Formation - </span><span id="dofValue">30 March 1965</span>
			</div>
			<div id="totConst">
				<span>Number of Lok Sabha Seats - <span><span id="totConstValue"><a href="">6</a></span>
			</div>
		</div>
		<div id="personalities">
			<div id="leftPersonalities">
				<div  class="mainPersonalityBlock">
					<div class="mdesignation">
					Chief Minister
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/jammu-and-kashmir/cm.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Omar Abdullah</a></div>
						<div class="mparty"><a href="">JKN</a></div>
						</div>
					</div>
					
				</div>
				<div class="mainPersonalityBlock">
					<div class="mdesignation">
					Governor
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/jammu-and-kashmir/governor.jpg">
						<div class="mphotoDetails">
						<div class="mname">Narinder Nath Vohra</div>
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
					<img src="/Resources/images/state/jammu-and-kashmir/1.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Ghulam Nabi Azad</a></div>
						<div class="mparty"><a href="">INC</a></div>
						<div class="mpost">Union Minister - Ministry of Health and Family Welfare</div>
						</div>
					</div>
					<div id="minister2" class="photo">
						<img src="/Resources/images/state/jammu-and-kashmir/2.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Farooq Abdullah</a></div>
						<div class="mparty"><a href="">JKN</a></div>
						<div class="mpost">Member of Lok Sabha</div>
						</div>
					</div>
					<div id = "minister3" class="photo">
						<img src="/Resources/images/state/jammu-and-kashmir/3.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href=""></a>Mohammad Shafi Uri</div>
						<div class="mparty"><a href="">JKN</a></div>
						<div class="mpost">Member of Rajya Sabha</div>
						</div>
					</div>
				</div>
			</div>
		</div><!--end of personalities -->
		<div id = "partiesInfo">
		<div id="partiesInfoHeading">List of Prominent Political Parties</div>
			<div id="partiesInfoCont">
			    
			    <a href="" class="PartiesList">JKN</a>
			    <a href="" class="PartiesList">INC</a>
			    <a href="" class="PartiesList">JKPDP</a>
			    
			   

			</div>
		</div>
		<div id="chartContainer" style="width:500px;height:400px;display:inline-block;vertical-align:top;">

		</div>
		<div id="povertyStatus" style="display:inline-block;width:400px;height:400px;margin:0 auto;vertical-align:top; ">
		</div>
		<div id="chiefMinistersHeading">Chief Ministers of Jammu & Kashmir</div>
		<div id="pastChiefMinisters" style="width:100%;height:400px">
		</div>
		


	</div><!-- end of container -->
</div><!-- end of wrapper -->
<jsp:include page="../footer.jsp" />
</body>
</html>
