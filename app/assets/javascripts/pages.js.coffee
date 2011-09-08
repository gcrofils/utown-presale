# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  $("li a").each (i) ->
    $(this).hover(
      -> 
        $(this).stop(true, false).animate({
          width : "300px",
          opacity : "1.0",
          height : "80px"
        }, "fast")
      , 
      ->
        $(this).stop(true, false).animate({
          width : "260px",
          opacity : "0.9",
          height : "39px"
        }, "fast")
    )
     
  $("#footer").hover(
    ->
      $(this).stop(true, false).animate({
        bottom : "0px"
      }, "fast")
    ,
    ->
      $(this).stop(true, false).animate({
        bottom : "-160px"
      }, "fast")
  ) 
