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
.left-container{
width:50%;
display:inline;
float:left;
}
.right-container{
width:50%;
display:inline;
float:right;
}
.homepage-container h1{
font-size: 25px;
margin: 10px 0 12px 0;
}
.homepage-container p{
margin: 0 0 12px 0;
}
</style>
</head>	
<body>
<jsp:include page="header.jsp" />
<div id="wrapper">
<div id="homeBottom"class="MenuBottom">
</div>
<div id="articlesBottom"class="MenuBottom">
</div>
<div id="candidatesBottom"class="MenuBottom">
</div> 
<div id="container" class="homepage-container">
<div class="left-container">
<h1>News from media</h1>
<div class="news-media">
<p>
<a href="/news/mamata-banerjee-rally-ramlila-maidan">Trinamool Congress chief Mamata Banerjee party rally at Ramlila Maidan</a>
</p>
<p>
<a href="/news/ec-restriction-on-opinion-polls">EC again asks govt. for restrictions on opinion polls</a>
</p>
<a href="/news/antony-not-contesting">Antony not to contest</a>
</div>
</div>
<div class="right-container">
<h1>Updates from Election Commission</h1>
<div class="eci">
<p>
<a href="/legisative-polls-arunachalpradesh">Arunchal Pradesh Legislative Assembly general election dates</a>
</p>
<p>
<a href="/ls/electoral-roll-data/">Electoral roll data</a>
</p>
<p>
<a href="/general-election-schedule">General Elections Schedule</a>
</p>
</div>
</div>
<span class="temp" style="font-size: 30px;width: 100%;float: left;text-align: center;font-family: inherit;"> Under Construction </span>
</div>
<jsp:include page="WEB-INF/jsp/footer.jsp" />
</body>
<script type="text/javascript">
var json;
var votes=[];
var total=0;
$(function()
{
	// Poll Functionality
	$.ajax({
		url :"/web/user/poll",
		type:"POST",
		error:function(e,st,string)
		{
			console.log("Error "+e);
		},
		success:function(response){
			json=jQuery.parseJSON(response);
			console.log(json);
			$('#question').html(json.question);
			var i=0;
			for(key in json.option)
			{
				radio="<input type='radio' name='opt' id='"+key+"' value='"+aid+"'><label for='"+key+"'>"+key+"</label><br>";
				$('#options').append(radio);
				total+=json.option[key];
				votes.push(json.option[key]);
				i++;
				
			}
			$('#beforeVote').append("<span id='pollButtons'></span>");
			var submit="<input type='button' id='pollVote' value='Vote'>";
			var viewresults="<a id='viewResults'>View Results</a>";
			$('#afterVote').append("<div id='holder'>");
			i=0;
			for(key in json.option)
			{
				$('#holder').append("<div id='bar"+(i++)+"' class='bar'>");
				$('#holder').append("<div><b>"+key+"</b> ( "+json.option[key]+" votes cast )</div>");
			}
				$('.bar').each(function(index){
					$(this).css({width:(votes[index]/total)*200});
				});
			$('#pollButtons').append(submit+viewresults);
			$('#viewResults').click(function(){
                	$('#beforeVote').css({position:"relative"});
-					$('#beforeVote').animate({top:"-10px"},200,function(){
						$(this).hide();
						$('#afterVote').show();
					});
			});
			$('#afterVote').append("<input type='button' name='back' id='backPoll' value='Back' />");
			$('#backPoll').click(function(){
				$('#afterVote').hide();
				$('#beforeVote').show();
				$('#beforeVote').animate({top:"0px"},200);
			});
			
		$('#pollVote').click(function(){
			var option=$("input[name='opt']:checked").val();
			$.ajax({
				url:"/web/user/voteforpoll",
				type:"POST",
				data:{qid:pollquestionId,answer:option},
				success:function(){
						console.log("Voted");	
				}
			});
		});
		}
		});		

	/*$('#suggestionBox').css({"display":"none","left":$('#searchBox').position().left,"top":$('#searchBox').position().top+23,"position":"absolute"});
	$('#searchBox').focusin(function(e){$('#suggestionBox').fadeIn();});
	$('#searchBox').focusout(function(e){$('#suggestionBox').fadeOut();});*/
	$('#comicWrapper img').add('#cmcRightArrow').add('#cmcLeftArrow').hover(
		function(){
			$('#cmcRightArrow').add('#cmcLeftArrow').height($('#comic').height());
			$('#cmcRightArrow').add('#cmcLeftArrow').css({"top":$('#comic').position().top,"line-height":$('#comic').height()+'px'});
			$('#cmcRightArrow').css({"left":$('#comic').position().left+$('#comic').width()-30});
			$('#cmcRightArrow').fadeIn(0);
			$('#cmcLeftArrow').fadeIn(0);
			},
		function(){
			$('#cmcRightArrow').fadeOut(0);
			$('#cmcLeftArrow').fadeOut(0);
			}
			);
			var toggle=1;
	$('#heart').click(function()
	{
		if(toggle)
		{
			$('#heart').prop("src","Resources/images/heart2.png");
			toggle=0;
		}
		else
		{
			$('#heart').prop("src","Resources/images/heart.png");
			toggle=1;
		}
	});
  var barleft = true;
  var barright = true;
  var totalnews = $('#newsBarBackground').children().size();
  var transitionend = "-webkitTransitionEnd transitionend otransitionend oTransitionEnd";
	$('#newsBarLeft').css({"visibility":"hidden"});
  $('#newsBarLeft').click(function()

      {
        
        if(barleft == true)
        {
        $('#newsBarRight').css({"visibility":"visible"});
        var position = $('#newsBarBackground').position().left;
        position = convert(position);
        if(position!=0)
        { 
          
             var newposition = position + 681;
            barleft = false;
            newposition+='px';
            $('#newsBarBackground').css({"-webkit-transform":"translate("+newposition+",0px)","transform":"translate("+newposition+",0px)","-ms-transform":"translate("+newposition+",0px)"}).on(transitionend,function(e){
                       
                      var ev = e.originalEvent;
                      var s = ev.propertyName;
                     if(s == "-webkit-transform" || s=="transform")
                      barleft = true;
                       
            });
             
        }
        if(position==-681)
        {
         $('#newsBarLeft').css({"visibility":"hidden"});
        }
      }
      }
    );
  $('#newsBarRight').click(function()
      {
	       if(barright === true)
        {
          
          var limit = Math.floor(totalnews/5);
          limit=limit*681;
          neg = -limit;
          var position = $('#newsBarBackground').position().left;
          position = convert(position);

          if(position!=-4767)
          { 
             $('#newsBarLeft').css({"visibility":"visible"});
              var newposition = position - 681;
              if(newposition==neg)
              $('#newsBarRight').css({"visibility":"hidden"});
              newposition+='px';
              barright = false;
              $('#newsBarBackground').css({"-webkit-transform":"translate("+newposition+",0px)","transform":"translate("+newposition+",0px)","-ms-transform":"translate("+newposition+",0px)"}).on(transitionend,function(e){
                      
                      //console.log(barright);
                      var ev = e.originalEvent;
                      var s = ev.propertyName;
                   if(s == "-webkit-transform" || s=="transform")
                      barright = true;
              });
               
          }
        }
      }
    );
    $('#articles').hover(function(){
          
        
              $('.MenuBottom').css({"min-height":"0px"});
              $('#articlesBottom').css({"min-height":"200px"});
            

    
    },function()
    {
        var ishover = $('#articlesBottom').is(':hover')
        console.log(ishover);
        if(ishover === true)
        {
          $('#articles').addClass('menuHover');
        }
        else
        {
          $('.MenuBottom').css({"min-height":"0px"});
        }
        
    });
    $('.MenuBottom').hover(function(){},
    function(){
      
      $('.MenuBottom').css({"min-height":"0px"});
      $('#articles').removeClass('menuHover');

    });
     
	
});
function resetForm()
    {
      $('#loginForm input:not(:last-child)').val("");
      $('#signupForm input:not(:last-child)').val("");
    }
    function convert(position)
{
     var isneg=false;
     if(position<0)
      isneg = true;
     var tt = (position-parseInt(position))*100;
     tt=parseInt(tt);
     if(isneg)
     {
        if(tt==-99)
          position= Math.floor(position);
        else
          position=Math.ceil(position);
     }
     else
     {
        if(tt==-99)
          position= Math.ceil(position);
        else
          position=Math.floor(position);

     }
    return position;
}
</script>
</html>
