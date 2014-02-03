$('img').attr("draggable","false");

      $('#logArea').click(
        function()
        {
          $('#mask').css({"display":"block","background-color":"#fff","opacity":"0","filter":"alpha(opacity=0)","width":$(window).width(),"height":$(document).height()});
          $('#signupPop').css({"display":"block"});
        }
        );

      $('#signupPopCloseButton').click(
        function()
        {
          $('#signupPop').css({"display":"none"});
          $('#mask').css({"display":"none"});
        });
      $('#logArea').click(
        function(){
          $('#signupPop').css({"display":"block"});
        });
      $('#createAccount').click(
      function()
      { 
        
        $('#signupRight').css({"transition":"all ease-in 200ms","-webkit-transform":"translate(0px,-220px)"});
        resetForm();

      });
      $('#accountExists').click(
      function()
      { 
        
        $('#signupRight').css({"transition":"all ease-in 200ms","-webkit-transform":"translate(0px,0px)"});
        resetForm();

      });
      