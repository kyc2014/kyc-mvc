<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<title>Dadra and Nagar Haveli | Union Territory of India | Know Your Candidate</title>
<link rel="shortcut icon" href="/Resources/images/title_icon.png">
<meta name="description" content="Dadra and Nagar Haveli - Union Territory of India. List of Administrators, Political Parties and Politicians of Dadra and Nagar Haveli."/>
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
          ['Year', 'NDA', 'UPA','Others'],
          ['2009',  1,      0,0],
          ['2004',  0,     0,1],
          ['1999',  0,      0,1],
          ['1998',  1,  0,  0]
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
		  	
			['Mudras','',new Date(1954,6,22),new Date(1954,7,2)],
			['Vishwanath Lawande','',new Date(1954,7,2),new Date(1954,11,12)],
			['Appasaheb (Atmaram Narsinh) Karmalkar','',new Date(1954,11,12),new Date(1962,1,9)],
			['Tumkur Sivasankar','',new Date(1962,1,9),new Date(1963,8,2)],
			['M.R. Sachdev','',new Date(1963,8,2),new Date(1964,11,8)],
			['Hari Sharma','',new Date(1964,11,12),new Date(1965,1,24)],
			['Kashinath Raghunath Damle','',new Date(1965,1,24),new Date(1967,3,18)],
			['Nakul Sen','',new Date(1967,3,18),new Date(1972,10,16)],
			['S.K. Banerjee','',new Date(1972,10,16),new Date(1977,10,16)],
			['Pratap Singh Gill','',new Date(1977,10,16),new Date(1981,2,31)],
			['Jagmohan','',new Date(1981,2,31),new Date(1982,7,30)],
			['Idris Hasan Latif(acting)','',new Date(1982,7,30),new Date(1983,1,24)],
			['Kershasp Tehmurasp Satarawala','',new Date(1983,1,24),new Date(1984,6,4)],
			['Idris Hasan Latif(acting)','',new Date(1984,6,4),new Date(1984,8,24)],
			['Gopal Singh','',new Date(1984,8,24),new Date(1989,6,18)],
			['Khurshed Alam Khan','',new Date(1989,6,18),new Date(1991,2,25)],
			['Bhanu Prakash Singh','',new Date(1991,2,25),new Date(1992,2,16)],
			['K.S. Baidwan','',new Date(1992,2,16),new Date(1994,2,28)],
			['Ramesh Chandra','',new Date(1994,2,28),new Date(1995,6,15)],
			['S.P. Aggarwal','',new Date(1995,6,15),new Date(1998,5,26)],
			['Ramesh Negi(acting)','',new Date(1998,5,26),new Date(1999,1,23)],
			['Sanat Kaul','',new Date(1999,1,23),new Date(1999,3,23)],
			['Ramesh Negi(acting)','',new Date(1999,3,23),new Date(1999,6,19)],
			['O.P. Kelkar','',new Date(1999,6,19),new Date(2003,6,18)],
			['Arun Mathur','',new Date(2003,6,19),new Date(2006,6,18)],
			['R.K. Verma','',new Date(2006,6,19),new Date(2009,6,18)],
			['Shri Satya Gopal','',new Date(2009,6,19),new Date(2011,6,18)],
			['Shri. Narendra Kumar','',new Date(2011,6,19),new Date(2012,7,27)],
			['B. S. Bhalla','',new Date(2012,7,28),new Date()]
		    
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
			<h1>DADRA AND NAGAR HAVELI</h1>
			</div>
			<div id="dof">
				<span>Date of Formation - </span><span id="dofValue">1961</span>
			</div>
			<div id="totConst">
				<span>Number of Lok Sabha Seats - <span><span id="totConstValue"><a href="">1</a></span>
			</div>
		</div>
		<div id="personalities">
			<div id="leftPersonalities">

				<div  class="mainPersonalityBlock">
									
				</div>

				<div  class="mainPersonalityBlock">
					<div class="mdesignation">
					Administrator
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/dadra_and_nagar_haveli/administrator.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Bhupinder S.Bhalla</a></div>
						<div class="mparty"><a href=""></a></div>
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
					<img src="/Resources/images/state/dadra_and_nagar_haveli/1.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Natubhai Gomanbhai Patel</a></div>
						<div class="mparty"><a href="">BJP</a></div>
						<div class="mpost">Member Of Parliament</div>
						</div>
					</div>
					
				</div>
			</div>
		</div><!--end of personalities -->
		<div id = "partiesInfo">
		<div id="partiesInfoHeading">List of Prominent Political Parties</div>
			<div id="partiesInfoCont">
			    
			    <a href="" class="PartiesList">BJP</a>
			    <a href="" class="PartiesList">INC</a>
			    <a href="" class="PartiesList">BNP</a>
			    
			   

			</div>
		</div>
		<div id="chartContainer" style="width:500px;height:400px;display:inline-block;vertical-align:top;">

		</div>
		<div id="povertyStatus" style="display:inline-block;width:400px;height:400px;margin:0 auto;vertical-align:top; ">
		</div>
		<div id="chiefMinistersHeading">Administrators of Dadra and Nagar Haveli</div>
		<div id="pastChiefMinisters" style="width:100%;height:400px">
		</div>
		


	</div><!-- end of container -->
</div><!-- end of wrapper -->
<jsp:include page="../footer.jsp" />
</body>
</html>
