function setPreloaderPict(parentId,preloaderId,preloaderStyle){
  var div = document.createElement("div");
  div.setAttribute('id', preloaderId);
  var s = div.style;
  s.position = "absolute";
  s.zIndex=12;
  document.getElementById(parentId).appendChild(div);
  if (preloaderStyle=="mini")
  	div.innerHTML="<img src=\"/images/ajax-miniloader.gif\" width=\"16\" height=\"16\" />";
  else div.innerHTML="<img src=\"/images/ajax-loader.gif\" width=\"93\" height=\"26\" />";
  return div;
}

function setPreloaderStyle(parentDiv,preloaderDiv){
	var div=document.getElementById(preloaderDiv);
	var pdiv=document.getElementById(parentDiv);
	div.style.left=Math.round(pdiv.offsetWidth/2)-Math.round(div.offsetWidth/2)+"px";

	if ((parentDiv=="townsContainer") && (pdiv.className=="townsContainerMain"))
		div.style.top=Math.round(pdiv.offsetHeight/2)-Math.round(div.offsetHeight/2)+"px";
	else
		div.style.top=Math.round(pdiv.offsetHeight/2)+15-Math.round(div.offsetHeight/2)+"px";
}

function initPreloader(parentId, preloaderId,preloaderStyle) {
	var pobj=document.getElementById(parentId);

	var obj=document.getElementById(preloaderId);
	if (!obj) {

		obj=setPreloaderPict(parentId,preloaderId,preloaderStyle);
		setPreloaderStyle(parentId,preloaderId);

	}

	obj.style.visibility="visible";
}

//////////////////////////////////// Ajax //////////////////////////////////////

function sendAjaxRequest(url,method,callback,onerror) {
//  var request = null;
 if (window.ActiveXObject) // IE
  	var request = new ActiveXObject("Microsoft.XMLHTTP");
 else if (window.XMLHttpRequest) // Mozilla, Safari, ...
    var request = new XMLHttpRequest();
  request.onreadystatechange = function() { requesFunction(request,method,callback,onerror); };
  request.open(method, url, true);
  request.send(null);
}

function requesFunction(req,method,fcall,ferror) {
	var self;
  if (req) self={req:req,method:method,fcall:fcall,ferror:ferror,request:arguments.callee.request}
  else self=arguments.callee;
  if(self.req.readyState == 4) {
    var callbackArgsArray=new Array(self.req);
    try{
    	if(self.req.status == 200) {
        self.fcall.apply(null,callbackArgsArray);
      }
      else self.ferror.apply(null,callbackArgsArray);
    }
    catch(err) {
    	self.ferror.apply(null,callbackArgsArray);
    }
		//self.req.ready=0;
  	//self.req.abort();
  }
}

