<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
	<title>About Us</title>
	<head>
			<link rel="stylesheet" type="text/css" href="/Resources/CSS/reset.css">
		<link rel="stylesheet" type="text/css" href="/Resources/CSS/Map.css">
		<link rel="stylesheet" type="text/css" href="/Resources/CSS/header3.css">
		<link rel="stylesheet" type="text/css" href="/Resources/CSS/CandidatePage.css">
		<link rel="stylesheet" type="text/css" href="/Resources/CSS/footer.css">
		<link rel="stylesheet" type="text/css" href="/Resources/CSS/SuggestionBox.css">
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
		<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
		<script src="/Resources/scripts/mapPlugin.js"></script>
		<script type="text/javascript" src="/Resources/scripts/analytics.js"></script>
		<style>
		.us_wrapper{
		width: 900px;
		margin: 35px auto;
		height: auto;
		font: inherit;
		font-family: raleway;
		}
		.us_wrapper h1{
		font: inherit;
		font-weight: bold;
		font-size: 26px;
		margin: 0 0 10px 0;
		}
		.us_wrapper p{
		font: inherit;
		line-height: 23px;
		}
		</style>
	</head>
		<jsp:include page="../header.jsp" />
		<div class="electoral-data">
		<div class="one-rol-data">
		<a href="/web/state/andhra-pradesh/" id=""><img src="/Resources/images/state/seals/andhra-pradhesh.png" /></span><span class="stateName">Andhra Pradesh</span></a>
<a href="/web/state/arunachal-pradesh/" id=""><img src="/Resources/images/state/seals/arunachal-pradhesh.png" /></span><span class="stateName">Arunachal Pradesh</span></a>
<a href="/web/state/assam/" id=""><img src="/Resources/images/state/seals/assam.png" /></span><span class="stateName">Assam</span></a>
<a href="/web/state/bihar/" id=""><img src="/Resources/images/state/seals/bihar.png" /></span><span class="stateName">Bihar</span></a>
<a href="/web/state/chhattisgarh/" id=""><img src="/Resources/images/state/seals/chhattisgarh.png" /></span><span class="stateName">Chhattisgarh</span></a>
<a href="/web/state/goa/" id=""><img src="/Resources/images/state/seals/goa.png" /></span><span class="stateName">Goa</span></a>
<a href="/web/state/gujarat/" id=""><img src="/Resources/images/state/seals/gujarat.png" /></span><span class="stateName">Gujarat</span></a>
<a href="/web/state/haryana/" id=""><img src="/Resources/images/state/seals/haryana.png" /></span><span class="stateName">Haryana</span></a>
<a href="/web/state/himachal_pradesh/" id=""><img src="/Resources/images/state/seals/himachal_pradhesh.png" /></span><span class="stateName">Himachal Pradesh</span></a>
<a href="/web/state/jammu-and-kashmir/" id=""><img src="/Resources/images/state/seals/jammu-and-kashmir.png" /></span><span class="stateName">Jammu and Kashmir</span></a>
</div>

<div class="two-rol-data">
<div class="stateTitle">States</div>
<a href="/web/state/jharkhand/" id=""><img src="/Resources/images/state/seals/jharkhand.png" /></span><span class="stateName">Jharkhand</span></a>
<a href="/web/state/karnataka/" id=""><img src="/Resources/images/state/seals/karnataka.png" /></span><span class="stateName">Karnataka</span></a>
<a href="/web/state/kerala/" id=""><img src="/Resources/images/state/seals/kerala.png" /></span><span class="stateName">Kerala</span></a>
<a href="/web/state/madhya_pradesh/" id=""><img src="/Resources/images/state/seals/madhya_pradesh.png" /></span><span class="stateName">Madhya Pradesh</span></a>
<a href="/web/state/maharastra/" id=""><img src="/Resources/images/state/seals/maharashtra.png" /></span><span class="stateName">Maharashtra</span></a>
<a href="/web/state/manipur/" id=""><img src="/Resources/images/state/seals/manipur.png" /></span><span class="stateName">Manipur</span></a>
<a href="/web/state/meghalaya/" id=""><img src="/Resources/images/state/seals/meghalaya.png" /></span><span class="stateName">Meghalaya</span></a>
<a href="/web/state/mizoram/" id=""><img src="/Resources/images/state/seals/mizoram.png" /></span><span class="stateName">Mizoram</span></a>
<a href="/web/state/nagaland/" id=""><img src="/Resources/images/state/seals/nagaland.png" /></span><span class="stateName">Nagaland</span></a>
<a href="/web/state/odisha/" id=""><img src="/Resources/images/state/seals/odisha.png" /></span><span class="stateName">Odisha</span></a>
</div>

<div class="three-rol-data">
<a href="/web/state/punjab/" id=""><img src="/Resources/images/state/seals/punjab.png" /></span><span class="stateName">Punjab</span></a>
<a href="/web/state/rajasthan/" id=""><img src="/Resources/images/state/seals/rajasthan.png" /></span><span class="stateName">Rajasthan</span></a>
<a href="/web/state/sikkim/" id=""><img src="/Resources/images/state/seals/sikkim.png" /></span><span class="stateName">Sikkim</span></a>
<a href="/web/state/tamil-nadu/" id=""><img src="/Resources/images/state/seals/tamil-nadu.png" /></span><span class="stateName">Tamil Nadu</span></a>
<a href="/web/state/tripura/" id=""><img src="/Resources/images/state/seals/tripura.png" /></span><span class="stateName">Tripura</span></a>
<a href="/web/state/uttar_pradesh/" id=""><img src="/Resources/images/state/seals/uttar_pradesh.png" /></span><span class="stateName">Uttar Pradesh</span></a>
<a href="/web/state/uttarakhand/" id=""><img src="/Resources/images/state/seals/uttarakhand.png" /></span><span class="stateName">Uttarakhand</span></a>
<a href="/web/state/west_bengal/" id=""><img src="/Resources/images/state/seals/west_bengal.png" /></span><span class="stateName">West Bengal</span></a>
</div>

<div class="four-rol-data">
<a href="/web/state/andaman_and_nicobar_islands/" id=""><img src="/Resources/images/state/seals/andaman_and_nicobar_islands.png" /></span><span class="stateName">Andaman and Nicobar Islands</span></a> 
<a href="/web/state/chandigarh/" id=""><img src="/Resources/images/state/seals/chandigarh.png" /></span><span class="stateName">Chandigarh</span></a> 
<a href="/web/state/dadra_and_nagar_haveli/" id=""><img src="/Resources/images/state/seals/dadra_and_nagar_haveli.png" /></span><span class="stateName">Dadra and Nagar Haveli</span></a> 
<a href="/web/state/daman-and-diu/" id=""><img src="/Resources/images/state/seals/daman-and-diu.png" /></span><span class="stateName">Daman and Diu</span></a> 
<a href="/web/state/nct-delhi/" id=""><img src="/Resources/images/state/seals/nct-delhi.png" /></span><span class="stateName">National Capital Territory of Delhi</span></a> 
<a href="/web/state/lakshadweep/" id=""><img src="/Resources/images/state/seals/lakshadweep.png" /></span><span class="stateName">Lakshadweep</span></a>
<a href="/web/state/puducherry/" id=""><img src="/Resources/images/state/seals/puducherry.png" /></span><span class="stateName">Puducherry</span></a> 
		
		</div>
		<jsp:include page="../footer.jsp"></jsp:include>
</html>
	