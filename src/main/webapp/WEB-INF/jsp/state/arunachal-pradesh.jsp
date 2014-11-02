<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<title>Arunachal Pradesh | State of India | Know Your Candidate</title>
<link rel="shortcut icon" href="/Resources/images/title_icon.png">
<meta name="description" content="Arunachal Pradesh - State of India. List of Chief Ministers, Political Parties and Politicians of Arunachal Pradesh."/>
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
          ['Year', 'AITMC', 'BJP', 'INC','NCP','Others'],
          ['2009',  5,      3, 42,5,5],
          ['2004',  0,     9, 34,2,15],
          ['1999',  0,       0, 53,4,3],
          ['1995',  0,    0, 53,0,7]
        ]);
/*total assembly const - 60*/
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
		  [ 'Gegong Apang','INC',new Date(1987, 0, 18), new Date(1999, 0, 19) ],
		    [ 'Mukut Mithi', 'INC',  new Date(1999, 0, 19),  new Date(2003, 7, 3) ],
		  [ 'Gegong Apang','BJP' , new Date(2003, 7, 3),  new Date(2004, 4, 14) ],
		  [ 'Gegong Apang','INC' , new Date(2004, 4, 14),  new Date(2007,3,9) ],
		    [ 'Dorjee Khandu', 'INC', new Date(2007, 3, 9),  new Date(2011, 3, 30) ],
		    [ 'Jarbom Gamlin','INC', new Date(2011, 4, 5), new Date(2011, 9, 31) ],
		    ['Nabam tuki','INC',new Date(2011, 10, 1),new Date()],
		    
		    
		    


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
			<h1>ARUNACHAL PRADESH</h1>
			</div>
			<div id="dof">
				<span>Date of Formation - </span><span id="dofValue">20 February 1987</span>
			</div>
			<div id="totConst">
				<span>Number of Lok Sabha Seats - <span><span id="totConstValue"><a href="http://164.100.47.132/lssnew/Members/Statewiselist.aspx" target=_blank>2</a></span>
			</div>
		</div>
		<div id="personalities">
			<div id="leftPersonalities">
				<div  class="mainPersonalityBlock">
					<div class="mdesignation">
					Chief Minister
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/ArunachalPradesh/cm.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://apcc.in/?page_id=41&page=CM%20Profile" target=_blank>Nabam Tuki</a></div>
						<div class="mparty"><a href="http://apcc.in/?page_id=1&page=Home" target=_blank>INC</a></div>
						</div>
					</div>
					
				</div>
				<div class="mainPersonalityBlock">
					<div class="mdesignation">
					Governor
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/ArunachalPradesh/governor.jpg">
						<div class="mphotoDetails">
						<div class="mname">Nirbhay Sharma</div>
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
					<img src="/Resources/images/state/ArunachalPradesh/1.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://164.100.47.132/lssnew/Members/homepage.aspx?mpsno=4367" target=_blank>Ninong Ering</a></div>
						<div class="mparty"><a href="http://apcc.in/?page_id=1&page=Home" target=_blank>INC</a></div>
						<div class="mpost">Minister of State - Minority Affairs</div>
						</div>
					</div>
					<div id="minister2" class="photo">
						<img src="/Resources/images/state/ArunachalPradesh/2.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://www.in.com/gegong-apang/profile-100707.html" target=_blank>Gegong Apang</a></div>
						<div class="mparty"><a href="http://www.nebjp2014.in/blog_page.php?post=4202371379444049-346020868" target=_blank>BJP</a></div>
						<div class="mpost">Former CM</div>
						</div>
					</div>
					<div id = "minister3" class="photo">
						<img src="/Resources/images/state/ArunachalPradesh/3.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://164.100.47.132/lssnew/Members/Biography.aspx?mpsno=4366" target=_blank>Takom Sanjoy</a></div>
						<div class="mparty"><a href="http://apcc.in/?page_id=1&page=Home" target=_blank>INC</a></div>
						<div class="mpost">MP - LokSabha</div>
						</div>
					</div>
				</div>
			</div>
		</div><!--end of personalities -->
		<div id = "partiesInfo">
		<div id="partiesInfoHeading">List of Prominent Political Parties</div>
			<div id="partiesInfoCont">
			    <a href="https://aitmc.org/index.php" target=_blank class="PartiesList">AITMC</a>
			    <a href="http://www.nebjp2014.in/blog_page.php?post=4202371379444049-346020868" target=_blank class="PartiesList">BJP</a>
			    <a href="http://apcc.in/?page_id=1&page=Home" target=_blank class="PartiesList">INC</a>
			    <a href="http://www.ncp.org.in/" target=_blank class="PartiesList">NCP</a>
			       
			    
			   

			</div>
		</div>
		<div id="chartContainer" style="width:500px;height:400px;display:inline-block;vertical-align:top;">

		</div>
		<div id="povertyStatus" style="display:inline-block;width:400px;height:400px;margin:0 auto;vertical-align:top; ">
		</div>
		<div id="chiefMinistersHeading">Chief Ministers of Arunachal Pradesh</div>
		<div id="pastChiefMinisters" style="width:100%;height:400px">
		</div>
		


	</div><!-- end of container -->
</div><!-- end of wrapper -->
<jsp:include page="../footer.jsp" />
</body>
</html>
