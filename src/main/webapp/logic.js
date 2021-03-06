"use strict";

(( () => {
    // This deletes an ad.
    $('.deleteForm').on('submit', function(e) {
        e.preventDefault();
        let result = confirm("Are you sure you want to delete this?");
        if(result) {
            this.submit();
        }
    });

    // This edits an ad.
    $('.editForm').on('submit', function() {
        this.submit();
    });

    $('.splashLi').animate({left: '+=160.5%'}, 1000);

}))();
