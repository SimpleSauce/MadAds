"use strict";

(( () => {
    // This deletes an ad
    $('.deleteForm').on('submit', function(e) {
        e.preventDefault();
        let result = confirm("Are you sure you want to delete this?");
        if(result) {
            this.submit();
        }
    });

    // This edits an ad
    $('.editForm').on('submit', function() {
        this.submit();
    });

    // $('.clickableItem').on('click'), function() {
    //
    // };













    // This moves the list items on the Splash page
    $('.splashLi').animate({left: '+=160.5%'}, 1000);

    // This makes the down arrow bounce on register
  //  $("#down-arrow-bounce").effect("bounce", { times:20 }, 10000);

    // $(".adWithBigFont").mouseenter(function() {
    //     $(this).css("color", "#F52").css("border-radius", "3px");
    // }).mouseleave(function() {
    //     $(this).css("color", "00F").css("border-radius", "0px");
    // });

}))();
