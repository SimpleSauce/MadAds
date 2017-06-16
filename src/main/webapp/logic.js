"use strict";

(( () => {

    $('.deleteForm').on('submit', function(e) {
        e.preventDefault();
        let result = confirm("Are you sure you want to delete this?");
        if(result) {
            this.submit();
        }
    });

    $('.editForm').on('submit', function(e) {
        // editClass <- be careful witdat
        this.submit();

    });

    $('.splashLi').animate({left: '+=160.5%'}, 1000);



}))();
