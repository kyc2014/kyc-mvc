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
          ['Year',  'AJSU','BJP','INC','JD(U)','JMM','RJD','Others'],
          ['2009',  6,      18, 13,2,18,5,19],
          ['2005',  2,30,9,6,17,7,10],
          
         
        ]);
/*total assembly const - 81*/
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
				['Yashwantrao Chavan','INC',new Date(1960,5,1),new Date(1962,11,19)],
				['Marotrao Kannamwar','INC',new Date(1962,11,20),new Date(1963,11,24)],
				['P. K. Sawant','INC',new Date(1963,11,25),new Date(1963,12,4)],
				['Vasantrao Naik','INC',new Date(1963,12,5),new Date(1967,3,1)],
				['Vasantrao Naik','INC',new Date(1967,3,1),new Date(1972,3,13)],
				['Vasantrao Naik','INC',new Date(1972,3,13),new Date(1975,2,20)],
				['Shankarrao Chavan','INC',new Date(1975,2,21),new Date(1977,4,16)],
				['Vasantdada Patil','INC',new Date(1977,4,17),new Date(1978,3,2)],
				['Vasantdada Patil','INC',new Date(1978,3,7),new Date(1978,7,18)],
				['Sharad Pawar','Progressive Democratic Front',new Date(1978,7,18),new Date(1980,2,17)],
				['Vacant(President\'s rule)','N/A',new Date(1980,2,17),new Date(1980,6,8)],
				['Abdul Rehman Antulay','INC',new Date(1980,6,9),new Date(1982,1,12)],
				['Babasaheb Bhosale','INC',new Date(1982,1,21),new Date(1983,2,1)],
				['Vasantdada Patil','INC',new Date(1983,2,2),new Date(1985,6,1)],
				['Shivajirao Patil Nilangekar','INC',new Date(1985,6,3),new Date(1986,3,6)],
				['Shankarrao Chavan','INC',new Date(1986,3,12),new Date(1988,6,26)],
				['Sharad Pawar','INC',new Date(1988,6,26),new Date(1991,6,25)],
				['Sudhakarrao Naik','INC',new Date(1991,6,25),new Date(1993,2,22)],
				['Sharad Pawar','INC',new Date(1993,3,6),new Date(1995,3,14)],
				['Manohar Joshi','Shiv Sena',new Date(1995,3,14),new Date(1999,1,31)],
				['Narayan Rane','Shiv Sena',new Date(1999,2,1),new Date(1999,10,17)],
				['Vilasrao Deshmukh','INC',new Date(1999,10,18),new Date(2003,1,16)],
				['Sushilkumar Shinde','INC',new Date(2003,1,18),new Date(2004,10,30)],
				['Vilasrao Deshmukh','INC',new Date(2004,11,1),new Date(2008,12,4)],
				['Ashok Chavan','INC',new Date(2008,12,8),new Date(2009,10,15)],
				['Ashok Chavan','INC',new Date(2009,11,7),new Date(2010,11,9)],
				['Prithviraj Chavan','INC',new Date(2010,11,11),new Date()],
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
			JHARKHAND
			</div>
			<div id="dof">
				<span>Date of Formation - </span><span id="dofValue">15 November 2000</span>
			</div>
			<div id="totConst">
				<span>Number of Lok Sabha Seats - <span><span id="totConstValue"><a href="">14</a></span>
			</div>
		</div>
		<div id="personalities">
			<div id="leftPersonalities">
				<div  class="mainPersonalityBlock">
					<div class="mdesignation">
					Chief Minister
					</div>
					<div class="mphoto">
						<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/Jharkhand/cm.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Hemant Soren</a></div>
						<div class="mparty"><a href="">JMM</a></div>
						</div>
					</div>
					
				</div>
				<div class="mainPersonalityBlock">
					<div class="mdesignation">
					Governor
					</div>
					<div class="mphoto">
						<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/Jharkhand/governor.jpg">
						<div class="mphotoDetails">
						<div class="mname">Syed Ahmed</div>
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
					<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/Jharkhand/1.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Yashwant Sinha</a></div>
						<div class="mparty"><a href="">BJP</a></div>
						<div class="mpost">MP - LokSabha</div>
						</div>
					</div>
					<div id="minister2" class="photo">
						<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/Jharkhand/2.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Arjun Munda</a></div>
						<div class="mparty"><a href="">BJP</a></div>
						<div class="mpost">Former CM</div>
						</div>
					</div>
					<div id = "minister3" class="photo">
						<img src="<c:out value="${pageContext.request.contextPath}"/>/Resources/images/state/Jharkhand/3.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Shibu Soren</a></div>
						<div class="mparty"><a href="">JMM</a></div>
						<div class="mpost">Former CM , Former Minister of Coal</div>
						</div>
					</div>
				</div>
			</div>
		</div><!--end of personalities -->
		<div id = "partiesInfo">
		<div id="partiesInfoHeading">List of Prominent Political Parties</div>
			<div id="partiesInfoCont">
			
				<a href="" class="PartiesList">AJSU</a>
			    <a href="" class="PartiesList">BJP</a>
			    
			    <a href="" class="PartiesList">INC</a>
			   <a href="" class="PartiesList">JD(U)</a>
			     <a href="" class="PartiesList">JMM</a>
			     <a href="" class="PartiesList">RJD</a>  
			    
			   

			</div>
		</div>
		<div id="chartContainer">

		</div>
		<div id="povertyStatus" style=" ">
		</div>
		<div id="chiefMinistersHeading">Chief Ministers of Jharkhand</div>
		<div id="pastChiefMinisters" >
		</div>
		


	</div><!-- end of container -->
</div><!-- end of wrapper -->
</body>
</html>