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

