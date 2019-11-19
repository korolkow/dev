var agent=navigator.userAgent.toLowerCase();
if ((agent.indexOf("msie 6") > -1)||(agent.indexOf("msie 7") > -1)||(agent.indexOf("msie 8") > -1)) {
  document.write("<link rel='stylesheet' href='/css/ie.css' type='text/css'>");
}

function InfObj(type, index, name, name_en) {
	var inf = this;
	inf.type = type;
	inf.index = index;
	inf.townname = name;
    inf.townname_en = name_en;
	inf.cIndex = null;
	inf.width = null;
  inf.height = null;
  inf.domain = null;

  //--PNG
  inf.text=null;
  inf.border=null;
  inf.bgtitle=null;
  inf.titleinf=null;
  inf.bgbodycolor1=null;
  inf.bgbodycolor2=null;
  inf.bglogo1=null;
  inf.bglogo2=null;

  //--flash
  inf.name=null;
  inf.params=null;
  
  //--html
  inf.cities = null;
  inf.iconsHtmlType = 2;

  inf.countRequest=0;

  inf.callfunc=false;

	inf.img=null;
	
	inf.setDomain = function() {
			var arr = document.location.hostname.split('.');
			this.domain = arr[arr.length-1];		
	}

	inf.setInfParam=function(text, border, bgtitle, bgbodycolor1, bgbodycolor2, bglogo1, bglogo2){
    inf.text=text;
    inf.border=border;
    inf.bgtitle=bgtitle;
    inf.bgbodycolor1=bgbodycolor1;
    inf.bgbodycolor2=bgbodycolor2;
    inf.bglogo1=bglogo1;
    inf.bglogo2=bglogo2;
  }

  inf.infChange=function(text, border, bgtitle, bgbodycolor1, bgbodycolor2, bglogo1,bglogo2){
  	inf.setInfParam(text, border, bgtitle, bgbodycolor1, bgbodycolor2, bglogo1,bglogo2);
  	inf.fillOwnColor(border);
  	inf.setInformer(inf.index, inf.townname, inf.townname_en, border, false);
  }

  inf.infFlashChange=function(params){
  	inf.params=params;
  	inf.setFlashInformer(inf.index, false);
  }

  inf.setCallbackFunct = function(name){
		inf.callfunc = name;
  }
  
  inf.setInformer=function(index, name, name_en, color, bUpdateSamples) {
  	inf.index=index;
  	inf.townname = name;
  	inf.townname_en = name_en;
  	if (color=="")  color=null;
  	if (color!=null) {
  		if (document.getElementById("borderinf").checked) inf.border=color;
  		if (document.getElementById("textinf").checked) inf.text=color;
  		if (document.getElementById("titleinf").checked) inf.bgtitle=color;
  		if (document.getElementById("body1inf").checked) inf.bgbodycolor1=color;
  		if (document.getElementById("body2inf").checked) inf.bgbodycolor2=color;
  		if (document.getElementById("logo1inf").checked) inf.bglogo1=color;
  		if (document.getElementById("logo2inf").checked) inf.bglogo2=color;

  		inf.fillOwnColor(color);
    }

    if(inf.callfunc!=false) {
      inf.img=document.createElement("img");
      
      eval(inf.callfunc(inf.img, inf.type, inf.index, inf.text, inf.border, inf.bgtitle, inf.bgbodycolor1, inf.bgbodycolor2, inf.bglogo1, inf.bglogo2, bUpdateSamples));
    }

  }

  inf.setFlashInformer=function(index, bUpdateSamples) {
  	inf.index=index;
    if(inf.callfunc!=false)
      eval(inf.callfunc(bUpdateSamples));
  }
  
  inf.setHtmlInformer = function() {
  	if(inf.callfunc!=false) {
  		eval(inf.callfunc());
  	}
  }
  
  inf.setIconsHtmlType = function(value) {
  	this.iconsHtmlType = 2;
  	if (value) this.iconsHtmlType = 1;
  	this.setHtmlInformer();
  }
  
  inf.setHtmlInformerStyle = function(color) {
  	if (color=="")  color=null;
  	if (color!=null) {
  		if (document.getElementById("bgtitle").checked) 
  			this.addStyleCSS("meteonova-informer-bgtitle-color", "table.meteonova-informer td.mn-title", "background-color", "#"+color);
  		
  		if (document.getElementById("texttitle").checked)
  			this.addStyleCSS("meteonova-informer-texttitle-color-a", "table.meteonova-informer a.mn-title-a", "color", "#"+color);

  		if (document.getElementById("bgbody1").checked)
  			this.addStyleCSS("meteonova-informer-bgbody1-color", "table.meteonova-informer td.mn-main-td", "background-color", "#"+color);
  		    
  		if (document.getElementById("textbody").checked) {
   			//this.addStyleCSS("meteonova-informer-textbody-color-a", "table.meteonova-informer td.mn-main-td a", "color", "#"+color);
  			this.addStyleCSS("meteonova-informer-textbody-color", "table.meteonova-informer td.mn-main-td", "color", "#"+color);
  		}  

  		if (document.getElementById("bgtitledate").checked)
  			this.addStyleCSS("meteonova-informer-bgtitledate-color", "table.meteonova-informer td.mn-main-td-date", "background-color", "#"+color);

  		if (document.getElementById("texttitledate").checked)
  			this.addStyleCSS("meteonova-informer-texttitledate-color", "table.meteonova-informer td.mn-main-td-date", "color", "#"+color);

  		if (document.getElementById("bgbody2").checked)
  			this.addStyleCSS("meteonova-informer-bgbody2-color", "table.meteonova-informer td.mn-sub-td", "background-color", "#"+color);
    
  		if (document.getElementById("textbody2").checked)
   			this.addStyleCSS("meteonova-informer-textbody2-color", "table.meteonova-informer td.mn-sub-td", "color", "#"+color);
    
    	inf.fillOwnColor(color);
    }
    
    fillIcode();  	
  }
  
  inf.addStyleCSS = function(objId, selector, propert, value) {
  	var e = document.getElementById(objId);
  	if (!e) {
  		var e = document.createElement("style"); 
			e.type = "text/css";
			e.setAttribute("id", objId);
			document.getElementsByTagName("head")[0].appendChild(e);
		} 
		e.innerHTML = selector+"{"+propert+":"+value+"}";  
  }

  inf.checkColor=function(color) {
    document.getElementById("buttoncolor").disabled=true;
    if (color.length==6) {
        var reg=/[0-9a-f]{6}/i;
        var bOk=reg.test(color); 
        if (bOk) document.getElementById("buttoncolor").disabled=false;
  	}
  }
  
  inf.fillOwnColor=function(color){
  	document.getElementById("owncolor").value=color;
  	inf.checkColor(color);
  }

  inf.setGeotarg = function() {
	var e = document.getElementById("setGeotarg");
	if (e) {
		//if (e.checked) inf.disabledSelectLists(true);
		//else inf.disabledSelectLists(false);
		inf.setInformer(inf.index, inf.townname, inf.townname_en, null, true);
	}
  }	
		
	 	inf.disabledSelectLists = function(value) {
	 		var arr = new Array("countries", "regions", "cities");
	 		for (var i=0; i<arr.length; i++) {
	 			var e = document.getElementById(arr[i]);
	 			if (e) {
	 				e.disabled = value;	
	 				if (value) e.className = "selectList_disable";
	 				else e.className = "selectList";
	 			} 
	 		}
	 		arr=null;	 		
	 	}
	 	
	inf.fillInformerCityList = function(value) {
		var e = document.getElementById("infcitylist");
		if (e) {
			for (var i = 0; i< value.length; i++) {
				var newOption = document.createElement("OPTION");
				newOption.value = parseInt(value[i]);
				newOption.text = value[i].replace(parseInt(value[i]), '');
    		e.options[e.options.length] = newOption;
    		newOption=null;	
			}
		}
	}	
	
	inf.addCity = function() {
		var e = document.getElementById("cities");
		if (this.isInformerCityList(e.options[e.selectedIndex].value)) { alert('����� ��� ������������ � ������ ������� ��� ���������'); return; }
		var arr = [];
		arr.push(e.options[e.selectedIndex].value+e.options[e.selectedIndex].text);
		this.fillInformerCityList(arr);
		arr = null;
		this.setCities();
		this.setHtmlInformer();
	}	
	
	inf.upCity = function() {
 		var e = document.getElementById("infcitylist");
 		var i = e.selectedIndex;
 		if(i > 0) {
   		e1 = e.options[i];
   		e2 = e.options[i-1];
   		e.insertBefore(e1,e2);
 		}	
		this.setCities();
		this.setHtmlInformer();
	}
	
	inf.downCity = function() {
 		var e = document.getElementById("infcitylist");
 		var i = e.selectedIndex;
		if(i < e.options.length-1) {
			e1 = e.options[i];
		  e2 = e.options[i+1];
		  e.insertBefore(e2,e1);
		}
		this.setCities();
		this.setHtmlInformer();		
	}
	
	inf.deleteCity = function() {
 		var e = document.getElementById("infcitylist");
		if (e.options.length == 1) { alert("������ ��������� ������� ������ ��������� ���� �� ���� �����"); return; }
		if (e.selectedIndex == -1) return;
		e.remove(e.selectedIndex);
		e.selectedIndex = e.length -1;
		this.setCities();
		this.setHtmlInformer();		
	}    

	inf.setCities = function(){
		this.cities = [];
		var e = document.getElementById("infcitylist");
		for(var i=0; i<e.length; i++) 
			this.cities.push(e.options[i].value+e.options[i].text);
	}
	
	inf.isInformerCityList = function(value) {
		var e = document.getElementById("infcitylist");
		if (e) {
			for (var i = 0; i < e.options.length; i++) {
				if (e.options[i].value == value) return true;
			}
		}	
		return false;	
	}
}

////////////////////////////////////////////////////////////////////////////////////////////////////

var bIE6=agent.indexOf("msie 6")>-1;