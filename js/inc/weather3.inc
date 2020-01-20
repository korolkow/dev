 arrweekday=new Array("вс","пн","вт","ср","чт","пт","сб","вс");
 arrtod=new Array("Ночь","Утро","День","Вечер");
 arrFrcDay=new Array("0","1","2","3","4","5");
 arrAltMstorm=new Array("Нет магнитных возмущений","Небольшие магнитные возмущения","Слабая геомагнитная буря","Малая геомагнитная буря","Умеренная геомагнитная буря","Сильная геомагнитная буря","Жесткий геомагнитный шторм","Экстремальный геомагнитный шторм","Возможна магнитная буря");
 arrAltWashAuto=new Array("Можно смело мыть машину","Машину лучше не мыть","Нет смысла мыть машину");
 var numFRC=0;

 function checkFrcTopLink(){
   for (var i=0; i<arrFrcDay.length; i++)
     if (numFRC>=0 && numFRC==arrFrcDay[i]) {
       document.getElementById("frc_"+arrFrcDay[i]).style.color="#3b55c5";
       document.getElementById("frc_"+arrFrcDay[i]).style.fontWeight="bold";
     }
     else {
       document.getElementById("frc_"+arrFrcDay[i]).style.color="#0000ee";
       document.getElementById("frc_"+arrFrcDay[i]).style.fontWeight="normal";
     }
 }

function FrcObject() {

    this.showFrc = function() {
		document.getElementById("frc_content_weather0").innerHTML = this.displayFrc();
	}

    this.showAutoFrc = function() {
		document.getElementById("frc_content_weather0").innerHTML = this.displayAutoFrc();
	}

    this.showAviaFrc = function() {
		document.getElementById("frc_content_weather0").innerHTML = this.displayAviaFrc();
	}

    this.showMedFrc = function() {
		document.getElementById("frc_content_weather0").innerHTML = this.displayMedFrc();
	}

    this.printFrc=function(){
	w=window.open("", "printable", "location=no, scrollbars=yes, toolbar=yes, menubar=yes, width=750, height=550");
	w.document.write(this.printHeader());
	w.document.write(this.printBody());
	w.document.write(this.printFooter());
	w.document.close();
	}
	

    this.printHeader=function() {
	return "<html>"+
	 '<head><title>Метеонова - погодный робот. Версия для печати</title><META http-equiv=Content-Type content="text/html charset=windows-1251">'+
	 '<style>'+
		'BODY {font: 14px Arial,helv; padding-left: 15px; padding-top: 0px;} '+
		'TD {font: 14px Arial,helv;padding-left: 6px; padding-right: 7px; border-right: 1px solid #000;} '+
		'.btl {border-top: 1px solid #000;} '+
		'.hdr {font: bold 16px Arial,helv; padding-left: 8px; padding-right: 7px; border-bottom: 1px solid #000;} '+
		'.temper{font: bold 18px Arial,helv;} '+
		'.caption {font: bold 22px Arial,helv; padding-left:10px; padding-bottom:20px; padding-top:10px;} '+
		'.red {color: #600;} '+
	 '</style>'+
         '</head><body>';
	}

     this.printFooter=function(){	
	return 	"<br><br>Copyright © 2009-2012, Метеосистемы</body></html>";
	}
     
     this.printBody=function(){
	var temp;
 	temp="<div style='margin-left:5px; margin-top:0px'><img src='/images/logo.gif' width='250' height='50' alt='Метеонова'></div>";
 	temp+="<div class='caption'>"+document.getElementById("city_name").innerHTML+"</div>";
	temp+="<table border=0 cellpadding=0 cellspacing=0 width=100%><tr><td>";
	temp+="<table border=0 cellpadding=0 cellspacing=0><tr><td class=hdr>Дата</td><td class=hdr>Явл</td><td align=center class=hdr>Давл</td><td class=hdr align=center>Темп</td><td class=hdr align=center>Влж</td><td class=hdr align=center>Ветер</td><td class=hdr align=center>Комф</td></tr>";

	for (var i=1;i<21;i++) {
		var hour = arrFRC[i][3];
	        var tod = this.getTod(hour);
		var btl=""; 
		var ttl=" class='temper' ";
		if(arrFRC[i][1]!=arrFRC[i-1][1]){ btl=" class='btl' "; ttl=" class='btl temper' ";}
	        temp+="<tr><td nowrap "+btl+">"+arrFRC[i][1]+" "+arrweekday[arrFRC[i][2]-1]+", "+arrtod[tod];
		temp+="</td><td"+btl+" align=center>"+this.fillPhenomenaPrint(tod,arrFRC[i][4],arrFRC[i][5], arrFRC[i][arrFRC[i].length-1])+"</td>"+
	        "<td"+btl+" align=center>"+arrFRC[i][6]+"</td>"+
                "<td"+ttl+" align=center>"+arrFRC[i][7]+"</td>"+
                "<td"+btl+" align=center>"+arrFRC[i][8]+"</td>"+
                "<td nowrap "+btl+" align=center>"+arrFRC[i][9].replace("<br>",", ")+"</td>"+
                "<td"+btl+" align=center>"+arrFRC[i][10]+"</td>"+
		"</tr>";
	}
        temp+="</table></td><td valign=top>"+document.getElementById("frc_text_0").innerHTML+document.getElementById("frc_text_1").innerHTML+document.getElementById("frc_text_2").innerHTML+"</td></tr></table>";
	return temp;
	}


	this.displayFrc = function() {
		if (document.getElementById("blog_text"))
       		document.getElementById("blog_text").innerHTML=document.getElementById("frc_text_"+numFRC).innerHTML;
		var contents = "<table border='0'  cellspacing='0' cellpadding='0'><tr>";
  		for (var i=0;i<arrFRC.length;i++) {
		  var hour = arrFRC[i][3];
		  var tod = this.getTod(hour);
		  if (arrFRC[i][4]<3) var cloudiness=0; else if ((arrFRC[i][4]>=3)&&(arrFRC[i][4]<8)) cloudiness=3; else cloudiness=8;
		  contents+='<td class="fon_'+tod+'_'+cloudiness+' weather_td" id="'+arrFRC[i][0]+'"><table border="0"  cellspacing="0" cellpadding="0">';
		  contents+=this.fillDayAndWeekDay(arrFRC[i][1],arrFRC[i][2]);
		  if (arrFRC[i][0]== "td2") contents+=this.fillHour(tod, hour); else contents+=this.fillTod(tod);
		  contents+=this.fillPhenomena(tod,arrFRC[i][4],arrFRC[i][5], arrFRC[i][arrFRC[i].length-1]);
                  contents+="<tr><td class=\"hum topborder\">"+arrFRC[i][6]+"</td></tr>";
                  contents+="<tr><td class=\"temper\">"+arrFRC[i][7]+"</td></tr>";
                  contents+="<tr><td class=\"hum\">"+arrFRC[i][8]+"</td></tr>";
                  contents+="<tr><td class=\"wind\">"+arrFRC[i][9]+"</td></tr>";
                  contents+="<tr><td class=\"hum\">"+arrFRC[i][10]+"</td></tr>";
                  contents+="<tr><td class=\"hum\">"+arrFRC[i][14]+"</td></tr>";
                  contents+=this.fillMStorm(arrFRC[i][11]);
	          contents+='</table></td>';
//		  if (arrFRC[i][0] == "td2") contents+='<td id="delim"></td>';
  		}
		return contents+"</tr></table>"
	}


	this.displayAutoFrc = function() {
		var contents = "<table border='0'  cellspacing='0' cellpadding='0'><tr>";
  		for (var i=0;i<arrFRC.length;i++) {
		  var hour = arrFRC[i][2];
		  var tod = this.getTod(hour);
		  if (arrFRC[i][3]<3) var cloudiness=0; else if ((arrFRC[i][3]>=3)&&(arrFRC[i][3]<8)) cloudiness=3; else cloudiness=8;
		  contents+='<td class="fon_'+tod+'_'+cloudiness+' weather_td"><table border="0"  cellspacing="0" cellpadding="0">';
		  contents+=this.fillDayAndWeekDay(arrFRC[i][0],arrFRC[i][1]);
		  contents+=this.fillHour(tod, hour);
		  contents+=this.fillPhenomena(tod,arrFRC[i][3],arrFRC[i][4], arrFRC[i][5]);
                  contents+="<tr><td class=\"hum topborder\">"+arrFRC[i][6]+"</td></tr>";
                  contents+="<tr><td class=\"temper\">"+arrFRC[i][7]+"</td></tr>";
                  contents+="<tr><td class=\"hum\">"+arrFRC[i][8]+"</td></tr>";
                  contents+="<tr><td class=\"wind\">"+arrFRC[i][9]+"</td></tr>";
                  contents+="<tr><td class=\"hum\">"+arrFRC[i][12]+"</td></tr>";
                  contents+="<tr><td class=\"wind\">"+arrFRC[i][13]+"</td></tr>";
                  contents+=this.fillAutoSemaphore(arrFRC[i][10],arrFRC[i][11]);
                  contents+=this.fillWashAuto(arrFRC[i][14]);
	          contents+='</table></td>';
  		}
		return contents+"</tr></table>"
	}

	this.displayAviaFrc = function() {
		var contents = "<table border='0'  cellspacing='0' cellpadding='0'><tr>";
  		for (var i=0;i<arrFRC.length;i++) {
		  var hour = arrFRC[i][2];
		  var tod = this.getTod(hour);
		  if (arrFRC[i][3]<3) var cloudiness=0; else if ((arrFRC[i][3]>=3)&&(arrFRC[i][3]<8)) cloudiness=3; else cloudiness=8;
		  contents+='<td class="fon_'+tod+'_'+cloudiness+' weather_td"><table border="0"  cellspacing="0" cellpadding="0">';
		  contents+=this.fillDayAndWeekDay(arrFRC[i][0],arrFRC[i][1]);
		  contents+=this.fillHour(tod, hour);
		  contents+=this.fillPhenomena(tod,arrFRC[i][3],arrFRC[i][4], arrFRC[i][5]);
                  contents+="<tr><td class=\"temper\">"+arrFRC[i][6]+"</td></tr>";
                  contents+="<tr><td class=\"hum\">"+arrFRC[i][7]+"</td></tr>";
                  contents+="<tr><td class=\"wind\">"+arrFRC[i][8]+"</td></tr>";
                  contents+="<tr><td class=\"hum\">"+arrFRC[i][11]+"</td></tr>";
                  contents+="<tr><td class=\"hum\">"+arrFRC[i][12]+"</td></tr>";
                  contents+=this.fillAutoSemaphore(arrFRC[i][9],arrFRC[i][10]);
	          contents+='</table></td>';
  		}
		return contents+"</tr></table>"
	}

	this.displayMedFrc = function() {
		var contents = "<table border='0'  cellspacing='0' cellpadding='0'><tr>";
  		for (var i=0;i<arrFRC.length;i++) {
		  var hour = arrFRC[i][2];
		  var tod = this.getTod(hour);
		  if (arrFRC[i][3]<3) var cloudiness=0; else if ((arrFRC[i][3]>=3)&&(arrFRC[i][3]<8)) cloudiness=3; else cloudiness=8;
		  contents+='<td class="fon_'+tod+'_'+cloudiness+' weather_td"><table border="0"  cellspacing="0" cellpadding="0">';
		  contents+=this.fillDayAndWeekDay(arrFRC[i][0],arrFRC[i][1]);
//		  contents+=this.fillHour(tod, hour);
		  contents+=this.fillTod(tod);
		  contents+=this.fillPhenomena(tod,arrFRC[i][3],arrFRC[i][4], arrFRC[i][5]);
                  contents+="<tr><td class=\"hum\">"+arrFRC[i][6]+"</td></tr>";
                  contents+="<tr><td class=\"hum\">"+arrFRC[i][7]+"</td></tr>";
                  contents+="<tr><td class=\"temper\">"+arrFRC[i][8]+"</td></tr>";
                  contents+="<tr><td class=\"hum\">"+arrFRC[i][9]+"</td></tr>";
                  contents+="<tr><td class=\"hum\">"+arrFRC[i][10]+"</td></tr>";
                  contents+=this.fillAutoSemaphore(arrFRC[i][11],arrFRC[i][12]);
                  contents+=this.fillMedStorm(arrFRC[i][13]);
	          contents+='</table></td>';
  		}
		return contents+"</tr></table>"
	}

	this.getTod = function(hour) {
	    if ((hour>=0) && (hour<6)) return 0;
	    if ((hour>=6) && (hour<12)) return 1;
	    if ((hour>=12) && (hour<18)) return 2;
	    if ((hour>=18) && (hour<24)) return 3;
	}

	this.fillDayAndWeekDay = function(day,weekday) {
		var className = "";
	    if ((weekday==1) ||(weekday==7)) className = "red";
		return "<tr><td class=\"date "+className+"\">"+day+" "+arrweekday[weekday-1]+"</td></tr>";
	}

	this.fillHour = function (tod,hour) {
		var className = "";
		if ((tod==0) || (tod==3)) className = "white";
		return "<tr><td class=\"tod "+className+"\">"+hour+":00</td></tr>";
	}

	this.fillTod = function(tod) {
		var className = "";
		if ((tod==0) || (tod==3)) className = "white";
		return "<tr><td class=\"tod "+className+"\">"+arrtod[tod]+"</td></tr>";
	}

	this.fillPhenomena = function(tod,cloudiness,precipitation,alt) {
	  if ((tod==0) || (tod==3))  var pref_tod="n";
	  else var pref_tod="d";
	  return '<tr class="display"><td class="phenom" align="center"><img src="/images/icon/'+pref_tod+precipitation+"_"+cloudiness+'.png" alt="'+alt+'" title="'+alt+'" width="50" height="80" onLoad="if(typeof(transparent) == \'function\') transparent(this)"></td></tr>';
	}

	this.fillPhenomenaPrint = function(tod,cloudiness,precipitation,alt) {
	  if ((tod==0) || (tod==3))  var pref_tod="n";  else var pref_tod="d";
	 return '<img src="/images/prticons/'+pref_tod+precipitation+"_"+cloudiness+'.png" alt="'+alt+'" title="'+alt+'" width="25" height="40">';
	}

	this.fillTemper = function(tod, temper) {
		var className = "";
		if (tod==2) className = "red";
		return "<tr><td class=\"temper "+className+"\">"+temper+"</td></tr>";
	}

	this.fillMStorm = function(mStopm) {
		if (mStopm>2) var MstormPict="2";
	    else var MstormPict=mStopm;
	  	return '<tr class="display"><td class="mstorm" align="center"><img src="/images/mstorm/'+MstormPict+'.png" width="34" height="12"  onLoad="if(typeof(transparent) == \'function\') transparent(this)" alt="'+arrAltMstorm[mStopm]+'" title="'+arrAltMstorm[mStopm]+'"></td></tr>';
	}

	this.fillMedStorm = function(mStopm) {
		if (mStopm>2) var MstormPict="2"; else var MstormPict=mStopm;
	  	return '<tr class="display"><td class="temper" align="center"><img src="/images/semaicons/'+MstormPict+'.png" width="23" height="23"  onLoad="if(typeof(transparent) == \'function\') transparent(this)" alt="'+arrAltMstorm[mStopm]+'" title="'+arrAltMstorm[mStopm]+'"></td></tr>';
	}

	this.fillAutoSemaphore = function(nSem,sSem) {
	  	return '<tr class="display"><td class="temper" align="center"><img src="/images/semaicons/'+nSem+'.png" width="23" height="23"  onLoad="if(typeof(transparent) == \'function\') transparent(this)" alt="'+sSem+'" title="'+sSem+'"></td></tr>';
	}

	this.fillWashAuto = function(nS) {
	  	return '<tr class="display"><td class="hum" align="center">'+nS+'</td></tr>';
	}

}
