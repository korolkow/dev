(function($) {
    $.fn.jump = function(countStep, delta, callback) {
        var $this = this;
        return function() {
            var scrollLeft = ($this.width() - delta) * countStep;
            $this.stop().animate({
                scrollLeft: scrollLeft
            }, 500, function() {
                if (callback) callback();
            });
        }();
    }

    $.fn.drags = function(opt) {
        var $this = $(this), self = this,
            o = {pos: 0, toRight: false, toLeft: false},
            bScroll = true,
            opt = opt,
            drag_content= opt.drag_content,
            timeout = 0,
            delayTimeout = 0,
            spd = 10;

        return function() {
            $this.off().scroll(function(){
                var leftPos = $this.scrollLeft();

                if (leftPos > o.pos) {
                    o.toRight = true;
                    o.toLeft = !o.toRight;
                }
                else {
                    o.toLeft = true;
                    o.toRight = !o.toLeft;
                }

                o.pos = leftPos;

                checkLeftArrow();
                checkRightArrow();

                var deltaLeft = 0;
                if (o.toRight) {
                    deltaLeft = o.pos;
                }
                else {
                    var w = $this.width() - opt.delta;
                    deltaLeft = o.pos;
                    if (o.pos/w !== Math.floor(o.pos/w))
                        deltaLeft = w * Math.floor(o.pos/w);
                }

                if (opt.callback) opt.callback(deltaLeft);
            });


            $this.mousewheel(function(e, delta) {
                this.scrollLeft -= (delta * 6);
                e.preventDefault();
            });

            function checkRightArrow() {
                if (o.pos > drag_content.width()-$this.width()-opt.delta) opt.btn_right.hide();
                if (o.pos > opt.delta-1) opt.btn_left.show();
            }

            function checkLeftArrow() {
                if (o.pos < drag_content.width()-$this.width()-opt.delta) opt.btn_right.show();
                if (o.pos < opt.delta-1) opt.btn_left.hide();
            };

            function is_touch_device() {
                var isTouch = false;
                if ("ontouchstart" in window || navigator.msMaxTouchPoints) isTouch = true;
                return isTouch;
            }

            opt.btn_right
                .on("click", function(e) {
                    e.preventDefault();
                    clearTimeout(timeout);
                    clearTimeout(delayTimeout);
                    var scrollLeft = o.pos + $this.width() - opt.delta;
                    $this.stop().animate({
                        scrollLeft: opt.delta * Math.ceil(scrollLeft/opt.delta)
                    }, 500);
                })
                .on('mouseover', function(e) {
                    e.preventDefault();
                    spd = 10;
                    delayTimeout = setTimeout(function() {
                        timeout = setInterval(function () {
                            var scrollLeft = o.pos + spd / 10;
                            spd++;
                            if (spd > 150) spd = 150;
                            $this.stop().animate({
                                scrollLeft: scrollLeft
                            }, 20);
                        }, 20)
                    }, 2000);

                })
                .on('mouseout', function(e){
                    e.preventDefault();
                    clearTimeout(timeout);
                    clearTimeout(delayTimeout);
                    $this.stop().animate({
                        scrollLeft: opt.delta * Math.ceil(o.pos/opt.delta)
                    }, 20);

                });

            opt.btn_left
                .on("click", function(e) {
                    e.preventDefault();
                    clearTimeout(timeout);
                    clearTimeout(delayTimeout);
                    var w = $this.width() - opt.delta;
                    var scrollLeft = o.pos - w;
                    if (o.pos/w !== Math.floor(o.pos/w))
                        scrollLeft = w * Math.floor(o.pos/w);
                    $this.stop().animate({
                        scrollLeft: opt.delta * Math.floor(scrollLeft/opt.delta)
                    }, 500);
                })
                .on('mouseover', function(e){
                    e.preventDefault();
                    spd = 10;
                    delayTimeout = setTimeout(function() {
                        timeout = setInterval(function () {
                            var scrollLeft = o.pos - spd / 10;
                            spd++;
                            if (spd > 150) spd = 150;
                            $this.stop().animate({
                                scrollLeft: scrollLeft
                            }, 20);
                        }, 20)
                    }, 2000);

                })
                .on('mouseout', function(e){
                    e.preventDefault();
                    clearTimeout(timeout);
                    clearTimeout(delayTimeout);
                    $this.stop().animate({
                        scrollLeft: opt.delta * Math.floor(o.pos/opt.delta)
                    }, 20);
                });
        }();
    };
})(jQuery);