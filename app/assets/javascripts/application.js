// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require jquery
//= require bootstrap-sprockets
//= require cocoon
//= require_tree .

!function () {
    'use strict';

    $(document).ready(function(){
        $('.carousel').slick({dots: true})
    })

    $(window).on('resize', function () {
        $('.card').height( ($(window).width()) / 4.4 );
    }).resize();

    $(document).on('click', '.card__i', function () {
        $('.js-cards').hide()
        $($(this).find('.card').data('target')).show()
    })

    $(document).on('click', '.content__close', function () {
        $('.js-cards').show()
        $('.content').hide()
    })
}();
