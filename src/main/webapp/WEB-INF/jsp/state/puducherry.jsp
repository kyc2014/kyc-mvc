<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<title>Puducherry | Union Territory of India | Know Your Candidate</title>
<link rel="shortcut icon" href="/Resources/images/title_icon.png">
<meta name="description" content="Puducherry - Union Territory of India. List of Chief Ministers, Political Parties and Politicians of Puducherry."/>
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
          ['Year',  'AINRC','AIADMK','DMK','INC','Others'],
          ['2011', 15,5,2,7,1  ],
          ['2006', 0,3,7,10,10  ],
          ['2001', 0,3,7,11,9 ],
	  ['1996', 0,3,7,9,11 ]
          
         
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
			  ['Edouard Goubert','INC',new Date(1963, 6, 1), new Date(1964, 7, 24) ],
			  [ 'V. Venkatasubha Reddiar', 'INC',  new Date(1964, 8, 11),  new Date(1967,3,9) ],
		  	  [ 'M. O. H. Farook', 'INC',  new Date(1967,3,9),  new Date(1968,2,6) ],
		  	  [ 'V. Venkatasubha Reddiar', 'INC',  new Date(1968,2,6),  new Date(1968,8,18) ],
		  	  [ 'President rule', '',new Date(1968,8,18),  new Date(1969,2,17)],
		  	  [ 'M. O. H. Farook', 'DMK',  new Date(1969,2,17),  new Date(1974,0,3) ],
		  	  [ 'President rule', '',  new Date(1974,0,3),  new Date(1974,2,6) ],
		  	  [ 'Subramanyan ramaswamy', 'AIADMK',  new Date(1974,2,6),  new Date(1974,2,24) ],
		  	  [ 'President rule', '',  new Date(1974,2,24),  new Date(1977,6,2) ],
		  	  [ 'Subramanyan ramaswamy', 'AIADMK',  new Date(1977,6,2),  new Date(1978,10,12) ],
		  	  [ 'President rule', '',  new Date(1978,10,12),  new Date(1980,0,16) ],
		  	  [ 'M. D. R. Ramachandran', 'DMK',  new Date(1980,0,16),  new Date(1983,5,24) ],
		  	  [ 'President rule', '',  new Date(1983,5,24),  new Date(1985,2,16) ],
		  	  [ 'M. O. H. Farook', 'INC',  new Date(1985,2,16),  new Date(1990,2,4) ],
		  	  [ 'M. D. R. Ramachandran', 'DMK',  new Date(1990,2,4),  new Date(1991,2,3) ],
		  	  [ 'President rule', '',  new Date(1991,2,3),  new Date(1991,6,4) ],
		  	  [ 'V. Vaithilingam', 'INC',  new Date(1991,6,4),  new Date(1996,4,13) ],
		  	  [ 'R. V. Janakiraman', 'DMK',  new Date(1996,4,13),  new Date(2000,2,21) ],
	  	      [ 'P. Shanmugam', 'INC',  new Date(2000,2,21),  new Date(2001,4,15) ],
	  	   	  [ 'P. Shanmugam', 'INC',  new Date(2001,4,15),  new Date(2001,7,26) ],
	  	      [ 'N. Rangaswamy', 'INC',  new Date(2001,7,26),  new Date(2006,4,12) ],
	  	      [ 'N. Rangaswamy', 'INC',  new Date(2006,4,12),  new Date(2008,8,4) ],
	  	      [ 'V. Vaithilingam', 'INC',  new Date(2008,8,4),  new Date(2011,4,14) ],
	  	      [ 'N. Rangaswamy', 'INC',  new Date(2011,4,14),  new Date() ]
		    
		    


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
			<h1>PUDUCHERRY</h1>
			</div>
			<div id="dof">
				<span>Date of Formation - </span><span id="dofValue">1 July 1963</span>
			</div>
			<div id="totConst">
				<span>Number of Lok Sabha Seats - <span><span id="totConstValue"><a href="http://164.100.47.132/lssnew/Members/Statewiselist.aspx" target=_blank>1</a></span>
			</div>
		</div>
		<div id="personalities">
			<div id="leftPersonalities">
				<div  class="mainPersonalityBlock">
					<div class="mdesignation">
					Chief Minister
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/Puducherry/cm.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="https://www.py.gov.in/government/chiefminister.html" target=_blank>N.Rangaswamy</a></div>
						<div class="mparty"><a href="http://allindianrcongress.com/" target=_blank>AINRC</a></div>
						</div>
					</div>
					
				</div>
				<div class="mainPersonalityBlock">
					<div class="mdesignation">
					Lieutenant-Governor
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/Puducherry/governor.jpg">
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
					<img src="/Resources/images/state/Puducherry/1.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://www.archive.india.gov.in/govt/loksabhampbiodata.php?mpcode=4350" target=_blank>V.Narayanasamy</a></div>
						<div class="mparty"><a href="http://www.inc.in/" target=_blank>INC</a></div>
						<div class="mpost">Minister of State - Personnel, Public Grievances and Pensions and Prime Minister Office</div>
						</div>
					</div>
					<div id="minister2" class="photo">
						<img src="/Resources/images/state/Puducherry/2.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://www.in.com/v-vaithilingam/profile-1382.html" target=_blank>V.Vaithilingam</a></div>
						<div class="mparty"><a href="http://www.inc.in/" target=_blank>INC</a></div>
						<div class="mpost">Former CM</div>
						</div>
					</div>
					<div id = "minister3" class="photo">
						<img src="/Resources/images/state/Puducherry/3.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://www.archive.india.gov.in/govt/rajyasabhampbiodata.php?mpcode=2125" target=_blank>P.Kannan</a></div>
						<div class="mparty"><a href="http://www.inc.in/" target=_blank>INC</a></div>
						<div class="mpost">MP - RajyaSabha</div>
						</div>
					</div>
				</div>
			</div>
		</div><!--end of personalities -->
		<div id = "partiesInfo">
		<div id="partiesInfoHeading">List of Prominent Political Parties</div>
			<div id="partiesInfoCont">
			
				
			    <a href="http://www.aiadmk.com/" target=_blank class="PartiesList">AIADMK</a>
			    <a href="http://allindianrcongress.com/" target=_blank class="PartiesList">AINRC</a>
			    <a href="http://www.dmk.in/" target=_blank class="PartiesList">DMK</a>
			   <a href="http://www.inc.in/" target=_blank class="PartiesList">INC</a>
			   
			    
			   

			</div>
		</div>
		<div id="chartContainer">

		</div>
		<div id="povertyStatus" style=" ">
		</div>
		<div id="chiefMinistersHeading">Chief Ministers of Puducherry</div>
		<div id="pastChiefMinisters" >
		</div>
		


	</div><!-- end of container -->
</div><!-- end of wrapper -->
<jsp:include page="../footer.jsp" />
</body>
</html>
