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

