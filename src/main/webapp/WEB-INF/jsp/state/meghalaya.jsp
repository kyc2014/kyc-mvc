<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<title>Meghalaya</title>
<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}" />/Resources/CSS/reset.css">
<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}" />/Resources/CSS/state.css">
<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}" />/Resources/CSS/header3.css">
<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}" />/Resources/CSS/footer.css">
<script type="text/javascript" src="<c:out value="${pageContext.request.contextPath}"/>/Resources/Libraries/jquery-2.0.2.min.js"></script>
<script type="text/javascript" src="<c:out value="${pageContext.request.contextPath}"/>/Resources/scripts/signin.js"></script>
<script type="text/javascript" src="<c:out value="${pageContext.request.contextPath}"/>/Resources/scripts/analytics.js"></script>
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
		  ['Williamson A. Sangma','APHLC',new Date(1970,4,2),new Date(1972,7,21)],
		['W.A. Sangma','APHLC',new Date(1972,7,21),new Date(1973,3,18)],
		['W.A. Sangma','APHLC',new Date(1973,3,18),new Date(1976,11,21)],
		['W.A. Sangma','INC',new Date(1976,11,22),new Date(1978,3,3)],
		['Darwin Diengdoh Pugh','APHLC',new Date(1978,3,10),new Date(1979,2,21)],
		['Darwin Diengdoh Pugh','APHLC',new Date(1979,2,21),new Date(1979,5,6)],
		['B.B. Lyngdoh','APHLC',new Date(1979,5,7),new Date(1981,5,7)],
		['W.A. Sangma','INC',new Date(1981,5,7),new Date(1983,2,24)],
		['B.B. Lyngdoh','APHLC',new Date(1983,3,2),new Date(1983,3,31)],
		['W.A. Sangma','INC',new Date(1983,4,2),new Date(1988,2,5)],
		['P.A. Sangma','INC',new Date(1988,2,6),new Date(1990,3,25)],
		['B.B. Lyngdoh','HPU',new Date(1990,3,26),new Date(1991,10,10)],
		['President\'s rule','',new Date(1991,10,11),new Date(1992,2,5)],
		['D.D. Lapang','INC',new Date(1992,2,5),new Date(1993,2,19)],
		['S.C. Marak','INC',new Date(1993,2,19),new Date(1998,2,27)],
		['S.C. Marak','INC',new Date(1998,2,27),new Date(1998,3,10)],
		['B.B. Lyngdoh','UDP',new Date(1998,3,10),new Date(2000,3,8)],
		['E.K. Mawlong','UDP',new Date(2000,3,8),new Date(2001,12,8)],
		['Flinder Anderson Khonglam','Independent',new Date(2001,12,8),new Date(2003,3,4)],
		['D.D. Lapang','INC',new Date(2003,3,4),new Date(2006,6,15)],
		['J. D. Rymbai','INC',new Date(2006,6,15),new Date(2007,3,10)],
		['D.D. Lapang','INC',new Date(2007,3,10),new Date(2008,3,4)],
		['D.D. Lapang','INC',new Date(2008,3,4),new Date(2008,3,19)],
		['Donkupar Roy','UDP',new Date(2008,3,19),new Date(2009,3,18)],
		['President\'s rule','',new Date(2009,3,18),new Date(2009,5,12)],
		['D.D. Lapang','INC',new Date(2009,5,13),new Date(2010,4,19)],
		['Mukul Sangma','INC',new Date(2010,4,20),new Date()]



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
			MEGHALAYA
			</div>
			<div id="dof">
				<span>Date of Formation - </span><span id="dofValue">21 January 1972</span>
			</div>
			<div id="totConst">
				<span>Number of Lok Sabha Seats - <span><span id="totConstValue"><a href="">2</a></span>
			</div>
		</div>
		<div id="personalities">
			<div id="leftPersonalities">
				<div  class="mainPersonalityBlock">
					<div class="mdesignation">
					Chief Minister
					</div>
					<div class="mphoto">
						<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/meghalaya/cm.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Mukul Sangma</a></div>
						<div class="mparty"><a href="">INC</a></div>
						</div>
					</div>
					
				</div>
				<div class="mainPersonalityBlock">
					<div class="mdesignation">
					Governor
					</div>
					<div class="mphoto">
						<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/meghalaya/governor.png">
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
					<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/meghalaya/1.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Vincent H Pala</a></div>
						<div class="mparty"><a href="">INC</a></div>
						<div class="mpost">Member of Lok Sabha</div>
						</div>
					</div>
					<div id="minister2" class="photo">
						<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/meghalaya/2.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Agatha K. Sangma</a></div>
						<div class="mparty"><a href="">NCP</a></div>
						<div class="mpost">Member of Lok Sabha</div>
						</div>
					</div>
					<div id = "minister3" class="photo">
						<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/meghalaya/3.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Thomas A Sangma</a></div>
						<div class="mparty"><a href="">NCP</a></div>
						<div class="mpost">Member of Rajya Sabha</div>
						</div>
					</div>
				</div>
			</div>
		</div><!--end of personalities -->
		<div id = "partiesInfo">
		<div id="partiesInfoHeading">List of Prominent Political Parties</div>
			<div id="partiesInfoCont">
			    
			    <a href="" class="PartiesList">INC</a>
			    <a href="" class="PartiesList">UDP</a>
			    <a href="" class="PartiesList">IND</a>
			    
			   

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
