"use strict";

(( () => {

    const burst = new mojs.Burst({
        left: 0, top: 0,
        degree:   180,
        angle:    90,
        radius:   { 10: 25 },
        count:    5,
        children: {
            shape:        'circle',
            radius:       7,
            radiusY:      0,
            scale:        1,
            strokeDasharray: '100%',
            strokeDashoffset: { '-100%' : '100%' },
            stroke:       '#F9DD5E' ,
            easing:       'linear.none',
            duration:     600
        }
    });

    document.addEventListener( 'click', function (e) {
        burst
            .tune({ x: e.pageX, y: e.pageY })
            .replay();
    } );


}))();
