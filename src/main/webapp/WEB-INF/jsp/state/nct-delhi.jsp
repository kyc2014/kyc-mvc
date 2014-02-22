<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<title>Delhi</title>
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
	$('.mdesignation').css({"font":"12pt opensans"});
	
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
          ['Year',  'AAP','BJP','INC','Others'],
          ['2013',28,31,8,3 ],
          ['2008',0,43,23,4],
          ['2003',0,20,47,3],
          ['1998', 0,15,52,3 ]
         
          
         
        ]);
/*total assembly const - 70 + 1 elected anglo indian member*/
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
			 ['Chaudhary Brahm Prakash',' INC',new Date(1952,0,0),new Date(1955,0,0)],
 			['G N Singh',' INC',new Date(1955,0,0),new Date(1956,0,0)],
			['President\'s Rule',' ',new Date(1956,0,0),new Date(1993,0,0)],
			['Madan Lal Khurana',' BJP',new Date(1993,0,0),new Date(1996,0,0)],
			['Sahib Singh Verma',' BJP',new Date(1996,0,0),new Date(1998,0,0)],
			['Sushma Swaraj',' BJP',new Date(1998,0,0),new Date(1998,0,0)],
			['Sheila Dikshit',' INC',new Date(1998,0,0),new Date(2003,0,0)],
			['Sheila Dikshit',' INC',new Date(2003,0,0),new Date(2008,0,0)],
			['Sheila Dikshit',' INC',new Date(2008,0,0),new Date(2013,0,0)],
			['Arvind Kejriwal',' Aam Aadmi Party',new Date(2013,0,0),new Date(2014,0,0)],
			['President\'s Rule',' ',new Date(2014,0,0),new Date()]		    


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
			DELHI
			</div>
			<div id="dof">
				<span>Date of Formation - </span><span id="dofValue">1911</span>
			</div>
			<div id="totConst">
				<span>Number of Lok Sabha Seats - <span><span id="totConstValue"><a href="">7</a></span>
			</div>
		</div>
		<div id="personalities">
			<div id="leftPersonalities">
				<div  class="mainPersonalityBlock">
					<div class="mdesignation">
					Chief Minister
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/nct-delhi/cm.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">President's Rule</a></div>
						<div class="mparty"><a href=""></a></div>
						</div>
					</div>
					
				</div>
				<div class="mainPersonalityBlock">
					<div class="mdesignation">
					Lieutenant Governor
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/nct-delhi/governor.png">
						<div class="mphotoDetails">
						<div class="mname">Najeeb Jung</div>
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
					<img src="/Resources/images/state/nct-delhi/1.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Sheila Dikshit</a></div>
						<div class="mparty"><a href="">INC</a></div>
						<div class="mpost">Former CM</div>
						</div>
					</div>
					<div id="minister2" class="photo">
						<img src="/Resources/images/state/nct-delhi/2.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Arvind Kejriwal</a></div>
						<div class="mparty"><a href="">Aam Aadmi Party</a></div>
						<div class="mpost">Former CM</div>
						</div>
					</div>
					<div id = "minister3" class="photo">
						<img src="/Resources/images/state/nct-delhi/3.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Dr. Harsh Vardhan</a></div>
						<div class="mparty"><a href="">BJP</a></div>
						<div class="mpost">Delhi Cheif Ministerial Candidate</div>
						</div>
					</div>
				</div>
			</div>
		</div><!--end of personalities -->
		<div id = "partiesInfo">
		<div id="partiesInfoHeading">List of Prominent Political Parties</div>
			<div id="partiesInfoCont">
			
				
			    <a href="" class="PartiesList">AAP</a>
			    <a href="" class="PartiesList">BJP</a>
			   <a href="" class="PartiesList">INC</a>
			   
			    
			   

			</div>
		</div>
		<div id="chartContainer">

		</div>
		<div id="povertyStatus" style=" ">
		</div>
		<div id="chiefMinistersHeading">Chief Ministers of Delhi</div>
		<div id="pastChiefMinisters" >
		</div>
		


	</div><!-- end of container -->
</div><!-- end of wrapper -->
<jsp:include page="../footer.jsp" />
</body>
</html>
