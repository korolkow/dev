function mnovaSuggest(suggestO, inputO) {
	this.suggest = suggestO;
	this.input = inputO;
	this.searchTimeout = 300;
	this.timeoutSearchHnd = null;	
	this.timeoutBlurHnd = null;	
	this.countRequest = Math.floor(Math.random() * (10000 - 1000 + 1)) + 1000;
	this.url = '/sinpl';
	this.items = null;
	this.minwidth = 0;
	this.init();
}

mnovaSuggest.prototype.init = function() {	
	this.suggest.o = document.getElementById(this.suggest.o);
	this.input.parent = document.getElementById(this.input.parent);
	var coords = this.getOffset(this.input.parent);
	this.suggest.o.style.left = coords.left+'px';	
	this.suggest.o.style.top = coords.top+this.input.parent.offsetHeight+'px';
	removeClass(this.suggest.o, 'onfocus');
	this.input.o.value = '';
	this.input.loader = document.getElementById(this.input.loader);
	var parent = this;	
	this.input.o.onblur = function(event) {parent.blur(parent)};
	this.input.o.onclick = function(event) {parent.click(parent)};
	this.input.o.onkeydown = function(event) {parent.keydown(event, parent)};	
	this.input.loader.onclick = function() {parent.loaderClick(parent)};	
}

mnovaSuggest.prototype.click = function(obj) {
	if (this.input.o.value == obj.input.defVal) this.input.o.value = '';
}

mnovaSuggest.prototype.blur = function(obj) {
	this.timeoutBlurHnd = setTimeout(function() {
		if (obj.input.o.value.length == 0) obj.input.o.value = obj.input.defVal;
		obj.suggest.o.style.width = 0;
		removeClass(obj.suggest.o, 'onfocus');
		removeClass(obj.input.loader, 'spinner');
	}, 200);
}

mnovaSuggest.prototype.redrawSuggest = function() {
	addClass(this.suggest.o, 'onfocus');
	this.suggest.o.style.width = 'auto';	
	this.minwidth = this.input.parent.offsetWidth+'px';
	if (this.suggest.o.offsetWidth < parseInt(this.minwidth.replace('px',''), 10))
		this.suggest.o.style.width = this.minwidth;
	else 
		this.suggest.o.style.width = this.suggest.o.offsetWidth;
	this.suggest.o.style.width = parseInt(this.suggest.o.style.width.replace('px', ''), 10)+'px';
	this.mouseOver(1); 
}

mnovaSuggest.prototype.loaderClick = function(obj){
	clearTimeout(obj.timeoutBlurHnd);
	if (obj.input.o.value.length == 0 || obj.input.o.value == obj.input.defVal) return;
	if (!hasClass(obj.input.loader, 'x') && !hasClass(obj.input.loader, 'spinner'))
		obj.getAjaxList();
	else if (hasClass(obj.input.loader, 'x')) {
		removeClass(obj.input.loader, 'spinner');	
		removeClass(obj.input.loader, 'x');
		obj.input.o.value = '';
		removeClass(obj.suggest.o, 'onfocus');
		obj.input.o.focus();
	}
}

mnovaSuggest.prototype.keydown = function(e, obj) {
	e = e || event;
	var code = (e.charCode) ? e.charCode : e.keyCode;
	switch(code) {
    case 13:
    	obj.mouseClick();		
    break; 			      
    case 38:
    	obj.mouseOver(-1);		
    break; 
    case 40:
    	obj.mouseOver(1);		
    break; 
    case 16: case 17: case 20: case 9: case 37: case 39: 
    break;
		default:	
			clearTimeout(obj.timeoutSearchHnd);	
			obj.getAjaxList();	
    break; 	    		      	  				
	} 	
}

mnovaSuggest.prototype.getAjaxList = function() {
	removeClass(this.suggest.o, 'onfocus');
	removeClass(this.input.loader, 'x');			
	addClass(this.input.loader, 'spinner');	
	var parent = this;		
	this.timeoutSearchHnd = setTimeout(function() {		
		if (parent.input.o.value.length==0) { 
			removeClass(parent.input.loader, 'spinner');					
			return;	
		}
		parent.countRequest++;	
		var loadData = new LoadDataSearch(parent);
		loadData.getData(parent.url+"?lang=ru&id="+parent.countRequest+"&fchar="+encodeURIComponent((parent.input.o.value)));		
	}, this.searchTimeout);	
}

mnovaSuggest.prototype.mouseClick = function() {
	for(var i=0; i<this.items.length; i++) {
		var o = document.getElementById(this.items[i].id);
		if (hasClass(o, 'onhover')) {
			if(this.items[i].type == 't')
				document.location = '/weather/'+this.items[i].id+'-'+this.items[i].name_en.replace(' ', '_')+'.htm';
			if(this.items[i].type == 'a') 
				document.location = '/avia/'+((parseInt(this.items[i].id, 10)+10000)*(-1))+'.htm';			
			if(this.items[i].type == 'c')
				document.location = '/list/countries/'+this.escape(this.items[i].name_en.toLowerCase());
			if(this.items[i].type == 'd')
				document.location = '/list/regions/'+this.items[i].id;
			if(this.items[i].type == 'mu')
				document.location = '/list/municipals/'+this.items[i].id;
			return;
		}			
	}
	var o = document.getElementById("err_a");
	if (o) document.location = document.getElementById("err_a").getAttribute('href');
}

mnovaSuggest.prototype.mouseOver = function(step, o) {
	if (!this.items) return;
	if (this.items.length == 0) {
		//o = document.getElementById('discript');
		//if (o) addClass(o, 'onhover');
		return;
	}
	var e = null;
	if (!o) {
		for(var i=0; i<this.items.length; i++) {
			o = document.getElementById(this.items[i].id);
			if (hasClass(o, 'onhover')) {
				e = this.items[i+step]!=undefined?this.items[i+step]:
								step==1?this.items[0]:this.items[this.items.length-1];
				this.input.o.value = e.name; 								
				break;						
			}							
		}
		if (!e) 
			e = step==1?this.items[0]:this.items[this.items.length-1];
		o = document.getElementById(e.id);			
	}
	this.mouseOut();	
	if (o) addClass(o, 'onhover');	
	if (!e) 
		for(var i=0; i<this.items.length; i++) {
			o = document.getElementById(this.items[i].id);
			if (hasClass(o, 'onhover')) {
				e = this.items[i]; 	
			}	
		}		
	if (!e) this.items[0];
				
}

mnovaSuggest.prototype.mouseOut = function() {
	var o = null;
	for(var i=0; i<this.items.length; i++) {	
		o = document.getElementById(this.items[i].id); 
		if (o) removeClass(o, 'onhover'); 
	}
}

mnovaSuggest.prototype.getSuggest = function() {
	var html = '',
		str = '',
		isCountry = false,
		isCity = false,
		isAvia = false,
		isDistrict = false,
		isMu = false,
		html = this.suggest.nulltpl;
	addClass(this.suggest.o, 'e');
	for(var i=0; i<this.items.length; i++) {
		if (i==0) html = '';
		if (this.items[i].type=='c' && isCountry == false) { 
			html +=this.suggest.tplc;
			isCountry = true;
		}				
		if (this.items[i].type=='t' && isCity == false) {
			html +=this.suggest.tplt;
			isCity = true;
		}
		if (this.items[i].type=='a' && isAvia == false) {
			html +=this.suggest.tpla;
			isAvia = true;
		}				
		if (this.items[i].type=='d' && isDistrict == false) {
			html +=this.suggest.tpld;
			isDistrict = true;
		}
		if (this.items[i].type=='mu' && isMu == false) {
			html +=this.suggest.tplmu;
			isMu = true;
		}		
	
		html += this.suggest.tpl;
		
	  do{
	  	if (!(str = html.match(/%([\w\d.]+)%/gim)))
	    	break;
	    for (var j in str){
	    	if (parseInt(j, 10) != j) continue;
	    	try {
	     		var tp=str[j].replace(/%/gi,'');
	     		if (this.items[i][tp]) {
	     		 	html = html.replace(str[j], (tp=='d_name' || tp=='mun_name')?this.items[i][tp].replace(/ /gi,'&nbsp;')+',&nbsp;':this.items[i][tp].replace(/ /gi,'&nbsp;'));     			     		}
	     		else 
	      			html = html.replace(str[j], '');
	      }
	      catch(err) {}     
	    }
	  }while(1);		
	}
	if (this.items.length>0) {
		html += '<div class="discript"><span class="all_search"><a href="/search/'+this.escape(this.input.o.value)+'">'+this.suggest.tpl_allsearch+'</a></span></div>';
		html += '<div class="discript"><span class="all_search"><a href="/mgfind.htm">Нет нужного пункта? Используйте Мегапоиск</a></span></div>';	
		removeClass(this.suggest.o, 'e');
	}
	return html;
}

function LoadDataSearch(parent) {
	this.parent = parent; 
  this.XMLObj = null;
  this.getData = function(url) {
	  try {
	  	this.XMLObj = new XMLHttpRequest();
	  } catch(err) {
	  	this.XMLObj = new ActiveXObject("Microsoft.XMLHttp");
	  }
    if (this.XMLObj) {
      this.XMLObj.onreadystatechange = this.LoadDataCallbackFunction (this.XMLObj, this.parent);    
      this.XMLObj.open("GET", url+'&r='+Math.random(), true);
    	this.XMLObj.send(null);
    }
  }

  this.LoadDataCallbackFunction = function(XMLObj, parent) {
  	return function() {
  		parent.items = {};
    	if (XMLObj.readyState == 4) {
    		if (XMLObj.status == 200) {
    			try { 
	    			var data = JSON.parse(XMLObj.responseText);
	    			parent.items = data.items;
					parent.suggest.o.innerHTML = parent.getSuggest().replace('%input.val%', parent.escape(parent.input.o.value)).replace('%input.val%', parent.input.o.value);
					parent.redrawSuggest();				
					addClass(parent.input.loader, 'x');
				}
				catch(err) {}
	      		XMLObj= null;
	      	}
		}
   	}
  }
}

mnovaSuggest.prototype.getOffset = function(elem) {
	function getOffsetSum(elem) {
	 	var top=0, left=0
	 	while(elem) {
	 		top = top + parseInt(elem.offsetTop)
	 		left = left + parseInt(elem.offsetLeft)
	 		elem = elem.offsetParent
		}
	 	return {top: top, left: left}
	}
	
	function getOffsetRect(elem) {
 	 var box = elem.getBoundingClientRect()
 	 var body = document.body
 	 var docElem = document.documentElement
 	 var scrollTop = window.pageYOffset || docElem.scrollTop || body.scrollTop
 	 var scrollLeft = window.pageXOffset || docElem.scrollLeft || body.scrollLeft
 	 var clientTop = docElem.clientTop || body.clientTop || 0
 	 var clientLeft = docElem.clientLeft || body.clientLeft || 0
 	 var top = box.top + scrollTop - clientTop
 	 var left = box.left + scrollLeft - clientLeft
 	 return { top: Math.round(top), left: Math.round(left) }
	}	
	
	if (elem.getBoundingClientRect)
		return getOffsetRect(elem)
	else
	 	return getOffsetSum(elem)
}

function getNavigatorName() {
	var useragent=navigator.userAgent;
	var navigatorname;
	if (useragent.indexOf('MSIE')!= -1) {
	    navigatorname="MSIE";
	}
	else if (useragent.indexOf('Gecko')!= -1) {
	    if (useragent.indexOf('Chrome')!= -1)
	    navigatorname="Chrome";
	    else navigatorname="Mozilla";
	}
	else if (useragent.indexOf('Mozilla')!= -1) {
	    navigatorname="old Netscape or Mozilla";
	}
	else if (useragent.indexOf('Opera')!= -1) {
	    navigatorname="Opera";
	}
	return navigatorname.toLowerCase();
}

function addClass(o, c){
	if (!o) return;
	var re = new RegExp("(^|\\s)" + c + "(\\s|$)", "g");
	if (re.test(o.className)) return
	o.className = (o.className + " " + c).replace(/\s+/g, " ").replace(/(^ | $)/g, "");
}
  
function removeClass(o, c){
	if (!o) return;	
	var re = new RegExp("(^|\\s)" + c + "(\\s|$)", "g");
	o.className = o.className.replace(re, "$1").replace(/\s+/g, " ").replace(/(^ | $)/g, "");
}

function hasClass(o, c) {
	if (!o) return '';	
	return o.className.match(new RegExp('(\\s|^)'+c+'(\\s|$)'));
}

mnovaSuggest.prototype.escape = function(str) {
	var trans = [];
	for (var i = 0x410; i <= 0x44F; i++) trans[i] = i - 0x350; // A-?a-y
	trans[0x401] = 0xA8;    // ?
	trans[0x451] = 0xB8;    // ?
	trans[0x457] = 0xBF;    // ?
	trans[0x407] = 0xAF;    // ?
	trans[0x456] = 0xB3;    // ?
	trans[0x406] = 0xB2;    // ?
	trans[0x404] = 0xBA;    // ?
	trans[0x454] = 0xAA;    // ?
	
  var res='';
  for (var i = 0; i < str.length; i++) {
    var n = str.charCodeAt(i);
    if (typeof trans[n] != 'undefined') {
      n = trans[n];
      res=res+escape(String.fromCharCode(n));
    }
    else {
      n = str.charAt(i);
      res=res+n;
    }
  }
  return res;
}