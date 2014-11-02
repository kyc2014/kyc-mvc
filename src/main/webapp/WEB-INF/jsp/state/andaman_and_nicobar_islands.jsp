<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<title>Andaman and Nicobar Islands | Union Territory of India | Know Your Candidate</title>
<link rel="shortcut icon" href="/Resources/images/title_icon.png">
<meta name="description" content="Andaman and Nicobar Islands - Union Territory of India. List of Administrators, Political Parties and Politicians of Andaman and Nicobar Islands."/>
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
          ['Year', 'BJP', 'INC'],
          ['2009',  1,     0],
          ['2004',  0,     1],
          ['1999',  1,     0],
          ['1998',  0,     1]
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

         var chart2 = new google.visualization.Timeline(document.getElementById('pastGovernors'));
         var dataTable = new google.visualization.DataTable();
          dataTable.addColumn({ type: 'string', id: 'CM' });
          dataTable.addColumn({ type: 'string', id: 'Party' });
		  dataTable.addColumn({ type: 'date', id: 'Start' });
		  dataTable.addColumn({ type: 'date', id: 'End' });

		  dataTable.addRows([
		    	['Manohar L. Kampani','',new Date(1982,10,12),new Date(1985,11,3)],
			['Tirath Singh Oberoi','',new Date(1985,11,4),new Date(1989,11,0)],
			['Romesh Bhandari','',new Date(1989,11,0),new Date(1990,1,24)],
			['Ranjit Singh Dayal','',new Date(1990,1,25),new Date(1990,11,0)],
			['Surjit Singh Barnala','',new Date(1990,11,0),new Date(1993,2,18)],
			['Vakkom Purushothaman','',new Date(1993,2,19),new Date(1996,2,18)],
			['Ishwari Prasad Gupta','',new Date(1996,11,23),new Date(2001,4,25)],
			['Nagendra Nath Jha','',new Date(2001,4,26),new Date(2004,0,4)],
			['Ramchandra Kapse','',new Date(2004,0,5),new Date(2006,4,30)],
			['Madan Mohan Lakhera','',new Date(2006,1,12),new Date(2006,11,29)],
			['Bhopinder Singh','',new Date(2006,11,29),new Date(2013,5,30)],
			['A. K. Singh','',new Date(2013,6,8),new Date()]
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
			<h1>ANDAMAN AND NICOBAR ISLANDS</h1>
			</div>
			<div id="dof">
				<span>Date of Formation - </span><span id="dofValue">1 November 1956</span>
			</div>
			<div id="totConst">
				<span>Number of Lok Sabha Seats - <span><span id="totConstValue"><a href="http://164.100.47.132/lssnew/Members/Statewiselist.aspx" target=_blank>1</a></span>
			</div>
		</div>
		<div id="personalities">
			<div id="leftPersonalities">

				<div  class="mainPersonalityBlock">
					<!--<div class="mdesignation">
					
					</div>-->
					
					
				</div>
				<div class="mainPersonalityBlock">
					<div class="mdesignation">
					Lieutenant Governor
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/andaman_and_nicobar_islands/governor.png">
						<div class="mphotoDetails">
						<div class="mname">A.K Singh</div>
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
					<img src="/Resources/images/state/andaman_and_nicobar_islands/1.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://archive.india.gov.in/govt/loksabhampbiodata.php?mpcode=371" target=_blank>Bishnu Pada Ray</a></div>
						<div class="mparty"><a href="http://www.bjp.org/" target=_blank>BJP</a></div>
						<div class="mpost">Member of Parliament</div>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		<!--end of personalities -->
		<div id = "partiesInfo">
		<div id="partiesInfoHeading">List of Prominent Political Parties</div>
			<div id="partiesInfoCont">
			    <a href="http://www.bjp.org/" class="PartiesList" target=_blank>BJP</a>
			    <a href="http://www.inc.in/" class="PartiesList" target=_blank>INC</a>
			    
			   
		        </div>
		</div>
		<div id="chartContainer">

		</div>
		<div id="povertyStatus" style="display:inline-block;width:400px;height:400px;margin:0 auto;vertical-align:top; ">
		</div>
		<div id="chiefMinistersHeading">Lieutenant Governors of Andaman & Nicobar Islands</div>
		<div id="pastGovernors" >
		</div>
		


	</div><!-- end of container -->
</div><!-- end of wrapper -->
<jsp:include page="../footer.jsp" />
</body>
</html>
