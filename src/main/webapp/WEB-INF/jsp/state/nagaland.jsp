<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<title>Nagaland</title>
<meta name="description" content="Nagaland - State of India. List of Chief Ministers, Political Parties and Politicians of Nagaland."/>
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
          ['Year', 'BJP', 'INC', 'NCP','NPF','Others'],
          ['2013',  1,      8, 4,37,10],
          ['2008',  2,     23, 2,26,8],
          ['2003',  7,       21, 0,19,13],
          ['1998',  0,    53, 0,0,7]
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
		  [ 'P. Shilu Ao','NNO',new Date(1963, 12, 1), new Date(1966, 8, 14) ],
		    [ 'T.N. Angami', 'NNO',  new Date(1966, 8, 14),  new Date(1969, 2, 22) ],
		  [ 'Hokishe Sema','NNO' , new Date(1969, 2, 22),  new Date(1974,2,26) ],
		    [ 'Vizol Angami', 'UDF', new Date(1974,2,26),  new Date(1975, 3, 10) ],
		    [ 'John Bosco Jasokie','NNDP', new Date(1975, 3, 10), new Date(1975, 3, 20) ],
		    ['President rule','',new Date(1975, 3, 20),new Date(1977,11,25)],
		    ['Vizol Angami','UDF',new Date(1977,11,25),new Date(1980,4,18)],
		    ['S.C. Jamir','UDF(P)',new Date(1980,4,18),new Date(1980,6,5)],
		    ['John Bosco Jasokie','NNDP',new Date(1980,6,5),new Date(1982,11,18)],
		    ['S.C. Jamir','UDF(P)',new Date(1982,11,18),new Date(1986,10,28)],
		    ['Hokishe Sema','INC',new Date(1986,10,29),new Date(1988,8,7)],
		    ['President rule','',new Date(1988,8,7),new Date(1989,1,25)],
		    ['S.C. Jamir','INC',new Date(1989,1,25),new Date(1990,5,10)],
		    ['K.L Chishi','INC',new Date(1990,5,16),new Date(1990,6,19)],
		    ['Vamuzo Phesao','NPC',new Date(1990,6,19),new Date(1992,4,2)],
		    ['President rule','',new Date(1992,4,2),new Date(1993,2,22)],
		     ['S.C. Jamir','INC',new Date(1993,2,22),new Date(2003,3,6)],
		      ['Neiphiu Rio','NPF',new Date(2003,3,6),new Date(2008,1,3)],
		       ['President rule','',new Date(2008,1,3),new Date(2008,3,12)],
		        ['Neiphiu Rio','NPF',new Date(2008,3,12),new Date()]
		    


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
			<h1>NAGALAND</h1>
			</div>
			<div id="dof">
				<span>Date of Formation - </span><span id="dofValue">1 December 1963</span>
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
						<img src="/Resources/images/state/nagaland/cm.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Neiphiu Rio</a></div>
						<div class="mparty"><a href="">NPF</a></div>
						</div>
					</div>
					
				</div>
				<div class="mainPersonalityBlock">
					<div class="mdesignation">
					Governor
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/nagaland/governor.png">
						<div class="mphotoDetails">
						<div class="mname">Ashwani Kumar</div>
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
					<img src="/Resources/images/state/nagaland/1.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">C.M Chang</a></div>
						<div class="mparty"><a href="">NPF</a></div>
						<div class="mpost">MP - LokSabha</div>
						</div>
					</div>
					<div id="minister2" class="photo">
						<img src="/Resources/images/state/nagaland/2.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">S.C Jamir</a></div>
						<div class="mparty"><a href="">INC</a></div>
						<div class="mpost">Former CM, Current Odisha Governor</div>
						</div>
					</div>
					<div id = "minister3" class="photo">
						<img src="/Resources/images/state/nagaland/3.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">H.Khekiho Zhimomi</a></div>
						<div class="mparty"><a href="">NPF</a></div>
						<div class="mpost">MP - RajyaSabha</div>
						</div>
					</div>
				</div>
			</div>
		</div><!--end of personalities -->
		<div id = "partiesInfo">
		<div id="partiesInfoHeading">List of Prominent Political Parties</div>
			<div id="partiesInfoCont">
			    
			    <a href="" class="PartiesList">BJP</a>
			    <a href="" class="PartiesList">INC</a>
			    <a href="" class="PartiesList">NCP</a>
			       <a href="" class="PartiesList">NPF</a>
			    
			   

			</div>
		</div>
		<div id="chartContainer" style="width:500px;height:400px;display:inline-block;vertical-align:top;">

		</div>
		<div id="povertyStatus" style="display:inline-block;width:400px;height:400px;margin:0 auto;vertical-align:top; ">
		</div>
		<div id="chiefMinistersHeading">Chief Ministers of Nagaland</div>
		<div id="pastChiefMinisters" style="width:100%;height:400px">
		</div>
		


	</div><!-- end of container -->
</div><!-- end of wrapper -->
<jsp:include page="../footer.jsp" />
</body>
</html>
