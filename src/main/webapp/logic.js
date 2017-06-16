"use strict";

(( () => {

    $('.deleteForm').on('submit', function(e) {
        e.preventDefault();
        let result = confirm("Are you sure you want to delete this?");
        if(result) {
            this.submit();
        }
    });

    $('.editForm').on('submit', function() {
        this.submit();
    });

    //TODO login page will make cursor focus on login input

    $('.splashLi').animate({left: '+=160.5%'}, 1000);

}))();
