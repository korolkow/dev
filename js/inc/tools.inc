////////////////////////////////////////// Cookies ////////////////////////////////////////

var bNovaSilence=document.cookie.indexOf("novas=1")!=-1;

function setSilence(bS)
{ if(bS) { bNovaSilence=1; document.cookie="novas=1; expires=Wed, 6 Mar 2030 00:00:00; path=/;";}
   else  { bNovaSilence=0; document.cookie="novas=1; expires=Wed, 1 Mar 2006 00:00:00; path=/;";}
}

///////////////////////////////////////////////////////////////////////////////////////////////

function setURL(cindex) {
 if (cindex!=domains[domain][0]){
 	if (domain!="ru") return URL.replace(domain,domains["ru"][1]);
 	else {
 		for (var i=1; i<domains["all"].length; i++) {
 			if (cindex==domains[domains["all"][i]][0]) {
 				return URL.replace(domain,domains[domains["all"][i]][1]);
 			}
 		}
 		return URL;
 	}
 }
 else return URL;
}

function getSearchURL(str) {
//	return "/find.htm?searchby=firstchar&fchar="+escape2(str);
        return "/search/?req=findall&town="+escape2(str);
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

///////////////////////// Make Start /////////////////////////////////////////////////////////

function MakeStartFF(url){
alert('„тобы сделать ћетеонову ¬ашей стартовой страницей, перетащите ссылку "—делать стартовой" на иконку с изображением домика в панели инструментов браузера');
}

