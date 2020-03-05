var CitySearch = function(obj) {
	this.init = function(city, callbacks) {
		//var req = new AjaxRequest('searchby=nearby&id='+city.id+'&count=69', city,  obj, callbacks);
		var req = new AjaxRequest(city.id,  obj, callbacks);
		
	}
}

//var AjaxRequest = function(reqStr, obj, callbacks) {
var AjaxRequest = function(city, obj, callbacks) {
	if (callbacks.doBefore) callbacks.doBefore();
	this.url = '//meteonova.ru/listcache/lc_' + city + '.json';
	this.getXmlHttp = function() {
	  var xmlhttp;
	  try {
	    xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
	  } catch (e) {
	    try {
	      xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	    } catch (E) {
	      xmlhttp = false;
	    }
	  }
	  if (!xmlhttp && typeof XMLHttpRequest!='undefined') {
	    xmlhttp = new XMLHttpRequest();
	  }
	  return xmlhttp;
	}	
	this.xhr = this.getXmlHttp();
	this.xhr.open('GET', this.url, true);
	this.xhr.send(null);
	var _this = this;
	this.xhr.onreadystatechange = function() {
		if (4 == _this.xhr.readyState ) {
			if (callbacks.doAfter) callbacks.doAfter();
			if (_this.xhr.status >= 200 && _this.xhr.status <= 304) {
				if (obj.callback) {
					var o = JSON.parse(_this.xhr.responseText);					
					obj.callback(o.items);
				}
			}
			_this.xhr = null;
		}
	};
}