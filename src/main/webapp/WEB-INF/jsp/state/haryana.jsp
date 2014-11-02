<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<title>Haryana | State of India | Know Your Candidate</title>
<link rel="shortcut icon" href="/Resources/images/title_icon.png">
<meta name="description" content="Haryana - State of India. List of Chief Ministers, Political Parties and Politicians of Haryana."/>
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
          ['Year',  'INC','INLD','IND','Others'],
          ['2009',40,31,7,12 ],
          ['2005',67,9,10,4],
          ['2000',21,47,11,11]
         
          
         
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
			  ['Pandit Bhagwat Dayal Sharma','INC',new Date(1966,10,1),new Date(1967,2,23)],
				['Rao Birender Singh','Vishal Haryana Party',new Date(1967,2,24),new Date(1967,10,2)],
				['President\'s Rule','',new Date(1967,10,2),new Date(1968,4,22)],
				['Bansi Lal','INC',new Date(1968,4,22),new Date(1975,10,30)],
				['Banarsi Das Gupta','INC',new Date(1975,11,1),new Date(1977,3,30)],
				['President\'s Rule','',new Date(1977,3,30),new Date(1977,5,21)],
				['Chaudhary Devi Lal','JP',new Date(1977,5,21),new Date(1979,5,28)],
				['Bhajan Lal','JP',new Date(1979,5,29),new Date(1980,0,22)],
				['Bhajan Lal','INC',new Date(1980,0,22),new Date(1985,6,5)],
				['Bansi Lal','INC',new Date(1985,6,5),new Date(1987,5,19)],
				['Chaudhary Devi Lal','JD',new Date(1987,6,17),new Date(1989,11,2)],
				['Om Prakash Chautala','JD',new Date(1989,11,2),new Date(1990,4,22)],
				['Banarsi Das Gupta','JD',new Date(1990,4,22),new Date(1990,6,12)],
				['Om Prakash Chautala','JD',new Date(1990,6,12),new Date(1990,6,17)],
				['Hukam Singh','JD',new Date(1990,6,17),new Date(1991,2,21)],
				['Om Prakash Chautala','Samajwadi JP',new Date(1991,2,22),new Date(1991,3,6)],
				['President\'s Rule','',new Date(1991,3,6),new Date(1991,6,23)],
				['Bhajan Lal','INC',new Date(1991,6,23),new Date(1996,4,9)],
				['Bansi Lal','Haryana Vikas Party',new Date(1996,4,11),new Date(1999,6,23)],
				['Om Prakash Chautala','Indian National Lok Dal',new Date(1999,6,24),new Date(2005,2,4)],
				['Bhupinder Singh Hooda','INC',new Date(2005,2,5),new Date()]
		    
		    


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
			<h1>HARYANA</h1>
			</div>
			<div id="dof">
				<span>Date of Formation - </span><span id="dofValue">1 November 1966</span>
			</div>
			<div id="totConst">
				<span>Number of Lok Sabha Seats - <span><span id="totConstValue"><a href="http://164.100.47.132/lssnew/Members/Statewiselist.aspx" target=_blank>10</a></span>
			</div>
		</div>
		<div id="personalities">
			<div id="leftPersonalities">
				<div  class="mainPersonalityBlock">
					<div class="mdesignation">
					Chief Minister
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/haryana/cm.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://www.colorofnation.com/profile/bhupinder_singh_hooda" target=_blank>Bhupinder Singh Hooda</a></div>
						<div class="mparty"><a href="http://www.hrpccvicharvibhag.org/" target=_blank>INC</a></div>
						</div>
					</div>
					
				</div>
				<div class="mainPersonalityBlock">
					<div class="mdesignation">
					Governor
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/haryana/governor.png">
						<div class="mphotoDetails">
						<div class="mname">Jagannath Pahadia</div>
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
					<img src="/Resources/images/state/haryana/1.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://www.colorofnation.com/profile/om_prakash_chautala" target=_blank>Om Prakash Chautala</a></div>
						<div class="mparty"><a href="http://www.colorofnation.com/political-party/indian-national-lok-dal#tab_tab0" target=_blank>INLD</a></div>
						<div class="mpost">Former CM</div>
						</div>
					</div>
					<div id="minister2" class="photo">
						<img src="/Resources/images/state/haryana/2.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://164.100.47.132/lssnew/Members/Biography.aspx?mpsno=4207" target=_blank>Deepender Singh Hooda</a></div>
						<div class="mparty"><a href="http://www.hrpccvicharvibhag.org/" target=_blank>INC</a></div>
						<div class="mpost">Member of Lak Sabha</div>
						</div>
					</div>
					<div id = "minister3" class="photo">
						<img src="/Resources/images/state/haryana/3.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://www.archive.india.gov.in/govt/rajyasabhampbiodata.php?mpcode=2041" target=_blank>Ram Prakash</a></div>
						<div class="mparty"><a href="http://www.hrpccvicharvibhag.org/" target=_blank>INC</a></div>
						<div class="mpost">Member of Rajya Sabha</div>
						</div>
					</div>
				</div>
			</div>
		</div><!--end of personalities -->
		<div id = "partiesInfo">
		<div id="partiesInfoHeading">List of Prominent Political Parties</div>
			<div id="partiesInfoCont">
			
				
			    <a href="http://www.hrpccvicharvibhag.org/" target=_blank class="PartiesList">INC</a>
			    <a href="http://www.colorofnation.com/political-party/indian-national-lok-dal#tab_tab0" target=_blank class="PartiesList">INLD</a>
			   <span class="PartiesList"><!--<a href="" target=_blank class="PartiesList">IND</a>-->IND</span>
			   
			    
			   

			</div>
		</div>
		<div id="chartContainer">

		</div>
		<div id="povertyStatus" style=" ">
		</div>
		<div id="chiefMinistersHeading">Chief Ministers of Haryana</div>
		<div id="pastChiefMinisters" >
		</div>
		


	</div><!-- end of container -->
</div><!-- end of wrapper -->
<jsp:include page="../footer.jsp" />
</body>
</html>
