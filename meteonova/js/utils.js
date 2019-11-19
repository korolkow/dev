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

function GraphObj(townindex,geosuffix) {

	var graph = this;
	graph._townindex=townindex;
	graph._arrGraphName=new Array("P","T","R","W");
	graph._n=graph._arrGraphName.length;
	graph._arrGraphPic=new Array();
	graph._lastShowGraphic=0;
	graph._graphicTimer=null;

	graph.preloadGraph=function() {
		var k=0;
		for (var i=numFRC*graph._n; i<(numFRC+1)*graph._n; i++){
			if (graph._arrGraphPic[i]==null) {
				graph._arrGraphPic[i]=new Image();
				graph._arrGraphPic[i].src="//www.meteonova.ru/images/graphics/"+graph._arrGraphName[k]+"G"+graph._townindex+"_1"+numFRC+".png"+geosuffix;
				graph._arrGraphPic[i].onLoad=graph.initGraphic(i);
		  }
		  k++;
		}
	}

	graph.preloadGraphic=function(k) {
		var i=numFRC*graph._n+k;
		if (graph._arrGraphPic[i]==null) {
			graph._arrGraphPic[i]=new Image();
			graph._arrGraphPic[i].src="//www.meteonova.ru/images/graphics/"+graph._arrGraphName[k]+"G"+graph._townindex+"_1"+numFRC+".png"+geosuffix;
			graph._arrGraphPic[i].onLoad=graph.initGraphic(i);
		  }
	}

	graph.initGraphic=function(i) {
		if (!document.getElementById("graph"+i)) {
	  		var img= document.createElement("img");
				img.setAttribute("id", "graph"+i);
	  		img.src=graph._arrGraphPic[i].src;
				var s = img.style;
				s.top=0;
	  		s.left=0;
	  		s.visibility = "hidden";
	  		s.position = "absolute";
	  		s.zIndex=12;
			document.getElementById('graphic').appendChild(img);
	  }
	}

	graph.showGraphic=function(el,graph_num) {
		clearTimeout(graph._graphicTimer);
 		var obj=document.getElementById("graphic");
   		if (obj) {
//    		obj.style.left = getPos(document.getElementById("td2"),"Left");
//     		obj.style.top =  getPos(el,"Top")+el.offsetHeight+"px";
		obj.style.left = getOffset(document.getElementById("frc_cont")).left+"px";
		obj.style.top =  getOffset(el).top+el.offsetHeight+"px";
     		obj.style.visibility = "visible";
    	}

    var div=document.getElementById("graph"+graph._lastShowGraphic);
    if (div) div.style.visibility="hidden";

    div=document.getElementById("graph"+graph_num);
   	if (div) {
   		div.style.visibility="visible";
   		graph._lastShowGraphic=graph_num;
   	}
  }

  graph.hideGraphic=function(){
	clearTimeout(graph._graphicTimer);
    var div=document.getElementById("graph"+graph._lastShowGraphic);
    if (div) div.style.visibility="hidden";
    div=document.getElementById("graphic");
    if (div) div.style.visibility = "hidden";
  }

  graph.timerHideGraphic=function() {
  	graph._graphicTimer=setTimeout(function(){graph.hideGraphic();},1000);
  }

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

var tm=null;
var spd=10;
var tleft=-999;
D_IDLE=0;
D_SCROLLLEFT=1;
D_SCROLLRIGHT=2;
D_ALIGNLEFT=3;
D_ALIGNRIGHT=4;
D_SETPOS=5;
D_SCROLLTOP=6;
D_SCROLLBOTTOM=7;
D_ALIGNTOP=8;
D_ALIGNBOTTOM=9;
var mode=D_IDLE;
var fco=null;

function scrollH(i){
  with(fco){
    var pos = scrollLeft+i;
    if(pos<0) { pos=0; mode=D_IDLE;} else if(pos>=scrollWidth){ pos=scrollWidth-1; mode=D_IDLE;} else scrollLeft=pos;
    }
  }
function scrollV(i){
  with(fco){
    var posv = scrollTop+i;
    if(posv<0) { posv=0; mode=D_IDLE;} else if(posv>=scrollHeight){ posv=scrollHeight-1; mode=D_IDLE;} else scrollTop=posv;
    }
  }
function stopAutoScroll(){ if(mode==D_SCROLLLEFT) mode=D_ALIGNLEFT; else if(mode==D_SCROLLRIGHT) mode=D_ALIGNRIGHT;}
function goLeft(){ mode=D_SCROLLLEFT; }
function goRight(){ mode=D_SCROLLRIGHT; }
function goTop(){ mode=D_SCROLLTOP; }
function goBottom(){ mode=D_SCROLLBOTTOM; }
function goToFRC(){
 mode=D_SETPOS; } 

function tmDispatch(){
switch(mode) {
 case D_IDLE:        spd=10; break;
 case D_SCROLLLEFT:  scrollH(-spd/10); spd++; if(spd>60) spd=60; updateForecastBg(Math.round(fco.scrollLeft/fco.scrollWidth*6)); break;
 case D_SCROLLRIGHT: scrollH(spd/10); spd++; if(spd>60) spd=60; updateForecastBg(Math.round(fco.scrollLeft/fco.scrollWidth*6)); break;
 case D_ALIGNLEFT:   d=fco.scrollLeft % 51; if(d>1) scrollH(-1); else mode=D_IDLE; break;
 case D_ALIGNRIGHT:  d=fco.scrollLeft % 51; if(d>1) scrollH(1); else mode=D_IDLE; break;
 case D_SETPOS:      pos=numFRC*510+1; d=pos-fco.scrollLeft; if(Math.abs(d)>600) sp=80; else if(Math.abs(d)>200) sp=40; else if(Math.abs(d)>40) sp=20; else sp=1; if(d>=1) scrollH(sp); else  if(d<=-1) scrollH(-sp); else mode=D_IDLE; break;
 case D_SCROLLTOP:   scrollV(-spd/10); spd++; if(spd>60) spd=60; break;
 case D_SCROLLBOTTOM: scrollV(spd/10); spd++; if(spd>60) spd=60; break;
 case D_ALIGNTOP:    d=fco.scrollTop % 15; if(d>1) scrollV(-1); else mode=D_IDLE; break;
 case D_ALIGNBOTTOM:  d=fco.scrollTop % 15; if(d>1) scrollV(1); else mode=D_IDLE; break;
 }
}

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


function initScrollContent(obj) {
	  if(obj) {
	   obj.state = 0;
		 obj.maxVert = obj.scrollHeight - obj.offsetHeight;
	  }
	}

  function scroll(val,contentId) {
    var obj=document.getElementById(contentId);
   	if (obj) {
   		initScrollContent(obj);
   		obj.scrollTop=obj.maxVert*(val/100);
    }
	}

  function scroll2(el,contentId, vSlider,slideHandle) {
  	var obj=document.getElementById(contentId);
  	if (obj) {
  		initScrollContent(obj);
  		if (el.getAttribute("id").indexOf("slideBottom")>-1) {
  			if (obj.maxVert > obj.scrollTop) obj.scrollTop=obj.scrollTop+16;
      } else obj.scrollTop=obj.scrollTop-16;
    }

    var obj2=document.getElementById(vSlider);
    var obj3=document.getElementById(slideHandle);

    if ((obj2)&&(obj3))
    	obj3.style.top=Math.ceil(obj2.offsetHeight-22-((obj2.offsetHeight-22)*((obj.maxVert-obj.scrollTop)/obj.maxVert)))+"px";
	}

  function scroll3(contentId, vSlider,slideHandle, i) {
  	var obj=document.getElementById(contentId);
  	if (obj) {
  		initScrollContent(obj);
  	    if (obj.maxVert > obj.scrollTop) obj.scrollTop=(obj.scrollTop+16)*i;
    }

    var obj2=document.getElementById(vSlider);
    var obj3=document.getElementById(slideHandle);

    if ((obj2)&&(obj3))
    	obj3.style.top=Math.ceil(obj2.offsetHeight-22-((obj2.offsetHeight-22)*((obj.maxVert-obj.scrollTop)/obj.maxVert)))+"px";
	}


///////////////////////// Make Start /////////////////////////////////////////////////////////

function MakeStartFF(url){
alert('Чтобы сделать Метеонову Вашей стартовой страницей, перетащите ссылку "Сделать стартовой" на иконку с изображением домика в панели инструментов браузера');
}


////////////////////////// Cookies //////////////////////////////////////////////////////////

function setCookie(cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays*24*60*60*1000));
    var expires = "expires="+d.toUTCString();
    document.cookie = cname + "=" + cvalue + "; " + expires+ "; domain=.meteonova.ru; path=/"
}

function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for(var i=0; i<ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0)==' ') c = c.substring(1);
        if (c.indexOf(name) == 0) return c.substring(name.length, c.length);
    }
    return "";
}


window.mobilecheck = function() {
    var check = false;
    (function(a){if(/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|mobile.+firefox|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows ce|xda|xiino/i.test(a)||/1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(a.substr(0,4))) check = true;})(navigator.userAgent||navigator.vendor||window.opera);
    return check;
};





