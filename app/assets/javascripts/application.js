// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require jquery-ui
//= require rails-ujs
//= require popper
//= require html.sortable
//= require cocoon
//= require turbolinks
//= require_tree .


// js logic for sticky portfolio navbar
// to be updated or replaced as the app layout is changed
var $menu = $('navbar-top'), // replace #menu with your selector
  menuOffsetTop = $menu[0].offsetTop;

$(document).bind('ready scroll', function () {
  var docScroll = $(this).scrollTop();

  if (docScroll >= menuOffsetTop) {
      $menu.addClass('fixed');
  } else {
      $menu.removeClass('fixed');
  }
});