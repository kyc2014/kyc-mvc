<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<title>Uttar Pradesh | State of India | Know Your Candidate</title>
<link rel="shortcut icon" href="/Resources/images/title_icon.png">
<meta name="description" content="Uttar Pradesh - State of India. List of Chief Ministers, Political Parties and Politicians of Uttar Pradesh."/>
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
          ['Year', 'SP', 'BSP','BJP','INC', 'Others'],
          ['2012', 224,      80, 47, 28,25],
          ['2007',  97,      206,51,22,27],
          ['2002',  143,       98,88, 25,49],
          ['1996',  110,      67,174, 33,40]
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
		    ['Govind Ballabh Pant','INC',new Date(1950,0,26),new Date(1952,4,20)],
		['Govind Ballabh Pant','INC',new Date(1952,4,20),new Date(1954,11,27)],
		['Sampurnanand','INC',new Date(1954,11,28),new Date(1957,3,9)],
		['Sampurnanand','INC',new Date(1957,3,10),new Date(1960,11,6)],
		['Chandra Bhanu Gupta','INC',new Date(1960,11,7),new Date(1962,2,14)],
		['Chandra Bhanu Gupta','INC',new Date(1962,2,14),new Date(1963,9,1)],
		['Sucheta Kriplani','INC',new Date(1963,9,2),new Date(1967,2,13)],
		['Chandra Bhanu Gupta','INC',new Date(1967,2,14),new Date(1967,3,2)],
		['Charan Singh','BKD',new Date(1967,3,3),new Date(1968,1,25)],
		['President\'s Rule','INC',new Date(1968,1,25),new Date(1969,1,26)],
		['Chandra Bhanu Gupta','INC',new Date(1969,1,26),new Date(1970,1,17)],
		['Charan Singh','BKD',new Date(1970,1,18),new Date(1970,9,1)],
		['President\'s Rule','',new Date(1970,9,1),new Date(1970,9,18)],
		['Tribhuvana Narayana Singh','INC',new Date(1970,9,18),new Date(1971,3,3)],
		['Kamlapati Tripathi','INC',new Date(1971,3,4),new Date(1973,5,12)],
		['President\'s Rule','',new Date(1973,5,12),new Date(1973,10,8)],
		['Hemwati Nandan Bahuguna','INC',new Date(1973,10,8),new Date(1974,2,4)],
		['Hemwati Nandan Bahuguna','INC',new Date(1974,2,5),new Date(1975,10,29)],
		['President\'s rule','',new Date(1975,10,30),new Date(1976,0,21)],
		['N. D. Tiwari','INC',new Date(1976,0,21),new Date(1977,3,30)],
		['President\'s Rule','',new Date(1977,3,30),new Date(1977,5,23)],
		['Ram Naresh Yadav','JP',new Date(1977,5,23),new Date(1979,1,27)],
		['Banarsi Das','JP',new Date(1979,1,28),new Date(1980,1,17)],
		['President\'s Rule','',new Date(1980,1,17),new Date(1980,5,9)],
		['V. P. Singh','INC',new Date(1980,5,9),new Date(1982,6,18)],
		['Sripati Mishra','INC',new Date(1982,6,19),new Date(1984,7,2)],
		['N. D. Tiwari','INC',new Date(1984,7,3),new Date(1985,2,10)],
		['N.D. Tiwari','INC',new Date(1985,2,11),new Date(1985,8,24)],
		['Vir Bahadur Singh','INC',new Date(1985,8,24),new Date(1988,5,24)],
		['N. D. Tiwari','INC',new Date(1988,5,25),new Date(1989,11,5)],
		['Mulayam Singh Yadav','JD',new Date(1989,11,5),new Date(1991,5,24)],
		['Kalyan Singh','BJP',new Date(1991,5,24),new Date(1992,11,6)],
		['President\'s Rule','',new Date(1992,11,6),new Date(1993,11,4)],
		['Mulayam Singh Yadav','SP',new Date(1993,11,4),new Date(1995,5,3)],
		['Mayawati','BSP',new Date(1995,5,3),new Date(1995,9,18)],
		['President\'s Rule','',new Date(1995,9,18),new Date(1996,9,17)],
		['President\'s Rule','',new Date(1996,9,17),new Date(1997,2,21)],
		['Mayawati','BSP',new Date(1997,2,21),new Date(1997,8,21)],
		['Kalyan Singh','BJP',new Date(1997,8,21),new Date(1999,10,12)],
		['Ram Prakash Gupta','BJP',new Date(1999,10,12),new Date(2000,9,28)],
		['Rajnath Singh','BJP',new Date(2000,9,28),new Date(2002,2,8)],
		['President\'s rule)','',new Date(2002,2,8),new Date(2002,4,3)],
		['Mayawati','BSP',new Date(2002,4,3),new Date(2003,7,29)],
		['Mulayam Singh Yadav','SP',new Date(2003,7,29),new Date(2007,4,13)],
		['Mayawati','BSP',new Date(2007,4,13),new Date(2012,2,7)],
		['Akhilesh Yadav','SP',new Date(2012,2,15),new Date()]


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
			<h1>UTTAR PRADESH</h1>
			</div>
			<div id="dof">
				<span>Date of Formation - </span><span id="dofValue">1950</span>
			</div>
			<div id="totConst">
				<span>Number of Lok Sabha Seats - <span><span id="totConstValue"><a href="">80</a></span>
			</div>
		</div>
		<div id="personalities">
			<div id="leftPersonalities">
				<div  class="mainPersonalityBlock">
					<div class="mdesignation">
					Chief Minister
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/uttar_pradesh/cm.png">
						<div class="mphotoDetails">
						<div class="mname"><a href=""></a>Akhilesh Yadav</div>
						<div class="mparty"><a href="">SP</a></div>
						</div>
					</div>
					
				</div>
				<div class="mainPersonalityBlock">
					<div class="mdesignation">
					Governor
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/uttar_pradesh/governor.png">
						<div class="mphotoDetails">
						<div class="mname">Banwari Lal Joshi</div>
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
					<img src="/Resources/images/state/uttar_pradesh/1.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Jitin Prasada</a></div>
						<div class="mparty"><a href="">INC</a></div>
						<div class="mpost">Ministers of State - Human Resource Development and Defence</div>
						</div>
					</div>
					<div id="minister2" class="photo">
						<img src="/Resources/images/state/uttar_pradesh/2.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Mulayam Singh Yadav</a></div>
						<div class="mparty"><a href="">SP</a></div>
						<div class="mpost">Former CM</div>
						</div>
					</div>
					<div id = "minister3" class="photo">
						<img src="/Resources/images/state/uttar_pradesh/3.png">
						<div class="mphotoDetails">
						<div class="mname"><a href="">Mayawati</a></div>
						<div class="mparty"><a href="">BSP</a></div>
						<div class="mpost">Former CM</div>
						</div>
					</div>
				</div>
			</div>
		</div><!--end of personalities -->
		<div id = "partiesInfo">
		<div id="partiesInfoHeading">List of Prominent Political Parties</div>
			<div id="partiesInfoCont">
			    <a href="" class="PartiesList">SP</a>
			    <a href="" class="PartiesList">BSP</a>
			    <a href="" class="PartiesList">BJP</a>
			    <a href="" class="PartiesList">INC</a>

			</div>
		</div>
		<div id="chartContainer" style="width:500px;height:400px;display:inline-block;vertical-align:top;">

		</div>
		<div id="povertyStatus" style="display:inline-block;width:400px;height:400px;margin:0 auto;vertical-align:top; ">
		</div>
		<div id="chiefMinistersHeading">Chief Ministers of Uttar Pradesh</div>
		<div id="pastChiefMinisters" style="width:100%;height:400px">
		</div>
		


	</div><!-- end of container -->
</div><!-- end of wrapper -->
<jsp:include page="../footer.jsp" />
</body>
</html>
