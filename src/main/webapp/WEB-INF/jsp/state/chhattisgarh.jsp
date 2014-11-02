<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<title>Chhattisgarh | State of India | Know Your Candidate</title>
<link rel="shortcut icon" href="/Resources/images/title_icon.png">
<meta name="description" content="Chhattisgarh - State of India. List of Chief Ministers, Political Parties and Politicians of Chhattisgarh."/>
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
          ['Year',  'BJP','BSP','INC','Others'],
          ['2013',  49,      1, 39,1],
          ['2008',  50,2,38,0],
          ['2003',  50,2,37,1],
         
        ]);
/*total assembly const - 90*/
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
		  ['Ajit Jogi','INC',new Date(2000, 10, 1), new Date(2003, 11, 7) ],
		   /* [ 'Raman Singh', 'BJP',  new Date(2003, 11, 7),  new Date(2008,11,7) ],
		   [ 'Raman Singh', 'BJP',  new Date(2008, 11, 7),  new Date(2013,11,12) ],
		 [ 'Raman Singh', 'BJP',  new Date(2013, 11, 12),  new Date() ]    */
		 [ 'Raman Singh', 'BJP',  new Date(2003, 11, 7),  new Date() ]  


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
			<h1>CHHATTISGARH</h1>
			</div>
			<div id="dof">
				<span>Date of Formation - </span><span id="dofValue">01 November 2000</span>
			</div>
			<div id="totConst">
				<span>Number of Lok Sabha Seats - <span><span id="totConstValue"><a href="http://164.100.47.132/lssnew/Members/Statewiselist.aspx" target=_blank>11</a></span>
			</div>
		</div>
		<div id="personalities">
			<div id="leftPersonalities">
				<div  class="mainPersonalityBlock">
					<div class="mdesignation">
					Chief Minister
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/chhattisgarh/cm.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://drramansingh.in/user/biography.aspx" target=_blank>Raman Singh</a></div>
						<div class="mparty"><a href="http://www.bjpcg.com/" target=_blank>BJP</a></div>
						</div>
					</div>
					
				</div>
				<div class="mainPersonalityBlock">
					<div class="mdesignation">
					Governor
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/chhattisgarh/governor.jpg">
						<div class="mphotoDetails">
						<div class="mname">Shekhar Dutt</div>
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
					<img src="/Resources/images/state/chhattisgarh/1.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://www.archive.india.gov.in/govt/loksabhampbiodata.php?mpcode=222" target=_blank>Charan Das Mahant</a></div>
						<div class="mparty"><a href="http://www.pccchhattisgarh.org/index-en" target=_blank>INC</a></div>
						<div class="mpost">Minister of State - Agriculture and Food Processing Industries</div>
						</div>
					</div>
					<div id="minister2" class="photo">
						<img src="/Resources/images/state/chhattisgarh/2.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://www.pccchhattisgarh.org/shri-ajit-jogi" target=_blank>Ajit Jogi</a></div>
						<div class="mparty"><a href="http://www.pccchhattisgarh.org/index-en" target=_blank>INC</a></div>
						<div class="mpost">Former CM</div>
						</div>
					</div>
					<div id = "minister3" class="photo">
						<img src="/Resources/images/state/chhattisgarh/3.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://www.archive.india.gov.in/govt/loksabhampbiodata.php?mpcode=33" target=_blank>Ramesh Bais</a></div>
						<div class="mparty"><a href="http://www.bjpcg.com/" target=_blank>BJP</a></div>
						<div class="mpost">MP - LokSabha</div>
						</div>
					</div>
				</div>
			</div>
		</div><!--end of personalities -->
		<div id = "partiesInfo">
		<div id="partiesInfoHeading">List of Prominent Political Parties</div>
			<div id="partiesInfoCont">
			
			
			    <a href="http://www.bjpcg.com/" target=_blank class="PartiesList">BJP</a>
			    <a href="http://www.bspindia.org/chhattisgarh/" target=_blank class="PartiesList">BSP</a>
			    <a href="http://www.pccchhattisgarh.org/index-en" target=_blank class="PartiesList">INC</a>
			   
			       
			    
			   

			</div>
		</div>
		<div id="chartContainer">

		</div>
		<div id="povertyStatus" style=" ">
		</div>
		<div id="chiefMinistersHeading">Chief Ministers of Chhattisgarh</div>
		<div id="pastChiefMinisters" >
		</div>
		


	</div><!-- end of container -->
</div><!-- end of wrapper -->
<jsp:include page="../footer.jsp" />
</body>
</html>
