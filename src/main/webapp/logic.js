"use strict";

(( () => {
    //
    // let deleteAlert = (e) => {
    //     e.preventDefault();
    //     let result = confirm("Are you sure you want to delete this?");
    //     if(result) {
    //         this.submit();
    //     }
    // };

    $('.deleteForm').on('submit', function(e) {
        e.preventDefault();
        let result = confirm("Are you sure you want to delete this?");
        if(result) {
            this.submit();
        }
    });

}))();
