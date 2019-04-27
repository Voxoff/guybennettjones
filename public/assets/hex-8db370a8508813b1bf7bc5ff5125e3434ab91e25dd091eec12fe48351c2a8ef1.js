function hex_initial_animation() {
  $(".hex-wrap").velocity("transition.slideLeftIn", { stagger: 100 });
  $(".hex-wrap").velocity("callout.pulse");
  $(".hoverblock").velocity("fadeOut", { delay: 2500, duration: 0 });
}

function hex_description(desc, title) {
  $('.code-description').velocity('stop', true).velocity("transition.slideRightBigIn");
  $('.' + desc).siblings().removeClass('desc-active');
  $('.' + desc).addClass('desc-active');
  $('.desc-active').children().velocity('stop', true).velocity("transition.slideRightBigIn", { stagger: 300 });
  $('.code-title').text(title)
}

$(document).ready(function () {
  hex_initial_animation();

  $(".hex-init").mouseenter(function () {
    let title = $(this).parent().attr("data-title");
    let desc = $(this).parent().attr("data-content");
    hex_description(desc, title);

    $(this).parent().addClass('hexactive'); 
    $('.hexactive').velocity({scale: "1.1"}, { duration: 100 });

  }).mouseleave(function () {
   $('.hexactive').velocity('reverse').removeClass('hexactive');
 });
});
