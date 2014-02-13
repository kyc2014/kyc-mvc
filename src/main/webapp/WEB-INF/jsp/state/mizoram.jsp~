<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<title>Mizoram</title>
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
          ['Year', 'INC', 'MNF', 'MPC','ZNP','Others'],
          ['2013',  32,      5, 0,0,0],
          ['2008',  32,     3, 2,2,0],
          ['2003',  12,       21, 3,2,1],
          ['1998',  6,    21, 12,0,1]
        ]);
/*total assembly const - 40*/
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
		  [ 'Ch. Chhunga','Mizo Union',new Date(1972, 5, 3), new Date(1977, 5, 10) ],
		    [ 'President\'s Rule', '',  new Date(1977, 5, 11),  new Date(1978, 6, 1) ],
		  [ 'Thenphunga Sailo','MPC' , new Date(1978, 6, 2),  new Date(1978,11,10) ],
		    [ 'President\'s Rule', '', new Date(1978,11,10),  new Date(1979, 5, 8) ],
		    [ 'Thenphunga Sailo','MPC', new Date(1979, 5, 8), new Date(1984, 5,4) ],
		    ['Pu Lalthanhawla','INC',new Date(1984,5,5),new Date(1986,8,20)],
		    ['Pu Laldenga','MNF',new Date(1986,8,21),new Date(1988,9,7)],
		    ['President\'s rule','',new Date(1988,9,7),new Date(1989,1,24)],
		    ['Pu Lalthanhawla','INC',new Date(1989,1,24),new Date(1998,12,3)],
		    ['Pu Zoramthanga','MNF',new Date(1998,12,3),new Date(2008,12,11)],
		    ['Pu Lalthanhawla','INC',new Date(2008,12,11),new Date()]
		    


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
			MIZORAM
			</div>
			<div id="dof">
				<span>Date of Formation - </span><span id="dofValue">20 February 1987</span>
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
						<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/mizoram/cm.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Lal Thanhawla</a></div>
						<div class="mparty"><a href="">INC</a></div>
						</div>
					</div>
					
				</div>
				<div class="mainPersonalityBlock">
					<div class="mdesignation">
					Governor
					</div>
					<div class="mphoto">
						<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/mizoram/governor.png">
						<div class="mphotoDetails">
						<div class="mname">Vakkom Purushothaman</div>
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
					<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/mizoram/1.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Pu Zoramthanga</a></div>
						<div class="mparty"><a href="">MNF</a></div>
						<div class="mpost">Party President, Former CM</div>
						</div>
					</div>
					<div id="minister2" class="photo">
						<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/mizoram/2.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Thenphunga Sailo</a></div>
						<div class="mparty"><a href="">MPC</a></div>
						<div class="mpost">Former CM</div>
						</div>
					</div>
					<div id = "minister3" class="photo">
						<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/mizoram/3.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">C.L Ruala</a></div>
						<div class="mparty"><a href="">INC</a></div>
						<div class="mpost">MP-LokSabha</div>
						</div>
					</div>
				</div>
			</div>
		</div><!--end of personalities -->
		<div id = "partiesInfo">
		<div id="partiesInfoHeading">List of Prominent Political Parties</div>
			<div id="partiesInfoCont">
			    
			    <a href="" class="PartiesList">INC</a>
			    <a href="" class="PartiesList">MNF</a>
			    <a href="" class="PartiesList">MPC</a>
			       <a href="" class="PartiesList">ZNF</a>
			    
			   

			</div>
		</div>
		<div id="chartContainer" style="width:500px;height:400px;display:inline-block;vertical-align:top;">

		</div>
		<div id="povertyStatus" style="display:inline-block;width:400px;height:400px;margin:0 auto;vertical-align:top; ">
		</div>
		<div id="chiefMinistersHeading">Chief Ministers of Mizoram</div>
		<div id="pastChiefMinisters" style="width:100%;height:400px">
		</div>
		


	</div><!-- end of container -->
</div><!-- end of wrapper -->
<jsp:include page="../footer.jsp" />
</body>
</html>
