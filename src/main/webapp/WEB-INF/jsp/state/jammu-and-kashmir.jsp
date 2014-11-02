<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<title>Jammu and Kashmir | State of India | Know Your Candidate</title>
<link rel="shortcut icon" href="/Resources/images/title_icon.png">
<meta name="description" content="Jammu Kashmir - State of India. List of Chief Ministers, Political Parties and Politicians of Jammu Kashmir"/>
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
		  [ 'Ghulam Mohammed Sadiq','INC',new Date(1965, 2, 30), new Date(1971, 11, 12) ],
		    [ 'Syed Mir Qasim', 'INC',  new Date(1971, 11, 12),  new Date(1975, 1, 25) ],
		  [ 'Sheikh Abdullah','JKN' , new Date(1975, 1, 25),  new Date(1977,2,26) ],
		    [ 'President\'s Rule', '', new Date(1977,2,26),  new Date(1977, 6, 9) ],
		   [ 'Sheikh Abdullah','JKN', new Date(1977, 6, 9), new Date(1982, 8, 8) ],
		    ['Farooq Abdullah','JKN',new Date(1982,8,8),new Date(1984,6,2)],
		    ['Ghulam Mohammad Shah','Awami National Conference',new Date(1984,6,2),new Date(1986,2,6)],
		    ['President\'s Rule','',new Date(1986,2,6),new Date(1986,10,7)],
		    ['Farooq Abdullah','JKN',new Date(1986,10,7),new Date(1990,0,19)],
		    ['President\'s Rule','',new Date(1990,0,19),new Date(1996,9,9)],
		    ['Farooq Abdullah','JKN',new Date(1996,9,9),new Date(2002,9,18)],
		    ['President\'s Rule','',new Date(2002,9,18),new Date(2002,10,2)],
		    ['Mufti Mohammad Sayeed','PDP',new Date(2002,10,2),new Date(2005,10,2)],
		    ['Ghulam Nabi Azad','INC',new Date(2005,10,2),new Date(2008,6,11)],
		    ['President\'s Rule','',new Date(2008,6,11),new Date(2009,0,5)],
		    ['Omar Abdullah','JKN',new Date(2009,0,5),new Date()]
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
				<span>Number of Lok Sabha Seats - <span><span id="totConstValue"><a href="http://164.100.47.132/lssnew/Members/Statewiselist.aspx" target=_blank>6</a></span>
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
						<div class="mname"><a href="http://jkcmsecretariat.nic.in/" target=_blank>Omar Abdullah</a></div>
						<div class="mparty"><a href="http://www.jknc.in/" target=_blank>JKN</a></div>
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
						<div class="mname"><a href="http://www.archive.india.gov.in/govt/rajyasabhampbiodata.php?mpcode=126" target=_blank>Ghulam Nabi Azad</a></div>
						<div class="mparty"><a href="http://www.inc.in/" target=_blank>INC</a></div>
						<div class="mpost">Union Minister - Ministry of Health and Family Welfare</div>
						</div>
					</div>
					<div id="minister2" class="photo">
						<img src="/Resources/images/state/jammu-and-kashmir/2.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://www.archive.india.gov.in/govt/loksabhampbiodata.php?mpcode=2654" target=_blank>Farooq Abdullah</a></div>
						<div class="mparty"><a href="http://www.jknc.in/" target=_blank>JKN</a></div>
						<div class="mpost">Member of Lok Sabha</div>
						</div>
					</div>
					<div id = "minister3" class="photo">
						<img src="/Resources/images/state/jammu-and-kashmir/3.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://www.archive.india.gov.in/govt/rajyasabhampbiodata.php?mpcode=2104" target=_blank>Mohammad Shafi Uri</a></div>
						<div class="mparty"><a href="http://www.jknc.in/" target=_blank>JKN</a></div>
						<div class="mpost">Member of Rajya Sabha</div>
						</div>
					</div>
				</div>
			</div>
		</div><!--end of personalities -->
		<div id = "partiesInfo">
		<div id="partiesInfoHeading">List of Prominent Political Parties</div>
			<div id="partiesInfoCont">
			    
			    <a href="http://www.jknc.in/" target=_blank class="PartiesList">JKN</a>
			    <a href="http://www.inc.in/" target=_blank class="PartiesList">INC</a>
			    <a href="http://jkpdp.org/" target=_blank class="PartiesList">JKPDP</a>
			    
			   

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
