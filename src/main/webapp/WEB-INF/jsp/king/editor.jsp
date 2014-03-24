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
<link rel="stylesheet" type="text/css" href="/Resources/CSS/header3.css">
<link rel="stylesheet" type="text/css" href="/Resources/CSS/prettify.css">
<script type="text/javascript" src="/Resources/Libraries/jquery-2.0.2.min.js"></script>
<script src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js"></script>
<meta name="google-site-verification" content="ilBL4o12qfyykV6MrBsq71pbe0Q8OnhMLDBV6mmOUYs" />
</head>
<style>
td
{
	padding:5px;
	vertical-align:middle;
}
body
{
	font-family:raleway;
}
input[type="text"],textarea
{
border: 1px solid #ccc;
width:400px;
border-radius: 5px;
-moz-border-radius: 5px;
-webkit-border-radius: 5px;
padding: 5px;
}
input[type="submit"]
{
border: 1px solid #ccc;
border-radius: 5px;
-moz-border-radius: 5px;
-webkit-border-radius: 5px;
padding: 8px;
background-color:white;
font-family:raleway;
}
input[type="submit"]:hover
{
	cursor:pointer;
	background-color:#eaeaea;
}
#writeSpace
{
	border-right:1px solid #ccc;
}
#writeSpace,#previewSpace
{
	width:49.5%;
	box-sizing:border-box;
	-moz-box-sizing:border-box;
	-webkit-box-sizing:border-box;
	display:inline-block;
	vertical-align:top;
	min-height:200px;
}
#preview
{
	border:1px solid #ccc;
	overflow:scroll;
	min-height:300px;
	padding:5px;
}
#writeSpace h1,#previewSpace h1
{
	text-align:center;
	font-size:18px;
}
.news span{
font-family:opensans;
font-size: 12px;
}
h2
{
		font-size: 22px;
		font-family: opensans;
		font-weight: bold;
		margin: 15px 0 15px 0;
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
	line-height:30px;
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
	text-align:left;
}
.news
{
	margin-top:10px;
	width:700px;
}
.newsContent
{
	font-family:opensans;
}
.newsContent img
{
	padding:5px;
}
.newsContent img:nth-child(even)
{
	float:left;
}
.newsContent img:nth-child(odd)
{
	float:right;
}
.rounded
{
	border-collapse:seperate;
	border:1px solid #ccc;
	overflow:hidden;
	border-radius:5px;
	-moz-border-radius:5px;
	-webkit-border-radius:5px;
	vertical-align:middle;
	margin:0px auto;
}
.rounded td,.rounded th
{
	border-left:1px solid #ccc;
	border-bottom:1px solid #ccc;
	padding:10px;
}
.rounded tr:nth-child(even)
{
	background-color:#f9f9f9;
}
.rounded th
{
	background-color:#f0f0f0;
}
#progress
{
	width:100px;
	background-color:green;
	display:inline-block;
}
</style>	
<body onload="prettyprint">
<jsp:include page="../header.jsp" />
<div id="wrapper">
<div id="writeSpace">
<h1>Write Your Article</h1>
<form action="/postnews" method="POST">
<table>
<tr><td>News Title</td><td><input type="text" id="newsTitle" value="Kejriwal ready to take on Modi"></td></tr>
<tr><td>Short Title</td><td><input type="text" id="shortTitle" ></td></tr>
<tr><td>Date</td><td><input type="text" id="dat" value="12th March"></td></tr>
<tr><td>Time</td><td><input type="text" id="time" value="18:00 IST" placeholder="Not Mandatory"></td></tr>
<tr><td>Place</td><td><input type="text" id="place" value="Tanjore" placeholder="Not Mandatory" ></td></tr>
<tr><td>Source</td><td><input type="text" id="source" value="The Hindu" ></td></tr>
<tr><td>Thumb Image</td><td><input id="imageupload" type="file" name="thumb" data-url="imageupload"><div id="progress"></div></td></tr>
<tr><td>Main Image</td><td><input id="thumbupload" type="file" name="image" data-url="imageupload"><div id="progress"></div></td></tr>
<tr><td>News Content</td><td><textarea class="prettyprint linenums" contenteditable=true id="newsContent"><img src="/Resources/images/last5Congress.jpg"> Aam Aadmi Party convener Arvind Kejriwal has declared that he is ready to take on Gujarat Chief Minister Narendra Modi in Varanasi in the Lok Sabha elections, but he will do so only if “the people want” it.<img src="/Resources/images/last5Congress.jpg"> He was addressing a rally here on Sunday, the second day of his tour of the Lok Sabha constituencies in and around Bangalore. It was attended by a large number of supporters, all wearing the AAP’s caps. Mr. Kejriwal said he would gauge the people’s support at a rally the AAP plans to hold in Varanasi on March 23. “I will do whatever the people say.” Speaking in Hindi in his trademark style that alternates between sardonic humour and references to himself as the common man, he spared the BJP’s prime ministerial candidate no criticism and spoke of the media’s “propaganda of falsehood” in their portrayal of Mr. Modi’s development model. “For a year, the media have tried to show that Gujarat has progressed under Modiji. So I decided to see the progress for myself. But what I witnessed in my 10-day visit shocked me. Farmers complain that their land is being grabbed and handed over to industries. Modiji represents the old school crony capitalism,” he said.</textarea></tr>
</table>
<table id="uploaded-files" class="rounded">
        <tr>
            <th>File Name</th>
            <th>File Size</th>
            <th>File Type</th>
            <th>Download</th>
            <th>File Index</th>
            <tr>
            <td>File Name</td>
            <td>File Size</td>
            <td>File Type</td>
            <td>Download</td>
            <td>File Index</td>
            </tr>
        </tr>
</table>
To use the uploaded image in the news type "<<fileindex>>" Eg: <<1>>
<input type="button" value="Post" onclick="post();" />
</form>
</div>
<div id="previewSpace">
<h1>Preview</h1>
<div id="preview">
<div class="news">
<h2 class="newsTitle"></h2>
<span class="newsTimeStamp"></span>
<p class="newsContent">
</p>
</div>
</div>
</div>
</div>
<jsp:include page="../footer.jsp" />
<script type="text/javascript">
function post()
{
	if($('#date').val()=="")
		$('')
		document.forms[2].submit();
}
function update()
{
	$('.newsTitle').html($('#newsTitle').val());
	$('.newsContent').html($('#newsContent').val());
	str="";
	if($('#place').val()!="")
		str+=$('#place').val()+',';
	if($('#dat').val()!="")
		str+=$('#dat').val();
	if($('#time').val()!="")
		str+=','+$('#time').val();
	if($('#source').val()!="")
		str+=','+$('#source').val();
	$('.newsTimeStamp').html(str);
}
$('#newsTitle,#shortTitle,#dat,#time,#place,#source,#newsContent').keyup(function(e){
	update();	
});
$(function(){
	$(function () {
	    $('.fileupload').fileupload({
	        dataType: 'json',
	 
	        done: function (e, data) {
	            $("tr:has(td)").remove();
	            $.each(data.result, function (index, file) {
	 
	                $("#uploaded-files").append(
	                        $('<tr/>')
	                        .append($('<td/>').text(file.fileName))
	                        .append($('<td/>').text(file.fileSize))
	                        .append($('<td/>').text(file.fileType))
	                        .append($('<td/>').html("<a href='imagedownload/"+index+"'>Click</a>"))
	                        );  /*end $("#uploaded-files").append()*/
	            }); 
	        },
	 
	        progressall: function (e, data) {
	            var progress = parseInt(data.loaded / data.total * 100, 10);
	            $('#progress .bar').css(
	                'width',
	                progress + '%'
	            );
	        },
	    });
	});
});
update();
</script>
</body>
</html>
