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
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
$(document).on('turbolinks:load', function() {
    $('.header__icon').on('click',function(){
        $('.sidebar-menu').css(
          'display','block'
        ).animate({
          right:'0'
        }, 
          300
        );
        $('.sidebar-menu-bg').css(
          'display','block'
        ).animate({
          opacity:'0.5'
        },
          300
        )
      });
      /*close*/
      $('.sidebar-menu_icon').on('click',function(){
        $('.sidebar-menu').animate({
          right:'-200px'
        },
          300
        );
        $('.sidebar-menu-bg').animate({
          opacity:'0'
        },
          300
        );
        setTimeout(function(){
          $('.sidebar-menu').css('display','none');
          $('.sidebar-menu-bg').css('display','none');
        },
          300
        );
      });
});
