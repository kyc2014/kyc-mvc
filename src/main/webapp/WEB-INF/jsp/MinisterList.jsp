<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<!--<link rel="stylesheet" type="text/css" href="Resources/CSS/reset.css">
<link rel="stylesheet" type="text/css" href="Resources/CSS/fonts.css">-->
<style>
a
{
	text-decoration:none;
	color: inherit;
}
a:hover
{
	text-decoration:underline;
}
.Row
{
	width:750px;
	
}
.Row
{
	margin-top:25px;
}
.Row > div
{
	margin-left:15px;
}
.Row div,.Row
{
	box-sizing:border-box;
	text-align:center;
	font-family:raleway;
}
img
{
	width:auto;
	height:auto;
}
#wrapper
{
	width:900px;
	margin:35px auto;
	height:auto;
}
.CMBox
{
	width:220px;
	min-height:250px;
	height:auto;
	border:1px solid #efefef;
	border-radius:15px;
}
.CMBox:hover
{
	background-color:#f2f2f2;
}
.CMImageWrapper
{
	border-bottom:1px solid #ccc;
	padding:5px;
}
.CMName
{
	padding:5px;
	font-weight:bolder;
	color:#6d93ff;
	background-color:#e2e2e2;
}
.CMState
{
	padding:5px;
}
.PartyWrapper
{
	padding:5px;
	width:auto;
}
.CMParty
{
	width:auto;
	padding:5px;
	height:auto;
}
.CMAssumedOffice
{
	padding:5px;
}
.CMImage
{
	vertical-align:middle;
	width:100px;
	height:130px;
}
.CMBox
{
	position:relative;
	display:inline-block;

}
.CMBox > a
{
	position:absolute;
	right:-18px;
	top:-18px;
}
.CMImageWrapper a
{
	width:100px;
	height:130px;
}
#joinDate
{
	font-size:14px;
	display:block;
}
</style>
<body>
<div id="wrapper">
<div class="Row">
<div class="CMBox">
<a href="#"><img src="Resources/Images/bjp.png" class="CMPartyImage" /></a>
<div class="CMImageWrapper"><img src="Resources/Images/Kiran_Kumar_Reddy.JPG" class="CMImage" /></div>
<div class="CMName"><a href="#">N. Kiran Kumar Reddy</a></div>
<div class="CMState"><a href="#">Andhra Pradesh</a></div>
<div class="CMParty"><a href="#">Indian National Congress</a></div>
<div class="CMAssumedOffice">Assumed Office On<span id="joinDate">25 November 2010</span></div>
</div>
<div class="CMBox">
<a href="#"><img src="Resources/Images/bjp.png" class="CMPartyImage" /></a>
<div class="CMImageWrapper"><a href="#"><img src="Resources/Images/Kiran_Kumar_Reddy.JPG" class="CMImage" /></a></div>
<div class="CMName"><a href="#">Nabam Tuki</a></div>
<div class="CMState"><a href="#">Arunachal Pradesh</a></div>
<div class="CMParty"><a href="#">Indian National Congress</a></div>
<div class="CMAssumedOffice">Assumed Office On<span id="joinDate">25 November 2010</span></div>
</div>
<div class="CMBox">
<a href="#"><img src="Resources/Images/bjp.png" class="CMPartyImage" /></a>
<div class="CMImageWrapper"><a href="#"><img src="Resources/Images/Tarun_Gogoi_-_Kolkata_2013-02-10_4891_Cropped.JPG" class="CMImage" /></a></div>
<div class="CMName"><a href="#">Tarun Gagoi</a></div>
<div class="CMState"><a href="#">Assam</a></div>
<div class="CMParty"><a href="#">Indian National Congress</a></div>
<div class="CMAssumedOffice">Assumed Office On<span id="joinDate">25 November 2010</span></div>
</div>
</div>
<!--**************2Row*******************-->
<div class="Row">
<div class="CMBox">
<a href="#"><img src="Resources/Images/bjp.png" class="CMPartyImage" /></a>
<div class="CMImageWrapper"><img src="Resources/Images/Kiran_Kumar_Reddy.JPG" class="CMImage" /></div>
<div class="CMName"><a href="#">N. Kiran Kumar Reddy</a></div>
<div class="CMState"><a href="#">Andhra Pradesh</a></div>
<div class="CMParty"><a href="#">Indian National Congress</a></div>
<div class="CMAssumedOffice">Assumed Office On<span id="joinDate">25 November 2010</span></div>
</div>
<div class="CMBox">
<a href="#"><img src="Resources/Images/bjp.png" class="CMPartyImage" /></a>
<div class="CMImageWrapper"><a href="#"><img src="Resources/Images/Kiran_Kumar_Reddy.JPG" class="CMImage" /></a></div>
<div class="CMName"><a href="#">Nabam Tuki</a></div>
<div class="CMState"><a href="#">Arunachal Pradesh</a></div>
<div class="CMParty"><a href="#">Indian National Congress</a></div>
<div class="CMAssumedOffice">Assumed Office On<span id="joinDate">25 November 2010</span></div>
</div>
<div class="CMBox">
<a href="#"><img src="Resources/Images/bjp.png" class="CMPartyImage" /></a>
<div class="CMImageWrapper"><a href="#"><img src="Resources/Images/Tarun_Gogoi_-_Kolkata_2013-02-10_4891_Cropped.JPG" class="CMImage" /></a></div>
<div class="CMName"><a href="#">Tarun Gagoi</a></div>
<div class="CMState"><a href="#">Assam</a></div>
<div class="CMParty"><a href="#">Indian National Congress</a></div>
<div class="CMAssumedOffice">Assumed Office On<span id="joinDate">25 November 2010</span></div>
</div>
</div>
<!--*********************************************-->
</div>
</body>