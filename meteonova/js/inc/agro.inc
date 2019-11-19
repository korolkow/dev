var arrweekday=new Array("вс","пн","вт","ср","чт","пт","сб","вс");
var arrtod=new Array("Ночь","Утро","День","Вечер");
var arrFrcDay=new Array("0","1","2","3","4","5");

function AgroObject(){

	this.showFrc=function() {

    	document.getElementById("agro_content_weather0").innerHTML = this.showDatePhenomena();
		document.getElementById("agro_content_weather2").innerHTML = this.showAirTemper();
		document.getElementById("agro_content_weather3").innerHTML = this.showAreaTemper();
		document.getElementById("agro_content_weather4").innerHTML = this.showLandTemper();
		document.getElementById("agro_content_weather5").innerHTML = this.showSoilTemper();
	}

	this.showDatePhenomena = function(){
		var contents = "<table border='0'  cellspacing='0' cellpadding='0'><tr>";
  		for (var i=0;i<arrFRC.length;i++) {
        	var tod=arrFRC[i][3];
		   	if (arrFRC[i][4]<3) var cloudiness=0; else if ((arrFRC[i][4]>=3)&&(arrFRC[i][4]<8)) cloudiness=3; else cloudiness=8;
		    contents+='<td class="fon_'+tod+'_'+cloudiness+' weather_td"><table border="0"  cellspacing="0" cellpadding="0">';
		    contents+=this.fillDayAndWeekDay(arrFRC[i][1],arrFRC[i][2]);
		    contents+=this.fillTod(tod);
		    contents+=this.fillPhenomena(tod,arrFRC[i][4],arrFRC[i][5], arrFRC[i][13]);
		    contents+='</table></td>';
  		}
		return contents+"</tr></table>"
	}

	this.showAirTemper = function() {
		var contents = "<table border='0' cellspacing='0' cellpadding='0'><tr>";
		for (var i=0;i<arrFRC.length;i++) {
			var tod=arrFRC[i][3];
		    contents+='<td class="fon_'+tod+' weather_td"><table border="0" cellspacing="0" cellpadding="0">';
		    contents+=this.fillTemper(tod, arrFRC[i][6]);
		    contents+="<tr><td class=\"hum\">"+arrFRC[i][7]+"</td></tr>";
		    contents+="<tr><td class=\"wind\">"+arrFRC[i][8]+"</td></tr>";
		    contents+="<tr><td class=\"hum\">"+arrFRC[i][17]+"</td></tr>";
		    contents+='</table></td>';
		}
		return contents+"</tr></table>"
	}

	this.showAreaTemper = function() {
		var contents = "<table border='0'  cellspacing='0' cellpadding='0'><tr>";
		for (var i=0;i<arrFRC.length;i++) {
			var tod=arrFRC[i][3];
		    contents+='<td class="fon_'+tod+' weather_td"><table border="0" cellspacing="0" cellpadding="0">';
		    contents+="<tr><td class=\"temper\">"+arrFRC[i][9]+"</td></tr>";
		    contents+="<tr><td class=\"hum\">"+arrFRC[i][10]+"</td></tr>";
		    contents+="<tr><td class=\"hum\">"+arrFRC[i][18]+"</td></tr>";
		    contents+="<tr><td class=\"hum\">"+arrFRC[i][19]+"</td></tr>";
		    contents+="<tr><td class=\"hum\">"+arrFRC[i][16]+"</td></tr>";
		    contents+='</table></td>';
		}
		return contents+"</tr></table>"
	}

	this.showLandTemper = function() {
		var contents = "<table border='0'  cellspacing='0' cellpadding='0'><tr>";
		for (var i=0;i<arrFRC.length;i++) {
			var tod=arrFRC[i][3];
		    contents+='<td class="fon_'+tod+' weather_td"><table border="0" cellspacing="0" cellpadding="0">';
		    contents+="<tr><td class=\"temper\">"+arrFRC[i][11]+"</td></tr>";
		    contents+="<tr><td class=\"hum\">"+arrFRC[i][12]+"</td></tr>";
		    contents+='</table></td>';
		}
		return contents+"</tr></table>"
	}

	this.showSoilTemper = function() {
		var contents = "<table border='0'  cellspacing='0' cellpadding='0'><tr>";
		for (var i=0;i<arrFRC.length;i++) {
			var tod=arrFRC[i][3];
		    contents+='<td class="fon_'+tod+' weather_td"><table border="0" cellspacing="0" cellpadding="0">';
		    contents+="<tr><td class=\"temper\">"+arrFRC[i][14]+"</td></tr>";
		    contents+="<tr><td class=\"hum\">"+arrFRC[i][15]+"</td></tr>";
		    contents+='</table></td>';
		}
		return contents+"</tr></table>"
	}

	this.fillDayAndWeekDay = function(day,weekday) {
		var className = "";
	    if ((weekday==1) ||(weekday==7)) className = "red";
		return "<tr><td class=\"date "+className+"\">"+day+" "+arrweekday[weekday-1]+"</td></tr>";
	}

	this.fillTod = function(tod) {
		var className = "";
		if ((tod==0) || (tod==3)) className = "white";
		return "<tr><td class=\"tod "+className+"\">"+arrtod[tod]+"</td></tr>";
	}

	this.fillPhenomena = function(tod,cloudiness,precipitation,alt) {
	  if ((tod==0) || (tod==3))  var pref_tod="n";
	  else var pref_tod="d";
	  return '<tr class="display"><td class="phenom" align="center"><img src="/images/icon/'+pref_tod+precipitation+"_"+cloudiness+'.png" alt="'+alt+'" title="'+alt+'" width="50" height="80" onLoad="if(typeof(transparent) == \'function\') transparent(this)"></td></tr>'+
	  		 '<tr class="print_display"><td class="phenom" align="center"><img src="/images/prticons/'+pref_tod+precipitation+"_"+cloudiness+'.png" alt="'+alt+'" title="'+alt+'" width="50" height="80"></td></tr>';
	}

	this.fillTemper = function(tod, temper) {
		var className = "";
		if (tod==2) className = "red";
		return "<tr><td class=\"temper "+className+"\">"+temper+"</td></tr>";
	}

}

