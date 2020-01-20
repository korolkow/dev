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
            drag_content= opt.drag_content;

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

            opt.btn_right.on("click", function(e) {
                e.preventDefault();
                var scrollLeft = o.pos + $this.width() - opt.delta;
                $this.stop().animate({
                    scrollLeft: scrollLeft
                }, 500);
            });

            opt.btn_left.on("click", function(e) {
                e.preventDefault();
                var w = $this.width() - opt.delta;
                var scrollLeft = o.pos - w;
                if (o.pos/w !== Math.floor(o.pos/w))
                    scrollLeft = w * Math.floor(o.pos/w);
                $this.stop().animate({
                    scrollLeft: scrollLeft
                }, 500);
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
        }();
    };
})(jQuery);