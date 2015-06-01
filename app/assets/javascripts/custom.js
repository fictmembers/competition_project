$(document).ready(function() {
    $('.slider').slider({full_width: true});
    $('.dropdown-button').dropdown();
    //$('select').material_select();
        $(".head-home #nav-mobile").on("click", "a", function (event)    //обработка якорей
            {
                if (($(this).attr('class') != 'sign-in' ) && ($(this).attr('class') != 'cabinet' )) {
                    event.preventDefault();     //отменяем стандартную обработку нажатия по ссылке
                    var id = $(this).attr('href');
                    if (id != 'about') {
                        var top = $(id).offset().top - 45;
                    }
                    else {
                        var top = $(id).offset().top - 35 - $('.head').height;
                    }
                    $('body,html').animate({scrollTop: top}, 1500);
                }
            });
                         });
