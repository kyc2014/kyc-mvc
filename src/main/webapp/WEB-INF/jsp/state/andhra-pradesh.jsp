<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<title>Andhra Pradesh</title>
<meta name="description" content="Andhra Pradesh - State of India. List of Chief Ministers, Political Parties and Politicians of Andhra Pradesh."/>
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
          ['Year', 'INC', 'TDP', 'Others'],
          ['2009',  156,      92, 46],
          ['2004',  184,      47, 63],
          ['1999',  91,       180, 23],
          ['1994',  26,    216, 52]
        ]);
/*total assembly const - 294*/
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
		    [ 'Neelam Sanjiva Reddy','INC', new Date(1956,11, 1), new Date(1960, 1, 11) ],
		    [ 'Damodaram Sanjivayya', 'INC',     new Date(1960, 1, 11),  new Date(1962, 3, 12) ],
		  [ 'Neelam Sanjiva Reddy','INC' , new Date(1962, 3, 12),  new Date(1964, 2, 20) ],
		    [ 'Kasu Brahmananda Reddy', 'INC', new Date(1964, 2, 21),  new Date(1971, 9, 30) ],
		    [ 'P. V. Narasimha Rao','INC', new Date(1971, 9, 30), new Date(1973, 1, 10) ],
		    ['President rule','',new Date(1973,1,11),new Date(1973,12,10)],
		    ['Jalagam Vengala Rao','INC',new Date(1973,12,10),new Date(1978,3,6)],
		    ['Marri Chenna Reddy','INC',new Date(1978,3,6),new Date(1980,10,11)],
		    ['Tanguturi Anjaiah','INC',new Date(1980,10,11),new Date(1982,2,24)],
		    ['Bhavanam Venkatarami Reddy','INC',new Date(1982,2,24),new Date(1982,9,20)],
		    ['Kotla Vijaya Bhaskara Reddy','INC',new Date(1982,9,20),new Date(1983,1,9)],
		    ['N. T. Rama Rao','TDP',new Date(1983,1,9),new Date(1984,8,16)],
		    ['Nadendla Bhaskara Rao','TDP',new Date(1984,8,16),new Date(1984,9,16)],
		    ['N. T. Rama Rao','TDP',new Date(1984,9,16),new Date(1989,12,2)],
		    ['Marri Chenna Reddy','INC',new Date(1989,12,3),new Date(1990,12,17)],
		    ['Nedurumalli Janardhana Reddy','INC',new Date(1990,12,17),new Date(1992,10,9)],
		    ['Kotla Vijaya Bhaskara Reddy ','INC',new Date(1992,10,9),new Date(1994,12,12)],
		    ['N. T. Rama Rao','TDP',new Date(1994,12,12),new Date(1995,9,1)],
		    ['N. Chandrababu Naidu','TDP',new Date(1995,9,1),new Date(2004,5,14)],
		    ['Y. S. Rajasekhara Reddy','INC',new Date(2004,5,14), new Date(2009,9,2)],
		    ['Konijeti Rosaiah','INC',new Date(2009,9,2),new Date(2010,11,24)],
		    ['N. Kiran Kumar Reddy','INC',new Date(2010,11,25),new Date()]
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
			<h1>ANDHRA PRADESH</h1>
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
						<img src="/Resources/images/state/AndhraPradesh/cm.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Kiran Kumar Reddy</a></div>
						<div class="mparty"><a href="">INC</a></div>
						</div>
					</div>
					
				</div>
				<div class="mainPersonalityBlock">
					<div class="mdesignation">
					Governor
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/AndhraPradesh/governor.jpg">
						<div class="mphotoDetails">
						<div class="mname">E. S. L. Narasimhan</div>
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
					<img src="/Resources/images/state/AndhraPradesh/1.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">N.Chandrababu Naidu</a></div>
						<div class="mparty"><a href="">TDP</a></div>
						<div class="mpost">Party President</div>
						</div>
					</div>
					<div id="minister2" class="photo">
						<img src="/Resources/images/state/AndhraPradesh/2.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">K. Chandrashekar Rao</a></div>
						<div class="mparty"><a href="">TRS</a></div>
						<div class="mpost">Party President</div>
						</div>
					</div>
					<div id = "minister3" class="photo">
						<img src="/Resources/images/state/AndhraPradesh/3.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="">K J SuryaPrakash Reddy</a></div>
						<div class="mparty"><a href="">INC</a></div>
						<div class="mpost">Minster of State - Railways</div>
						</div>
					</div>
				</div>
			</div>
		</div><!--end of personalities -->
		<div id = "partiesInfo">
		<div id="partiesInfoHeading">List of Prominent Political Parties</div>
			<div id="partiesInfoCont">
			    
			    <a href="" class="PartiesList">BJP</a>
			    <a href="" class="PartiesList">CPI</a>
			    <a href="" class="PartiesList">CPI(M)</a>
			    <a href="" class="PartiesList">INC</a>
			    <a href="" class="PartiesList">TDP</a>
			    <a href="" class="PartiesList">TRS</a>

			</div>
		</div>
		<div id="chartContainer" style="width:500px;height:400px;display:inline-block;vertical-align:top;">

		</div>
		<div id="povertyStatus" style="display:inline-block;width:400px;height:400px;margin:0 auto;vertical-align:top; ">
		</div>
		<div id="chiefMinistersHeading">Chief Ministers of Andhra Pradesh</div>
		<div id="pastChiefMinisters" style="width:100%;height:400px">
		</div>
		


	</div><!-- end of container -->
</div><!-- end of wrapper -->
<jsp:include page="../footer.jsp" />
</body>
</html>
