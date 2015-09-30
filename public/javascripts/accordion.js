$(document).ready(function() {
    $('.accordion').on('click', '.accordion-control', function (e) { // When clicked
        e.preventDefault();                    // Prevent default action of button
//closes first panel when opening next panel
        $('body').find('.accordion-panel').slideUp();
        $(this)                                // Get the element the user clicked on
            .next('.accordion-panel')            // Select following panel
            .not(':animated')                    // If it is not currently animating
            .slideToggle();                     // Use slide toggle to show or hide it
    });
});

