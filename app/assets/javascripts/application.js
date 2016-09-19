// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
$(window).ready(function() {
  $.wait = function( callback, seconds){
    return window.setTimeout(callback, seconds * 1000);
  }
  var maxLoops = 8;
  var counter = 0;

  (function next() {
    if (counter++ > maxLoops) return;
    var status = $(".status_" + counter)
    setTimeout(function() {
      $(".status_" + counter).css('display', 'inline-block');
      if (status.text() == "Goose ") {
        $(".chase ").css('display', 'block');
        $(".winner").css('display', 'block');
        $(".loser").css('display', 'block');
        $(".play-again").css('display', 'block');
        return;
      }
      next();
    }, 2000);
  })();

});
