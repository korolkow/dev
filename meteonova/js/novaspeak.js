function mnovaAudio(par) {
 	this.player_button = par.player_button || null;
	this.jessie = par.jessie;
	this.smileWink = {timeout: null, smileTimeout: null};
	this.init = function() {
		if (navigator.userAgent.match(/(ipad|iphone|ipod|android)/i) || 
			navigator.userAgent.match(/(mobile|mini|pre\/|xoom)/i)  ||
			!!document.createElement('audio').canPlayType) 
			this.player = new _html5Audio(par.jessie);
		else this.player = new _dancer(par.js || '.', par.jessie);	
		var _this = this;						
		this.player.init(function() {_this.onEnd(_this)});
		this.play = function(){_this.player._play(_this)};
		this.pause = function(){_this.player._pause()};
		this.replay = function(){_this.player._replay()};
		this.stop = function(){_this.player._stop()};
		this.playSmileWink();	 
	}
	this._load = function(media_file) {
		if(this.player.is_play) {
			this.stop();
			this.player._load(media_file);
			this.player_button.trigger('click');
		}
		else this.player._load(media_file); 	
	}
	this.onEnd = function(_this) {
		_this.player_button.children('span').removeClass().addClass('replay');
		_this.playSmileWink();	
	}	

	this.player_button.on('click tap', $.proxy(function() {
		this.player.is_play = !this.player.is_play;	
  	if (this.player.is_play) {
  		this.stopSmileWink();
  		this.play();
  		//this.player_button.children('span').removeClass().addClass('pause');
  	}
		else {
			this.pause();
			this.jessie.removeClass().addClass('jessie');
			this.player_button.children('span').removeClass();
			this.playSmileWink();		
		}					
	}, this));
	
	this.playSmileWink = function() {
		this.stopSmileWink();		
		var	context = this;		
		this.smileWink.timeout = setInterval(function(){
			context.jessie.removeClass().addClass('jessie wink_1');
			setTimeout(function(){
				context.jessie.addClass('wink_2');
				setTimeout(function(){
					context.jessie.addClass('wink_3');
					setTimeout(function(){
						context.jessie.removeClass('wink_3').addClass('wink_2');
						setTimeout(function(){
							context.jessie.removeClass('wink_2').addClass('wink_1');
							setTimeout(function(){
								context.jessie.removeClass().addClass('jessie');
								context.smileWink.smileTimeout = setTimeout(function (){
									context.jessie.removeClass().addClass('jessie smile_1');
									setTimeout(function(){
										context.jessie.removeClass('smile_1').addClass('smile_2');
										setTimeout(function(){
											context.jessie.removeClass('smile_2').addClass('smile_1');
											setTimeout(function(){context.jessie.removeClass().addClass('jessie')}, 50);	
										},1000);
									}, 70);
								}, 15000);
							}, 70);	
						}, 70); 
					}, 500);
				}, 70);				
			}, 70);	
		}, 10000);
	}		
	
	this.stopSmileWink = function() {
		clearInterval(this.smileWink.timeout);
		this.smileWink.timeout = null;
		clearTimeout(this.smileWink.smileTimeout);
		this.smileWink.smileTimeout = null; 		
	}
	
	this.init();
}

function _html5Audio(jessie) {
	this.is_play = false;
	this.html5Audio = document.createElement('audio');
	this.html5Audio.setAttribute('id', 'audio');
	this.mediaFile = null;
	this.interval = null;
	this.jessie = jessie;
	this.onEnd = null;
	this.getMediaFileParams = function() {
		var supports_media = function(mimetype, container) {
			var elem = container;
			if(typeof elem.canPlayType == 'function'){
				var playable = elem.canPlayType(mimetype);
				if((playable.toLowerCase() == 'maybe')||(playable.toLowerCase() == 'probably'))
					return true;
			}
			return false;
		}		
		var supports = {mp3: supports_media('audio/mpeg', this.html5Audio), ogg: supports_media('audio/ogg', this.html5Audio)};
		if (!supports.mp3 && !supports.ogg) return {ext: null, type: null, file: null};
		if (!supports.mp3 && supports.ogg) return {ext: '.ogg', type: 'audio/ogg', file: null};
		else return {ext: '.mp3', type: 'audio/mpeg', file: null};	
	}
	this.init = function(onEnd) {
		//log('_html5Audio: Init start');
		this.mediaFile = this.getMediaFileParams();
		this.html5Audio.setAttribute('type', this.mediaFile.type);
		this.onEnd = onEnd;
		var _this = this;
		this.html5Audio.addEventListener('ended', function() {	
				clearInterval(_this.interval);
				_this.interval = null;			
				_this.is_play = false;				
				if (_this.onEnd) _this.onEnd();
			}, false
		);
	}
	this._load = function(media_file) {
		this.mediaFile.file = media_file + this.mediaFile.ext+(typeof geosuffix !='undefined'?geosuffix:'');
	}
	this._play = function(parentClass) {
		if (this.html5Audio.getAttribute('src') != this.mediaFile.file) {
			parentClass.player_button.children('span').removeClass().addClass('preloader'); 
			this.html5Audio.setAttribute('src', this.mediaFile.file);
			this.html5Audio.load();
			var _this = this;
			this.html5Audio.addEventListener('canplay', function() {
				play(_this, parentClass);				
			});
		}	
		else play(this, parentClass);
		
		function play(obj, parentClass) {
			obj.html5Audio.play();
			var min = 100, max = 300;
			obj.html5Audio.addEventListener('playing', function() {		
				clearInterval(obj.interval);
				obj.interval = null;		
				obj.interval = setInterval(function() {
					var rand = min - 0.5 + Math.random()*(max-min+1);
					rand = Math.round(rand);
					obj.jessie.removeClass().addClass('jessie talk'); 
					setTimeout(function(){obj.jessie.removeClass().addClass('jessie');}, rand);
				}, 200);
				parentClass.player_button.children('span').removeClass().addClass('pause');
			});			
		}
	}
	this._pause = function() {
		clearInterval(this.interval);
		this.interval = null;		
		this.is_play = false;
		this.html5Audio.pause();
	}
	this._replay = function() {
		this._pause();
		this.html5Audio.currentTime = 0;
		this.is_play = true;
		this._play();
	}
	this._stop = function() {
		this._pause();
		if (this.html5Audio.currentTime>0) {
			this.html5Audio.currentTime = 0;
			if (this.onEnd) this.onEnd();
		}
	}
}

function _dancer(url, jessie) {
	this.is_play = false;
	this.dancer = null;
	this.jessie = jessie;
	this.checkEndInterval = null;
	this.modules = [
		{url: url+'/dancer.js', isLoaded: false},
		{url: url+'/support.js', isLoaded: false},
		{url: url+'/kick.js', isLoaded: false},
		{url: url+'/adapterWebkit.js', isLoaded: false},
		{url: url+'/adapterMoz.js', isLoaded: false},
		{url: url+'/adapterFlash.js', isLoaded: false},
		{url: url+'/lib/fft.js', isLoaded: false},
		{url: url+'/lib/flash_detect.js', isLoaded: false}
	];
	this.init = function(onEnd) {
		this.onEnd = onEnd;
		var _this = this;	
		//this.loadJS(this.modules, function() {
			Dancer.setOptions({
				flashSWF : url+'/lib/soundmanager2.swf',
				flashJS  : url+'/lib/soundmanager2.js'
			});
			_this.dancer = new Dancer();
		  	kick = _this.dancer.createKick({
		  	frequency: [1, 10],
		  	threshold: 0.01,
		    onKick: function () {
		    	jessie.removeClass().addClass('jessie talk');
		    },
		    offKick: function () {
		    	jessie.removeClass().addClass('jessie');
		    }
		  }).on();		
		//});
	}
	this.loadJS = function(modules, callback) {
		var context = this;
		for (var i = 0; i < modules.length; i++) {
			(function () {
				var j = i;
				if (modules[j].isLoaded == false) {;
					var xhr = new XMLHttpRequest();
					xhr.open('GET', modules[j].url, false);
					xhr.send();
					xhr.onload = function() {
						if (4 == this.readyState && 200 == this.status) {
							context.appendScript(this.responseText);
							modules[j].isLoaded = true;
							//for (var k = 0; k < modules.length; k++) {
								//if (modules[k].isLoaded == false) break;
								//if(callback) callback();
							//}
						}
					}
				}
			})();	
		}
	}
  this.appendScript = function(data) {     
	  var head = document.getElementsByTagName('head');
	  if (head && head[0]){
	      var script = document.createElement('script');
	      var text = document.createTextNode(data);
	      script.type= 'text/javascript'
	      try{
	      	script.appendChild(text);
	      }catch ($e){
	      	script.text = data;
	      }
	      head[0].appendChild(script);
	  }
	  return this;
  }	
	this._load = function(media_file) {  
		this.dancer.load({ src: media_file, codecs: [ 'mp3' ]});
	}
  
	this._play = function(parentClass) {
		this.dancer.play();
		kick.on();
		var _this = this;
  		clearInterval(this.checkEndInterval);
  		this.checkEndInterval = null;		
  		this.checkEndInterval = setInterval(function() {
	  		if (_this.dancer.getTime() == _this.dancer.audioAdapter.audio.duration || _this.dancer.getTime()*1000 == _this.dancer.audioAdapter.audio.duration){
		  		clearInterval(_this.checkEndInterval);
					_this.checkEndInterval = null;  			
	  			_this._stop();
	  		}
  		}, 250);
		parentClass.player_button.children('span').removeClass().addClass('pause');
	}
	this._pause = function() {
		this.dancer.pause();
		this.is_play = false;
		kick.off();
	}
	this._replay = function() {
		this.dancer.replay();
		this.is_play = true;
		this._play();
	}	
	this._stop = function() {
		this._pause();
		if (this.onEnd) this.onEnd();
	}
}

var novaidle = function() {
}