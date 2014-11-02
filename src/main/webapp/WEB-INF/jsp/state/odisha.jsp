<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<title>Odisha | State of India | Know Your Candidate</title>
<link rel="shortcut icon" href="/Resources/images/title_icon.png">
<meta name="description" content="Odisha - State of India. List of Chief Ministers, Political Parties and Politicians of Odisha."/>
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
          ['Year', 'BJD', 'INC', 'BJP','Others'],
          ['2009',  103,      27, 6,11],
          ['2004',  61,     38, 32,16],
          ['2000',  68,       26, 38,15],
          ['1995',  0,    80, 9,58]
        ]);
/*total assembly const - 59*/
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
		 ['Harekrushna Mahatab','INC',new Date(1946,3,23),new Date(1950,4,12)],
		['Nabakrushna Choudhury','INC',new Date(1950,4,12),new Date(1952,1,20)],
		['Nabakrushna Choudhury','INC',new Date(1952,1,20),new Date(1956,9,19)],
		['Harekrushna Mahatab','INC',new Date(1956,9,19),new Date(1957,3,6)],
		['Harekrushna Mahatab','INC',new Date(1957,3,6),new Date(1959,4,22)],
		['Harekrushna Mahatab','INC',new Date(1959,4,22),new Date(1961,4,25)],
		['President\'s rule','',new Date(1961,1,25),new Date(1961,5,23)],
		['Biju Patnaik','INC',new Date(1961,5,23),new Date(1963,9,2)],
		['Biren Mitra','INC',new Date(1963,9,2),new Date(1965,1,21)],
		['Sadashiva Tripathy','INC',new Date(1965,1,21),new Date(1967,2,8)],
		['Rajendra Narayan Singh Deo','Swatantra Party',new Date(1967,2,8),new Date(1971,0,9)],
		['President\'s rule','',new Date(1971,0,11),new Date(1971,3,3)],
		['Biswanath Das','Independent',new Date(1971,3,3),new Date(1972,5,14)],
		['Nandini Satpathy','INC',new Date(1972,5,14),new Date(1973,2,3)],
		['President\'s rule','',new Date(1973,2,3),new Date(1974,2,6)],
		['Nandini Satpathy','INC',new Date(1974,2,6),new Date(1976,11,16)],
		['President\'s rule','',new Date(1976,11,16),new Date(1976,11,29)],
		['Binayak Acharya','INC',new Date(1976,11,29),new Date(1977,3,30)],
		['President\'s rule','',new Date(1977,3,30),new Date(1977,5,26)],
		['Nilamani Routray','JP',new Date(1977,5,26),new Date(1980,1,17)],
		['President\'s rule','',new Date(1980,1,17),new Date(1980,5,9)],
		['Janaki Ballabh Patnaik','INC',new Date(1980,5,9),new Date(1985,2,10)],
		['Janaki Ballabh Patnaik','INC',new Date(1985,2,10),new Date(1989,11,7)],
		['Hemananda Biswal','INC',new Date(1989,11,7),new Date(1995,2,15)],
		['Biju Patnaik','JD',new Date(1990,2,5),new Date(1999,2,15)],
		['Janaki Ballabh Patnaik','INC',new Date(1995,2,15),new Date(1999,1,17)],
		['Giridhar Gamang','INC',new Date(1999,1,17),new Date(2000,11,6)],
		['Hemananda Biswal','INC',new Date(1999,11,6),new Date(2000,2,5)],
		['Naveen Patnaik','BJD',new Date(2000,2,5),new Date()]
	      /* ['Naveen Patnaik','BJD',new Date(2004,5,16),new Date(2009,5,21)], 
		['Naveen Patnaik','BJD',new Date(2009,5,21),new Date()] */



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
			<h1>ODISHA</h1>
			</div>
			<div id="dof">
				<span>Date of Formation - </span><span id="dofValue">1 April 1936</span>
			</div>
			<div id="totConst">
				<span>Number of Lok Sabha Seats - <span><span id="totConstValue"><a href="http://164.100.47.132/lssnew/Members/Statewiselist.aspx" target=_blank>21</a></span>
			</div>
		</div>
		<div id="personalities">
			<div id="leftPersonalities">
				<div  class="mainPersonalityBlock">
					<div class="mdesignation">
					Chief Minister
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/odisha/cm.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://www.naveenpatnaik.com/Profile-of-Shri-Naveen-Patnaik-of-HINJILI-constituency-131.html" target=_blank>Naveen Patnaik</a></div>
						<div class="mparty"><a href="http://www.bjdodisha.org.in/" target=_blank>BJD</a></div>
						</div>
					</div>
					
				</div>
				<div class="mainPersonalityBlock">
					<div class="mdesignation">
					Governor
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/odisha/governor.png">
						<div class="mphotoDetails">
						<div class="mname">S. C. Jamir</div>
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
					<img src="/Resources/images/state/odisha/1.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://www.archive.india.gov.in/govt/loksabhampbiodata.php?mpcode=3294" target=_blank>Srikant Kumar Jena</a></div>
						<div class="mparty"><a href="http://www.inc.in/" target=_blank>INC</a></div>
						<div class="mpost">Ministers of State(Independent Charges)-Statistics and Program Implementation and Chemicals and Fertilizers</div>
						</div>
					</div>
					<div id="minister2" class="photo">
						<img src="/Resources/images/state/odisha/2.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://www.archive.india.gov.in/govt/loksabhampbiodata.php?mpcode=4416" target=_blank>Hemanand Biswal</a></div>
						<div class="mparty"><a href="http://www.inc.in/" target=_blank>INC</a></div>
						<div class="mpost">Former CM , Member of Lok Sabha</div>
						</div>
					</div>
					<div id = "minister3" class="photo">
						<img src="/Resources/images/state/odisha/3.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://www.archive.india.gov.in/govt/rajyasabhampbiodata.php?mpcode=2153" target=_blank>Baishnab Charan Parida</a></div>
						<div class="mparty"><a href="http://www.bjdodisha.org.in/" target=_blank>BJD</a></div>
						<div class="mpost">Member of Rajya Sabha</div>
						</div>
					</div>
				</div>
			</div>
		</div><!--end of personalities -->
		<div id = "partiesInfo">
		<div id="partiesInfoHeading">List of Prominent Political Parties</div>
			<div id="partiesInfoCont">
			    
			    <a href="http://www.bjdodisha.org.in/" target=_blank class="PartiesList">BJD</a>
			    <a href="http://www.inc.in/" target=_blank class="PartiesList">INC</a>
			    <a href="http://www.bjp.org/" target=_blank class="PartiesList">BJP</a>
			 			    
			   

			</div>
		</div>
		<div id="chartContainer" style="width:500px;height:400px;display:inline-block;vertical-align:top;">

		</div>
		<div id="povertyStatus" style="display:inline-block;width:400px;height:400px;margin:0 auto;vertical-align:top; ">
		</div>
		<div id="chiefMinistersHeading">Chief Ministers of Odisha</div>
		<div id="pastChiefMinisters" style="width:100%;height:400px">
		</div>
		


	</div><!-- end of container -->
</div><!-- end of wrapper -->
<jsp:include page="../footer.jsp" />
</body>
</html>
