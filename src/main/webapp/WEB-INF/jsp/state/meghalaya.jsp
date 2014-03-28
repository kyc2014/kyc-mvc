<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<title>Meghalaya | State of India | Know Your Candidate</title>
<link rel="shortcut icon" href="/Resources/images/title_icon.png">
<meta name="description" content="Meghalaya - State of India. List of Chief Ministers, Political Parties and Politicians of Meghalaya."/>
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
          ['Year', 'INC', 'UDP', 'IND','Others'],
          ['2013',  29,      8, 13,10],
          ['2008',  25,     11, 5,18],
          ['2003',  22,       9, 5,24],
          ['1998',  25,    20, 5,10]
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
		  ['Williamson A. Sangma','APHLC',new Date(1970,3,2),new Date(1972,6,21)],
		['W.A. Sangma','APHLC',new Date(1972,6,21),new Date(1973,2,18)],
		['W.A. Sangma','APHLC',new Date(1973,2,18),new Date(1976,10,21)],
		['W.A. Sangma','INC',new Date(1976,10,22),new Date(1978,2,3)],
		['Darwin Diengdoh Pugh','APHLC',new Date(1978,2,10),new Date(1979,1,21)],
		['Darwin Diengdoh Pugh','APHLC',new Date(1979,1,21),new Date(1979,4,6)],
		['B.B. Lyngdoh','APHLC',new Date(1979,4,7),new Date(1981,4,7)],
		['W.A. Sangma','INC',new Date(1981,4,7),new Date(1983,1,24)],
		['B.B. Lyngdoh','APHLC',new Date(1983,2,2),new Date(1983,2,31)],
		['W.A. Sangma','INC',new Date(1983,3,2),new Date(1988,1,5)],
		['P.A. Sangma','INC',new Date(1988,1,6),new Date(1990,2,25)],
		['B.B. Lyngdoh','HPU',new Date(1990,2,26),new Date(1991,9,10)],
		['President\'s rule','',new Date(1991,9,11),new Date(1992,1,5)],
		['D.D. Lapang','INC',new Date(1992,1,5),new Date(1993,1,19)],
		['S.C. Marak','INC',new Date(1993,1,19),new Date(1998,1,27)],
		['S.C. Marak','INC',new Date(1998,1,27),new Date(1998,2,10)],
		['B.B. Lyngdoh','UDP',new Date(1998,2,10),new Date(2000,2,8)],
		['E.K. Mawlong','UDP',new Date(2000,2,8),new Date(2001,11,8)],
		['Flinder Anderson Khonglam','Independent',new Date(2001,11,8),new Date(2003,2,4)],
		['D.D. Lapang','INC',new Date(2003,2,4),new Date(2006,5,15)],
		['J. D. Rymbai','INC',new Date(2006,5,15),new Date(2007,2,10)],
		['D.D. Lapang','INC',new Date(2007,2,10),new Date(2008,2,4)],
		['D.D. Lapang','INC',new Date(2008,2,4),new Date(2008,2,19)],
		['Donkupar Roy','UDP',new Date(2008,2,19),new Date(2009,2,18)],
		['President\'s rule','',new Date(2009,2,18),new Date(2009,4,12)],
		['D.D. Lapang','INC',new Date(2009,4,13),new Date(2010,3,19)],
		['Mukul Sangma','INC',new Date(2010,3,20),new Date()]



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
			<h1>MEGHALAYA</h1>
			</div>
			<div id="dof">
				<span>Date of Formation - </span><span id="dofValue">21 January 1972</span>
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
						<img src="/Resources/images/state/meghalaya/cm.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://meghalaya.gov.in:8080/megportal/government/keycontact/14795" target=_blank>Mukul Sangma</a></div>
						<div class="mparty"><a href="http://www.inc.in/" target=_blank>INC</a></div>
						</div>
					</div>
					
				</div>
				<div class="mainPersonalityBlock">
					<div class="mdesignation">
					Governor
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/meghalaya/governor.png">
						<div class="mphotoDetails">
						<div class="mname">Krishan Kant Paul</div>
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
					<img src="/Resources/images/state/meghalaya/1.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://www.archive.india.gov.in/govt/loksabhampbiodata.php?mpcode=4352" target=_blank>Vincent H Pala</a></div>
						<div class="mparty"><a href="http://www.inc.in/" target=_blank>INC</a></div>
						<div class="mpost">Member of Lok Sabha</div>
						</div>
					</div>
					<div id="minister2" class="photo">
						<img src="/Resources/images/state/meghalaya/2.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://www.archive.india.gov.in/govt/loksabhampbiodata.php?mpcode=4251" target=_blank>Agatha K. Sangma</a></div>
						<div class="mparty"><a href="http://www.ncp.org.in/" target=_blank>NCP</a></div>
						<div class="mpost">Member of Lok Sabha</div>
						</div>
					</div>
					<div id = "minister3" class="photo">
						<img src="/Resources/images/state/meghalaya/3.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://archive.india.gov.in/govt/rajyasabhampbiodata.php?mpcode=2084" target=_blank>Thomas A Sangma</a></div>
						<div class="mparty"><a href="http://www.ncp.org.in/" target=_blank>NCP</a></div>
						<div class="mpost">Member of Rajya Sabha</div>
						</div>
					</div>
				</div>
			</div>
		</div><!--end of personalities -->
		<div id = "partiesInfo">
		<div id="partiesInfoHeading">List of Prominent Political Parties</div>
			<div id="partiesInfoCont">
			    
			    <a href="http://www.inc.in/" target=_blank class="PartiesList">INC</a>
			    <span class="PartiesList"><!--<a href="" target=_blank class="PartiesList">UDP</a>-->UDP</span>
			    <a href="http://www.ncp.org.in/" target=_blank class="PartiesList">NCP</a>
			    <span class="PartiesList"><!--<a href="" target=_blank class="PartiesList">IND</a>-->IND</span>
			    
			   

			</div>
		</div>
		<div id="chartContainer" style="width:500px;height:400px;display:inline-block;vertical-align:top;">

		</div>
		<div id="povertyStatus" style="display:inline-block;width:400px;height:400px;margin:0 auto;vertical-align:top; ">
		</div>
		<div id="chiefMinistersHeading">Chief Ministers of Meghalaya</div>
		<div id="pastChiefMinisters" style="width:100%;height:400px">
		</div>
		


	</div><!-- end of container -->
</div><!-- end of wrapper -->
<jsp:include page="../footer.jsp" />
</body>
</html>
