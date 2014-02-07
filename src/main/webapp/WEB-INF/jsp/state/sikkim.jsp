<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<title>Andhra Pradhesh</title>
<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}" />/Resources/CSS/reset.css">
<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}" />/Resources/CSS/state.css">
<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}" />/Resources/CSS/header3.css">
<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}" />/Resources/CSS/footer.css">
<script type="text/javascript" src="<c:out value="${pageContext.request.contextPath}"/>/Resources/Libraries/jquery-2.0.2.min.js"></script>
<script type="text/javascript" src="<c:out value="${pageContext.request.contextPath}"/>/Resources/scripts/signin.js"></script>
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
          ['Year', 'SDF', 'INC', 'SSP','Others'],
          ['2009',  32,      0, 0,0],
          ['2004',  31,     1, 0,0],
          ['1999',  24,      0, 7,1],
          ['1994',  19,    2, 10,1]
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
		  [ 'Kazi Lhendup Dorjee','INC',new Date(1975, 5, 16), new Date(1979, 8, 18) ],
		    [ 'President\'s Rule', '',  new Date(1979, 8, 18),  new Date(1979, 10, 18) ],
		  [ 'Nar Bahadur Bhandari','SJP' , new Date(1979, 10, 18),  new Date(1984,5,11) ],
		    [ 'B.B.Gurung', 'INC', new Date(1984,5,11),  new Date(1984, 5, 25) ],
		    [ 'President\'s Rule','', new Date(1984, 5, 25), new Date(1985, 3, 8) ],
		    ['Nar Bahadur Bhandari','SSP',new Date(1985,3,8),new Date(1994,6,17)],
		    ['Sanchaman Limboo','SSP',new Date(1994,6,17),new Date(1994,12,12)],
		    ['Pawan Kumar Chamling','SDF',new Date(1994,12,12),new Date(1999,12,11)],
		    ['Pawan Kumar Chamling','SDF',new Date(1999,12,12),new Date(2004,12,11)],
		    ['Pawan Kumar Chamling','SDF',new Date(2004,12,12),new Date(2009,12,11)],
		    ['Pawan Kumar Chamling','SDF',new Date(2009,12,12),new Date()]
		    
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
			SIKKIM
			</div>
			<div id="dof">
				<span>Date of Formation - </span><span id="dofValue">16 May 1975</span>
			</div>
			<div id="totConst">
				<span>Number of Lok Sabha Seats - <span><span id="totConstValue"><a href="">1</a></span>
			</div>
		</div>
		<div id="personalities">
			<div id="leftPersonalities">
				<div  class="mainPersonalityBlock">
					<div class="mdesignation">
					Chief Minister
					</div>
					<div class="mphoto">
						<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/sikkim/cm.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Pawan Kumar Chamling</a></div>
						<div class="mparty"><a href="">SDF</a></div>
						</div>
					</div>
					
				</div>
				<div class="mainPersonalityBlock">
					<div class="mdesignation">
					Governor
					</div>
					<div class="mphoto">
						<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/sikkim/governor.jpg">
						<div class="mphotoDetails">
						<div class="mname">Shriniwas Dadasaheb Patil</div>
						<div class="mparty">NCP</div>
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
					<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/sikkim/1.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">H.D Deve Gowda</a></div>
						<div class="mparty"><a href="">JD(S)</a></div>
						<div class="mpost">Former PM</div>
						</div>
					</div>
					<div id="minister2" class="photo">
						<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/sikkim/2.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">K.H Muniyappa</a></div>
						<div class="mparty"><a href="">INC</a></div>
						<div class="mpost">Minister of State(Independent Charges) - Micro,Small and Medium Enterprises</div>
						</div>
					</div>
					<div id = "minister3" class="photo">
						<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/sikkim/3.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">H.D Kumaraswamy</a></div>
						<div class="mparty"><a href="">JD(S)</a></div>
						<div class="mpost">Former CM</div>
						</div>
					</div>
				</div>
			</div>
		</div><!--end of personalities -->
		<div id = "partiesInfo">
		<div id="partiesInfoHeading">List of Prominent Political Parties</div>
			<div id="partiesInfoCont">
			    
			    <a href="" class="PartiesList">SDF</a>
			    <a href="" class="PartiesList">INC</a>
			    <a href="" class="PartiesList">SHRP</a>
			    
			   

			</div>
		</div>
		<div id="chartContainer" style="width:500px;height:400px;display:inline-block;vertical-align:top;">

		</div>
		<div id="povertyStatus" style="display:inline-block;width:400px;height:400px;margin:0 auto;vertical-align:top; ">
		</div>
		<div id="chiefMinistersHeading">Chief Ministers of Sikkim</div>
		<div id="pastChiefMinisters" style="width:100%;height:400px">
		</div>
		


	</div><!-- end of container -->
</div><!-- end of wrapper -->
</body>
</html>