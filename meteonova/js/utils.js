////Graphics///

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

function getPos(el,sProp) {
	var iPos = 0;
	while (el!=null) {
		iPos+=el["offset" + sProp]
		el = el.offsetParent;
	}
	return iPos
}

function getOffset(elem) {
 if (elem.getBoundingClientRect) {
 return getOffsetRect(elem)
 } else {
 return getOffsetSum(elem)
 }
}

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


//// Hints /////

var hintTimeouts = new Array();

function showHint(parentObj, id, bVisible, width) {
	id = id.toString();
	var obj = document.getElementById("hint_content_"+id);
	if (!obj) initHint(id, width);

	var hintObj = document.getElementById(id);
	if (hintObj) {
    hintObj.style.left=getPos(parentObj,"Left")+2+"px";
    hintObj.style.top =  getPos(parentObj,"Top")+parentObj.offsetHeight+2+"px";
    setTimeoutHint(hintObj, bVisible);
  }
}

function setTimeoutHint(hintObj, bVisible) {
	var id = hintObj.getAttribute("id").toString();
	var hintTimeout = hintTimeouts[id];
	clearTimeout(hintTimeout);
  hintTimeouts[id] = setTimeout(function() {
  		if (bVisible) hintObj.style.visibility="visible";
  		else hintObj.style.visibility="hidden";
    },
    500
  );
}

function initModalWnd(id, width, bVisible, callbackfunction) {
	var obj = document.getElementById("hint_content_"+id);
	if (!obj) initHint(id, width, callbackfunction);
	var ovStyle = document.getElementById("overlay").style;
	modalWndStyle = document.getElementById(id).style;
	if (bVisible) {
		ovStyle.display = "block";
		modalWndStyle.visibility = "visible";
		updateModalWnd();
		if (bIE) window.attachEvent('onscroll', updateModalWnd);
	}
	else {
		ovStyle.display = "none";
		modalWndStyle.visibility = "hidden";
		window.detachEvent('onscroll', updateModalWnd);
	}
}

function updateModalWnd() {
	var dtop = -100;
	var ddtop = 0;
	var clientWidth = window.innerWidth || (document.documentElement && document.documentElement.clientWidth) || document.body.clientWidth;	
	var clientHeight = window.innerHeight || (document.documentElement && document.documentElement.clientHeight) || document.body.clientHeight;
	var ovStyle = document.getElementById("overlay").style;
	var modalWndStyle = document.getElementById('modalWnd').style;
	if (bIE)
		ddtop = window.pageYOffset || (document.documentElement && document.documentElement.scrollTop) || document.body.scrollTop; 
  modalWndStyle.left = clientWidth/2-parseInt(modalWndStyle.width, 10)/2;
  modalWndStyle.top = Math.round(clientHeight/2-parseInt(modalWndStyle.height, 10)/2)+ddtop+dtop;
	ovStyle.top = ddtop;
}

function initHint(id, width, callbackfunction) {
	var imgUrl = "/images/hints";
	var hintObj = document.getElementById(id);
	if (hintObj) {
		var content = hintObj.innerHTML;
		var hintBlock = "<div>";
		hintBlock+="<div class='hint_top_left'><img src='"+imgUrl+"/hint_top_left.png' width='15' height='18' class='corner'></div>";
		hintBlock+="<div class='hint_top_center' style='width: "+width+"px;'></div>";
		hintBlock+="<div class='hint_top_right'><img src='"+imgUrl+"/hint_top_right.png' width='23' height='18' class='corner'></div>";
		hintBlock+="</div>";
    hintBlock+="<div>";
		hintBlock+="<div class='hint_body_left' id='hint_body_left"+id+"'><img src='"+imgUrl+"/hint_body_left.png' id='img_hint_body_left"+id+"' width=15 ></div>";
		var el = document.getElementById('modalWnd');	
		if (callbackfunction && el) hintBlock+="<div class='hint_body_center' id='hint_content_"+id+"' style='width: "+width+"px; background-color: #f8f9fd'>"+content+"<div class='btn-close'><a href='javascript:document.getElementById(\"ModalWndBtnCansel\").onclick()'></a></div></div>";
		else hintBlock+="<div class='hint_body_center' id='hint_content_"+id+"' style='width: "+width+"px; background-color: #f8f9fd'>"+content+"</div>"; 
		hintBlock+="<div class='hint_body_right'  id='hint_body_right"+id+"'><img src='"+imgUrl+"/hint_body_right.png' id='img_hint_body_right"+id+"' width=23></div>";
		hintBlock+="</div>";
    hintBlock+= "<div style=\"margin-top: -2px;\">";
		hintBlock+="<div class='hint_bottom_left'><img src='"+imgUrl+"/hint_bottom_left.png' width='15' height='18' class='corner'></div>";
		hintBlock+="<div class='hint_bottom_center' style='width: "+width+"px;'></div>";
		hintBlock+="<div class='hint_bottom_right'><img src='"+imgUrl+"/hint_bottom_right.png' width='23' height='18' class='corner'></div>";
		hintBlock+="</div>";
		hintObj.innerHTML = hintBlock;
		var content_height = document.getElementById("hint_content_"+id).offsetHeight;
		document.getElementById("img_hint_body_left"+id).style.height = content_height+'px';
		document.getElementById("img_hint_body_right"+id).style.height = content_height+'px';
		document.getElementById("hint_body_left"+id).style.height = content_height+'px';
		document.getElementById("hint_body_right"+id).style.height = content_height+'px';		
		hintObj.style.width = width+40+'px';
		hintObj.style.height = content_height+'px';
		el = document.getElementById('ModalWndBtnOk');
		if (callbackfunction && el) el.onclick = callbackfunction;
	}
}

//// Scroll Forecasts /////

/////////////////////// прокрутка прогноза///////////////////////////////////////


var arrFrcDay=new Array("0","1","2","3","4","5");
var numFRC=0;
function checkFrcTopLink(){
   for (var i=0; i<arrFrcDay.length; i++)
   	try {
        if (numFRC >= 0 && numFRC == arrFrcDay[i]) {
            document.getElementById("frc_" + arrFrcDay[i]).style.color = "#3b55c5";
            document.getElementById("frc_" + arrFrcDay[i]).style.fontWeight = "bold";
        }
        else {
            document.getElementById("frc_" + arrFrcDay[i]).style.color = "#0000ee";
            document.getElementById("frc_" + arrFrcDay[i]).style.fontWeight = "normal";
        }
    }
    catch(err) {}
 }



///////////////////////// Make Start /////////////////////////////////////////////////////////

function MakeStartFF(url){
alert('Чтобы сделать Метеонову Вашей стартовой страницей, перетащите ссылку "Сделать стартовой" на иконку с изображением домика в панели инструментов браузера');
}



