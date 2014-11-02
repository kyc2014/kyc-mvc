<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<title>Kerala | State of India | Know Your Candidate</title>
<link rel="shortcut icon" href="/Resources/images/title_icon.png">
<meta name="description" content="Kerala - State of India. List of Chief Ministers, Political Parties and Politicians of Kerala."/>
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
          ['Year', 'UDF', 'LDF', 'Others'],
          ['2011',  72,      68, 0],
          ['2006',  42,      98, 0],
          ['2001',  99,       40, 1],
          ['1996',  59,    80, 1]
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
		    [ 'E. M. S. Namboodiripad','CPI', new Date(1956, 3, 5), new Date(1959, 6, 31) ],
		    [ 'President Rule', '',     new Date(1959, 6, 31),  new Date(1960, 1, 22) ],
		  [ 'Pattom Thanupillai','PSP' , new Date(1960, 1, 22),  new Date(1962, 8, 26) ],
		    [ 'R. Sankar', 'INC', new Date(1962, 8, 26),  new Date(1964, 8, 10) ],
		    [ 'President rule','', new Date(1964, 8, 10), new Date(1967, 2, 6) ],
		    ['E. M. S. Namboodiripad','CPI(M)',new Date(1967,2,6),new Date(1969,10,1)],
		    ['C. Achutha Menon','CPI',new Date(1969,10,1),new Date(1970,7,1)],
		    ['President rule','',new Date(1970,7,1),new Date(1970,9,4)],
		    ['C. Achutha Menon','CPI',new Date(1970,9,4),new Date(1977,2,25)],
		    ['K. Karunakaran','INC',new Date(1977,2,25),new Date(1977,3,25)],
		    ['A.K Antony','INC',new Date(1977,3,27),new Date(1978,9,27)],
		    ['P. K. Vasudevan Nair	','CPI',new Date(1978,9,29),new Date(1979,9,7)],
		    ['C. H. Mohammed Koya','IUML',new Date(1979,9,12),new Date(1979,11,1)],
		    ['President rule','',new Date(1979,11,1),new Date(1980,0,25)],
		    ['E. K. Nayanar','CPI(M)',new Date(1980,0,25),new Date(1981,9,20)],
		    ['K. Karunakaran','INC',new Date(1981,11,28),new Date(1982,2,17)],
		    ['K. Karunakaran','INC',new Date(1982,4,24),new Date(1987,2,25)],
		    ['E. K. Nayanar ','CPI(M)',new Date(1987,2,26),new Date(1991,5,17)],
		    ['K. Karunakaran','INC',new Date(1991,5,24),new Date(1995,2,16)],
		    ['A.K Antony','INC',new Date(1995,2,22),new Date(1996,4,9)],
		    ['E. K. Nayanar','CPI(M)',new Date(1996,4,20), new Date(2001,4,13)],
		    ['A.K Antony','INC',new Date(2001,4,17),new Date(2004,7,29)],
		    ['Oommen Chandy','INC',new Date(2004,7,31),new Date(2006,4,18)],
		     ['V.S Achuthanandan','CPI(M)',new Date(2006,4,18),new Date(2011,4,14)],
		      ['Oommen Chandy','INC',new Date(2011,4,18),new Date()],


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
			<h1>KERALA</h1>
			</div>
			<div id="dof">
				<span>Date of Formation - </span><span id="dofValue">1 November 1956</span>
			</div>
			<div id="totConst">
				<span>Number of Lok Sabha Seats - <span><span id="totConstValue"><a href="http://164.100.47.132/lssnew/Members/Statewiselist.aspx" target=_blank>20</a></span>
			</div>
		</div>
		<div id="personalities">
			<div id="leftPersonalities">
				<div  class="mainPersonalityBlock">
					<div class="mdesignation">
					Chief Minister
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/Kerala/cm.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://www.colorofnation.com/profile/oommen_chandy" target=_blank>Oommen Chandy</a></div>
						<div class="mparty"><a href="http://kpcc.org.in/" target=_blank>INC</a></div>
						</div>
					</div>
					
				</div>
				<div class="mainPersonalityBlock">
					<div class="mdesignation">
					Governor
					</div>
					<div class="mphoto">
						<img src="/Resources/images/state/Kerala/governor.jpg">
						<div class="mphotoDetails">
						<div class="mname">Sheila Dikshit</div>
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
					
						<img src="/Resources/images/state/Kerala/2.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://www.archive.india.gov.in/govt/rajyasabhampbiodata.php?mpcode=517" target=_blank>A.K Antony</a></div>
						<div class="mparty"><a href="http://kpcc.org.in/" target=_blank>INC</a></div>
						<div class="mpost">Minister of Defence , MP - RajyaSabha</div>
						</div>
						
					</div>
					<div id="minister2" class="photo">
						<img src="/Resources/images/state/Kerala/1.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://164.100.47.132/lssnew/Members/Biography.aspx?mpsno=3209" target=_blank>K.V Thomas</a></div>
						<div class="mparty"><a href="http://kpcc.org.in/" target=_blank>INC</a></div>
						<div class="mpost">Minister of State (Independent Charges) - Consumer Affairs,Food and Public distribution</div>
						</div>
						
					</div>
					<div id = "minister3" class="photo">
						<img src="/Resources/images/state/Kerala/3.jpg">
						<div class="mphotoDetails">
						<div class="mname"><a href="http://www.archive.india.gov.in/govt/loksabhampbiodata.php?mpcode=4569" target=_blank>Shashi Tharoor</a></div>
						<div class="mparty"><a href="http://kpcc.org.in/" target=_blank>INC</a></div>
						<div class="mpost">Minster of State - Human Resource Development</div>
						</div>
					</div>
				</div>
			</div>
		</div><!--end of personalities -->
		<div id = "partiesInfo">
		<div id="partiesInfoHeading">List of Prominent Political Parties</div>
			<div id="partiesInfoCont">
			    
			    <a href="http://cpikerala.com/" target=_blank class="PartiesList">CPI</a>
			    <a href="http://www.cpimkerala.org/eng/" target=_blank class="PartiesList">CPI(M)</a>
			    <a href="http://kpcc.org.in/" target=_blank class="PartiesList">INC</a>
			    <span class="PartiesList"><!--<a href="" target=_blank class="PartiesList">KC(M)</a>-->KC(M)</span>
			    <a href="http://www.indianunionmuslimleague.in/" target=_blank class="PartiesList">IUML</a>
			   

			</div>
		</div>
		<div id="chartContainer" style="width:500px;height:400px;display:inline-block;vertical-align:top;">

		</div>
		<div id="povertyStatus" style="display:inline-block;width:400px;height:400px;margin:0 auto;vertical-align:top; ">
		</div>
		<div id="chiefMinistersHeading">Chief Ministers of Kerala</div>
		<div id="pastChiefMinisters" style="width:100%;height:400px">
		</div>
		


	</div><!-- end of container -->
</div><!-- end of wrapper -->
<jsp:include page="../footer.jsp" />
</body>
</html>
