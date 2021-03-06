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
		hintBlock+="<div class='hint_top_left'><img src='"+imgUrl+"/hint_top_left.png' width='15' height='18' class='corner' onLoad='transparent(this)'></div>";
		hintBlock+="<div class='hint_top_center' style='width: "+width+"px;'></div>";
		hintBlock+="<div class='hint_top_right'><img src='"+imgUrl+"/hint_top_right.png' width='23' height='18' class='corner' onLoad='transparent(this)'></div>";
		hintBlock+="</div>";
    hintBlock+="<div>";
		hintBlock+="<div class='hint_body_left' id='hint_body_left"+id+"'><img src='"+imgUrl+"/hint_body_left.png' id='img_hint_body_left"+id+"' width=15 onLoad='transparent(this)'></div>";
		var el = document.getElementById('modalWnd');	
		if (callbackfunction && el) hintBlock+="<div class='hint_body_center' id='hint_content_"+id+"' style='width: "+width+"px; background-color: #f8f9fd'>"+content+"<div class='btn-close'><a href='javascript:document.getElementById(\"ModalWndBtnCansel\").onclick()'></a></div></div>";
		else hintBlock+="<div class='hint_body_center' id='hint_content_"+id+"' style='width: "+width+"px; background-color: #f8f9fd'>"+content+"</div>"; 
		hintBlock+="<div class='hint_body_right'  id='hint_body_right"+id+"'><img src='"+imgUrl+"/hint_body_right.png' id='img_hint_body_right"+id+"' width=23 onLoad='transparent(this)'></div>";
		hintBlock+="</div>";
    hintBlock+= "<div style=\"margin-top: -2px;\">";
		hintBlock+="<div class='hint_bottom_left'><img src='"+imgUrl+"/hint_bottom_left.png' width='15' height='18' class='corner' onLoad='transparent(this)'></div>";
		hintBlock+="<div class='hint_bottom_center' style='width: "+width+"px;'></div>";
		hintBlock+="<div class='hint_bottom_right'><img src='"+imgUrl+"/hint_bottom_right.png' width='23' height='18' class='corner' onLoad='transparent(this)'></div>";
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
