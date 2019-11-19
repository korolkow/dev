var svgChart = function (opt) {
    this.opt = opt;
    this.smoothing = 0.2;
    this.padding_top = 0; //отступ сверху для заголовка
    this.draw = function draw() {
        var context = this;
        var points = [],
            h = this.opt.svg.height(),
            content = '',
            w = 0,
            circleСontent = '',
            delta = 0;
        if (this.opt.xaxis) {
            w = Math.round(this.opt.svg.parent().width() / this.opt.xaxis.values.length);
            $.each(this.opt.xaxis.values, function (index, value) {
                if (context.opt.xaxis.grid) {
                    content += '<line x1="' + (w * index + 5) + '" y1=" 20" x2="' + (w * index + 5) + '" y2="' + h + '" stroke="' + context.opt.xaxis.grid.color + '" stroke-dasharray="4" />';
                }
                if (index % 3 === 0) {
                    content += '<text x = "' + (w * index + 5) + '" y = "' + h + '" fill = "' + context.opt.xaxis.color + '" >' + value + '</text>';
                }
            });
            content += '<line x1="' + (w  + 5) + '" y1="'+ (h - context.padding_top) + '" x2="' + this.opt.svg.parent().width() + '" y2="' + (h - context.padding_top) + '" stroke="' + context.opt.xaxis.grid.color + '" />';
            h =  h - 20 - context.padding_top;
        }

        $.each(this.opt.datasets, function (index, value) {
            context.maxVal = -10000;
            context.minVal = 10000;
            context.maxPrecipVal = -1000;
            $.each(value.dataset, function (i, val) {
                $.each(val.values, function (j, v) {
                    if (typeof(v) === 'object') v = v.data;
                    if (val.type !== 'rect' && val.type !== 'wind_direction') {
                        if (v >= context.maxVal) context.maxVal = v;
                        if (v <= context.minVal) context.minVal = v;
                    }
                    else {
                        if (v >= context.maxPrecipVal) context.maxPrecipVal = Math.floor(v);
                    }
                });
            });
    
            context.minVal -= 2;
            context.maxVal += 2;
            if (context.maxPrecipVal === 0) context.maxPrecipVal = 1;


            value.pc_h = value.pc_h ? value.pc_h : 1;
            var height = value.height ? h * value.height : h * value.pc_h;

            $.each(value.dataset, function (i, val) {

                w = Math.round(context.opt.svg.parent().width() / (val.values.length - (val.type !== 'wind_direction'?2:0)));

                if (val.type === 'rect') {
                    context.minVal = 0;
                    context.maxVal = context.maxPrecipVal;
                }

                $.each(val.values, function (j, v) {

                    height = height > (h * value.pc_h + delta) ? (h * value.pc_h + delta) : height;

                    var color = val.color;
                    if (typeof v === 'object') {
                        color = v.color ? v.color : color;
                        v = v.data;
                    }

                    var x = w * j + 5,
                        y = (h * value.pc_h + delta) -  height  * (1 - (context.maxVal - v) / (context.maxVal  - context.minVal)) + context.padding_top;

                    if (val.type === 'rect') {
                        x = w * j + 5 + 1;
                        var plotHeight =  (h * value.pc_h + delta) - y + context.padding_top;
                        plotHeight = plotHeight < 0 ? 0 : plotHeight;

                        content += '<rect class="graph-rect graph-rect-' + index + ' ' + (value.show === false?'':'show') + '" x="' + x + '" y="' +
                            y + '" width="' + (w-2) + '" height="' + plotHeight + '"style="fill:' + color +
                            '" data-toggle="tooltip" data-placement="top" data-html="true" title="' +
                            (val.tooltips ? val.tooltips.dataset[ i ] : '') + '"/>';
                    }
                    else if (val.type === 'wind_direction') {
                        x = w * j + w/2;
                        if (v !== -1)
                            content += val.path.replace('%angle%', v).replace('%x%', (x - 6)).replace('%class%', 'graph-path graph-path-' +
                                index + ' ' + (value.show === false?'':'show'));
                    }
                    else {
                        if (j === 0) x = 0;
                        else x = w * (j-1) + w/2;
                        if (j === 0) points.push([ x, h + context.padding_top]);
                        points.push([ x, y ]);
                        if (j === val.values.length-1) points.push([ x, h + context.padding_top ]);

                        if (val.circle &&  val.circle.show === true) {
                            circleСontent += '<circle class="graph-circle graph-circle-' + index + ' ' +
                                (value.show === false ? '' : 'show') + '" stroke="' +
                                val.circle.color + '" stroke-width="2" fill="' + (val.circle.fill || '#ffffff') +
                                '" cx="' + x +
                                '" cy="' + y +
                                '" r="3" data-toggle="tooltip" data-placement="top" data-html="true" title="' +
                                (val.tooltips ? val.tooltips.dataset[ j ] : '') +
                                '" data-original-title="Подсказка к точке" />';
                        }
                    }
                });
                if (value.type !== 'rect' && value.type !== 'path' && points.length > 0) {
                    content += context.svgPath(points, context.bezierCommand, index, val, value.show);
                    points = [];
                }
            });
            if (value.title) {
                content += '<text class="graph-title graph-title-' + index + ' ' + (value.show === false?'':'show') + '" x = "5" y = "' + (delta + 10) +
                    '" fill = "' + value.title.color + '" >' + value.title.descr + '</text>';
            }

            if (value.yaxis) {
                var count = 4;
                var step = 1 / (context.maxVal - context.minVal > 1 ? ((context.maxVal - context.minVal) / count) : count);

                for (var i = 0; i <= count; i++) {
                    var y = h * value.pc_h + delta - height  * i * step + context.padding_top;
                    if (y > context.padding_top) {
                        content += '<text class="graph-title graph-title-' + index + ' ' +
                            (value.show === false ? '' : 'show') + '" x = "0" ' +
                            'y = "' + ((h * value.pc_h + delta) - height * i * step + context.padding_top) + '" ' +
                            'fill = "' + value.yaxis.color + '" >' +
                            (context.minVal + (context.maxVal - context.minVal) * i * step) + '</text>';
                    }
                }
            }

            if (value.height < h) delta = delta +  Math.round(Math.round(h * value.pc_h));

        });
        this.opt.svg.html(content + circleСontent);
    }
    
    this.line = function(pointA, pointB) {
        var lengthX = pointB[0] - pointA[0];
        var lengthY = pointB[1] - pointA[1];
        return {
            length: Math.sqrt(Math.pow(lengthX, 2) + Math.pow(lengthY, 2)),
            angle: Math.atan2(lengthY, lengthX)
        }
    };

    this.controlPoint = function(current, previous, next, reverse) {
    
        // When 'current' is the first or last point of the array
        // 'previous' or 'next' don't exist.
        // Replace with 'current'
        var p = previous || current;
        var n = next || current;
    
        // Properties of the opposed-line
        var o = this.line(p, n);
    
        // If is end-control-point, add PI to the angle to go backward
        var angle = o.angle + (reverse ? Math.PI : 0);
        var length = o.length * this.smoothing;
    
        // The control point position is relative to the current point
        var x = current[0] + Math.cos(angle) * length;
        var y = current[1] + Math.sin(angle) * length;
        return [x, y];
    };

    this.bezierCommand = function(context, point, i, a) {
    
        // start control point
        var cps = context.controlPoint(a[i - 1], a[i - 2], point)
    
        // end control point
        var cpe = context.controlPoint(point, a[i - 1], a[i + 1], true);
        return "C " + cps[0] + "," + cps[1] + " " + cpe[0] + "," + cpe[1] + " " + point[0] + "," + point[1];
    };

    this.svgPath = function (points, command, index, value, isShow) {
        // build the d attributes by looping over the points
        var context = this;
        var content = '';

        var d = points.reduce(function (acc, point, i, a) {
            return i === 0 ? ('M ' + point[0] + ',' + point[1] +' L '+ point[0] + ',' + point[1]) : acc + (i === 1 || i === (points.length-1) ? ' L ' + point[0] + ',' + point[1] : (' '+ command(context, point, i, a)));
        }, '');

        if (value.fill)  {
            content =  '<path class="graph-line graph-line-' + index + ' ' + (isShow === false ? '' : 'show') +
                '" d="' + d + '" stroke-width="2" ' +
                'fill="' + value.fill.color + '" fill-opacity="' + value.fill.opacity + '" />';
        }

        points.shift();
        points.pop();

        var d = points.reduce(function (acc, point, i, a) { 
            return i === 0 ? 'M ' + point[0] + ',' + point[1] : acc + command(context, point, i, a);
        }, '');

        return content + '<path class="graph-line graph-line-' + index + ' ' + (isShow === false ? '' : 'show') +
            '" d="' + d + '" stroke-width="2" ' +
        'fill="none" stroke-width="2" stroke=' + value.color + ' />';
    };
};