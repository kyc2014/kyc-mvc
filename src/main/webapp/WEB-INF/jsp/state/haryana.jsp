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
	$('.mdesignation').css({"font":"12pt opensans"});
	
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
          ['Year',  'AAP','BJP','INC','Others'],
          ['2013',28,31,8,3 ],
          ['2008',0,43,23,4]
          ['2003',0,20,47,3],
          ['1998', 0,15,52,3 ],
         
          
         
        ]);
/*total assembly const - 70 + 1 elected anglo indian member*/
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
			  ['Pandit Bhagwat Dayal Sharma','INC',new Date(1966,11,1),new Date(1967,3,23)],
				['Rao Birender Singh','Vishal Haryana Party',new Date(1967,3,24),new Date(1967,11,2)],
				['President\'s Rule','',new Date(1967,11,2),new Date(1968,5,22)],
				['Bansi Lal','INC',new Date(1968,5,22),new Date(1975,11,30)],
				['Banarsi Das Gupta','INC',new Date(1975,12,1),new Date(1977,4,30)],
				['President\'s Rule','',new Date(1977,4,30),new Date(1977,6,21)],
				['Chaudhary Devi Lal','JP',new Date(1977,6,21),new Date(1979,6,28)],
				['Bhajan Lal','JP',new Date(1979,6,29),new Date(1980,1,22)],
				['Bhajan Lal','INC',new Date(1980,1,22),new Date(1985,7,5)],
				['Bansi Lal','INC',new Date(1985,7,5),new Date(1987,6,19)],
				['Chaudhary Devi Lal','JD',new Date(1987,7,17),new Date(1989,12,2)],
				['Om Prakash Chautala','JD',new Date(1989,12,2),new Date(1990,5,22)],
				['Banarsi Das Gupta','JD',new Date(1990,5,22),new Date(1990,7,12)],
				['Om Prakash Chautala','JD',new Date(1990,7,12),new Date(1990,7,17)],
				['Hukam Singh','JD',new Date(1990,7,17),new Date(1991,3,21)],
				['Om Prakash Chautala','Samajwadi JP',new Date(1991,3,22),new Date(1991,4,6)],
				['President\'s Rule','',new Date(1991,4,6),new Date(1991,7,23)],
				['Bhajan Lal','INC',new Date(1991,7,23),new Date(1996,5,9)],
				['Bansi Lal','Haryana Vikas Party',new Date(1996,5,11),new Date(1999,7,23)],
				['Om Prakash Chautala','Indian National Lok Dal',new Date(1999,7,24),new Date(2005,3,4)],
				['Bhupinder Singh Hooda','INC',new Date(2005,3,5),new Date()]
		    
		    


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
			PUDUCHERRY
			</div>
			<div id="dof">
				<span>Date of Formation - </span><span id="dofValue">1 July 1963</span>
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
						<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/Puducherry/cm.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">N.Rangaswamy</a></div>
						<div class="mparty"><a href="">AINRC</a></div>
						</div>
					</div>
					
				</div>
				<div class="mainPersonalityBlock">
					<div class="mdesignation">
					Lieutenant-Governor
					</div>
					<div class="mphoto">
						<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/Puducherry/governor.jpg">
						<div class="mphotoDetails">
						<div class="mname">Virendra Kataria</div>
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
					<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/Puducherry/1.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Sheila Dikshit</a></div>
						<div class="mparty"><a href="">INC</a></div>
						<div class="mpost">Former CM</div>
						</div>
					</div>
					<div id="minister2" class="photo">
						<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/Puducherry/2.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Krishna Tirath</a></div>
						<div class="mparty"><a href="">INC</a></div>
						<div class="mpost">Minister of State(Independent Charges) - Women and Child Development</div>
						</div>
					</div>
					<div id = "minister3" class="photo">
						<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/Puducherry/3.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Arvind Kejriwal</a></div>
						<div class="mparty"><a href="">AAP</a></div>
						<div class="mpost">Party Leader</div>
						</div>
					</div>
				</div>
			</div>
		</div><!--end of personalities -->
		<div id = "partiesInfo">
		<div id="partiesInfoHeading">List of Prominent Political Parties</div>
			<div id="partiesInfoCont">
			
				
			    <a href="" class="PartiesList">AAP</a>
			    <a href="" class="PartiesList">BJP</a>
			   <a href="" class="PartiesList">INC</a>
			   
			    
			   

			</div>
		</div>
		<div id="chartContainer">

		</div>
		<div id="povertyStatus" style=" ">
		</div>
		<div id="chiefMinistersHeading">Chief Ministers of Delhi</div>
		<div id="pastChiefMinisters" >
		</div>
		


	</div><!-- end of container -->
</div><!-- end of wrapper -->
</body>
</html>