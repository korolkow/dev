var Scroll = function(par) {
	this.scrollObj = document.getElementById(par.scrollObjId);
	this.delta = par.delta;
	this.min_delta = par.delta;
	this.step = par.step;
	this.requestId = 0;
	this.init = function(par) {
		var _this = this;
		if ( !window.requestAnimationFrame ) {
		  window.requestAnimationFrame = ( function() {
		    return window.webkitRequestAnimationFrame ||
		    window.mozRequestAnimationFrame ||
		    window.oRequestAnimationFrame ||
		    window.msRequestAnimationFrame ||
		    function( /* function FrameRequestCallback */ callback, /* DOMElement Element */ element ) {
		      var requestId = window.setTimeout(callback, 1000/60);
		      return requestId;
		    };
		  })();
    	if (!window.cancelAnimationFrame)
        window.cancelAnimationFrame = function(id) {
            clearTimeout(id);
        };		  
		}
		this.isTouch = this.detectTouch();
		if (this.isTouch) this.step = this.step.touch;
		else this.step = this.step.normal; 
		this.callbacks = {left: par.doLeft, right: par.doRight, top: par.doTop, bottom: par.doBottom};	
		this.bindEvents(par.leftBtns, par.doLeft, 0);
		this.bindEvents(par.rightBtns, par.doRight, 1);
		this.bindEvents(par.topBtns, par.doTop, 0);
		this.bindEvents(par.bottomBtns, par.doBottom, 1);
		this.bindEventScrollObj({left: par.doLeft, right: par.doRight, top: par.doTop, bottom: par.doBottom});
	}		
	this.bindEvents = function(btns, callback, _forward) {
		var _this = this;
		btns = this.getBnts(btns);
		for (var i=0; i < btns.length; i++) {
			if (this.isTouch) {
				btns[i].onclick = function(evt) {
					//evt.preventDefault();
					cancelAnimationFrame(_this.requestId);
					_this.delta = par.doLeft || par.doRigh?(_this.scrollObj.offsetWidth-1):_this.scrollObj.offsetHeight;
					var delta = 0;
					_this.animate(delta, _this.step, callback);				
				};							
			}	
			else {
				btns[i].onmouseover = function() {
					cancelAnimationFrame(_this.requestId);
					var pos = par.doLeft || par.doRigh?_this.scrollObj.scrollLeft:_this.scrollObj.scrollTop;
					var l = par.doLeft || par.doRigh?_this.scrollObj.scrollWidth:_this.scrollObj.scrollHeight;
					_this.delta = _forward == 0?pos:(l - pos);
					_this.animate(0, _this.step, callback);
				};
				btns[i].onmouseout = function() {
					cancelAnimationFrame(_this.requestId);
					_this.delta = _this.min_delta;
					var pos = par.doLeft || par.doRigh?_this.scrollObj.scrollLeft:_this.scrollObj.scrollTop;
					var delta = (_forward == 1?pos % _this.delta:(_this.delta - pos % _this.delta));
					_this.animate(delta, _this.step, callback);
				}
			}		
		}		
	}
	this.bindEventScrollObj = function(actions) {
		var _this = this;
		var touchPos = {
			touchstart: {x: 0, y: 0, _scroll: {_left: 0}},
			touchmove: {x: 0, y: 0}
		};
		if (this.isTouch) {
			this.scrollObj.addEventListener("touchstart",  function(evt) {
				//evt.preventDefault();
				cancelAnimationFrame(_this.requestId);				
				var touch = evt.touches[0];
				touchPos.touchstart = {x: touch.pageX, y: touch.pageY, _scroll:{_left: _this.scrollObj.scrollLeft}};
				touchPos.touchmove = {x: 0, y: 0};
			}, false);
			
			this.scrollObj.addEventListener('touchmove', function(evt) {
				evt.preventDefault();
				cancelAnimationFrame(_this.requestId);			
				var touch = evt.touches[0];
				if (touchPos.touchmove.x != 0) {
					var callback = touch.pageX < touchPos.touchmove.x?actions.right:actions.left;
					var delta = Math.abs(touch.pageX-touchPos.touchmove.x);
					touchPos.touchmove = {x: touch.pageX, y: touch.pageY};
					_this.delta = _this.min_delta;
					callback(_this.scrollObj, delta);
				}
				else touchPos.touchmove = {x: touch.pageX, y: touch.pageY};				
			}, false);
			
			this.scrollObj.addEventListener('touchend', function(evt) {
				evt.preventDefault();	
				cancelAnimationFrame(_this.requestId);
				var _forward = touchPos.touchmove.x < touchPos.touchstart.x?1:0; 							
				var callback = touchPos.touchmove.x < touchPos.touchstart.x?actions.right:actions.left;
				var delta = Math.abs(touchPos.touchstart._scroll._left - _this.scrollObj.scrollLeft);
				var mod = delta<_this.delta?delta:delta%_this.delta;   
				_this.animate(mod, _this.step*2, callback);
			}, false);
		}
		else {
  			//_this.addHandler(_this.scrollObj, 'DOMMouseScroll', _this.wheel);
  			//_this.addHandler(_this.scrollObj, 'mousewheel', _this.wheel);
		}
	}
	this.wheel = function(evt, context) {
		evt = evt || window.event;
        var delta = Math.max(-1, Math.min(1, (evt.wheelDelta || -evt.detail)));
    	console.log(delta);
    	cancelAnimationFrame(context.requestId);
    	if (context.callbacks.left || context.callbacks.right) var callback = (delta>=0?context.callbacks.left:context.callbacks.right);
    	//if (context.callbacks.bottom || context.callbacks.top) var callback = (delta>=0?context.callbacks.top:context.callbacks.bottom);
		//callback(context.scrollObj, context.min_delta);
	}
	this.jump = function(curSegment, newSegment) {
		if (curSegment == newSegment) return;
		cancelAnimationFrame(this.requestId);
		var callback = par.doRight;
		this.delta = Math.abs(newSegment*this.scrollObj.offsetWidth - this.scrollObj.scrollLeft);
		if (newSegment < curSegment) callback = par.doLeft;
		var step = 25*Math.abs(newSegment - curSegment);
		this.animate(0, step, callback, newSegment);
	}
	this.getBnts = function(btns) {
		var a = [];
		if (btns)
			for (var i = 0; i<btns.length; i++) {
				a[i] = 	document.getElementById(btns[i]);
			}
		return a;
	}
	this.animate = function(delta, defStep, callback, n) {
		var _this = this;
		if (delta<this.delta) {
			var step = defStep;
 			if (delta + defStep>=this.delta) step = this.delta -	delta;
 			callback(this.scrollObj, step, n);
 			delta += defStep;
 			this.requestId = requestAnimationFrame(function(){_this.animate(delta, defStep, callback, n)});
		}
	}
	this.detectTouch = function() {
		var isTouch = false;
		if ("ontouchstart" in window || navigator.msMaxTouchPoints) isTouch = true;
		return isTouch;
	}
	this.addHandler = function(object, event, handler) {
		var _this = this;
    if (object.addEventListener) {
      object.addEventListener(event, function(event){handler(event, _this)}, false);
    }
    else if (object.attachEvent) {
      object.attachEvent('on' + event, handler);
    }
	}
	this.addHandler = function(object, event, handler) {
		var _this = this;
    if (object.addEventListener) {
      object.addEventListener(event, function(event){handler(event, _this)}, false);
    }
    else if (object.attachEvent) {
      object.attachEvent('on' + event, handler);
    } 
	}	
	this.init(par);
}