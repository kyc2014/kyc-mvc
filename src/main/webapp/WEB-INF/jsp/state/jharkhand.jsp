<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<title>Jharkhand | State of India | Know Your Candidate</title>
<link rel="shortcut icon" href="/Resources/images/title_icon.png">
<meta name="description" content="Jharkhand - State of India. List of Chief Ministers, Political Parties and Politicians of Jharkhand."/>
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
          ['Year',  'AJSU','BJP','INC','JD(U)','JMM','RJD','Others'],
          ['2009',  6,      18, 13,2,18,5,19],
          ['2005',  2,30,9,6,17,7,10],
          
         
        ]);
/*total assembly const - 81*/
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
			  ['Babulal Marandi','BJP',new Date(2000, 11, 15), new Date(2003, 3, 17) ],
			  [ 'Arjun Munda', 'BJP',  new Date(2003, 3, 18),  new Date(2005,3,2) ],
		  	  [ 'Shibu Soren', 'JMM',  new Date(2005,3,2),  new Date(2005,3,12) ],
		  	  [ 'Arjun Munda', 'BJP',  new Date(2005,3,12),  new Date(2006,9,14) ],
		  	  [ 'Madhu Koda', 'Independent',new Date(2006,9,14),  new Date(2008,8,23)],
		  	  [ 'Shibu Soren', 'JMM',  new Date(2008, 8, 27),  new Date(2009,1,18) ],
		  	  [ 'President rule', '',  new Date(2009,1,19),  new Date(2009,12,29) ],
		  	  [ 'Shibu Soren', 'JMM',  new Date(2009,12,30),  new Date(2010,5,31) ],
		  	  [ 'President rule', '',  new Date(2010,6,1),  new Date(2010,9,11) ],
		  	  [ 'Arjun Munda', 'BJP',  new Date(2010,9,11),  new Date(2013,1,18) ],
		  	  [ 'President rule', '',  new Date(2013,1,18),  new Date(2013,7,12) ],
		  	  [ 'Hemant Soren', 'JMM',  new Date(2013,7,13),  new Date() ]

		    
		    


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
			<h1>JHARKHAND</h1>
			</div>
			<div id="dof">
				<span>Date of Formation - </span><span id="dofValue">15 November 2000</span>
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
						<img src="/Resources/images/state/Jharkhand/cm.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Hemant Soren</a></div>
						<div class="mparty"><a href="">JMM</a></div>
						</div>
					</div>
					
				</div>
				<div class="mainPersonalityBlock">
					<div class="mdesignation">
					Governor
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/Jharkhand/governor.jpg">
						<div class="mphotoDetails">
						<div class="mname">Syed Ahmed</div>
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
					<img src="/Resources/images/state/Jharkhand/1.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Yashwant Sinha</a></div>
						<div class="mparty"><a href="">BJP</a></div>
						<div class="mpost">MP - LokSabha</div>
						</div>
					</div>
					<div id="minister2" class="photo">
						<img src="/Resources/images/state/Jharkhand/2.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Arjun Munda</a></div>
						<div class="mparty"><a href="">BJP</a></div>
						<div class="mpost">Former CM</div>
						</div>
					</div>
					<div id = "minister3" class="photo">
						<img src="/Resources/images/state/Jharkhand/3.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Shibu Soren</a></div>
						<div class="mparty"><a href="">JMM</a></div>
						<div class="mpost">Former CM , Former Minister of Coal</div>
						</div>
					</div>
				</div>
			</div>
		</div><!--end of personalities -->
		<div id = "partiesInfo">
		<div id="partiesInfoHeading">List of Prominent Political Parties</div>
			<div id="partiesInfoCont">
			
				<a href="" class="PartiesList">AJSU</a>
			    <a href="" class="PartiesList">BJP</a>
			    
			    <a href="" class="PartiesList">INC</a>
			   <a href="" class="PartiesList">JD(U)</a>
			     <a href="" class="PartiesList">JMM</a>
			     <a href="" class="PartiesList">RJD</a>  
			    
			   

			</div>
		</div>
		<div id="chartContainer">

		</div>
		<div id="povertyStatus" style=" ">
		</div>
		<div id="chiefMinistersHeading">Chief Ministers of Jharkhand</div>
		<div id="pastChiefMinisters" >
		</div>
		


	</div><!-- end of container -->
</div><!-- end of wrapper -->
<jsp:include page="../footer.jsp" />
</body>
</html>
