function printtable(pref_){
	w=window.open("", "printable", "location=no, toolbar=yes, menubar=yes, width=730, height=600");
	w.document.write(getHeader(pref_));
	w.document.write(getBody(pref_));
	w.document.write(getFooter());
	w.document.close();
}

function getHeader(pref_) {
	var temp;
	temp="<html>"
	temp+='<head><title>МЕТЕОНОВА - погодный робот</title><META http-equiv=Content-Type content="text/html charset=windows-1251">'+
			'<link rel="stylesheet" href="/css/mosg_990.css" type="text/css">'+
  			'<link rel="stylesheet" href="/css/general.css" type="text/css">';
  	if (pref_=="agro_")
  		temp+='<link rel="stylesheet" href="/css/agro_print.css" type="text/css">';

  	if (pref_=="frc_")
  		temp+='<link rel="stylesheet" href="/css/frc_print.css" type="text/css">';

	return temp+"</head>";
}

function getBody(pref_) {
	var temp;
	temp="<body>";
 	temp+="<div style='margin-left:15px'><img src='/images/logo.gif' width='250' height='50' title='Meteonova' alt='Meteonova'></div>";
 	temp+="<div class='city_name_print'>"+printcaption+"</div>";
// 	temp+="<div class='city_name_print'>"+document.getElementById("city_name").innerHTML+"</div>";
	temp+="<div class='"+pref_+"content_weather'>"+document.getElementById(pref_+"content_weather").innerHTML+"</div>";
	return temp;
}

function getFooter() {
	var temp;
	temp="<div class='footer'>Copyright © 2009-2011, Метеосистемы</div></body></html>";
	return temp;
}

