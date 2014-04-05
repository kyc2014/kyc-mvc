<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<title>Know Your Candidate</title>
<link rel="shortcut icon" href="/Resources/images/title_icon.png">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="/Resources/CSS/reset.css" />
<link rel="stylesheet" type="text/css" href="/Resources/CSS/generic2.css"/>
<link rel="stylesheet" type="text/css" href="/Resources/CSS/footer.css" />
<link rel="stylesheet" type="text/css" href="/Resources/CSS/SuggestionBox.css" />
<link rel="stylesheet" type="text/css" href="/Resources/CSS/header3.css">
<script type="text/javascript" src="/Resources/Libraries/jquery-2.0.2.min.js"></script>
<script type="text/javascript" src="/Resources/scripts/signin.js"></script>
<script type="text/javascript" src="/Resources/scripts/menu.js"></script>
<meta name="google-site-verification" content="ilBL4o12qfyykV6MrBsq71pbe0Q8OnhMLDBV6mmOUYs" />
<meta lang="en-US" content="Know Your Candidate gives unbiased information about Indian Politicians. MLAs and MPs details at your desk. Helps
Indian voters select the best candidate contesting in polls" name="description"/>
<style>
	#home-wrapper{
    height: auto;
    margin: 35px auto;
    width: 1024px;
    }
#home-wrapper h1{
font-size:25px;
font-family: opensans;
font-weight: bold;
margin: 15px 0 15px 0;
}
#home-wrapper h2{
font-size:22px;
font-family: opensans;
font-weight: bold;
margin: 15px 0 15px 0;
}

p{
line-height:25px;
font-family: opensans;
}
.news span{
font-family:opensans;
font-size: 12px;
}
.newsWrapper{
width:80%;
display:inline-block;
box-sizing:border-box;
border-right:1px solid #ccc;
padding-right:10px;
padding-left:10px;
vertical-align:top;
}
.news-updates span{
margin: 10px 0 10px 0;
}
.news-updates a{
margin: 10px 0 10px 0;
color: #1f57a5;
font-size: 16px;
font-family: raleway;
padding-left: 10px;
margin-top: 10px;
position: relative;
display: block;
}
.news-updates h2
{
	text-align:center;
}
.news-updates{
width:19%;
display:inline-block;
box-sizing:border-box;
}
.newsContent
{
	border-top:1px solid #ccc;
	border-bottom:1px solid #ccc;
	padding-top:10px;
	padding-bottom:10px;
}
.newsTimeStamp
{
	border: 1px solid #ccc;
	background-color: #eaeaea;
	box-sizing: border-box;
	padding: 5px;
	display: inline-block;
	margin-bottom: 5px;
}
.newsTitle
{
	
}
.news
{
	margin-top:10px;
}
.tg
{
	border-collapse: separate;
	border-spacing: 0;
	border: 1px solid #ccc !important;
	overflow:hidden;
	border-radius: 15px !important;
	-webkit-border-radius: 15px !important;
	-moz-border-radius: 15px !important;
	box-shadow: 0 0px 1px #ccc !important;
	margin:0px auto;
}


.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;border-left:1px solid #ccc;border-bottom:1px solid #ccc;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-left:1px solid #ccc;border-bottom:1px solid #ccc;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;}
.tg .tg-s6z2{text-align:center}
.tg .tg-spn1{background-color:#f9f9f9;text-align:center}
.tg .tg-hgcj{font-weight:bold;text-align:center}
th:first-child {
    border-radius: 6px 0 0 0;
}

th:last-child {
    border-radius: 0 6px 0 0;
}

th:only-child{
    border-radius: 6px 6px 0 0;
}
p.newsContent
{
	line-height:40px;
}
.poll h2
{
	text-align:center;
}
</style>
</head>	
<body>
<jsp:include page="header.jsp" />
<div id="home-wrapper">
<div class="newsWrapper">
<div class="news-1 news">
<h1>Recent News</h1>
<h2 class="newsTitle">AAP Candidate List-TamilNadu</h2>
<span class="newsTimeStamp">Mar 18, 2014, 01.47 PM IST - Times of India</span>
<div class="newsContent">
<table class="tg" style="table-layout: fixed; width: 439px;">
<colgroup>
<col style="width: 50px">
<col style="width: 163px">
<col style="width: 226px">
</colgroup>
  <tr>
    <th class="tg-hgcj">No</th>
    <th class="tg-hgcj">Constituency</th>
    <th class="tg-hgcj">Candidate</th>
  </tr>
  <tr>
    <td class="tg-spn1">1</td>
    <td class="tg-spn1">Kanyakumari</td>
    <td class="tg-spn1">S.P Udayakumar</td>
  </tr>
  <tr>
    <td class="tg-s6z2">2</td>
    <td class="tg-s6z2">Tirunelveli</td>
    <td class="tg-s6z2">M.P Jesuraj</td>
  </tr>
  <tr>
    <td class="tg-spn1">3</td>
    <td class="tg-spn1">Tuticorin</td>
    <td class="tg-spn1">M Pushparayan</td>
  </tr>
  <tr>
    <td class="tg-s6z2">4</td>
    <td class="tg-s6z2">Coimbatore</td>
    <td class="tg-s6z2">Pon Chandran</td>
  </tr>
  <tr>
    <td class="tg-spn1">5</td>
    <td class="tg-spn1">Erode</td>
    <td class="tg-spn1">Kumarasamy</td>
  </tr>
  <tr>
    <td class="tg-s6z2">6</td>
    <td class="tg-s6z2">Salem</td>
    <td class="tg-s6z2">Satheesh Kumar</td>
  </tr>
  <tr>
    <td class="tg-spn1">7</td>
    <td class="tg-spn1">Chennai Central</td>
    <td class="tg-spn1">J Prabhakar</td>
  </tr>
  <tr>
    <td class="tg-s6z2">8</td>
    <td class="tg-s6z2">Tirupur</td>
    <td class="tg-s6z2">Chakravarthy Rajagopalakrishnan</td>
  </tr>
</table>
</div>
</div>
<div class="news-2 news">
<h2 class="newsTitle">Apps to bring in election results in real time</h2>
<span class="newsTimeStamp">March 16, 2014 01:07 IST - The Hindu</span>
<p class="newsContent">Voters in Kerala can soon download an Android-based application on their mobile phones to know Parliament election trends and results in real time on May 16, the counting day.
The National Informatics Centre (NIC) here has developed the free application at the behest of the Chief Electoral Officer, Kerala, Nalini Netto. Mobile phone penetration in Kerala, which is growing at an exponential rate, is currently estimated at more than 80 per cent. Mobile phone usage has also transcended all class and age differences.
Ms. Netto is scheduled to launch the application, which is expected to digitally empower the State's electorate, soon. The app will also benefit lakhs of Keralites far removed from the tumult of the Lok Sabha elections in their home State. An estimated 2,37,92,270 voters are expected to exercise their franchise in the elections to be held in Kerala on March 10.
At the press of a keypad button or a swipe on their mobile phone screen, voters can follow election trends streaming in from 140 counting centres in the State. The application is configured to fetch information, every few minutes, from the central servers of the NIC and the Kerala State Wide Area Network (KSWAN), and alert users as new updates stream in.
The election trends from the counting centres will be digitally fed into the servers in almost real time. The app is also expected to help reduce congestion on the government websites showing results and trends. In the future, the apps will become a repository of information on election figures, history, and trends in the State and also double as an easily accessible electoral archive. More importantly, the NIC has developed a highly secure cross-platform mobile messaging app for polling officers to communicate with returning officers, executive magistrates, and District Collectors on the polling day.
Chiefly, they will be able to update voting percentage figures frequently, without having to make mobile phone calls on a day cell phone networks are likely to be congested. This app will be restricted to poll officers, who will have to register the identity of their mobile phone device</p>
</div>
<div class="news-3 news">
<h2 class="newsTitle">Kejriwal ready to take on Modi</h2>
<span class="newsTimeStamp">BANGALORE, March 16, 2014 - The Hindu</span>
<p class="newsContent">
Aam Aadmi Party convener Arvind Kejriwal has declared that he is ready to take on Gujarat Chief Minister Narendra Modi in Varanasi in the Lok Sabha elections, but he will do so only if “the people want” it.
He was addressing a rally here on Sunday, the second day of his tour of the Lok Sabha constituencies in and around Bangalore. It was attended by a large number of supporters, all wearing the AAP’s caps. Mr. Kejriwal said he would gauge the people’s support at a rally the AAP plans to hold in Varanasi on March 23. “I will do whatever the people say.”
Speaking in Hindi in his trademark style that alternates between sardonic humour and references to himself as the common man, he spared the BJP’s prime ministerial candidate no criticism and spoke of the media’s “propaganda of falsehood” in their portrayal of Mr. Modi’s development model.
“For a year, the media have tried to show that Gujarat has progressed under Modiji. So I decided to see the progress for myself. But what I witnessed in my 10-day visit shocked me. Farmers complain that their land is being grabbed and handed over to industries. Modiji represents the old school crony capitalism,” he said.
</p>
</div>
</div>
<div class="news-updates">
<h2>Updates from ECI</h2>
<a href="#">Electoral Data</a>
<a href="#">Statewise Election Details</a>
<a href="/web/eci/election-schedule">Election Dates</a>
</div>
<!-- <div id="right">
<div class="poll">
</div>
</div>  -->
</div>
<jsp:include page="WEB-INF/jsp/footer.jsp" />
</body>
</html>
