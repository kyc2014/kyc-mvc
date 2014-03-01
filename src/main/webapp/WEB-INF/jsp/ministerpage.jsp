<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<meta name="google-site-verification" content="ilBL4o12qfyykV6MrBsq71pbe0Q8OnhMLDBV6mmOUYs" />
<meta lang="en-US" content="Knowyourcandidate provides unbiased information Indian Policitans MLAs MPs Information 2014 Lok Sabha elections" name="description"/>
<title>Current Parliament Members</title>
<link rel="stylesheet" type="text/css" href="/Resources/CSS/reset.css">
<link rel="stylesheet" type="text/css" href="/Resources/CSS/MinisterPage.css">
<link rel="stylesheet" type="text/css" href="/Resources/CSS/header3.css">
<link rel="stylesheet" type="text/css" href="/Resources/CSS/footer.css">
<script type="text/javascript" src="/Resources/Libraries/jquery-2.0.2.min.js"></script>
<script type="text/javascript" src="/Resources/scripts/signin.js"></script>
<script type="text/javascript" src="/Resources/scripts/pagination.js"></script>
<script type="text/javascript" src="/Resources/scripts/analytics.js"></script>
</head>
<body>
<jsp:include page="header.jsp" />
<div id="wrapper">
<h1 style="display:none">Minsters List</h1>
<c:forEach var="candidate" items="${candidate}" varStatus="candidateStatus">
	<c:if test="${candidateStatus.index%3==0}">
		<div class="Row">	
	</c:if>
	<div class="Box">
		<a href="#"><img src="/Resources/images/party/<c:out value="${candidate.partyShortName}" />-RO.png" class="PartyImage" /></a>
		<div class="ImageWrapper"><img src="/Resources/images/ministers/<c:out value="${candidate.name}" />.jpg" class="Image" /></div>
		<div class="Name"><a href="/web/minister/<c:out value="${candidate.name}" />"><c:out value="${candidate.name}" /></a></div>
		<div class="Constituency"><a href="#"><c:out value="${candidate.constituency}" /></a></div>
		<div class="Party"><a href="#"><c:out value="${candidate.partyName}" /></a></div>
		<div class="Supporters"><c:out value="${candidate.supporters}" /></div>
	</div>
	<c:if test="${candidateStatus.index%3==2}">
		</div>
	</c:if>
</c:forEach>
<div class="Row">
<select id="pager">
</select>	
</div>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>
