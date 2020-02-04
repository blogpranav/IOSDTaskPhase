(function ($) {
    "use strict";

    /* ------------------- Preload -------------------- */
    $(window).on('load',function () {
        $('#loading').fadeOut();
        $('#loading').delay(350).fadeOut('slow');
    });

    /* ------------------- Navbar ------------------ */
    $('.header').sticky({
        topSpacing: 0
    });

    $('body').scrollspy({
        target: '.navbar-custom',
        offset: 70
    })

    /* -------------------- Background image ------------------- */
    $(".height-set-js").height($(window).height());

    $(window).resize(function () {
        $(".height-set-js").height($(window).height());
    });

    if (/Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent)) {
        $('#home').css({'background-attachment': 'scroll'});
    } else {
        $('#home').parallax('50%', 0.1);
    }

    /* ------------------- Testimonials ---------------------- */
    $('.testimonials').owlCarousel({
        singleItem: true,
        navigation: false,
        pagination: true,
        slideSpeed: 300,
        paginationSpeed: 400,
        autoPlay: 5000,
        navigationText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>']
    });

    /* ---------------- Initialize shuffle ------------------ */
    var $portfolioContainer = $('.portfolio-items-container');

    $('#filter li').on('click', function (e) {
        e.preventDefault();

        $('#filter li').removeClass('active');
        $(this).addClass('active');

        var group = $(this).attr('data-group');
        var groupName = $(this).attr('data-group');

        $portfolioContainer.shuffle('shuffle', groupName);
    });

    $('.simple-ajax-popup').magnificPopup({
        type: 'image',
        gallery: {enabled: true}
    });

    /* ------------ WOW Animation Initialize --------------- */
    new WOW().init();

    /* ----------- Fluid width video embeds --------------- */
    $('body').fitVids();

    /* ----------------- mb_YTPlayer init ---------------- */
    if ($('.youtube-bg').length == 1) {
        $(".youtube-bg").mb_YTPlayer();
    }

    /* ----------- Contact form email send  -------------- */
    $("#message_form").on('submit', function (event) {
        event.preventDefault();
        var form = $(this);

        $.ajax({
            type: 'POST',
            url: $(form).attr('action'),
            data: $(form).serialize()
        })
            .done(function (response) {
                $('.email-msg').html('Your message has been sent, thank you.');
                $('#name, #email, #message').val('');
            })
            .fail(function (data) {
                $('.email-msg').html('Error when sending request.');

            });
    });

    /* ------------------ Scroll Up ------------------ */
    $('a[href*=#]').on("click", function (e) {
        var anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $(anchor.attr('href')).offset().top
        }, 1000);
        e.preventDefault();
    });

    $("#scroll-up").on('click',function (e) {
        e.preventDefault();
        $("html, body").animate({scrollTop: 0}, 1000);
    });

    $(window).on('scroll',function () {
        if ($(this).scrollTop() > 100) {
            $('.scroll-up').fadeIn();
        } else {
            $('.scroll-up').fadeOut();
        }
    });

})(jQuery);