<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<title>Daman and Diu | Union Territory of India | Know Your Candidate</title>
<link rel="shortcut icon" href="/Resources/images/title_icon.png">
<meta name="description" content="Daman and Diu - Union Territory of India. List of Administrators, Political Parties and Politicians of Daman and Diu."/>
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
          ['1999',  0,     1],
          ['1998',  1,     0]
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

         var chart2 = new google.visualization.Timeline(document.getElementById('pastAdministrators'));
         var dataTable = new google.visualization.DataTable();
          dataTable.addColumn({ type: 'string', id: 'CM' });
          dataTable.addColumn({ type: 'string', id: 'Party' });
		  dataTable.addColumn({ type: 'date', id: 'Start' });
		  dataTable.addColumn({ type: 'date', id: 'End' });

		 dataTable.addRows([['Gopal Singh','',new Date(1987,5,30),new Date(1989,7,18)],
['Khurshed Alam Khan','',new Date(1989,7,18),new Date(1991,3,25)],
['Bhanu Prakash Singh','',new Date(1991,3,25),new Date(1992,3,16)],
['K.S. Baidwan','',new Date(1992,3,16),new Date(1994,3,28)],
['Ramesh Chandra','',new Date(1994,3,28),new Date(1995,7,15)],
['S.P. Aggarwal','',new Date(1995,7,15),new Date(1998,6,26)],
['Ramesh Negi','',new Date(1998,6,26),new Date(1999,2,23)],
['Sanat Kaul','',new Date(1999,2,23),new Date(1999,4,23)],
['Ramesh Negi','',new Date(1999,4,23),new Date(1999,7,19)],
['O.P. Kelkar','',new Date(1999,7,19),new Date(2003,7,19)],
['Arun Mathur','',new Date(2003,7,20),new Date(2006,7,20)],
['R.K. Verma','',new Date(2006,7,21),new Date(2009,7,21)],
['Shri Satya Gopal','',new Date(2009,7,22),new Date(2011,7,22)],
['Shri. Narendra Kumar','',new Date(2011,7,23),new Date(2012,7,23)],
['B. S. Bhalla','',new Date(2012,7,23),new Date()]
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
			<h1>DAMAN AND DIU</h1>
			</div>
			<div id="dof">
				<span>Date of Formation - </span><span id="dofValue">30 May 1987</span>
			</div>
			<div id="totConst">
				<span>Number of Lok Sabha Seats - <span><span id="totConstValue"><a href="">1</a></span>
			</div>
		</div>
		<div id="personalities">
			<div id="leftPersonalities">
				<div class="mainPersonalityBlock">
				</div>					
				<div class="mainPersonalityBlock">
                                				
                                 <div class="mdesignation">
					Administrator
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/daman-and-diu/administrator.jpg">
						<div class="mphotoDetails">
						<div class="mname">Bhupinder S. Bhalla</div>
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
					<img src="/Resources/images/state/daman-and-diu/1.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Lalubhai Babubhai Patel</a></div>
						<div class="mparty"><a href="">BJP</a></div>
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
			    <a href="" class="PartiesList">BJP</a>
			    <a href="" class="PartiesList">INC</a>
			    
			   
		        </div>
		</div>
		<div id="chartContainer">

		</div>
		<div id="povertyStatus" style="display:inline-block;width:400px;height:400px;margin:0 auto;vertical-align:top; ">
		</div>
		<div id="chiefMinistersHeading">Administrators of Daman and Diu</div>
		<div id="pastAdministrators" >
		</div>
		


	</div><!-- end of container -->
</div><!-- end of wrapper -->
<jsp:include page="../footer.jsp" />
</body>
</html>
