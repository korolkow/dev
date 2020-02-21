var formatKML = new ol.format.KML({extractStyles: true});

var Map = function(opt) { 
	this.map = null;
	this.layers = [];
	this.visibleLayer = opt.visibleLayer || 0;
	this.opt = opt;
	this.anim_interval = null;
	this.anim_timeout = null;
	this.loadLayers = null;
	this.timeout = null;
	this.req = 0;
	this.req_abort = null;
	this.geolocation = null;
	this.isMapMove = false;
	this.ghostZoom = opt.zoom;
	this.dataLabel = 0;
	this.mousePositionControl = opt.mousePositionControl;
	this.render = function() {
		var view = new ol.View({
	        center: ol.proj.transform([opt.lng, opt.lat], 'EPSG:4326', 'EPSG:3857'),
	        zoom: opt.zoom,
	        minZoom: opt.minZoom || opt.zoom,
	        maxZoom: opt.maxZoom || opt.zoom
		});

	    this.map = new ol.Map({
	      layers: [new ol.layer.Tile({
	          source: new ol.source.OSM()
	        })],
          controls: (opt.minZoom?[new ol.control.Zoom()]:[]),
	      target: opt.target,
	      units: "m",
	      view: view,
	      overlays: opt.overlays?opt.overlays: [],
	      interactions: ol.interaction.defaults({mouseWheelZoom: (opt.mouseWheelZoom===true?true:false)})
	    });
	    this.map.addControl(new ol.control.Attribution({collapsible: false}));
        if (typeof this.mousePositionControl !== 'undefined')
        	this.map.addControl(this.mousePositionControl);
	    var self = this;    

		/*var geolocation = new ol.Geolocation({
        	projection: view.getProjection(),
        	tracking: true
      	});
      	geolocation.on('change', function(e){
			self.map.getView().setCenter(geolocation.getPosition());      		

      	});*/

	    if (opt.timeline) { 
	    	opt.timeline.startAnim = function() {
	    		if (typeof __gaTracker != 'undefined') __gaTracker('send', 'event', 'map', 'start:animation', opt.type);	    	
		        self.anim_interval = setInterval(function() {
		          if (self.layers[self.visibleLayer].req != 0) {
 					return;
		          }
		          self.layers[self.layers.length-1].vector.setVisible(false);
		          $('.time-interval').removeClass('selected');
		          $('.time-interval').eq(self.layers.length-1).removeClass('selected');
		          self.layers[self.visibleLayer].vector.setVisible(true);
		          $('.time-interval').eq(self.visibleLayer).addClass('selected');
		          if (self.visibleLayer>0) {
		          	self.layers[self.visibleLayer-1].vector.setVisible(false);
		          	$('.time-interval').eq(self.visibleLayer-1).removeClass('selected');
		          }
				  if (opt.timeline.opt.select_hours) {
						opt.timeline.opt.select_hours.find('option:selected').each(function(){
								this.selected=false;
						});
						opt.timeline.opt.select_hours.find('option').eq(self.visibleLayer).prop("selected", true);
						opt.timeline.opt.select_hours.data('plugin_vDrop').update(opt.timeline.opt.select_hours);
				  }		          
		          self.visibleLayer++;
		          if (self.visibleLayer == self.layers.length) {
					  opt.timeline.stopAnim();
					  self.visibleLayer = 0;
					  self.anim_timeout = setTimeout(opt.timeline.startAnim, 3000);
				  }
		        }, 1000); 	    	
	    	};
		    opt.timeline.stopAnim = function() {
		    	clearInterval(self.anim_interval);
		    	self.anim_interval = null;
				clearTimeout(self.anim_timeout);
		    	self.anim_timeout = null;
		    };
		    opt.timeline.setVisibleLayer = function(num) {
		    	self.visibleLayer = num;
		    	self.defVisibleLayer();
		    	opt.visibleLayer = num;
            	if (opt.callback) opt.callback(ol.proj.transform(ol.extent.getCenter(self.map.getView().calculateExtent(self.map.getSize())), 'EPSG:3857', 'EPSG:4326'));
		    };
		}

	    this.map.on('moveend', $.proxy(function(e) {
	    	if (opt.type) self.renderLayer(this, e);
	    	if (opt.callback) opt.callback(ol.proj.transform(ol.extent.getCenter(self.map.getView().calculateExtent(self.map.getSize())), 'EPSG:3857', 'EPSG:4326'));
			if (this.ghostZoom != this.map.getView().getZoom()) {
            	this.ghostZoom = this.map.getView().getZoom();
            	this.opt.zoom = this.ghostZoom;
            	if (typeof __gaTracker != 'undefined') __gaTracker('send', 'event', 'map', 'event:zoomend', this.opt.type, this.ghostZoom);
            	if (opt.callback) opt.callback(ol.proj.transform(ol.extent.getCenter(self.map.getView().calculateExtent(self.map.getSize())), 'EPSG:3857', 'EPSG:4326'));
            	this.isMapMove = false;            	
        	}   	
	    	if (self.isMapMove === true && typeof __gaTracker != 'undefined') __gaTracker('send', 'event', 'map', 'event:moveend', self.opt.type);
	    	self.isMapMove = true;
	    }, this));

	    /*this.map.events.register('zoomend', this.map, $.proxy(function(e) {
	    	 this.isMapMove = false;
			__gaTracker('send', 'event', 'map', 'event:zoomend', this.opt.type, e.map.getView().getResolution());
	   	}, this));*/
	}	

	this.renderLayer = function(self, event) {		
		$('a.play-button').addClass('paused');
		
		try {
			opt.timeline.stopAnim();
		}
		catch(err) {}

		if (self.layers.length == 0) {
			for(var i=0; i <opt.count; i++) {
				var layer = {
		            vector: new ol.layer.Vector({
		              source: new ol.source.Vector({
		              	extractStyles: true,
		              })
		            }),             
		            wmcache: {},
		            predict: self.opt.predict+((typeof self.opt.step!='undefined'?self.opt.step:3)*i),
		            id: 'layer'+i,
		            clabel: 0,
		            req: -1					
				};
				//console.log(self.opt.predict+((self.opt.step!=null?self.opt.step:3)*i));
          		self.layers.push(layer);				
          		self.map.addLayer(layer.vector);				
			}
			self.getLegend();
		}
		else {
			for(var i=0; i < self.layers.length; i++) {
				self.layers[i].req = -1;	
			}	
		}
		self.defVisibleLayer();		
		//var coord = self.converBounds();
		$.ajax({url: (opt.url == '/mapcache'?(opt.url+'/mc_time.txt'):'/mapengine/time?par=0'), cache: false}).done(
	 		function(html) {
	 			self.dataLabel = 0;
	 			if (html!='ERROR') {
	 				self.dataLabel = html;
					try {
						var extent = self.map.getView().calculateExtent(self.map.getSize());
						opt.timeline.addData(ol.proj.transform(ol.extent.getCenter(extent), 'EPSG:3857', 'EPSG:4326'), self.visibleLayer, self.dataLabel);
					}
					catch(err) {}
	 			}
				self.getLayers();
	 		}
	 	);		
		/*self.getLayer(self.layers[self.visibleLayer], coord);
		for (var i=0; i < self.layers.length; i++) {
			self.getLayer(self.layers[i], coord);
		}*/
	}

	this.getLayers = function() {
		var layers = [];
		layers.push(this.layers[this.visibleLayer]);
		for (var i=0; i < this.layers.length; i++) {
			if (i != this.visibleLayer) {
				layers.push(this.layers[i]);
			}
		}
		var coord = this.converBounds(),
			self = this;

		this.req_abort = (this.req_abort == null?false:true);			

		clearInterval(this.timeout);
		var getCacheLabel = function(i, j) { 
			return '"features' + i + j +'"';
		}		
		this.timeout = setInterval(function() {
			if (self.req == 0) {
				clearInterval(self.timeout);
				self.req_abort = false;
				opt.progressbar.clear();
				for (var i=0; i < self.layers.length; i++) {
					for(var j = coord.x1; j < coord.x2; j++) {
			        	for(var k = coord.y1; k < coord.y2; k++) {
							var i1=j;
							if(j<0) i1=j+36;
							var clabel = getCacheLabel(i1, k);
							if (self.layers[i].wmcache[clabel] != 1)
								opt.progressbar.addLoading();	
			        	}
			        }		
				}
				getLayersProc();
			}
		}, 100);		

		function is_abort() {
			if (self.req_abort == true) {
				return true;
			}
			else return false;
		} 

		function getLayersProc() {	
			function getCacheLabel(i, j) { 
		    	return '"features' + i + j +'"';
			}	
			if (layers.length>0) {
				var l = layers.shift();
				l.req = 0;
				for(var i = coord.x1; i < coord.x2; i++) {
		        	for(var j = coord.y1; j < coord.y2; j++) {
				        var i1=i;
				        if(i<0) i1=i+36;
				        (function () {
					        var clabel = getCacheLabel(i1, j);
					        if (l.wmcache[clabel] != 1) {
					          	l.wmcache[clabel] = 1;
					          	self.req++;
					          	l.req++;
								var url='/mapengine/map?x='+i1+'&y='+j+'&datalabel='+self.dataLabel+'&predict='+l.predict+'&param='+opt.type;
								if (opt.url == '/mapcache') url = opt.url+'/'+opt.type+'_'+l.predict+'_'+i1+'_'+j+'.kml';
						        $.ajax(url, {
							        type: 'GET',
							        success : function(response) {
							            features = formatKML.readFeatures(response, {
							            	dataProjection: 'EPSG:4326',
							            	featureProjection: 'EPSG:3857', 
							            });
							            try {
							                l.vector.getSource().addFeatures(features);
							            }
							            catch(err) {
							            	console.log(['РћС€РёР±РєР° ' + err.name + ":" + err.message, url, self.req])
							            }
							        },
								    complete: function(){
								        self.req--;
								        l.req--;
										if (opt.progressbar.loading>0) opt.progressbar.addLoaded();					        
								        if (self.req == 0 ) {
								        	if (is_abort() == false) getLayersProc();
								     	}
								    } 
						        });
					        }
					        else {
								if (opt.progressbar.loading>0) opt.progressbar.addLoaded();
								if (self.req == 0  && is_abort() == false) getLayersProc();        	
					        }
				        })();       				
		        	}
		        }
			}
		}
	}

	this.update = function(options) {
		this.req_abort = true;
		var self = this;
		var timeInterval = setInterval(function() {
			if (self.req == 0) {
				clearInterval(timeInterval);
				self.req_abort = false;
				$.extend(opt, options);		
				$.each(self.layers, function(index) {
					$(this)[0].vector.getSource().clear();
					$(this)[0].wmcache = {};
					$(this)[0].predict = self.opt.predict+((typeof self.opt.step!='undefined'?self.opt.step:3)*index);
				});
				//self.visibleLayer = self.opt.visibleLayer;
				self.getLegend();
				self.renderLayer(self);
			}
		}, 100);
	}

	this.setCenter = function(options) {
		$.extend(opt, options);
		this.map.getView().setCenter(ol.proj.transform([opt.lng, opt.lat], 'EPSG:4326', 'EPSG:3857'), 6, false, false);	
	}

	this.setOverlay = function(overlay) {
		overlay.setMap(this.map);
	}

	this.removeOverlay = function(overlay) {
		overlay.setMap(null);
	}	

	this.getLegend = function() {
		var legurl='/mapengine/legend?param='+opt.type;
		if (opt.url == '/mapcache') legurl=opt.url+'/'+opt.type+'.json';
		$.ajax({ url: legurl}).done(function(html) { 
			try {
				var legjson = JSON.parse(html);	
			}
			catch (err) {
				var legjson = html;	
			}
		 	var s='',
		    	legend=legjson.legend;
		    for (i=0; i<legend.length; i++){ 
		    	s=s+'<span class="legblock" style="background-color: #'+legend[i].color+'">'+legend[i].label+(i==1 || i == legend.length-2?(' '+legjson.units):'')+'</span>'; 
		   	}
			$('.legmini').empty().html(s);
		});
	}  

	this.converBounds = function() {
	    var map = this.map;
	    var extent = map.getView().calculateExtent(map.getSize());
	    var bottomLeft = ol.proj.transform(ol.extent.getBottomLeft(extent),
	        'EPSG:3857', 'EPSG:4326');
	    var topRight = ol.proj.transform(ol.extent.getTopRight(extent),
	        'EPSG:3857', 'EPSG:4326');

	    function wrapLon(value) {
	      var worlds = Math.floor((value + 180) / 360);
	      return value - (worlds * 360);
	    } 

	    var x1 = (wrapLon(bottomLeft[0])-wrapLon(bottomLeft[0])%10)/10-1;
	    var y2 = 9-((bottomLeft[1]-bottomLeft[1]%10)/10);
	    var x2 = ((topRight[0])-wrapLon(topRight[0])%10)/10+1;
	    var y1 = 8-((topRight[1]-topRight[1]%10)/10);
	    return {
			x1: x1, 
			y1: y1, 
			x2: x2,
			y2: y2
		}
	}

	this.defVisibleLayer = function() {
		for (var i=0; i <this.layers.length; i++) {
			if (i == this.visibleLayer)
				this.layers[i].vector.setVisible(true);
			else 
				this.layers[i].vector.setVisible(false);
		}
		this.getLayers();
	}
	
	this.renderMarker = function() {
		var $marker = $('<div id="'+townindex+'">').addClass('marker');
 		$('#map').append($marker);
 		var marker = new ol.Overlay({element: document.getElementById($marker.attr('id'))});
 		this.setOverlay(marker);
 		marker.setPosition(ol.proj.transform([this.opt.lng, this.opt.lat], 'EPSG:4326', 'EPSG:3857'));
		return $marker;
	}
};

function Progress(el) {
  this.el = el;
  this.loading = 0;
  this.loaded = 0;
}

Progress.prototype.addLoading = function() {
  if (this.loading === 0) {
    this.show();
  }
  ++this.loading;
  this.update();
};

Progress.prototype.addLoaded = function() {
  var this_ = this;
  setTimeout(function() {
    ++this_.loaded;
    this_.update();
  }, 100);
};

Progress.prototype.clear = function() {
  this.loading = 0;
  this.loaded = 0;
};

Progress.prototype.update = function() {
  var width = (this.loaded / this.loading * 100).toFixed(1) + '%';
  this.el.style.width = width;
  //this.el.innerHTML = 'Р—Р°РїСЂР°С€РёРІР°РµРј РґР°РЅРЅС‹Рµ... ' + width;
  if (this.loading < this.loaded) this.loading = this.loaded;
  if (this.loading === this.loaded) {
    this.loading = 0;
    this.loaded = 0;
    var this_ = this;
    setTimeout(function() {
      this_.hide();
    }, 500);
  }
};

Progress.prototype.show = function() {
  this.el.style.visibility = 'visible';
};

Progress.prototype.hide = function() {
  if (this.loading === this.loaded) {
    this.el.style.visibility = 'hidden';
    //this.el.style.width = 0;
  }
};

function Timeline(el, opt) {
	this.el = el;
  	this.opt = opt;
  	var self = this;
  	$('div.play-button').unbind('click').bind('click', function(e) {
  		$('a.play-button').trigger('click');	
  	});
  	$('a.play-button').unbind('click').bind('click', function(e) {
  		e.stopPropagation();
  		e.preventDefault();
		$(this).toggleClass('paused');
		if ($(this).hasClass('paused')) {
			self.stopAnim(); 
		}
		else {
			self.startAnim();	
		}
  	});
  	$('#timeline-wrapper').css('display', opt.display);
}

Timeline.prototype.startAnim = function() {
}

Timeline.prototype.stopAnim = function() {
}

Timeline.prototype.addData = function(center, visibleLayer, dataLabel) {
	var oldtimeshift = this.opt.timeshift;
	this.opt.timeshift = parseInt(center[0]/15+1.49 + this.opt.summertime);
	if(this.opt.timeshift == oldtimeshift) return;
	var self = this;
 	var gribtime = new Date(dataLabel.substr(0,4)+'/'+dataLabel.substr(4,2)+'/'+dataLabel.substr(6,2)+' '+dataLabel.substr(8,2)+':00:00');
 				var predict = typeof self.opt.predict=='undefined'?9:self.opt.predict;
 				gribtime.setHours(gribtime.getHours()+predict+self.opt.timeshift);
 				self.opt.count = typeof self.opt.count=='undefined'?1:self.opt.count;
 				self.opt.step = typeof self.opt.step=='undefined'?3:self.opt.step;
 				if (self.el) self.el.empty();
 				if (self.opt.select_hours) {
 					self.opt.select_hours.find('option').remove();
 					self.opt.select_hours.find('optgroup').remove();
 				}
 				var date = null; 				 
				for(var i=0; i<self.opt.count; i++) { 
					var d = new Date(gribtime);
					d.setHours(d.getHours()+self.opt.step*i);
					var format = '';
					if (date != d.getDate()) {
						date = d.getDate();
						format = "date";
					}
					if (self.el) self.el.append('<span class="time-interval '+(format=='date' && d.getHours()<6?'newday':'')+' '+(i == visibleLayer?'selected':'')+'"><span class="date">'+(d.getHours()<15?self.formatDate(d, format):'')+'</span><span class="time">'+self.formatDate(d, 'hh:mm')+'<em>00</em><span></span>');
					
					if (self.opt.select_hours) {
						//if (format=='date' || i == 0)
							//self.opt.select_hours.append($("<optgroup label="+self.formatDate(d, format)+"></optgroup>"));	
						self.opt.select_hours.append($("<option></option>")
            				.attr("value", i)
            				.prop('selected', i == visibleLayer?true:false)
                        	.attr('selected', i == visibleLayer?true:false)
            				.text(self.formatDate(d, "date")+' '+self.formatDate(d, 'hh:mm')+':00'));
            		} 

					if (i==0 && self.opt.timelabel)
						self.opt.timelabel.html(self.formatDate(d, "date")+' '+self.formatDate(d, 'hh:mm')+':00');
				}
				
				if (self.opt.select_hours)
					try {
						self.opt.select_hours.data('plugin_vDrop').update(self.opt.select_hours);
					}
					catch(err) {
						self.opt.select_hours.vDrop({allowMultiple: false});
					}
				
				var mouseoverTimeout = null;
				$('.time-interval').unbind('mouseover click').bind('mouseover click', function() {
					var $el = $(this);
					$('.time-interval').removeClass('selected');
					$el.addClass('selected');
					$('a.play-button').addClass('paused');
					self.stopAnim();					
					mouseoverTimeout = setTimeout(function() {
						var val = $('.time-interval').index($el);
						self.setVisibleLayer(val);						
						if (self.opt.select_hours) {
							self.opt.select_hours.find('option:selected').each(function(){
								this.selected=false;
							});
							self.opt.select_hours.find('option').eq(val).prop("selected", true);
							self.opt.select_hours.data('plugin_vDrop').update(self.opt.select_hours);
						}
						if (typeof __gaTracker != 'undefined') __gaTracker('send', 'event', 'map', 'timeline:mouseover', self.opt.maptype);
					}, 200);
				});
				$('.time-interval').unbind('mouseout').bind('mouseout', function() {
					clearTimeout(mouseoverTimeout);
					mouseoverTimeout = null;
				});
				
				self.opt.select_hours.change(function() {
					clearTimeout(mouseoverTimeout);
					mouseoverTimeout = null;					
					var val = $(this).val();
					$('.time-interval').removeClass('selected');
					$('.time-interval').eq(val).addClass('selected');
					$('a.play-button').addClass('paused');
					self.stopAnim();					
					mouseoverTimeout = setTimeout(function() {
						self.setVisibleLayer(val);
						if (typeof __gaTracker != 'undefined') __gaTracker('send', 'event', 'map', 'select_hour:change', self.opt.maptype);
					}, 200);						
				});						
}

Timeline.prototype.setVisibleLayer = function() {
}

Timeline.prototype.renderTimeLine = function() {
}

Timeline.prototype.update = function(options) {
	$.extend(this.opt, options);
}

Timeline.prototype.formatDate = function(date, format) { 
	var mns = ['янв', 'фев', 'март', 'апр', 'мая', 'июн', 'июл', 'авг', 'сен', 'окт', 'ноя', 'дек'], 
  	ds = ['Вс', 'Пн', 'Вт', 'Ср', 'Чт', 'Пт', 'Сб'];
	if (format == 'hh:mm') return date.getHours(); //'<em>00</em>';
	if (format == 'date') return date.getDate() +' '+ mns[date.getMonth()]+(this.opt.step<6?(', '+ds[date.getDay()]):'');
	else return '';
}