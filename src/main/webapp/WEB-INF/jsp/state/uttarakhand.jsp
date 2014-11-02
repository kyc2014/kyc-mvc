<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<title>Uttarakhand | State of India | Know Your Candidate</title>
<link rel="shortcut icon" href="/Resources/images/title_icon.png">
<meta name="description" content="Uttarakhand - State of India. List of Chief Ministers, Political Parties and Politicians of Uttarakhand."/>
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
          ['Year', 'INC', 'BJP', 'BSP','Others'],
          ['2012',  32,      31, 3,4],
          ['2007',  34,     21, 8,6],
          ['2002',  36,       19, 7,8]
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
		  [ 'Nityanand Swami','BJP',new Date(2000, 10, 9), new Date(2001, 9, 29) ],
		  [ 'Bhagat Singh Koshiyari', 'BJP',  new Date(2001, 9, 30),  new Date(2002, 2, 1) ],
		  [ 'N.D.Tiwari','INC' , new Date(2002, 2, 2),  new Date(2007,2,7) ],
		    [ 'B.C.Khanduri', 'BJP', new Date(2007,2,8),  new Date(2009, 5, 23) ],
		    [ 'Ramesh Pokhriyal Nishank','BJP', new Date(2009, 5, 24), new Date(2011, 8, 10) ],
		    ['B.C.Khanduri','BJP',new Date(2011,8,11),new Date(2012,2,13)],
		    ['Vijay Bahuguna','INC',new Date(2012,2,13),new Date(2014,0,31)],
		    ['Harish Rawat','INC',new Date(2014,1,1),new Date()]
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
			<h1>UTTARAKHAND</h1>
			</div>
			<div id="dof">
				<span>Date of Formation - </span><span id="dofValue">9 November 2000</span>
			</div>
			<div id="totConst">
				<span>Number of Lok Sabha Seats - <span><span id="totConstValue"><a href="http://164.100.47.132/lssnew/Members/Statewiselist.aspx" target=_blank>5</a></span>
			</div>
		</div>
		<div id="personalities">
			<div id="leftPersonalities">
				<div  class="mainPersonalityBlock">
					<div class="mdesignation">
					Chief Minister
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/uttarakhand/cm.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://www.archive.india.gov.in/govt/loksabhampbiodata.php?mpcode=2864" target=_blank>Harish Rawat</a></div>
						<div class="mparty"><a href="http://www.ukpcc.org.in/" target=_blank>INC</a></div>
						</div>
					</div>
					
				</div>
				<div class="mainPersonalityBlock">
					<div class="mdesignation">
					Governor
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/uttarakhand/governor.png">
						<div class="mphotoDetails">
						<div class="mname">Aziz Qureshi</div>
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
					<img src="/Resources/images/state/uttarakhand/1.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://www.hindustantimes.com/india-news/dehradun/bjp-likely-to-field-bc-khanduri-from-garhwal-ls-seat/article1-1193571.aspx" target=_blank>B. C. Khanduri</a></div>
						<div class="mparty"><a href="http://www.bjputtarakhand.org/" target=_blank>BJP</a></div>
						<div class="mpost">Former CM</div>
						</div>
					</div>
					<div id="minister2" class="photo">
						<img src="/Resources/images/state/uttarakhand/2.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://www.ndtv.com/article/india/uttarakhand-chief-minister-vijay-bahuguna-resigns-477634" target=_blank>Vijay Bahuguna</a></div>
						<div class="mparty"><a href="http://www.ukpcc.org.in/" target=_blank>INC</a></div>
						<div class="mpost">Former CM</div>
						</div>
					</div>
					<div id = "minister3" class="photo">
						<img src="/Resources/images/state/uttarakhand/3.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://www.archive.india.gov.in/govt/loksabhampbiodata.php?mpcode=4363" target=_blank>Pradeep Tamta</a></div>
						<div class="mparty"><a href="http://www.ukpcc.org.in/" target=_blank>INC</a></div>
						<div class="mpost">Member of Lok Sabha</div>
						</div>
					</div>
				</div>
			</div>
		</div><!--end of personalities -->
		<div id = "partiesInfo">
		<div id="partiesInfoHeading">List of Prominent Political Parties</div>
			<div id="partiesInfoCont">
			    
			    <a href="http://www.ukpcc.org.in/" target=_blank class="PartiesList">INC</a>
			    <a href="http://www.bjputtarakhand.org/" target=_blank class="PartiesList">BJP</a>
			    <a href="http://www.bspindia.org/" target=_blank class="PartiesList">BSP</a>
			    
			   

			</div>
		</div>
		<div id="chartContainer" style="width:500px;height:400px;display:inline-block;vertical-align:top;">

		</div>
		<div id="povertyStatus" style="display:inline-block;width:400px;height:400px;margin:0 auto;vertical-align:top; ">
		</div>
		<div id="chiefMinistersHeading">Chief Ministers of Uttarakhand</div>
		<div id="pastChiefMinisters" style="width:100%;height:400px">
		</div>
		


	</div><!-- end of container -->
</div><!-- end of wrapper -->
<jsp:include page="../footer.jsp" />
</body>
</html>
