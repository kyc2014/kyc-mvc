<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<head>
<meta name="google-site-verification" content="ilBL4o12qfyykV6MrBsq71pbe0Q8OnhMLDBV6mmOUYs" />
<meta lang="en-US" content="Knowyourcandidate provides unbiased information Indian Policitans MLAs MPs Information 2014 Lok Sabha elections" name="description"/>
<title>Current Parliament Members | Know Your Candidate</title>
<link rel="shortcut icon" href="/Resources/images/title_icon.png">
<link rel="stylesheet" type="text/css" href="/Resources/CSS/reset.css">
<link rel="stylesheet" type="text/css" href="/Resources/CSS/MinisterPage.css">
<link rel="stylesheet" type="text/css" href="/Resources/CSS/header3.css">
<link rel="stylesheet" type="text/css" href="/Resources/CSS/footer.css">
<script type="text/javascript" src="/Resources/Libraries/jquery-2.0.2.min.js"></script>
<script type="text/javascript" src="/Resources/scripts/jquery-ias.min.js"></script>
<script type="text/javascript" src="/Resources/scripts/signin.js"></script>

<script type="text/javascript" src="/Resources/scripts/analytics.js"></script>
<style>

#masthead-search-terms {
    -moz-box-sizing: border-box;
    background-color: #FFFFFF;
    font-size: 14px;
    height: 29px;
    line-height: 30px;
    margin: 0 0 2px;
    overflow: hidden;
    position: relative;
    transition: border-color 0.2s ease 0s;
}
.masthead-search-terms-border {
    border: 1px solid #CCCCCC;
    box-shadow: 0 1px 2px #EEEEEE inset;
}
#masthead-search.consolidated-form #masthead-search-terms label {
    height: 100%;
}
#masthead-search-terms label {
    display: block;
}
#masthead-search label {
    border: medium none;
    height: 100%;
    line-height: 30px;
    overflow: hidden;
    padding: 0;
}
#masthead-search.consolidated-form input {
    height: 100%;
    outline: medium none;
}
#masthead-search-terms input {
    -moz-box-sizing: border-box;
    background: none repeat scroll 0 0 transparent;
    border: 0 none;
    display: inline-block;
    font-size: 16px;
    margin: 0;
    outline: medium none;
    padding: 2px 6px;
    width: 100%;
}
.search-term {
    width: 100%;
}
#masthead-search {
    max-width: 650px;
}
#masthead-search {
    margin-top: 3px;
    overflow: hidden;
    padding: 0;
    position: relative;
}
.yt-uix-button::-moz-focus-inner {
    border: 0 none;
    padding: 0;
}
#yt-masthead #search-btn {
    padding: 0;
}
#masthead-search .search-btn-component, #masthead-search .search-btn-component .start {
    border-bottom-left-radius: 0;
    border-left: 0 none;
    border-top-left-radius: 0;
}
#masthead-search .search-btn-component {
    filter: none;
    float: right;
    opacity: 1;
    padding: 0 0.91em;
}
#masthead-search .search-btn-component, .site-left-aligned #yt-masthead button.yt-uix-button {
    height: 29px;
}
.yt-uix-button-default, .yt-uix-button-default[disabled], .yt-uix-button-default[disabled]:hover, .yt-uix-button-default[disabled]:active, .yt-uix-button-default[disabled]:focus {
    background: none repeat scroll 0 0 #F8F8F8;
    border-color: #D3D3D3;
    color: #333333;
}
.yt-uix-button {
    border: 1px solid transparent;
    border-radius: 2px 2px 2px 2px;
    box-shadow: 0 1px 0 rgba(0, 0, 0, 0.05);
    cursor: pointer;
    display: inline-block;
    font-size: 11px;
    font-weight: bold;
    height: 28px;
    line-height: normal;
    outline: 0 none;
    padding: 0 10px;
    text-decoration: none;
    vertical-align: middle;
    white-space: nowrap;
    word-wrap: normal;
}

#yt-masthead #search-btn .yt-uix-button-content {
    margin: 0 25px;
}
#masthead-search .search-btn-component .yt-uix-button-content {
    background: url("http://s.ytimg.com/yts/imgbin/www-hitchhiker-vflQAO6FV.png") no-repeat scroll 0 -263px transparent;
    border: medium none;
    box-shadow: none;
    display: block;
    height: 14px;
    opacity: 0.6;
    padding: 0;
    text-indent: -10000px;
    width: 14px;
}
#yt-masthead-content{
float: right;
}
</style>
</head>
<body>
<jsp:include page="../header.jsp" />
<div id="yt-masthead-content">
<form action="/web/ministers/search" class="search-form consolidated-form" id="masthead-search">
<button role="button" dir="ltr" tabindex="2" id="search-btn" class="search-btn-component search-button yt-uix-button yt-uix-button-default yt-uix-button-size-default" type="submit" onclick="if (_gel('masthead-search-term').value == '') return false; _gel('masthead-search').submit(); return false;;return true;">
<span class="yt-uix-button-content">Search </span>
</button>

<div dir="ltr" class="masthead-search-terms-border gsfe_b" id="masthead-search-terms">
<label>
<input type="text" placeholder="Search" title="Search" tabindex="1" value="" name="keyword" class="search-term yt-uix-form-input-bidi" autofocus="" autocomplete="off" id="masthead-search-term" dir="ltr" spellcheck="false" style="outline: medium none;">
</label>
</div>
</form>
</div>
<div id="wrapper">
<h1 style="display:none">Minsters List</h1>
<div id="container">
<div class="item">
<c:forEach var="candidate" items="${candidate}" varStatus="candidateStatus">
	<c:if test="${candidateStatus.index%3==0}">
		<div class="Row">	
	</c:if>
	<div class="Box">
		<a href="#"><img src="/Resources/images/party/<c:out value="${candidate.partyShortName}" />-RO.png" class="PartyImage" /></a>
		<div class="ImageWrapper"><img src="/Resources/images/ministers/<c:out value="${candidate.name}" />.jpg" class="Image" /></div>
		<div class="Name"><a href="/web/minister/<c:out value="${candidate.name}" />/"><c:out value="${candidate.name}" /></a></div>
		<div class="Constituency"><a href="#"><c:out value="${candidate.constituency}" /></a></div>
		<div class="Party"><a href="#"><c:out value="${candidate.partyName}" /></a></div>
		<div class="Supporters"><c:out value="${candidate.supporters}" /></div>
	</div>
	<c:if test="${candidateStatus.index%3==2}">
		</div>
	</c:if>
</c:forEach>
</div>
 <ul id="pagination">
 				<c:choose>
 				<c:when test="${pageNo < 37 && pageNo > 1}">
 				<li class="prev" ><a href="/web/ministers/list/<c:out value="${pageNo - 1}"/>"><c:out value="${pageNo - 1}"/></a></li>
 				<li class="next" ><a href="/web/ministers/list/<c:out value="${pageNo + 1}"/>"><c:out value="${pageNo + 1}"/></a></li>
 				<li class=""><a class="" href="/web/ministers/list/<c:out value="${pageNo}"/>"><c:out value="${pageNo}"/></a></li>
 				</c:when>
 				<c:when test="${pageNo == 1}">
 				<li class="next" ><a href="/web/ministers/list/<c:out value="${pageNo + 1}"/>"><c:out value="${pageNo + 1}"/></a></li>
 				</c:when>
 				<c:when test="${pageNo == 38}">
 				<li class="prev" ><a href="/web/ministers/list/<c:out value="${pageNo - 1}"/>"><c:out value="${pageNo - 1}"/></a></li>
 				</c:when>
 				</c:choose>
 				
				
				                    
 </ul>
</div>
</div>
      <script>
      var ias = $.ias({
          container:  "#container",
          item:       ".item",
          pagination: "#pagination",
          next:       ".next a",
          delay:      1000
        });

        ias.extension(new IASSpinnerExtension());
        ias.extension(new IASTriggerExtension({ offset: 100 }));
        ias.extension(new IASPagingExtension());
        ias.extension(new IASHistoryExtension({ prev: '.prev a' }));
      </script>
<jsp:include page="../footer.jsp" />
</body>
</html>
