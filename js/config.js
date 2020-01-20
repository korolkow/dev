var reg=/\.\w{2,3}/;
var domain=reg.exec(document.domain);
reg=/[a-z]+/;
//domain=reg.exec(domain);
domain="ru";

var domains=new Array();
//domains["all"]=new Array("ru", "ua", "by");
domains["all"]=new Array("ru", "ua");
domains["ru"]=new Array(156,"ru");
domains["ua"]=new Array(198,"ru");
//domains["by"]=new Array(19,"ru");

var URL="http://www.meteonova."+domain;
//var URL="http://www.meteonova.ru";

var timeOut=null;
