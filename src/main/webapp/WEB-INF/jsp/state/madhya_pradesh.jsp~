<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<title>Madhya Pradesh</title>
<meta name="description" content="Madhya Pradesh - State of India. List of Chief Ministers (CM), Political Parties and Politicians of Madhya Pradesh."/>
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
		   ['Ravishankar Shukla','INC',new Date(1956,11,1),new Date(1956,12,31)],
		['Bhagwantrao Mandloi','INC',new Date(1957,1,1),new Date(1957,1,30)],
		['Kailash Nath Katju','INC',new Date(1957,1,31),new Date(1957,3,14)],
		['Kailash Nath Katju','INC',new Date(1957,3,14),new Date(1962,3,11)],
		['Bhagwantrao Mandloi','INC',new Date(1962,3,12),new Date(1963,9,29)],
		['Dwarka Prasad Mishra','INC',new Date(1963,9,30),new Date(1967,3,8)],
		['Dwarka Prasad Mishra','INC',new Date(1967,3,9),new Date(1967,7,29)],
		['Govind Narayan Singh','INC',new Date(1967,7,30),new Date(1969,3,12)],
		['Nareshchandra Singh','INC',new Date(1969,3,13),new Date(1969,3,25)],
		['Shyama Charan Shukla','INC',new Date(1969,3,26),new Date(1972,1,28)],
		['Prakash Chandra Sethi','INC',new Date(1972,1,29),new Date(1972,3,22)],
		['Prakash Chandra Sethi','INC',new Date(1972,3,23),new Date(1975,12,22)],
		['Shyama Charan Shukla','INC',new Date(1975,12,23),new Date(1977,4,29)],
		['President\'s rule','',new Date(1977,4,29),new Date(1977,6,25)],
		['Kailash Chandra Joshi','JP',new Date(1977,6,26),new Date(1978,1,17)],
		['Virendra Kumar Saklecha','JP',new Date(1978,1,18),new Date(1980,1,19)],
		['Sunderlal Patwa','JP',new Date(1980,1,20),new Date(1980,2,17)],
		['President\'s rule','',new Date(1980,2,18),new Date(1980,6,8)],
		['Arjun Singh','INC',new Date(1980,6,8),new Date(1985,3,10)],
		['Arjun Singh','INC',new Date(1985,3,11),new Date(1985,3,12)],
		['Motilal Vora','INC',new Date(1985,3,13),new Date(1988,2,13)],
		['Arjun Singh','INC',new Date(1988,2,14),new Date(1989,1,24)],
		['Motilal Vora','INC',new Date(1989,1,25),new Date(1989,12,8)],
		['Shyama Charan Shukla','INC',new Date(1989,12,9),new Date(1990,3,4)],
		['Sunderlal Patwa','BJP',new Date(1990,3,5),new Date(1992,12,15)],
		['President\'s rule','',new Date(1992,12,16),new Date(1993,12,6)],
		['Digvijaya Singh','INC',new Date(1993,12,7),new Date(1998,12,1)],
		['Digvijaya Singh','INC',new Date(1998,12,1),new Date(2003,12,8)],
		['Uma Bharti','BJP',new Date(2003,12,8),new Date(2004,8,23)],
		['Babulal Gaur','BJP',new Date(2004,8,23),new Date(2005,11,29)],
		['Shivraj Singh Chouhan','BJP',new Date(2005,11,29),new Date(2008,12,12)],
		['Shivraj Singh Chouhan','BJP',new Date(2008,12,12),new Date(2013,12,12)],
		['Shivraj Singh Chouhan','BJP',new Date(2013,12,13),new Date()]


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
			MADHYA PRADESH
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
