$(document).ready(function(){
	$('.partner-slider').owlCarousel({
        loop: true,
        autoplay: true,
        items: 5,
        margin: 30,
        dots: false,
        nav: true,
        navText: ["<i class='fa fa-chevron-left' >", "<i class='fa fa-chevron-right'>"],
        responsive: {
            0: {
                items: 3,
                center: true
            },
            480: {
                items: 3
            },
            678: {
                items: 4
            },
            960: {
                items: 5
            }
        }
    });
});