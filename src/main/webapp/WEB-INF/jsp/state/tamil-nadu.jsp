<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<title>Tamil Nadu | State of India | Know Your Candidate</title>
<link rel="shortcut icon" href="/Resources/images/title_icon.png">
<meta name="description" content="Tamil Nadu - State of India. List of Chief Ministers, Political Parties and Politicians of Tamil Nadu."/>
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
	/*$('#chartContainer').highcharts({
            chart: {
                type: 'column',
                backgroundColor:"#f3f1f1",

            },
            title: {
                text: 'Past Assembly Elections',
                style:{"font":"14pt opensans","color":"#7c7878"}
            },
            xAxis: {
                categories: [
                    '2011',
                    '2006',
                    '2001',
                    '1996'
                ],
                labels:{
                	style:{"font":"8pt opensans","color":"#7c7878"}
                }
            },
            yAxis: {
                min: 0,
                title: {
                    text:'Seats Won',
                    style:{"font":"12pt opensans","color":"#7c7878"}
                },
                labels:{
                	style:{"font":"8pt opensans","color":"#7c7878"}
                }
            },
            tooltip: {
                headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
                pointFormat: '<tr><td style="color:{series.color};padding:0;font:10pt opensans">{series.name}: </td>' +
                    '<td style="padding:0"><b>{point.y} </b></td></tr>',
                footerFormat: '</table>',
                shared: true,
                useHTML: true,

            },
            plotOptions: {
                column: {
                    pointPadding: 0.2,
                    borderWidth: 0
                }
            },
            series: [{
                name: 'DMK Alliance',
                data: [31, 163,37,221]
    
            }, {
                name: 'AIADMK Alliance',
                data: [203,69,196,4]
    
            },{
                name:'Others',
                data:[0,2,1,9]
            }],
            credits:{
            	enabled:false,
            }
        });*/
		function drawChart()
		{

		var data1 = google.visualization.arrayToDataTable([
          ['Year', 'DMK Alliance', 'AIADMK Alliance', 'Others'],
          ['2011',  31,      203, 0],
          ['2006',  163,      69, 2],
          ['2001',  37,       196, 1],
          ['1996',  221,      4, 9]
        ]);

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
		    [ 'C.N Annadurai','DMK', new Date(1967, 2, 6), new Date(1969, 1, 3) ],
		    [ 'V.R.Nedunchezhiyan(acting)', 'DMK',     new Date(1969, 1, 3),  new Date(1969, 1, 10) ],
		  [ 'M.Karunanidhi','DMK' , new Date(1969, 1, 10),  new Date(1971, 0, 4) ],
		    [ 'M.Karunanidhi', 'DMK', new Date(1971, 0, 4),  new Date(1976, 0, 31) ],
		    [ 'President rule','', new Date(1976, 0, 31), new Date(1977, 5, 30) ],
		    ['M.G.Ramachandran','AIADMK',new Date(1977,5,30),new Date(1980,1,17)],
		    ['President rule','',new Date(1980,1,17),new Date(1980,5,9)],
		    ['M.G.Ramachandran','AIADMK',new Date(1980,5,9),new Date(1984,10,15)],
		    ['M.G.Ramachandran','AIADMK',new Date(1984,10,15),new Date(1987,11,24)],
		    ['V.R.Nedunchezhiyan(acting)','AIADMK',new Date(1987,11,24),new Date(1988,0,7)],
		    ['Janaki Ramachandran','AIADMK',new Date(1988,0,7),new Date(1988,0,30)],
		    ['President rule','',new Date(1988,0,30),new Date(1989,0,27)],
		    ['M.Karunanidhi','DMK',new Date(1989,0,27),new Date(1991,0,30)],
		    ['President rule','',new Date(1991,0,30),new Date(1991,5,24)],
		    ['J.Jayalalitha','AIADMK',new Date(1991,5,24),new Date(1996,4,12)],
		    ['M.Karunanidhi','DMK',new Date(1996,4,13),new Date(2001,4,13)],
		    ['J.Jayalalitha','AIADMK',new Date(2001,4,14),new Date(2001,8,21)],
		    ['O.Panneerselvam','AIADMK',new Date(2001,8,21),new Date(2002,2,1)],
		    ['J.Jayalalitha','AIADMK',new Date(2002,2,2),new Date(2006,4,12)],
		    ['M.Karunanidhi','DMK',new Date(2006,4,13), new Date(2011,4,15)],
		    ['J.Jayalalitha','AIADMK',new Date(2011,4,16),new Date()]


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
			<h1>TAMIL NADU</h1>
			</div>
			<div id="dof">
				<span>Date of Formation - </span><span id="dofValue">26 January 1950</span>
			</div>
			<div id="totConst">
				<span>Number of Lok Sabha Seats - <span><span id="totConstValue"><a href="http://164.100.47.132/lssnew/Members/Statewiselist.aspx" target=_blank>39</a></span>
			</div>
		</div>
		<div id="personalities">
			<div id="leftPersonalities">
				<div  class="mainPersonalityBlock">
					<div class="mdesignation">
					Chief Minister
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/TamilNadu/jayalalitha.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://www.assembly.tn.gov.in/members/profile/139.html" target=_blank>J.Jayalalitha</a></div>
						<div class="mparty"><a href="http://www.aiadmk.com/‎" target=_blank>AIADMK</a></div>
						</div>
					</div>
					
				</div>
				<div class="mainPersonalityBlock">
					<div class="mdesignation">
					Governor
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/TamilNadu/rosaiah.png">
						<div class="mphotoDetails">
						<div class="mname">K.Rosiah</div>
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
					<img src="/Resources/images/state/TamilNadu/chidambaram.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://www.archive.india.gov.in/govt/loksabhampbiodata.php?mpcode=3000" target=_blank>P.Chidambaram</a></div>
						<div class="mparty"><a href="http://tncc.org.in/" target=_blank>INC</a></div>
						<div class="mpost">Union Finance Minister</div>
						</div>
					</div>
					<div id="minister2" class="photo">
						<img src="/Resources/images/state/TamilNadu/karunanidhi.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://www.southdreamz.com/portfolio/dr-kalaignar-karunanidhi/" target=_blank>M.Karunanidhi</a></div>
						<div class="mparty"><a href="http://www.dmk.in/" target=_blank>DMK</a></div>
						<div class="mpost">Party President</div>
						</div>
					</div>
					<div id = "minister3" class="photo">
						<img src="/Resources/images/state/TamilNadu/vijayakanth.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://vijayakanth-dmdk.blogspot.in/2008/11/captain-full-bio-data-for-u-all.html" target=_blank>Vijayakanth</a></div>
						<div class="mparty"><a href="http://dmdkparty.com/dmdk/" target=_blank>DMDK</a></div>
						<div class="mpost">Party President</div>
						</div>
					</div>
				</div>
			</div>
		</div><!--end of personalities -->
		<div id = "partiesInfo">
		<div id="partiesInfoHeading">List of Prominent Political Parties</div>
			<div id="partiesInfoCont">
			    <a href="http://www.aiadmk.com/‎" target=_blank class="PartiesList">AIADMK</a>
			    <a href="http://bjptn.org/" target=_blank class="PartiesList">BJP</a>
			    <a href="http://www.communistparty.in/" target=_blank class="PartiesList">CPI</a>
			    <a href="http://cpim.org/tags/tamilnadu" target=_blank class="PartiesList">CPI(M)</a>
			    <a href="http://dmdkparty.com/dmdk/" target=_blank class="PartiesList">DMDK</a>
			    <a href="http://www.dmk.in/" target=_blank class="PartiesList">DMK</a>
			    <a href="http://tncc.org.in/" target=_blank class="PartiesList">INC</a>
			    <a href="http://www.pmkparty.in/" target=_blank class="PartiesList">PMK</a>

			</div>
		</div>
		<div id="chartContainer" style="width:500px;height:400px;display:inline-block;vertical-align:top;">

		</div>
		<div id="povertyStatus" style="display:inline-block;width:400px;height:400px;margin:0 auto;vertical-align:top; ">
		</div>
		<div id="chiefMinistersHeading">Chief Ministers of Tamil Nadu</div>
		<div id="pastChiefMinisters" style="width:100%;height:400px">
		</div>
		


	</div><!-- end of container -->
</div><!-- end of wrapper -->
<jsp:include page="../footer.jsp" />
</body>
</html>
