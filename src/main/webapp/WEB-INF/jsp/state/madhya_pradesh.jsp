<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<title>Madhya Pradesh | State of India | Know Your Candidate</title>
<link rel="shortcut icon" href="/Resources/images/title_icon.png">
<meta name="description" content="Madhya Pradesh - State of India. List of Chief Ministers, Political Parties and Politicians of Madhya Pradesh."/>
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
          ['Year', 'BJP', 'INC','BSP', 'Others'],
          ['2013', 165,      58, 4, 3],
          ['2008',  143,      71,7,9],
          ['2003',  173,       38,2, 17],
          ['1998',  119,      172,11,18]
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
		   ['Ravishankar Shukla','INC',new Date(1956,10,1),new Date(1956,11,31)],
		['Bhagwantrao Mandloi','INC',new Date(1957,0,1),new Date(1957,0,30)],
		['Kailash Nath Katju','INC',new Date(1957,0,31),new Date(1957,2,14)],
		['Kailash Nath Katju','INC',new Date(1957,2,14),new Date(1962,2,11)],
		['Bhagwantrao Mandloi','INC',new Date(1962,2,12),new Date(1963,8,29)],
		['Dwarka Prasad Mishra','INC',new Date(1963,8,30),new Date(1967,2,8)],
		['Dwarka Prasad Mishra','INC',new Date(1967,2,9),new Date(1967,6,29)],
		['Govind Narayan Singh','INC',new Date(1967,6,30),new Date(1969,2,12)],
		['Nareshchandra Singh','INC',new Date(1969,2,13),new Date(1969,2,25)],
		['Shyama Charan Shukla','INC',new Date(1969,2,26),new Date(1972,0,28)],
		['Prakash Chandra Sethi','INC',new Date(1972,0,29),new Date(1972,2,22)],
		['Prakash Chandra Sethi','INC',new Date(1972,2,23),new Date(1975,11,22)],
		['Shyama Charan Shukla','INC',new Date(1975,11,23),new Date(1977,3,29)],
		['President\'s rule','',new Date(1977,3,29),new Date(1977,5,25)],
		['Kailash Chandra Joshi','JP',new Date(1977,5,26),new Date(1978,0,17)],
		['Virendra Kumar Saklecha','JP',new Date(1978,0,18),new Date(1980,0,19)],
		['Sunderlal Patwa','JP',new Date(1980,0,20),new Date(1980,1,17)],
		['President\'s rule','',new Date(1980,1,18),new Date(1980,5,8)],
		['Arjun Singh','INC',new Date(1980,5,8),new Date(1985,2,10)],
		['Arjun Singh','INC',new Date(1985,2,11),new Date(1985,2,12)],
		['Motilal Vora','INC',new Date(1985,2,13),new Date(1988,1,13)],
		['Arjun Singh','INC',new Date(1988,1,14),new Date(1989,0,24)],
		['Motilal Vora','INC',new Date(1989,0,25),new Date(1989,11,8)],
		['Shyama Charan Shukla','INC',new Date(1989,11,9),new Date(1990,2,4)],
		['Sunderlal Patwa','BJP',new Date(1990,2,5),new Date(1992,11,15)],
		['President\'s rule','',new Date(1992,11,16),new Date(1993,11,6)],
		['Digvijaya Singh','INC',new Date(1993,11,7),new Date(1998,11,1)],
		['Digvijaya Singh','INC',new Date(1998,11,1),new Date(2003,11,8)],
		['Uma Bharti','BJP',new Date(2003,11,8),new Date(2004,7,23)],
		['Babulal Gaur','BJP',new Date(2004,7,23),new Date(2005,10,29)],
		['Shivraj Singh Chouhan','BJP',new Date(2005,10,29),new Date(2008,11,12)],
		['Shivraj Singh Chouhan','BJP',new Date(2008,11,12),new Date(2013,11,12)],
		['Shivraj Singh Chouhan','BJP',new Date(2013,11,13),new Date()]


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
			<h1>MADHYA PRADESH</h1>
			</div>
			<div id="dof">
				<span>Date of Formation - </span><span id="dofValue">1 November 1956</span>
			</div>
			<div id="totConst">
				<span>Number of Lok Sabha Seats - <span><span id="totConstValue"><a href="">29</a></span>
			</div>
		</div>
		<div id="personalities">
			<div id="leftPersonalities">
				<div  class="mainPersonalityBlock">
					<div class="mdesignation">
					Chief Minister
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/madhya_pradesh/cm.png">
						<div class="mphotoDetails">
						<div class="mname"><a href=""></a>Shivraj Singh Chouhan</div>
						<div class="mparty"><a href="">BJP</a></div>
						</div>
					</div>
					
				</div>
				<div class="mainPersonalityBlock">
					<div class="mdesignation">
					Governor
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/madhya_pradesh/governor.png">
						<div class="mphotoDetails">
						<div class="mname">Ram Naresh Yadav</div>
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
					<img src="/Resources/images/state/madhya_pradesh/1.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Jyotiraditya Madhavrao Scindia</a></div>
						<div class="mparty"><a href="">INC</a></div>
						<div class="mpost">Ministers of State (Independent Charges) - Power</div>
						</div>
					</div>
					<div id="minister2" class="photo">
						<img src="/Resources/images/state/madhya_pradesh/2.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Sushma Swaraj</a></div>
						<div class="mparty"><a href="">BJP</a></div>
						<div class="mpost">Member of Lok Sabha</div>
						</div>
					</div>
					<div id = "minister3" class="photo">
						<img src="/Resources/images/state/madhya_pradesh/3.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Kailash Vijayvargiya</a></div>
						<div class="mparty"><a href="">BJP</a></div>
						<div class="mpost">Minister of Urban Administration, Housing & Environment</div>
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
			    <a href="" class="PartiesList">BSP</a>
			    <a href="" class="PartiesList">SP</a>

			</div>
		</div>
		<div id="chartContainer" style="width:500px;height:400px;display:inline-block;vertical-align:top;">

		</div>
		<div id="povertyStatus" style="display:inline-block;width:400px;height:400px;margin:0 auto;vertical-align:top; ">
		</div>
		<div id="chiefMinistersHeading">Chief Ministers of Madhya Pradesh</div>
		<div id="pastChiefMinisters" style="width:100%;height:400px">
		</div>
		


	</div><!-- end of container -->
</div><!-- end of wrapper -->
<jsp:include page="../footer.jsp" />
</body>
</html>
