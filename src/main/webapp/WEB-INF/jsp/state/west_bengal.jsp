<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<title>West Bengal | State of India | Know Your Candidate</title>
<link rel="shortcut icon" href="/Resources/images/title_icon.png">
<meta name="description" content="West Bengal - State of India. List of Chief Ministers, Political Parties and Politicians of West Bengal."/>
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
          ['Year', 'AITMC', 'INC','CPI(M)', 'Others'],
          ['2011', 184,      42, 40, 28],
          ['2006',  30,      21,176, 67],
          ['2001',  60,       26,143, 65],
          ['1996',  0,      82,157, 55]
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
		    ['Prafulla Chandra Ghosh','INC',new Date(1947,7,15),new Date(1948,0,14)],
		['Bidhan Chandra Roy','INC',new Date(1948,0,14),new Date(1962,6,1)],
		['President\'s rule','',new Date(1962,6,1),new Date(1962,6,8)],
		['Prafulla Chandra Sen','INC',new Date(1962,6,8),new Date(1967,2,15)],
		['Ajoy Kumar Mukherjee','Bangla Congress',new Date(1967,2,15),new Date(1967,10,2)],
		['Prafulla Chandra Ghosh','Independent Progressive Democratic Alliance Front',new Date(1967,10,2),new Date(1968,1,20)],
		['President\'s rule','',new Date(1968,1,20),new Date(1969,1,25)],
		['Ajoy Kumar Mukherjee','Bangla Congress',new Date(1969,1,25),new Date(1970,2,19)],
		['President\'s rule','',new Date(1970,2,19),new Date(1971,3,2)],
		['Prafulla Chandra Ghosh','INC',new Date(1971,3,2),new Date(1971,5,28)],
		['President\'s rule','',new Date(1971,5,28),new Date(1972,2,19)],
		['Siddhartha Shankar Ray','INC',new Date(1972,2,19),new Date(1977,5,21)],
		['Jyoti Basu','CPI(M)(Left Front)',new Date(1977,5,21),new Date(2000,10,6)],
		['Buddhadeb Bhattacharya','CPI(M)(Left Front)',new Date(2000,10,6),new Date(2011,4,13)],
		['Mamata Banerjee','AITMC',new Date(2011,4,20),new Date()]



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
			<h1>WEST BENGAL</h1>
			</div>
			<div id="dof">
				<span>Date of Formation - </span><span id="dofValue">1 November 1956</span>
			</div>
			<div id="totConst">
				<span>Number of Lok Sabha Seats - <span><span id="totConstValue"><a href="">42</a></span>
			</div>
		</div>
		<div id="personalities">
			<div id="leftPersonalities">
				<div  class="mainPersonalityBlock">
					<div class="mdesignation">
					Chief Minister
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/west_bengal/cm.png">
						<div class="mphotoDetails">
						<div class="mname"><a href=""></a>Mamata Banerjee</div>
						<div class="mparty"><a href="">AITMC</a></div>
						</div>
					</div>
					
				</div>
				<div class="mainPersonalityBlock">
					<div class="mdesignation">
					Governor
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/west_bengal/governor.png">
						<div class="mphotoDetails">
						<div class="mname">M. K. Narayanan</div>
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
					<img src="/Resources/images/state/west_bengal/1.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Adhir Ranjan Chowdhury</a></div>
						<div class="mparty"><a href="">INC</a></div>
						<div class="mpost">Ministers of State - Railways</div>
						</div>
					</div>
					<div id="minister2" class="photo">
						<img src="/Resources/images/state/west_bengal/2.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Abu Hasem Khan Choudhury</a></div>
						<div class="mparty"><a href="">INC</a></div>
						<div class="mpost">Ministers of State - Health and Family Welfare</div>
						</div>
					</div>
					<div id = "minister3" class="photo">
						<img src="/Resources/images/state/west_bengal/3.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Deepa Dasmunsi</a></div>
						<div class="mparty"><a href="">INC</a></div>
						<div class="mpost">Ministers of State - Urban Development</div>
						</div>
					</div>
				</div>
			</div>
		</div><!--end of personalities -->
		<div id = "partiesInfo">
		<div id="partiesInfoHeading">List of Prominent Political Parties</div>
			<div id="partiesInfoCont">
			    <a href="" class="PartiesList">AITMC</a>
			    <a href="" class="PartiesList">INC</a>
			    <a href="" class="PartiesList">CPI(M)</a>
			    <a href="" class="PartiesList">AIFB</a>

			</div>
		</div>
		<div id="chartContainer" style="width:500px;height:400px;display:inline-block;vertical-align:top;">

		</div>
		<div id="povertyStatus" style="display:inline-block;width:400px;height:400px;margin:0 auto;vertical-align:top; ">
		</div>
		<div id="chiefMinistersHeading">Chief Ministers of West Bengal</div>
		<div id="pastChiefMinisters" style="width:100%;height:400px">
		</div>
		


	</div><!-- end of container -->
</div><!-- end of wrapper -->
<jsp:include page="../footer.jsp" />
</body>
</html>
