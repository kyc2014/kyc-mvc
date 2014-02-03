<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}"/>/Resources/CSS/reset.css" />
<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}"/>/Resources/CSS/state.css" />
</head>
<body>
<script type="text/javascript" src="<c:out value="${pageContext.request.contextPath}"/>/Resources/Libraries/jquery-2.0.2.min.js"></script>

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
          ['Year', 'INC', 'BJP', 'BSP','Others'],
          ['2012',  32,      31, 3,4],
          ['2007',  34,     21, 8,6],
          ['2002',  36,       19, 7,8]
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
		  	['Gopi Chand Bhargava','INC',new Date(1947,8,15),new Date(1949,4,13)],
			['Bhim Sen Sachar','INC',new Date(1949,4,13),new Date(1949,10,18)],
			['Gopi Chand Bhargava','INC',new Date(1949,10,18),new Date(1951,6,20)],
			['Vacant(President\'s rule)','N/A',new Date(1951,6,20),new Date(1952,4,17)],
			['Bhim Sen Sachar','INC',new Date(1952,4,17),new Date(1956,1,23)],
			['Pratap Singh Kairon','INC',new Date(1956,1,23),new Date(1964,6,21)],
			['Gopi Chand Bhargava','INC',new Date(1964,6,21),new Date(1964,7,6)],
			['Ram Kishan','INC',new Date(1964,7,7),new Date(1966,7,5)],
			['Vacant(President\'s rule)','N/A',new Date(1966,7,5),new Date(1966,11,1)],
			['Giani Gurmukh Singh Mussafir','INC',new Date(1966,11,1),new Date(1967,3,8)],
			['Gurnam Singh','SAD',new Date(1967,3,8),new Date(1967,11,25)],
			['Lachhman Singh Gill','SAD',new Date(1967,11,25),new Date(1968,8,23)],
			['Vacant(President\'s rule)','N/A',new Date(1968,8,23),new Date(1969,2,17)],
			['Gurnam Singh','SAD',new Date(1969,2,17),new Date(1970,3,27)],
			['Parkash Singh Badal','SAD',new Date(1970,3,27),new Date(1971,6,14)],
			['Vacant(President\'s rule)','N/A',new Date(1971,6,14),new Date(1972,3,17)],
			['Zail Singh','INC',new Date(1972,3,17),new Date(1977,4,30)],
			['Vacant(President\'s rule)','N/A',new Date(1977,4,30),new Date(1977,6,20)],
			['Parkash Singh Badal','SAD',new Date(1977,6,20),new Date(1980,2,17)],
			['Vacant(President\'s rule)','N/A',new Date(1980,2,17),new Date(1980,6,6)],
			['Darbara Singh','INC',new Date(1980,6,6),new Date(1983,10,10)],
			['Vacant(President\'s rule)','N/A',new Date(1983,10,10),new Date(1985,9,29)],
			['Surjit Singh Barnala','SAD',new Date(1985,9,29),new Date(1987,6,11)],
			['Vacant(President\'s rule)','N/A',new Date(1987,6,11),new Date(1992,2,25)],
			['Beant Singh','INC',new Date(1992,2,25),new Date(1995,8,31)],
			['Harcharan Singh Brar','INC',new Date(1995,8,31),new Date(1996,1,21)],
			['Rajinder Kaur Bhattal','INC',new Date(1996,1,21),new Date(1997,2,11)],
			['Parkash Singh Badal','SAD',new Date(1997,2,12),new Date(2002,2,26)],
			['Amarinder Singh','INC',new Date(2002,2,26),new Date(2007,3,1)],
			['Parkash Singh Badal','SAD',new Date(2007,3,1),new Date(undefined,NaN,<i>Incumbent</i>)],
		  
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
			UTTARAKHAND
			</div>
			<div id="dof">
				<span>Date of Formation - </span><span id="dofValue">9 November 2000</span>
			</div>
			<div id="totConst">
				<span>Number of Lok Sabha Seats - <span><span id="totConstValue"><a href="">5</a></span>
			</div>
		</div>
		<div id="personalities">
			<div id="leftPersonalities">
				<div  class="mainPersonalityBlock">
					<div class="mdesignation">
					Chief Minister
					</div>
					<div class="mphoto">
						<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/uttarakhand/cm.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Vijay Bahuguna</a></div>
						<div class="mparty"><a href="">INC</a></div>
						</div>
					</div>
					
				</div>
				<div class="mainPersonalityBlock">
					<div class="mdesignation">
					Governor
					</div>
					<div class="mphoto">
						<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/uttarakhand/governor.jpg">
						<div class="mphotoDetails">
						<div class="mname">Aziz Qureshi</div>
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
					<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/uttarakhand/1.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">H.D Deve Gowda</a></div>
						<div class="mparty"><a href="">JD(S)</a></div>
						<div class="mpost">Former PM</div>
						</div>
					</div>
					<div id="minister2" class="photo">
						<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/uttarakhand/2.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">K.H Muniyappa</a></div>
						<div class="mparty"><a href="">INC</a></div>
						<div class="mpost">Minister of State(Independent Charges) - Micro,Small and Medium Enterprises</div>
						</div>
					</div>
					<div id = "minister3" class="photo">
						<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/uttarakhand/3.jpg">
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
			    
			    <a href="" class="PartiesList">INC</a>
			    <a href="" class="PartiesList">BJP</a>
			    <a href="" class="PartiesList">BSP</a>
			    
			   

			</div>
		</div>
		<div id="chartContainer" style="width:500px;height:400px;display:inline-block;vertical-align:top;">

		</div>
		<div id="povertyStatus" style="display:inline-block;width:400px;height:400px;margin:0 auto;vertical-align:top; ">
		</div>
		<div id="chiefMinistersHeading">Chief Ministers of Uttarakhand</div>
		<div id="pastChiefMinisters" style="width:100%;height:400px">
		</div>
		


	</div><!-- end of container -->
</div><!-- end of wrapper -->
</body>
</html>