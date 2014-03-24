<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<title>Bihar | State of India | Know Your Candidate</title>
<link rel="shortcut icon" href="/Resources/images/title_icon.png">
<meta name="description" content="Bihar - State of India. List of Chief Ministers, Political Parties and Politicians of Bihar."/>
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
          ['Year', 'JD(U)', 'BJP', 'RJD','Others'],
          ['2010',  115,       91,22,15],
         ['2005-OCT',  88,   55,54,46],
          ['2005',  55 ,   37,75,76],
          ['2000',  21, 67,124,112]
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

         var chart2 = new google.visualization.Timeline(document.getElementById('pastChiefMinisters'));
         var dataTable = new google.visualization.DataTable();
          dataTable.addColumn({ type: 'string', id: 'CM' });
          dataTable.addColumn({ type: 'string', id: 'Party' });
		  dataTable.addColumn({ type: 'date', id: 'Start' });
		  dataTable.addColumn({ type: 'date', id: 'End' });

		  dataTable.addRows([
		  [ 'Krishna Singh','INC',new Date(1946, 3, 2), new Date(1961, 0, 31) ],
		    [ 'Deep Narayan Singh', 'INC',  new Date(1961, 1, 1),  new Date(1961, 1, 18) ],
		  [ 'Binodanand Jha','INC' , new Date(1961, 1, 18),  new Date(1963, 9, 2) ],
		  [ 'K. B. Sahay','INC' , new Date(1963, 9, 2),  new Date(1967,2,5) ],
		    [ 'Mahamaya Prasad Sinha', 'JKD', new Date(1967, 2, 5),  new Date(1968, 0, 28) ],
		    [ 'Satish Prasad Singh', 'INC', new Date(1968, 0, 28),  new Date(1968,1,1) ],

		    [ 'B.P. Mandal','INC', new Date(1968,0,1), new Date(1968,2,2) ],
		    ['Bhola Paswan Shastri','INC(O)',new Date(1968, 2, 22),new Date(1968,5,29)],
		    ['President rule','',new Date(1968,5,29),new Date(1969,1,26)],
		    [ 'Harihar Singh','INC', new Date(1969,1,26), new Date(1969,5,22) ],
		    [ 'Bhola Paswan Shastri','INC(O)', new Date(1969,5,22), new Date(1969,6,4) ],
		    ['President rule','',new Date(1969,6,6),new Date(1970,1,16)],			  
		    ['Daroga Prasad Rai','INC',new Date(1970,1,16),new Date(1970,11,22)],
		    ['Karpoori Thakur','Socialist Party',new Date(1970,11,22),new Date(1971,5,2)],
		    ['Bhola Paswan Shastri','INC',new Date(1971,5,2),new Date(1972,0,9)],
		    ['President Rule','',new Date(1972,0,9),new Date(1972,2,19)],
		    ['Kedar Pandey','INC',new Date(1972,2,19),new Date(1973,6,2)],
		    ['Abdul Gafoor','INC',new Date(1973,6,2),new Date(1975,3,11)],
		    ['Jagannath Mishra','INC',new Date(1975,3,11),new Date(1977,3,30)],
		    ['President rule','',new Date(1977,3,30),new Date(1977,5,24)],
		    ['Karpoori Thakur','Janata Party',new Date(1977,5,24),new Date(1979,3,21)],
		    ['Ram Sundar Das','Janata Party',new Date(1979,3,21),new Date(1980,1,17)],
		    ['President rule','',new Date(1980,1,17),new Date(1980,5,8)],
		    ['Jagannath Mishra','INC',new Date(1980,5,8),new Date(1983,7,14)],
		    ['Chandrasekhar Singh','INC',new Date(1983,7,14),new Date(1985,2,12)],
		    ['Bindeshwari Dubey','INC',new Date(1985,2,12),new Date(1988,1,13)],
		    ['Bhagwat Jha Azad','INC',new Date(1988,1,14),new Date(1989,2,10)],
		    ['Satyendra Narayan Sinha','INC',new Date(1989,2,11),new Date(1989,11,6)],
		    ['Jagannath Mishra','INC',new Date(1989,11,6),new Date(1990,2,10)],
		    ['Lalu Prasad Yadav','JD',new Date(1990,2,10),new Date(1995,2,28)],
		    ['President rule','',new Date(1995,2,28),new Date(1995,3,4)],
		    ['Lalu Prasad Yadav','JD',new Date(1995,3,4),new Date(1997,6,25)],
		    ['Rabri Devi','RJD',new Date(1997,6,25),new Date(1999,1,11)],
		    ['President rule','',new Date(1999,1,11),new Date(1999,2,9)],
		    ['Rabri Devi','RJD',new Date(1999,2,9),new Date(2000,2,2)],
		    ['Nitish Kumar','JD(U)',new Date(2000,2,3),new Date(2000,2,10)],
		    ['Rabri Devi','RJD',new Date(2000,2,11),new Date(2005,2,6)],
		    ['President rule','',new Date(2005,2,7),new Date(2005,10,24)],
		    ['Nitish Kumar','JD(U)',new Date(2005,10,24),new Date()]
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
			<h1>BIHAR</h1>
			</div>
			<div id="dof">
				<span>Date of Formation - </span><span id="dofValue">2 April 1946</span>
			</div>
			<div id="totConst">
				<span>Number of Lok Sabha Seats - <span><span id="totConstValue"><a href="">40</a></span>
			</div>
		</div>
		<div id="personalities">
			<div id="leftPersonalities">
				<div  class="mainPersonalityBlock">
					<div class="mdesignation">
					Chief Minister
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/bihar/cm.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Nitish Kumar</a></div>
						<div class="mparty"><a href="">JD(U)</a></div>
						</div>
					</div>
					
				</div>
				<div class="mainPersonalityBlock">
					<div class="mdesignation">
					Governor
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/bihar/governor.jpg">
						<div class="mphotoDetails">
						<div class="mname">D.Y. Patil</div>
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
					<img src="/Resources/images/state/bihar/1.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Meira Kumar</a></div>
						<div class="mparty"><a href=""></a></div>
						<div class="mpost">Loksabha Speaker</div>
						</div>
					</div>
					<div id="minister2" class="photo">
						<img src="/Resources/images/state/bihar/2.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Paban Singh Ghatowar</a></div>
						<div class="mparty"><a href="">INC</a></div>
						<div class="mpost">Minister of State (Independent Charges) - Development of North Eastern Region,Parliamentary Affairs</div>
						</div>
					</div>
					<div id = "minister3" class="photo">
						<img src="/Resources/images/state/bihar/3.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Lalu Prasad Yadav</a></div>
						<div class="mparty"><a href="">JD,RJD</a></div>
						<div class="mpost">Former CM, Former Railway Minister</div>
						</div>
					</div>
				</div>
			</div>
		</div><!--end of personalities -->
		<div id = "partiesInfo">
		<div id="partiesInfoHeading">List of Prominent Political Parties</div>
			<div id="partiesInfoCont">
				<a href="" class="PartiesList">INC</a>
				<a href="" class="PartiesList">BJP</a>
			    <a href="" class="PartiesList">RJD</a>
			    <a href="" class="PartiesList">JD(U)</a>
			</div>
		</div>
		<div id="chartContainer">

		</div>
		<div id="povertyStatus" style="display:inline-block;width:400px;height:400px;margin:0 auto;vertical-align:top; ">
		</div>
		<div id="chiefMinistersHeading">Chief Ministers of Bihar</div>
		<div id="pastChiefMinisters" >
		</div>
		


	</div><!-- end of container -->
</div><!-- end of wrapper -->
<jsp:include page="../footer.jsp" />
</body>
</html>
