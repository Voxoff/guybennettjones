$(document).ready(function () {
  function hex_initial_animation() {
    $(".hex-wrap").velocity("transition.slideLeftIn", { stagger: 100 });
    $(".hex-wrap").velocity("callout.pulse");
    $(".hoverblock").velocity("fadeOut", { delay: 2500, duration: 0 });
  }
  hex_initial_animation();

  $(".hex-init").mouseenter(function () {

    var title_name = $(this).parent().attr("data-title");
    var desc_name = $(this).parent().attr("data-content");

    function hex_description() {
      $('.code-description').velocity('stop', true).velocity("transition.slideRightBigIn");
      $('.' + desc_name).siblings().removeClass('desc-active');
      setTimeout(function() {
        $('.' + desc_name).addClass('desc-active');
        $('.desc-active').children().velocity('stop', true).velocity("transition.slideRightBigIn", { stagger: 300 });
        $('.code-title, .desc-active span').velocity( { queue: false });
        $('.code-title').text(title_name)
      }, 0);
    }
    hex_description();

    $(this).parent().addClass('hexactive'); 
    $('.hexactive').velocity({scale: "1.1"}, { duration: 100 });

  }).mouseleave(function () {
   $('.hexactive').velocity('reverse').removeClass('hexactive');
 });
});