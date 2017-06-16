"use strict";

(( () => {

    const burst = new mojs.Burst({
        left: 0, top: 0,
        degree:   360,
        radius:   5,
        count:    1,
        children: {
            radius:   { 12: 0 },
            shape:        'circle',
            fill: '#FC354C',
            scale:        1,
            easing:       'linear.none',
            duration:     200
        }
    });

    document.addEventListener( 'click', function (e) {
        burst
            .tune({ x: e.pageX, y: e.pageY })
            .replay();
    } );


}))();
