(function($) {	
	$.fn.mgSearch = function(opt) {
		var $o = this,
 			opt = opt,
 			exclude_place_ids_length = null,
 			exclude_place_ids = [],
 			submitform = function() {
		 		opt.f.bind('onsubmit', function(e) {
		 			e.preventDefault();
		 			if ($o.val() == '') return false;
					opt.more_btn.hide();
					opt.resultblock.find('div').hide();
					opt.resultblock.addClass('loader');
		 			$.ajax({
		 				type: 'GET',
		 				url: opt.f.attr('action')+'/mgfind.php?type=mgsearch'+(exclude_place_ids.length>0?('&exclude_place_ids='+exclude_place_ids.join(',')):'')+'&fchar='+encodeURIComponent($o.val()),
		 				dataType: "json",
						success: function(data, status, xhr) {
							opt.resultblock.find('div').show();
							renderList(data); 
						},
						error: function(request, status, error) {
		 					opt.more_btn.hide();
							opt.resultblock.find('div').show();
		 					opt.resultblock.removeClass('loader').empty().append('По вашему запросу ничего не найдено');
						} 					
		 			});
		 		});
	 		},
	 		clickonmap = function() {
		 		$.ajax({
		 			type: 'GET',
		 			url: '/mgfind.php?type=mgsearchreverse&lat='+opt.lat+'&lon='+opt.lon+'&zoom='+opt.zoom,
		 			dataType: "json",
					success: function(data, status, xhr) {
						renderPopupList(data);
					},
					error: function(request, status, error) {
						var $div = $('<div>'),
 							lat = Math.ceil((opt.lat || 55.8)*100)/100,
 							lon = Math.ceil((opt.lon || 37.6)*100)/100;
		 				opt.resultblock.empty().append($('<a href="#"><span>'+ (lat>0?(lat+' с.ш.'):(Math.abs(lat)+' ю.ш.'))+ ', '+ (lon>0?(lon+' в.д.'):(Math.abs(lon)+' з.д.'))+'</span></a>').appendTo($div));
					} 					
		 		});	 				
	 		};
 		return function() {
 			if (opt.f && opt.f.is('form')) {
 				submitform();
	 			opt.f.submit(function(e) {
	 				exclude_place_ids_length = 0;
	 				exclude_place_ids = [];
	 				opt.resultblock.empty(); 				
	 				e.preventDefault();
	 				$(this).trigger('onsubmit');
	 			});
 			}
 			else {
 				clickonmap();	
 			}
 		}();

 		function renderList(data) {
			var searchname = $o.val().charAt(0).toUpperCase() + $o.val().substr(1);
 			$.each(data, function(index) {
 				var $div = $('<div class="item" style="width:100%; margin-bottom: 7px; white-space: nowrap;">');
 				if (this.class === "place") {
                    try {
                        if (this.type === "village" ||
                            this.type === "hamlet" || this.type === "city" || this.type === "town" ||
                            this.type === "suburb") {
                            $div.html(this.display_name.replace(/\S+(-?)+\S+/, function (name) {
                            	name = name.substring(0, name.length - 1)
                                return '<a href="' + opt.goto + '/?fi=' + this.lat + '&la=' + this.lon + '&title=' +
                                   encodeURI(name) + '"><span style="font-weight: 600">' + name + '</span></a>'

                            }));
                        }
                        exclude_place_ids.push(this.place_id);
                        ($div).appendTo(opt.resultblock.removeClass('loader'));
                    }
                    catch(err) {
                        console.log(err);
					}
				}
 			});
	 		opt.more_btn.show();
	 		opt.more_btn.unbind('click').bind('click', function() {
	 			opt.f.trigger('onsubmit');	
	 		}); 			
	 		if (exclude_place_ids_length == exclude_place_ids.length) {
	 			opt.more_btn.hide();
				opt.resultblock.removeClass('loader');
	 			if (exclude_place_ids.length == 0) opt.resultblock.empty().append('По вашему запросу ничего не найдено');
	 		}
	 		exclude_place_ids_length = exclude_place_ids.length;	
 		} 

 		function renderPopupList(data) {
 			var $div = $('<div>');
 			var lat = Math.ceil((data.lat || 55.8)*100)/100;
 			var lon = Math.ceil((data.lon || 37.6)*100)/100;
 			if (typeof data == 'object')
	 			try {
	 				$('<a href="' + opt.goto + '/?fi=' + data.lat + '&la=' + data.lon + '&title='+encodeURI('тчк с коорд')+'"><span>'+ (lat>0?(lat+' с.ш.'):(Math.abs(lat)+' ю.ш.'))+ ', '+ (lon>0?(lon+' в.д.'):(Math.abs(lon)+' з.д.'))+'</span></a><br/>').appendTo($div);
	 				if (data.address && (data.address.city || data.address.town || data.address.hamlet || data.address.village)) {
						var title = (data.address.city || data.address.town || data.address.hamlet || data.address.village);
						title = title.replace(' городское поселение', '');
						title = title.replace('городское поселение ', '');						
						title = title.replace(' сельское поселение', '');
						title = title.replace('сельское поселение ', '');						
	 					$('<span>Ближайший населённый пункт:</span> <a href="' + opt.goto + '/?fi=' + data.lat + '&la=' + data.lon + '&title='+encodeURI(title)+'"><span>' + data.display_name + '</span></a>').appendTo($div);
	 				}
	 				($div).appendTo(opt.resultblock.empty());
	 			}
	 			catch(err) {
	 				$('<a href="' + opt.goto + '/?fi=' + lat + '&la=' + lon + '&title='+encodeURI('тчк с коорд')+'"><span>'+ (lat>0?(lat+' с.ш.'):(Math.abs(lat)+' ю.ш.'))+ ', '+ (lon>0?(lon+' в.д.'):(Math.abs(lon)+' з.д.'))+'</span></a><br/>').appendTo($div);
					($div).appendTo(opt.resultblock.empty());
	 			}
 			else {
 				$('<a href="' + opt.goto + '/?fi=' + lat + '&la=' + lon + '&title='+encodeURI('тчк с коорд')+'"><span>'+ (lat>0?(lat+' с.ш.'):(Math.abs(lat)+' ю.ш.'))+ ', '+ (lon>0?(lon+' в.д.'):(Math.abs(lon)+' з.д.'))+'</span></a><br/>').appendTo($div);
				($div).appendTo(opt.resultblock.empty()); 				
 			}				
 		} 		
	}
})(jQuery);