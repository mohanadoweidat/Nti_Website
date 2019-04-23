
(function($) {
    // 'use strict';

    // Main Navigation
    $( '.hamburger-menu' ).on( 'click', function() {
        $(this).toggleClass('open');
        $('.site-navigation').toggleClass('show');
    });

    // Hero Slider
    var mySwiper = new Swiper('.hero-slider', {
        slidesPerView: 1,
        spaceBetween: 0,
        loop: true,
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
            renderBullet: function (index, className) {
                return '<span class="' + className + '">' + (index + 1) + '</span>';
            }
        },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev'
        }
    });

    var current_slide = mySwiper.activeIndex;
    var countdown_date = $('.swiper-slide').eq(current_slide).data("date");

    $('.countdown').countdown(countdown_date, function(event) {
        $('.dday').html(event.strftime('%-D'));
        $('.dhour').html(event.strftime('%-H'));
        $('.dmin').html(event.strftime('%-M'));
        $('.dsec').html(event.strftime('%-S'));
    });

    mySwiper.on('slideChange', function (slider) {
        var current_slide = mySwiper.activeIndex;
        var countdown_date = $('.swiper-slide').eq(current_slide).data("date");

        $('.countdown').countdown(countdown_date, function(event) {
            $('.dday').html(event.strftime('%-D'));
            $('.dhour').html(event.strftime('%-H'));
            $('.dmin').html(event.strftime('%-M'));
            $('.dsec').html(event.strftime('%-S'));
        });
    });

    // Events Slider
    var swiper = new Swiper('.homepage-regional-events-slider', {
        slidesPerView: 6,
        spaceBetween: 30,
        loop: true,
        breakpoints: {
            // when window width is <= 320px
            576: {
                slidesPerView: 2,
            },
            768: {
                slidesPerView: 3
            },
            992: {
                slidesPerView: 4
            },
            1200: {
                slidesPerView: 5
            }
        },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev'
        }
    });

    // Load more events
    var $container      = $('.events-list');
    var $item           = $('.single-event');

    $item.slice(0, 6).addClass('visible');

    $('.load-more-btn a').on('click', function (e) {
        e.preventDefault();

        $('.single-event:hidden').slice(0, 6).addClass('visible');
        $container.masonry('layout');
    });

    // Events Page
    $container.masonry({
        itemSelector: '.single-event'
    });

    // Buy Tickets Form
    $(".increase-ticket").click(function() {
        var $n = $(this)
            .parent(".number-of-ticket")
            .parent(".flex")
            .parent(".ticket-row")
            .find(".ticket-count");
        $n.val(Number($n.val())+1 );
    });

    $(".decrease-ticket").click(function() {
        var $n = $(this)
            .parent(".number-of-ticket")
            .parent(".flex")
            .parent(".ticket-row")
            .find(".ticket-count");
        var amount = Number($n.val());
        if (amount > 0) {
            $n.val(amount-1);
        }
    });

    $(".clear-ticket-count").on( 'click', function() {
        var $count = $('.ticket-count');
        $count.val('1');
    });

    // Tabs
    $(function() {
        $('.tab-content:first-child').show();

        $('.tab-nav').bind('click', function(e) {
            $this = $(this);
            $tabs = $this.parent().parent().next();
            $target = $($this.data("target"));
            $this.siblings().removeClass('active');
            $target.siblings().css("display", "none");
            $this.addClass('active');
            $target.fadeIn("slow");
        });

        $('.tab-nav:first-child').trigger('click');
    });

    // Accordion & Toggle
    $('.accordion-wrap.type-accordion').collapsible({
        accordion: true,
        contentOpen: 0,
        arrowRclass: 'arrow-r',
        arrowDclass: 'arrow-d'
    });

    $('.accordion-wrap .entry-title').on('click', function() {
        $('.accordion-wrap .entry-title').removeClass('active');
        $(this).addClass('active');
    });

    // Circular Progress Bar
    $('#festivals').circleProgress({
        startAngle: -Math.PI / 4 * 2,
        value: 0.75,
        size: 124,
        fill: {
            gradient: ["#581687", "#ab00ff"]
        }
    }).on('circle-animation-progress', function(event, progress) {
        $(this).find('strong').html(Math.round(75 * progress) + '<i>%</i>');
    });

    $('#concerts').circleProgress({
        startAngle: -Math.PI / 4 * 2,
        value: 0.83,
        size: 124,
        fill: {
            gradient: ["#581687", "#ab00ff"]
        }
    }).on('circle-animation-progress', function(event, progress) {
        $(this).find('strong').html(Math.round(83 * progress) + '<i>%</i>');
    });

    $('#conference').circleProgress({
        startAngle: -Math.PI / 4 * 2,
        value: 0.25,
        size: 124,
        fill: {
            gradient: ["#581687", "#ab00ff"]
        }
    }).on('circle-animation-progress', function(event, progress) {
        $(this).find('strong').html(Math.round(25 * progress) + '<i>%</i>');
    });

    $('#new_artists').circleProgress({
        startAngle: -Math.PI / 4 * 2,
        value: 0.82,
        size: 124,
        fill: {
            gradient: ["#581687", "#ab00ff"]
        }
    }).on('circle-animation-progress', function(event, progress) {
        $(this).find('strong').html(Math.round(82 * progress) + '<i>%</i>');
    });

    // Counter
    $(".start-counter").each(function () {
        var counter = $(this);

        counter.countTo({
            formatter: function (value, options) {
                return value.toFixed(options.decimals).replace(/\B(?=(?:\d{3})+(?!\d))/g, ',');
            }
        });
    });

    // Back to Top
    if ( $( '.back-to-top' ).length) {
        var scrollTrigger = 500, // px
            backToTop = function () {
                var scrollTop = $(window).scrollTop();
                if (scrollTop > scrollTrigger) {
                    $('.back-to-top').addClass('show');
                } else {
                    $('.back-to-top').removeClass('show');
                }
            };
        backToTop();
        $(window).on('scroll', function () {
            backToTop();
        });
        $('.back-to-top').on('click', function (e) {
            e.preventDefault();
            $('html,body').animate({
                scrollTop: 0
            }, 800);
        });
    }

})(jQuery);




function showError_(_msg, _title = "Oops!") {
    swal({
        type: 'error',
        title: _title,
        text: _msg
    });
}


function success(_title = "Info!", _med) {
    swal(_title, _med + "</br>", "success");
}


function showError(num, _title = "Oops!") {
    var msg;
    if (num == 1) {
        msg = "Var v�nlig och fyll i alla f�lten!";
    } else if (num == 2) {
        msg = "L�senorden matchar inte!";
    } else if (num == 3) {
        msg = "Det finns ett projekt redan registerat med det h�r namnet!";
    } else if (num == 4) {
        msg = "Det finns ett konto redan registerat med det h�r Email!";

    } else if (num == 20) {
        msg = "V�nligen fyll i alla f�lten.";
    } else if (num == 21) {
        msg = "Du har angett fel l�senord!";
    } else if (num == 22) {
        msg = "Det nya L�senordet och bekr�ftelsen matchar inte!";
    } else if (num == 23) {
        msg = "Du har angett fel Anv�ndarnamn eller L�senord!";
    } else if (num == 24) {
        msg = "Du har angtt en felaktig aktiveringskod, var v�nlig och kolla igen p� din inbox";
    }
    showError_(msg, _title);
}



function SuccesMed(num, _title = "Info!") {
    var msg;
    if (num == 1) {
        msg = "Projektet har lagts upp!";
    } else if (num == 2) {
        msg = "L�senorden matchar inte!";
    } else if (num == 3) {
        msg = "Det finns ett projekt redan registerat med det h�r namnet!";
    } else if (num == 4) {
        msg = "Det finns ett konto redan registerat med det h�r Email!";

    } else if (num == 20) {
        msg = "V�nligen fyll i alla f�lten.";
    } else if (num == 21) {
        msg = "Du har angett fel l�senord!";
    } else if (num == 22) {
        msg = "Det nya L�senordet och bekr�ftelsen matchar inte!";
    } else if (num == 23) {
        msg = "Du har angett fel Anv�ndarnamn eller L�senord!";
    } else if (num == 24) {
        msg = "Du har angtt en felaktig aktiveringskod, var v�nlig och kolla igen p� din inbox";
    }
    SuccesMed(_med, _title);
}