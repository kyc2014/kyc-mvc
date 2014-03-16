<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Know Your Candidate</title>
<link rel="stylesheet" type="text/css" href="/Resources/CSS/reset.css" />
<link rel="stylesheet" type="text/css" href="/Resources/CSS/generic2.css"/>
<link rel="stylesheet" type="text/css" href="/Resources/CSS/footer.css" />
<link rel="stylesheet" type="text/css" href="/Resources/CSS/SuggestionBox.css" />
<link rel="stylesheet" type="text/css" href="/Resources/CSS/header3.css">
<script type="text/javascript" src="/Resources/Libraries/jquery-2.0.2.min.js"></script>
<script type="text/javascript" src="/Resources/scripts/signin.js"></script>
<script type="text/javascript" src="/Resources/scripts/menu.js"></script>
<meta name="google-site-verification" content="ilBL4o12qfyykV6MrBsq71pbe0Q8OnhMLDBV6mmOUYs" />
<meta lang="en-US" content="Knowyourcandidate gives unbiased information about Indian Policitans. MLAs and MPs details at your desk. Helps
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
.news{
width:80%;
}
.news-updates span{
margin: 10px 0 10px 0;
}
.news-updates a{
margin: 10px 0 10px 0;
color:#1f57a5;
font-size: 18px;
}
.news-updates{
width:20%;
}

</style>
</head>	
<body>
<jsp:include page="header.jsp" />
<div id="home-wrapper">
<div class="news">
<div class="news-1">
<h1>Recent News</h1>
<h2>Apps to bring in election results in real time</h2>
<span>March 16, 2014 01:07 IST - The Hindu</span>
<p>Voters in Kerala can soon download an Android-based application on their mobile phones to know Parliament election trends and results in real time on May 16, the counting day.
The National Informatics Centre (NIC) here has developed the free application at the behest of the Chief Electoral Officer, Kerala, Nalini Netto. Mobile phone penetration in Kerala, which is growing at an exponential rate, is currently estimated at more than 80 per cent. Mobile phone usage has also transcended all class and age differences.
Ms. Netto is scheduled to launch the application, which is expected to digitally empower the State's electorate, soon. The app will also benefit lakhs of Keralites far removed from the tumult of the Lok Sabha elections in their home State. An estimated 2,37,92,270 voters are expected to exercise their franchise in the elections to be held in Kerala on March 10.
At the press of a keypad button or a swipe on their mobile phone screen, voters can follow election trends streaming in from 140 counting centres in the State. The application is configured to fetch information, every few minutes, from the central servers of the NIC and the Kerala State Wide Area Network (KSWAN), and alert users as new updates stream in.
The election trends from the counting centres will be digitally fed into the servers in almost real time. The app is also expected to help reduce congestion on the government websites showing results and trends. In the future, the apps will become a repository of information on election figures, history, and trends in the State and also double as an easily accessible electoral archive. More importantly, the NIC has developed a highly secure cross-platform mobile messaging app for polling officers to communicate with returning officers, executive magistrates, and District Collectors on the polling day.
Chiefly, they will be able to update voting percentage figures frequently, without having to make mobile phone calls on a day cell phone networks are likely to be congested. This app will be restricted to poll officers, who will have to register the identity of their mobile phone device</p>
</div>
<div class="news-2">
<h2>Kejriwal keeps up the suspense on Varanasi</h2>
<span>March 16, 2014 15:11 IST - The Hindu</span>
<p>
Aam Aadmi Party leader Arvind Kejriwal on Sunday kept up the suspense on whether he would contest against Narendra Modi in Varanasi, saying he would talk on the issue at the party’s Bangalore rally.
“Many people asking me — “will i contest against Modi ji?” I will talk on this issue in today’s rally at Bangalore,” Mr. Kejriwal wrote in his post on the microblogging site Twitter.
His remarks came a day after the BJP announced that its prime ministerial candidate Narendra Modi would contest the Varanasi seat in Uttar Pradesh. The Aam Aadmi Party has hinted at a direct fight between Mr. Modi and Mr. Kejriwal in the 2014 polls. Earlier, party leader Sanjay Singh had appealed to Mr. Kejriwal to contest against Mr. Modi from Varanasi. Addressing a rally recently, senior leader Manish Sisodia had said that “we want the people of Varanasi to answer all the issues that Kejriwal has raised on (Mukesh) Ambani.” “Kejriwal will ask Modi these questions from Varanasi,” Mr. Sisodia had said.
</p>
</div>
</div>
<div class="news-updates">
<h2>Upcoming news</h2>
<a href="#">Electoral Data</a>
<a href="#">Statewise Election Details</a>
<a href="#">Election Dates</a>
</div>

</div>
<jsp:include page="WEB-INF/jsp/footer.jsp" />
</body>
</html>
