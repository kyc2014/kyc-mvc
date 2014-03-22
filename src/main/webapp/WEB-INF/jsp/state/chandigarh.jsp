<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<title>Chandigarh | Union Territory of India | Know Your Candidate</title>
<link rel="shortcut icon" href="/Resources/images/title_icon.png">
<meta name="description" content="Chandigarh - Union Territory of India. List of Administrators, Political Parties and Politicians of Chandigarh."/>
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
          ['2009',  0,     1],
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

		  dataTable.addRows([
		    ['Bhairab Dutt Pande','',new Date(1984,6,2),new Date(1984,7,3)],
['Kershasp Tehmurasp Satarawala','',new Date(1984,7,3),new Date(1984,8,2)],
['Arjun Singh','',new Date(1985,5,30),new Date(1985,11,14)],
['Hokishe Sema','',new Date(1985,11,14),new Date(1985,11,26)],
['Shankar Dayal Sharma','',new Date(1985,11,26),new Date(1986,4,2)],
['Siddharta Shankar Ray','',new Date(1986,4,2),new Date(1989,12,8)],
['Nirmal Mukarji','',new Date(1989,12,8),new Date(1990,6,14)],
['Virendra Verma','',new Date(1990,6,14),new Date(1990,12,18)],
['Om Prakash Malhotra','',new Date(1990,12,18),new Date(1991,8,7)],
['Surendra Nath','',new Date(1991,8,7),new Date(1994,7,9)],
['Sudhakar Panditrao Kurdukar','',new Date(1994,7,10),new Date(1994,9,18)],
['B.K.N. Chhibber','',new Date(1994,9,18),new Date(1999,11,27)],
['J. F. R. Jacob','',new Date(1999,11,27),new Date(2003,5,8)],
['Om Prakash Verma','',new Date(2003,5,8),new Date(2004,11,3)],
['Akhlaqur Rahman Kidwai','',new Date(2004,11,3),new Date(2004,11,16)],
['Sunith Francis Rodrigues','',new Date(2004,11,16),new Date(2010,1,22)],
['Shivraj Patil','',new Date(2010,1,22),new Date()]
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
			<h1>CHANDIGARH</h1>
			</div>
			<div id="dof">
				<span>Date of Formation - </span><span id="dofValue">1 November 1966</span>
			</div>
			<div id="totConst">
				<span>Number of Lok Sabha Seats - <span><span id="totConstValue"><a href="">1</a></span>
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
					Administrator
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/chandigarh/governor.jpg">
						<div class="mphotoDetails">
						<div class="mname">Shivraj V.Patil</div>
						<div class="mparty">INC</div>
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
					<img src="/Resources/images/state/chandigarh/1.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Pawan kumar bansal</a></div>
						<div class="mparty"><a href="">INC</a></div>
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
		<div id="chiefMinistersHeading">Administrators of Chandigarh</div>
		<div id="pastAdministrators" >
		</div>
		


	</div><!-- end of container --> 
</div><!-- end of wrapper -->
<jsp:include page="../footer.jsp" />
</body>
</html>
