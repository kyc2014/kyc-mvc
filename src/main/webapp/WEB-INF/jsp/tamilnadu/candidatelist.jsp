<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}" />/Resources/CSS/reset.css">
<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}" />/Resources/CSS/MinisterPage.css">
<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}" />/Resources/CSS/header.css">
<link rel="stylesheet" type="text/css" href="<c:out value="${pageContext.request.contextPath}" />/Resources/CSS/footer.css">
<body>
<jsp:include page="header.jsp" />
<div id="wrapper">
<c:forEach var="candidate" items="${candidate}" varStatus="candidateStatus">
	<c:if test="${candidateStatus.index%3==0}">
		<div class="Row">	
	</c:if>
	<div class="Box">
		<a href="#"><img src="<c:out value="${pageContext.request.contextPath}" />/Resources/images/party/<c:out value="${candidate.partyShortName}" />.png" class="PartyImage" /></a>
		<div class="ImageWrapper"><img src="<c:out value="${pageContext.request.contextPath}" />/Resources/images/ministers/<c:out value="${candidate.name}" />.jpg" class="Image" /></div>
		<div class="Name"><a href="<c:out value="${pageContext.request.contextPath}" />/web/minister/<c:out value="${candidate.name}" />"><c:out value="${candidate.name}" /></a></div>
		<div class="Constituency"><a href="#"><c:out value="${candidate.constituency}" /></a></div>
		<div class="Party"><a href="#"><c:out value="${candidate.partyName}" /></a></div>
		<div class="Supporters"><c:out value="${candidate.supporters}" /></div>
	</div>
	<c:if test="${candidateStatus.index%3==2}">
		</div>
	</c:if>
</c:forEach>
</div>
<jsp:include page="footer.jsp" />
</body>
