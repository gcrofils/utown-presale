# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  $("#home").animate({
    width : "300px",
    opacity : "1.0",
    height : "70px"
  }, "fast", ->
    $(this).find(".desc").slideDown("fast")
    $(this).attr("current", "true")
  )        
  $("#slide_bg").fadeIn("slow")
  
  back_state = (item) ->
    item.find(".desc").hide()
    item.stop(true, false).animate({
      width : "260px",
      opacity : "0.9",
      height : "39px"
    }, "fast")
  
  $("li a").each (i) ->
    $(this).hover(
      ->
        $(this).stop(true, false).animate({
          width : "300px",
          opacity : "1.0",
          height : "70px"
        }, "fast", ->
          $(this).find(".desc").slideDown("fast")
        )        
      , 
      ->
        if($(this).attr("current") == "true") 
          return
        back_state($(this))
    )
    $(this).click () ->
      if($(this).attr("current") == "true") 
        return
      $("li a").each (i) ->
        if($(this).attr("current") == "true")
          back_state($(this))
      $("li a").attr("current", "false")
      $(this).attr("current", "true")
      bg_img = "/assets/#{$(this).attr('id')}.jpg"
      $("#slide_bg").fadeOut("slow", ->
        $("#slide_bg").css("background", "url(#{bg_img}) center no-repeat")
        $("#slide_bg").fadeIn("slow")
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
