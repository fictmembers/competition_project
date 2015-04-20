// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require jquery
//= require materialize-sprockets
$(document).ready(function() {
        $("#menu").on("click", "a", function (event)    //обработка якорей
            {
                event.preventDefault();     //отменяем стандартную обработку нажатия по ссылке
                var id = $(this).attr('href');
                if (id != 'about') {
                    var top = $(id).offset().top - 45;
                }
                else
                {
                    var top = $(id).offset().top - 35 - $('.nav').height;
                }
                $('body,html').animate({scrollTop: top}, 1500);
            });
                         });


