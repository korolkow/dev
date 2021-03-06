<!DOCTYPE html><#TEMPLATE ru_definitions_ru>
<html>
<head>
<title>МЕТЕОНОВА - погода <#TOWN3> на неделю. Прогноз погоды <#TOWN2> 7 дней профессиональная версия для специалистов, составлена по данным за <#FRCPUBTIME></title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
<meta name="description" content="Погода <#TOWN3> на неделю. Подробный специальный прогноз погоды <#TOWN3> (<#REGIONNAME>) на неделю (на 7 суток) для специалистов метеорологов гидрологов океанологов">
<meta name="keywords" content="погода прогноз <#TOWN3> <#REGIONNAME> неделя 7 дней температура облачность осадки дождь снег гололед заморозки влажность почва">
<meta name="Category" content="Справки, Погода">
<meta name="Document-state" content="Dynamic">
<base href="<#SERVERURL>/profi.htm">
<link rel="canonical" href="<#SERVERURL>/pro/<#INDEX>.htm"/>
<!-- inject:css -->
<!-- endinject -->
<!-- inject:js -->
<!-- endinject -->
</head>

<body>
<div class="suggest" id="suggest"></div>
<div class="hint hidden" id="agrohint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Подробный прогноз погоды для садоводов и огродников в окресностях г. <#TOWN>.</div>
<div class="hint hidden" id="autohint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Прогноз неблагоприятных погодных явлений для автомобилистов по дорогам г. <#TOWN>.</div>
<div class="hint hidden" id="s3hint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Наглядный погоды <#TOWN3> на 3 дня</div>
<div class="hint hidden" id="medhint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Медицинский прогноз погоды <#TOWN3> для метеочувствительных людей с заболеваниями сердечно-сосудистой системы и дыхательных путей. <a href="<#SERVERURL>/faq.htm#med" target=_blank>Подробнее...</a></div>
<div class="hint hidden" id="monthhint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Прогноз погоды на месяц <#TOWN2>. Оценка температуры и вероятности осадков на 30 дней. <a href="<#SERVERURL>/faq.htm#month" target=_blank>Подробнее...</a></div>
<div class="hint hidden" id="monthhint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Прогноз погоды на месяц <#TOWN2>. Оценка температуры и вероятности осадков на 30 дней. <a href="<#SERVERURL>/faq.htm#month" target=_blank>Подробнее...</a></div>

<div class="invisible" id="DESC12"><#TEMPLATEPROFI ru_profidescr_ru 12></div>
<div class="invisible" id="DESC18"><#TEMPLATEPROFI ru_profidescr_ru 18></div>
<div class="invisible" id="DESC24"><#TEMPLATEPROFI ru_profidescr_ru 24></div>
<div class="invisible" id="DESC30"><#TEMPLATEPROFI ru_profidescr_ru 30></div>
<div class="invisible" id="DESC36"><#TEMPLATEPROFI ru_profidescr_ru 36></div>
<div class="invisible" id="DESC42"><#TEMPLATEPROFI ru_profidescr_ru 42></div>
<div class="invisible" id="DESC48"><#TEMPLATEPROFI ru_profidescr_ru 48></div>
<div class="invisible" id="DESC54"><#TEMPLATEPROFI ru_profidescr_ru 54></div>
<div class="invisible" id="DESC60"><#TEMPLATEPROFI ru_profidescr_ru 60></div>
<div class="invisible" id="DESC66"><#TEMPLATEPROFI ru_profidescr_ru 66></div>
<div class="invisible" id="DESC72"><#TEMPLATEPROFI ru_profidescr_ru 72></div>
<div class="invisible" id="DESC78"><#TEMPLATEPROFI ru_profidescr_ru 78></div>
<div class="invisible" id="DESC84"><#TEMPLATEPROFI ru_profidescr_ru 84></div>
<div class="invisible" id="DESC90"><#TEMPLATEPROFI ru_profidescr_ru 90></div>
<div class="invisible" id="DESC96"><#TEMPLATEPROFI ru_profidescr_ru 96></div>
<div class="invisible" id="DESC102"><#TEMPLATEPROFI ru_profidescr_ru 102></div>
<div class="invisible" id="DESC108"><#TEMPLATEPROFI ru_profidescr_ru 108></div>
<div class="invisible" id="DESC114"><#TEMPLATEPROFI ru_profidescr_ru 114></div>
<div class="invisible" id="DESC120"><#TEMPLATEPROFI ru_profidescr_ru 120></div>
<div class="invisible" id="DESC126"><#TEMPLATEPROFI ru_profidescr_ru 126></div>
<div class="invisible" id="DESC132"><#TEMPLATEPROFI ru_profidescr_ru 132></div>
<div class="invisible" id="DESC138"><#TEMPLATEPROFI ru_profidescr_ru 138></div>
<div class="invisible" id="DESC144"><#TEMPLATEPROFI ru_profidescr_ru 144></div>
<script language="JavaScript">
var bgs=new Array("#b9bfcd","#f6f0df","#eee5c8","#cbd4e1");
function WMOver(obj, str){
 obj.style.background="#2b3a6e";
 for (var i=1; i<=7; i++){ var o=document.getElementById(str+i); if(o) o.style.color="#ffffff";}
 var o=document.getElementById("profi_td2_content"); if(o) o.innerHTML=document.getElementById("DESC"+str).innerHTML;

}
function WMOut(obj, str, tod){
 for (var i=1; i<=7; i++){ var o=document.getElementById(str+i); if(o) o.style.color="#1f2298";}
 obj.style.background=bgs[tod];
}
</script>
<noscript>
Метео прогноз погоды <#TOWN3> на неделю, погода <#TOWN> на 7 дней - профессиональная версия для специалистов
</noscript>

<div id="doc4" class="yui-t5">
<#TEMPLATE ru_adw728x90_ru>
   <div id="hd">
     <div id="onhd">
      <div> 
       <div id="logo"><a href="<#SERVERURL>"><img src="<#IMGBASE>/logo.png" width="277" height="96" alt="Метеопрогноз погоды <#TOWN3> на неделю"></a></div>
   <#TEMPLATE ru_menu_ru>
      </div>
     </div>
   </div>
<div>
<div id="bd">
   <div id="yui-main">
   <div class="yui-b">
      <div class="block_city">
         <div class="round_left">
         <img src="<#IMGBASE>/city_left.png"
         width="10" height="46" class="corner"/>
         </div>
         <div class="city_content">
            <h1>Погода <#TOWN2></h1>
                 <div class="other_city"><a href="<#SERVERURL>/search/"><font color="#8ca2fe"><b>Другой город</b></font></a></div>
            <div class="serchcontent">
                     <div class="searchform frc" id="searchform">
                        <div class="left-input l">
                           <div class="right-input r">
                              <div class="img" id="searchform_img"></div>                     
                              <div class="fill-input c">          
                                 <input class="search grey" type="text" value="поиск погоды" onload="this.value = 'поиск погоды'" onfocus="setSuggest(this, 'searchform', 'searchform_img', 'поиск погоды')">
                              </div>          
                           </div>   
                        </div>            
                     </div>
                 </div>

         </div>
         <div class="round_right">
         <img src="<#IMGBASE>/city_right.png"
         width="10" height="46" class="corner"/>
         </div>
    </div>
  <div class="main_container">
         <div class="block_top">
            <div class="round_left">
            <img src="<#IMGBASE>/block_top_left.png"
               width="9" height="31" class="corner" />
            </div>
            <div class="block_title main_container_title_width">

              <div class="icon"><img src="<#IMGBASE>/icon.png" width="26" height="26" alt="Метеопрогноз погоды <#TOWN3> на неделю для профессионалов" ></div>
               <div class="title"><b>ПРОФИ</b></div>
               <div class="top_link">
                     <ul>
                      <li><a href="<#SERVERURL>/3days/<#INDEX>-pogoda-<#TOWNEN_>.htm"><b>На 3 дня</b></a>&nbsp;<img src="images/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 's3hint', true, 250);" onmouseout="showHint(this, 's3hint', false, 250);"></li>
                      <li><a href="<#SERVERURL>/frc/<#INDEX>.htm"><b>На 2 недели</b></a></li>
                <#MONTHLINK ru_monthlinkt_ru>
                      <li><a href="<#SERVERURL>/auto/<#INDEX>.htm"><b>Авто</b></a>&nbsp;<img src="images/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'autohint', true, 250);" onmouseout="showHint(this, 'autohint', false, 250);"></li>
                      <li><a href="<#SERVERURL>/agro/<#INDEX>.htm"><b>Агро</b></a>&nbsp;<img src="images/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'agrohint', true, 250);" onmouseout="showHint(this, 'agrohint', false, 250);"></li>
                      <li class="last"><a href="<#SERVERURL>/med/<#INDEX>.htm"><b>Медицинский</b></a>&nbsp;<img src="images/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'medhint', true, 250);" onmouseout="showHint(this, 'medhint', false, 250);"></li>
                  </ul>
               </div>
            </div>
            <div class="round_right">
               <img src="<#IMGBASE>/block_top_right.png"
               width="9" height="31" class="corner" />
            </div>
         </div>

         <div class="block_content">
         <div style="height:25px; top:10px; position:relative;">
            <table>
            <tr>
               <td width="170"></td>
               <td width="35" align="center"><b>Обл.</b></td>
               <td width="60" align="center"><b>Осадки</b></td>
               <td width="40" align="center"><b>Темп.</b></td>
               <td width="40" align="center"><b>Давл.</b></td>
               <td width="35" align="center"><b>Вл.</b></td>
               <td width="80" align="center"><b>Ветер</b></td>
            </tr>
            </table>
         </div>
         <div id="profi_frc_content_weather">
         <div id="profi_td1">
               <table>
                  <tr class="profi_tr_<#DTOD12>" onMouseOver="WMOver(this, '12');" onMouseOut="WMOut(this, '12', <#DTOD12>);">
                      <td id="120" class="date <#DRED12>"><#TIMP12></td>
                     <td  class="td_0"></td>
                     <td id="121" class="tod"><#DHOR12>:00</td>
                     <td class="td_2"></td>
                     <td id="122" class="cloud"><#CLDP12></td>
                     <td id="123" class="precip"><#PREC12></td>
                     <td id="124" class="temper"><#TEMM12></td>
                     <td id="125" class="press"><#PREM12></td>
                     <td id="126" class="hum"><#RWEM12></td>
                     <td id="127" class="wind"><#WINP12></td>
                  </tr>
                  <tr class="profi_tr_<#DTOD18>" onMouseOver="WMOver(this, '18');" onMouseOut="WMOut(this, '18', <#DTOD18>);">
                      <td id="180" class="date <#DRED18>"><#TIMP18></td>
                     <td class="td_0"></td>
                     <td id="181" class="tod <#I1ST18>"><#DHOR18>:00</td>
                     <td class="td_2"></td>
                     <td id="182" class="cloud <#I1ST18>"><#CLDP18></td>
                     <td id="183" class="precip <#I1ST18>"><#PREC18></td>
                     <td id="184" class="temper <#I1ST18>"><#TEMM18></td>
                     <td id="185" class="press <#I1ST18>"><#PREM18></td>
                     <td id="186" class="hum <#I1ST18>"><#RWEM18></td>
                     <td id="187" class="wind <#I1ST18>"><#WINP18></td>
                  </tr>
                  <tr class="profi_tr_<#DTOD24>" onMouseOver="WMOver(this, '24');" onMouseOut="WMOut(this, '24', <#DTOD24>);">
                      <td id="240" class="date <#DRED24>"><#TIMP24></td>
                     <td class="td_0"></td>
                     <td id="241" class="tod <#I1ST24>"><#DHOR24>:00</td>
                     <td class="td_2"></td>
                     <td id="242" class="cloud <#I1ST24>"><#CLDP24></td>
                     <td id="243" class="precip <#I1ST24>"><#PREC24></td>
                     <td id="244" class="temper <#I1ST24>"><#TEMM24></td>
                     <td id="245" class="press <#I1ST24>"><#PREM24></td>
                     <td id="246" class="hum <#I1ST24>"><#RWEM24></td>
                     <td id="247" class="wind <#I1ST24>"><#WINP24></td>
                  </tr>
                  <tr class="profi_tr_<#DTOD30>" onMouseOver="WMOver(this, '30');" onMouseOut="WMOut(this, '30', <#DTOD30>);">
                      <td id="300" class="date <#DRED30>"><#TIMP30></td>
                     <td class="td_0"></td>
                     <td id="301" class="tod <#I1ST30>"><#DHOR30>:00</td>
                     <td class="td_2"></td>
                     <td id="302" class="cloud <#I1ST30>"><#CLDP30></td>
                     <td id="303" class="precip <#I1ST30>"><#PREC30></td>
                     <td id="304" class="temper <#I1ST30>"><#TEMM30></td>
                     <td id="305" class="press <#I1ST30>"><#PREM30></td>
                     <td id="306" class="hum <#I1ST30>"><#RWEM30></td>
                     <td id="307" class="wind <#I1ST30>"><#WINP30></td>
                  </tr>
                  <tr class="profi_tr_<#DTOD36>" onMouseOver="WMOver(this, '36');" onMouseOut="WMOut(this, '36', <#DTOD36>);">
                      <td id="360" class="date <#DRED36>"><#TIMP36></td>
                     <td class="td_0"></td>
                     <td id="361" class="tod <#I1ST30>"><#DHOR36>:00</td>
                     <td class="td_2"></td>
                     <td id="362" class="cloud <#I1ST36>"><#CLDP36></td>
                     <td id="363" class="precip <#I1ST36>"><#PREC36></td>
                     <td id="364" class="temper <#I1ST36>"><#TEMM36></td>
                     <td id="365" class="press <#I1ST36>"><#PREM36></td>
                     <td id="366" class="hum <#I1ST36>"><#RWEM36></td>
                     <td id="367" class="wind <#I1ST36>"><#WINP36></td>
                  </tr>
                  <tr class="profi_tr_<#DTOD42>" onMouseOver="WMOver(this, '42');" onMouseOut="WMOut(this, '42', <#DTOD42>);">
                      <td id="420" class="date <#DRED42>"><#TIMP42></td>
                     <td class="td_0"></td>
                     <td id="421" class="tod <#I1ST42>"><#DHOR42>:00</td>
                     <td class="td_2"></td>
                     <td id="422" class="cloud <#I1ST42>"><#CLDP42></td>
                     <td id="423" class="precip <#I1ST42>"><#PREC42></td>
                     <td id="424" class="temper <#I1ST42>"><#TEMM42></td>
                     <td id="425" class="press <#I1ST42>"><#PREM42></td>
                     <td id="426" class="hum <#I1ST42>"><#RWEM42></td>
                     <td id="427" class="wind <#I1ST42>"><#WINP42></td>
                  </tr>
                  <tr class="profi_tr_<#DTOD48>" onMouseOver="WMOver(this, '48');" onMouseOut="WMOut(this, '48', <#DTOD48>);">
                      <td id="480" class="date <#DRED48>"><#TIMP48></td>
                     <td class="td_0"></td>
                     <td id="481" class="tod"><#DHOR48>:00</td>
                     <td class="td_2"></td>
                     <td id="482" class="cloud <#I1ST48>"><#CLDP48></td>
                     <td id="483" class="precip <#I1ST48>"><#PREC48></td>
                     <td id="484" class="temper <#I1ST48>"><#TEMM48></td>
                     <td id="485" class="press <#I1ST48>"><#PREM48></td>
                     <td id="486" class="hum <#I1ST48>"><#RWEM48></td>
                     <td id="487" class="wind <#I1ST48>"><#WINP48></td>
                  </tr>
                  <tr class="profi_tr_<#DTOD54>" onMouseOver="WMOver(this, '54');" onMouseOut="WMOut(this, '54', <#DTOD54>);">
                      <td id="540" class="date <#DRED54>"><#TIMP54></td>
                     <td class="td_0"></td>
                     <td id="541" class="tod"><#DHOR54>:00</td>
                     <td class="td_2"></td>
                     <td id="542" class="cloud <#I1ST54>"><#CLDP54></td>
                     <td id="543" class="precip <#I1ST54>"><#PREC54></td>
                     <td id="544" class="temper <#I1ST54>"><#TEMM54></td>
                     <td id="545" class="press <#I1ST54>"><#PREM54></td>
                     <td id="546" class="hum <#I1ST54>"><#RWEM54></td>
                     <td id="547" class="wind <#I1ST54>"><#WINP54></td>
                  </tr>
                  <tr class="profi_tr_<#DTOD60>" onMouseOver="WMOver(this, '60');" onMouseOut="WMOut(this, '60', <#DTOD60>);">
                      <td id="600" class="date <#DRED60>"><#TIMP60></td>
                     <td class="td_0"></td>
                     <td id="601" class="tod"><#DHOR60>:00</td>
                     <td class="td_2"></td>
                     <td id="602" class="cloud <#I1ST60>"><#CLDP60></td>
                     <td id="603" class="precip <#I1ST60>"><#PREC60></td>
                     <td id="604" class="temper <#I1ST60>"><#TEMM60></td>
                     <td id="605" class="press <#I1ST60>"><#PREM60></td>
                     <td id="606" class="hum <#I1ST60>"><#RWEM60></td>
                     <td id="607" class="wind <#I1ST60>"><#WINP60></td>
                  </tr>
                  <tr class="profi_tr_<#DTOD66>" onMouseOver="WMOver(this, '66');" onMouseOut="WMOut(this, '66', <#DTOD66>);">
                      <td id="660" class="date <#DRED66>"><#TIMP66></td>
                     <td class="td_0"></td>
                     <td id="661" class="tod"><#DHOR66>:00</td>
                     <td class="td_2"></td>
                     <td id="662" class="cloud <#I1ST66>"><#CLDP66></td>
                     <td id="663" class="precip <#I1ST66>"><#PREC66></td>
                     <td id="664" class="temper <#I1ST66>"><#TEMM66></td>
                     <td id="665" class="press <#I1ST66>"><#PREM66></td>
                     <td id="666" class="hum <#I1ST66>"><#RWEM66></td>
                     <td id="667" class="wind <#I1ST66>"><#WINP66></td>
                  </tr>
                  <tr class="profi_tr_<#DTOD72>" onMouseOver="WMOver(this, '72');" onMouseOut="WMOut(this, '72', <#DTOD72>);">
                      <td id="720" class="date <#DRED72>"><#TIMP72></td>
                     <td class="td_0"></td>
                     <td id="721" class="tod"><#DHOR72>:00</td>
                     <td class="td_2"></td>
                     <td id="722" class="cloud <#I1ST72>"><#CLDP72></td>
                     <td id="723" class="precip <#I1ST72>"><#PREC72></td>
                     <td id="724" class="temper <#I1ST72>"><#TEMM72></td>
                     <td id="725" class="press <#I1ST72>"><#PREM72></td>
                     <td id="726" class="hum <#I1ST72>"><#RWEM72></td>
                     <td id="727" class="wind <#I1ST72>"><#WINP72></td>
                  </tr>
                  <tr class="profi_tr_<#DTOD78>" onMouseOver="WMOver(this, '78');" onMouseOut="WMOut(this, '78', <#DTOD78>);">
                      <td id="780" class="date <#DRED78>"><#TIMP78></td>
                     <td class="td_0"></td>
                     <td id="781" class="tod"><#DHOR78>:00</td>
                     <td class="td_2"></td>
                     <td id="782" class="cloud <#I1ST78>"><#CLDP78></td>
                     <td id="783" class="precip <#I1ST78>"><#PREC78></td>
                     <td id="784" class="temper <#I1ST78>"><#TEMM78></td>
                     <td id="785" class="press <#I1ST78>"><#PREM78></td>
                     <td id="786" class="hum <#I1ST78>"><#RWEM78></td>
                     <td id="787" class="wind <#I1ST78>"><#WINP78></td>
                  </tr>
                  <tr class="profi_tr_<#DTOD84>" onMouseOver="WMOver(this, '84');" onMouseOut="WMOut(this, '84', <#DTOD84>);">
                      <td id="840" class="date <#DRED84>"><#TIMP84></td>
                     <td class="td_0"></td>
                     <td id="841" class="tod"><#DHOR84>:00</td>
                     <td class="td_2"></td>
                     <td id="842" class="cloud <#I1ST84>"><#CLDP84></td>
                     <td id="843" class="precip <#I1ST84>"><#PREC84></td>
                     <td id="844" class="temper <#I1ST84>"><#TEMM84></td>
                     <td id="845" class="press <#I1ST84>"><#PREM84></td>
                     <td id="846" class="hum <#I1ST84>"><#RWEM84></td>
                     <td id="847" class="wind <#I1ST84>"><#WINP84></td>
                  </tr>
                  <tr class="profi_tr_<#DTOD90>" onMouseOver="WMOver(this, '90');" onMouseOut="WMOut(this, '90', <#DTOD90>);">
                      <td id="900" class="date <#DRED90>"><#TIMP90></td>
                     <td class="td_0"></td>
                     <td id="901" class="tod"><#DHOR90>:00</td>
                     <td class="td_2"></td>
                     <td id="902" class="cloud <#I1ST90>"><#CLDP90></td>
                     <td id="903" class="precip <#I1ST90>"><#PREC90></td>
                     <td id="904" class="temper <#I1ST90>"><#TEMM90></td>
                     <td id="905" class="press <#I1ST90>"><#PREM90></td>
                     <td id="906" class="hum <#I1ST90>"><#RWEM90></td>
                     <td id="907" class="wind <#I1ST90>"><#WINP90></td>
                  </tr>
                  <tr class="profi_tr_<#DTOD96>" onMouseOver="WMOver(this, '96');" onMouseOut="WMOut(this, '96', <#DTOD96>);">
                      <td id="960" class="date <#DRED96>"><#TIMP96></td>
                     <td class="td_0"></td>
                     <td id="961" class="tod"><#DHOR96>:00</td>
                     <td class="td_2"></td>
                     <td id="962" class="cloud <#I1ST96>"><#CLDP96></td>
                     <td id="963" class="precip <#I1ST96>"><#PREC96></td>
                     <td id="964" class="temper <#I1ST96>"><#TEMM96></td>
                     <td id="965" class="press <#I1ST96>"><#PREM96></td>
                     <td id="966" class="hum <#I1ST96>"><#RWEM96></td>
                     <td id="967" class="wind <#I1ST96>"><#WINP96></td>
                  </tr>
                  <tr class="profi_tr_<#DTOD102>" onMouseOver="WMOver(this, '102');" onMouseOut="WMOut(this, '102', <#DTOD102>);">
                      <td id="1020" class="date <#DRED102>"><#TIMP102></td>
                     <td class="td_0"></td>
                     <td id="1021" class="tod"><#DHOR102>:00</td>
                     <td class="td_2"></td>
                     <td id="1022" class="cloud <#I1ST102>"><#CLDP102></td>
                     <td id="1023" class="precip <#I1ST102>"><#PREC102></td>
                     <td id="1024" class="temper <#I1ST102>"><#TEMM102></td>
                     <td id="1025" class="press <#I1ST102>"><#PREM102></td>
                     <td id="1026" class="hum <#I1ST102>"><#RWEM102></td>
                     <td id="1027" class="wind <#I1ST102>"><#WINP102></td>
                  </tr>
                  <tr class="profi_tr_<#DTOD108>" onMouseOver="WMOver(this, '108');" onMouseOut="WMOut(this, '108', <#DTOD108>);">
                      <td id="1080" class="date <#DRED108>"><#TIMP108></td>
                     <td class="td_0"></td>
                     <td id="1081" class="tod"><#DHOR108>:00</td>
                     <td class="td_2"></td>
                     <td id="1082" class="cloud <#I1ST108>"><#CLDP108></td>
                     <td id="1083" class="precip <#I1ST108>"><#PREC108></td>
                     <td id="1084" class="temper <#I1ST108>"><#TEMM108></td>
                     <td id="1085" class="press <#I1ST108>"><#PREM108></td>
                     <td id="1086" class="hum <#I1ST108>"><#RWEM108></td>
                     <td id="1087" class="wind <#I1ST108>"><#WINP108></td>
                  </tr>
                  <tr class="profi_tr_<#DTOD114>" onMouseOver="WMOver(this, '114');" onMouseOut="WMOut(this, '114', <#DTOD114>);">
                      <td id="1140" class="date <#DRED114>"><#TIMP114></td>
                     <td class="td_0"></td>
                     <td id="1141" class="tod"><#DHOR114>:00</td>
                     <td class="td_2"></td>
                     <td id="1142" class="cloud <#I1ST114>"><#CLDP114></td>
                     <td id="1143" class="precip <#I1ST114>"><#PREC114></td>
                     <td id="1144" class="temper <#I1ST114>"><#TEMM114></td>
                     <td id="1145" class="press <#I1ST114>"><#PREM114></td>
                     <td id="1146" class="hum <#I1ST114>"><#RWEM114></td>
                     <td id="1147" class="wind <#I1ST114>"><#WINP114></td>
                  </tr>
                  <tr class="profi_tr_<#DTOD120>" onMouseOver="WMOver(this, '120');" onMouseOut="WMOut(this, '120', <#DTOD120>);">
                      <td id="1200" class="date <#DRED120>"><#TIMP120></td>
                     <td class="td_0"></td>
                     <td id="1201" class="tod"><#DHOR120>:00</td>
                     <td class="td_2"></td>
                     <td id="1202" class="cloud <#I1ST120>"><#CLDP120></td>
                     <td id="1203" class="precip <#I1ST120>"><#PREC120></td>
                     <td id="1204" class="temper <#I1ST120>"><#TEMM120></td>
                     <td id="1205" class="press <#I1ST120>"><#PREM120></td>
                     <td id="1206" class="hum <#I1ST120>"><#RWEM120></td>
                     <td id="1207" class="wind <#I1ST120>"><#WINP120></td>
                  </tr>
                  <tr class="profi_tr_<#DTOD126>" onMouseOver="WMOver(this, '126');" onMouseOut="WMOut(this, '126', <#DTOD126>);">
                      <td id="1260" class="date <#DRED126>"><#TIMP126></td>
                     <td class="td_0"></td>
                     <td id="1261" class="tod"><#DHOR126>:00</td>
                     <td class="td_2"></td>
                     <td id="1262" class="cloud <#I1ST126>"><#CLDP126></td>
                     <td id="1263" class="precip <#I1ST126>"><#PREC126></td>
                     <td id="1264" class="temper <#I1ST126>"><#TEMM126></td>
                     <td id="1265" class="press <#I1ST126>"><#PREM126></td>
                     <td id="1266" class="hum <#I1ST126>"><#RWEM126></td>
                     <td id="1267" class="wind <#I1ST126>"><#WINP126></td>
                  </tr>
                  <tr class="profi_tr_<#DTOD132>" onMouseOver="WMOver(this, '132');" onMouseOut="WMOut(this, '132', <#DTOD132>);">
                      <td id="1320" class="date <#DRED132>"><#TIMP132></td>
                     <td class="td_0"></td>
                     <td id="1321" class="tod"><#DHOR132>:00</td>
                     <td class="td_2"></td>
                     <td id="1322" class="cloud <#I1ST132>"><#CLDP132></td>
                     <td id="1323" class="precip <#I1ST132>"><#PREC132></td>
                     <td id="1324" class="temper <#I1ST132>"><#TEMM132></td>
                     <td id="1325" class="press <#I1ST132>"><#PREM132></td>
                     <td id="1326" class="hum <#I1ST132>"><#RWEM132></td>
                     <td id="1327" class="wind <#I1ST132>"><#WINP132></td>
                  </tr>
                  <tr class="profi_tr_<#DTOD138>" onMouseOver="WMOver(this, '138');" onMouseOut="WMOut(this, '138', <#DTOD138>);">
                      <td id="1380" class="date <#DRED138>"><#TIMP138></td>
                     <td class="td_0"></td>
                     <td id="1381" class="tod"><#DHOR138>:00</td>
                     <td class="td_2"></td>
                     <td id="1382" class="cloud <#I1ST138>"><#CLDP138></td>
                     <td id="1383" class="precip <#I1ST138>"><#PREC138></td>
                     <td id="1384" class="temper <#I1ST138>"><#TEMM138></td>
                     <td id="1385" class="press <#I1ST138>"><#PREM138></td>
                     <td id="1386" class="hum <#I1ST138>"><#RWEM138></td>
                     <td id="1387" class="wind <#I1ST138>"><#WINP138></td>
                  </tr>
                  <tr class="profi_tr_<#DTOD144>" onMouseOver="WMOver(this, '144');" onMouseOut="WMOut(this, '144', <#DTOD144>);">
                      <td id="1440" class="date <#DRED144>"><#TIMP144></td>
                     <td class="td_0"></td>
                     <td id="1441" class="tod"><#DHOR144>:00</td>
                     <td class="td_2"></td>
                     <td id="1442" class="cloud <#I1ST144>"><#CLDP144></td>
                     <td id="1443" class="precip <#I1ST144>"><#PREC144></td>
                     <td id="1444" class="temper <#I1ST144>"><#TEMM144></td>
                     <td id="1445" class="press <#I1ST144>"><#PREM144></td>
                     <td id="1446" class="hum <#I1ST144>"><#RWEM144></td>
                     <td id="1447" class="wind <#I1ST144>"><#WINP144></td>
                  </tr>
               </table>
         </div>
         <div id="profi_td2">
               <table>
                  <tr>
                  <td class="v_p"></td>
                  <td id="profi_td2_content"><table border=0><tr><td><b>Справка:</b> наведите указатель мыши на нужную строку прогноза для получения расширенной информации по погоде.</td></tr></table></td>
                  </tr>
               </table>
         </div>
         </div>
         </div>
         <div class="block_bottom">
            <div class="round_left">
            <img src="<#IMGBASE>/block_bt_left.png"
               width="9" height="14" class="corner" />
            </div>
            <div class="block_bt main_container_title_width"></div>
            <div class="round_right">
               <img src="<#IMGBASE>/block_bt_right.png"
               width="9" height="14" class="corner" />

            </div>
         </div>
  </div>
  <div id="ban_500" style="float:left; width:728px; height:90px; padding-bottom:8px; position: relative;">
    <iframe  src="<#SERVERURL>/google.htm" width="728" height="90" frameborder=0 vspace=0 hspace=0 marginwidth=0 marginheight=0 scrolling=no></iframe>
  </div>
  <div class="main_container">
      <div class="left_container">

         <div class="block_top ie">
            <div class="round_left">
            <img src="<#IMGBASE>/block_top_left.png"
               width="9" height="31" class="corner"/>
            </div>
            <div class="block_title left_contener_title_width">
              <div class="icon"><img src="<#IMGBASE>/icon.png" alt="Температура воды <#TOWN2>" width="26" height="26"></div>
               <div class="title"><b>ВОДОЕМЫ</b></div>
            </div>
            <div class="round_right">
               <img src="<#IMGBASE>/block_top_right.png" width="9" height="31" class="corner"/>
            </div>
         </div>
         <div class="block_content ie">
               <div class="content" style="margin:8px 0 0 15px;">
            <div id="astro_date" class="title3"><b>Температура воды</b>&nbsp;<img src="images/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'waterhint', true, 250);" onmouseout="showHint(this, 'waterhint', false, 250);"></div>
             <div class="astro_inf">
               <div class="icon" style="background: url(<#IMGBASE>/water_icon.gif);"></div>
               <div class="data">
                  <div class="text_bg" style="background: url(<#IMGBASE>/astro_dolgota.png) no-repeat"><div id="astro_dolgota" class="text_inf">&nbsp;<b><#TWATER> &deg;C</b></div></div>
                </div>
            </div>   
               </div>
         </div>
         <div class="block_bottom ie">
            <div class="round_left">
            <img src="<#IMGBASE>/block_bt_left.png"
               width="9" height="14" class="corner" />
            </div>
            <div class="block_bt left_contener_title_width"></div>
            <div class="round_right">
               <img src="<#IMGBASE>/block_bt_right.png"
               width="9" height="14" class="corner"/>
            </div>
         </div>

         <div class="block_top ie">
            <div class="round_left">
            <img src="<#IMGBASE>/block_top_left.png"
               width="9" height="31" class="corner"/>
            </div>
            <div class="block_title left_contener_title_width">
              <div class="icon"><img src="<#IMGBASE>/icon.png" width="26" height="26" alt="Прогноз погоды <#TOWN3> на неделю - Астрономические данные"></div>
               <div class="title"><b>АСТРОНОМИЯ</b></div>
            </div>

            <div class="round_right">
               <img src="<#IMGBASE>/block_top_right.png"
               width="9" height="31" class="corner"/>
            </div>
         </div>
         <div class="block_content ie">
         <div class="content" style="margin:8px 0 0 15px;">
            <div id="astro_date" class="title3"><b><#ASTRODATE3></b></div>
             <div class="astro_inf">
               <div class="icon" style="background: url(<#IMGBASE>/astro.gif);"></div>
               <div class="data">
                  <div class="text_bg" style="background: url(<#IMGBASE>/astro_dolgota.png) no-repeat"><div id="astro_dolgota" class="text_inf">Долгота дня: <#DAYLENGTH></div></div>
                 <div class="text_bg" style="background: url(<#IMGBASE>/astro_vosxod.png) no-repeat"><div id="astro_vosxod" class="text_inf">Восход: <#SUNRISE></div></div>
                 <div class="text_bg_last" style="background: url(<#IMGBASE>/astro_zaxod.png) no-repeat"><div id="astro_zaxod" class="text_inf">Заход: <#SUNSET></div></div>
                </div>
               <div class="icon" style="background: url(<#IMGBASE>/astro_moon.gif);" ></div>
               <div class="data">
                  <div class="text_bg" style="background: url(<#IMGBASE>/astro_moon_day.png) no-repeat"><div id="astro_dolgota" class="text_inf"><#MOONDAY>-й лунный день</div></div>
                 <div class="text_bg" style="background: url(<#IMGBASE>/astro_dolgota.png) no-repeat"><div id="astro_phase" class="text_inf"><#MOONNPHASE></div></div>
                 <div class="text_bg" style="background: url(<#IMGBASE>/astro_vosxod.png) no-repeat"><div id="astro_vosxod" class="text_inf">Восход: <#MOONRISE></div></div>
                  <div class="text_bg_last" style="background: url(<#IMGBASE>/astro_zaxod.png) no-repeat"><div id="astro_zaxod" class="text_inf">Заход: <#MOONSET></div></div>
                </div>
             </div>
         </div>
         </div>
         <div class="block_bottom ie">
            <div class="round_left">
            <img src="<#IMGBASE>/block_bt_left.png"
               width="9" height="14" class="corner" />
            </div>
            <div class="block_bt left_contener_title_width"></div>
            <div class="round_right">
               <img src="<#IMGBASE>/block_bt_right.png"
               width="9" height="14" class="corner"/>

            </div>
         </div>

   </div>
  <div class="center_container">

         <div class="block_top">
            <div class="round_left">
            <img src="/images/block_top_left.png"
               width="9" height="31" class="corner"
                />
            </div>
            <div class="block_title center_container_title_width">
              <div class="icon"><img src="/images/icon.png" width="26" height="26" alt="Прогноз погоды на Метеонове - карты погоды по региону" ></div>
               <div class="title" id="map_region_name"><b>КАРТЫ ПОГОДЫ</b></div>
               <div class="top_link">
                  <ul>
                     <li><a class="tab-link checked" map="mc_TMP_2_m_above_ground" href="#"><b>Температура</b></a></li>
                     <li><a class="tab-link" map="mc_TCDC_entire_atmosphere" href="#"><b>Облачность</b></a></li>
                     <li class="last"><a class="tab-link" map="mc_FORMULA_PREC3" href="#"><b>Осадки</b></a></li>                    
                  </ul>
               </div>
            </div>
            <div class="round_right">

               <img src="/images/block_top_right.png"
               width="9" height="31" class="corner"
                />
            </div>
         </div>
         <div class="block_content">
                  <div class="content">
                  <div class="map-wrapper">
                     <div id="map" class="map mini"></div>
                        <div class="legends mini">
                           <div class="legmini"></div>            
                        </div>    
                     <div id="progress"></div>
                     <div class="timelabel"></div>
                  </div>
                  <div style="margin-top: 7px">Кликните на погодной карте для получения подробных данных</div>                
                  </div>
         </div>
         <div class="block_bottom">
            <div class="round_left">
            <img src="/images/block_bt_left.png"
               width="9" height="14" class="corner"
                />
            </div>
            <div class="block_bt center_container_title_width"></div>
            <div class="round_right">
               <img src="/images/block_bt_right.png"
               width="9" height="14" class="corner"
                />

            </div>
         </div>

         <div class="block_top">
               <div class="round_left">
               <img src="/images/block_top_left_2.png"
                  width="9" height="16" class="corner"
                   />
               </div>
               <div class="block_title_2 center_container_title_width"></div>
               <div class="round_right">
                  <img src="/images/block_top_right_2.png"
                  width="9" height="16" class="corner"
                   />

               </div>
         </div>
         <div class="block_content_2" align="center"  style="width:100%;">
            <#TEMPLATE ru_yah_ru>
         </div>
         <div class="block_bottom">

               <div class="round_left">
               <img src="/images/block_bt_left.png"
                  width="9" height="14" class="corner"
                   />
               </div>
               <div class="block_bt center_container_title_width"></div>
               <div class="round_right">
                  <img src="/images/block_bt_right.png"
                  width="9" height="14" class="corner"
                   />
               </div>
         </div>

      </div>
  </div>
</div>
</div>
   <div class="yui-b">
    <div class="right_main">

            <div class="block_top">

               <div class="round_left">

               <img src="<#IMGBASE>/block_top_left.png"
                  width="9" height="31" class="corner"
                   />
               </div>
               <div class="block_title" style="width:222px;">
                 <div class="icon"><img src="<#IMGBASE>/icon.png" width="26" height="26" alt="Метеопрогноз погоды <#TOWN3> на неделю - Реклама"></div>
                  <div class="title"><b>РЕКЛАМА</b></div>
               </div>
               <div class="round_right">

                  <img src="<#IMGBASE>/block_top_right.png"
                  width="9" height="31" class="corner"
                   />

               </div>
            </div>


            <div class="block_content"><div id="ban_240">
               <#TEMPLATE ru_ban240_ru>
            </div></div>
            <div class="block_bottom">

               <div class="round_left">
               <img src="<#IMGBASE>/block_bt_left.png"
                  width="9" height="14" class="corner"
                   />

               </div>
               <div class="block_bt" style="width:222px"></div>
               <div class="round_right">
                  <img src="<#IMGBASE>/block_bt_right.png"
                  width="9" height="14" class="corner"
                   />
               </div>
            </div>

            <div class="block_top">
               <div class="round_left">

               <img src="<#IMGBASE>/block_top_left.png"
                  width="9" height="31" class="corner"
                   />
               </div>
               <div class="block_title" style="width:222px;">
                 <div class="icon"><img src="<#IMGBASE>/icon.png" alt="Погода <#TOWN2> - новости на Метеонове" width="26" height="26" ></div>
                  <div class="title"><b><#TOWN16></b></div>
               </div>
               <div class="round_right">
                  <img src="<#IMGBASE>/block_top_right.png"
                  width="9" height="31" class="corner"
                   />

               </div>
            </div>
            <div class="block_content" style="width:100%;">
               <div class="content" style="width:215px;">
                  <div style="width:100%; margin-bottom:6px;"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="<#SERVERURL>/3days/<#INDEX>-pogoda-<#TOWNEN_>.htm" title="Погода на 3 дня <#TOWN3>">Краткий прогноз на 3 дня</a></div></div>
                  <div style="width:100%; margin-bottom:6px;"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="/frc/<#INDEX>.htm" title="Погода <#TOWN3> на 14 дней"><b>Прогноз погоды на 14 дней</b></a></div></div>
                  <#MONTHLINK ru_monthlinkr_ru>
                  <div style="width:100%; margin-bottom:6px;"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="/auto/<#INDEX>.htm" title="Погода <#TOWN3> на 3 дня для автомобилистов">Почасовой Авто прогноз</a></div></div>
                  <div style="width:100%; margin-bottom:6px;"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="/agro/<#INDEX>.htm" title="Погода <#TOWN3> на 5 дней для дачников и сельхозпроизводителей">Агро прогноз погоды на 5 дней</a></div></div>
                  <div style="width:100%; margin-bottom:6px;"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="/pro/<#INDEX>.htm" title="Подробный профессиональный прогноз погоды <#TOWN3> на неделю">Подробный прогноз неделю</a></div></div>
                  <div style="width:100%; margin-bottom:6px;"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="/med/<#INDEX>.htm" title="Погода <#TOWN3> на 14 дней для метеочувствительных людей">Медицинский прогноз погоды</a></div></div>
                  <div style="width:100%;"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="/map.htm?fi=<#FIF>&la=<#LAF>&type=mc_TMP_2_m_above_ground" target=_blank title="Карты погоды в регионе города <#TOWN>">Карты погоды</a></div></div>

               </div>
            </div>
            <div class="block_bottom">

               <div class="round_left">
               <img src="<#IMGBASE>/block_bt_left.png"
                  width="9" height="14" class="corner"
                   />
               </div>
               <div class="block_bt" style="width:222px"></div>
               <div class="round_right">
                  <img src="<#IMGBASE>/block_bt_right.png"
                  width="9" height="14" class="corner"
                   />
               </div>
            </div>

            <div class="block_top">
               <div class="round_left">
 
               <img src="/images/block_top_left.png"
                  width="9" height="31" class="corner"
                   />
               </div>
               <div class="block_title" style="width:222px;">
                 <div class="icon"><img src="/images/icon.png" alt="Список ближайших к городу <#TOWN> аэропортов" width="26" height="26" ></div>
                  <div class="title"><b>АЭРОПОРТЫ</b></div>
               </div>
               <div class="round_right">
                  <img src="/images/block_top_right.png"
                  width="9" height="31" class="corner"
                   />
 
               </div>
            </div>
            <div class="block_content" style="width:100%;">
               <div class="content">
               <div class="favorites">
                  <#AEROLIST DESKTOP>
               </div>
               </div>
            </div>
            <div class="block_bottom">
 
               <div class="round_left">
               <img src="/images/block_bt_left.png"
                  width="9" height="14" class="corner"
                   />
               </div>
               <div class="block_bt" style="width:222px"></div>
               <div class="round_right">
                  <img src="/images/block_bt_right.png"
                  width="9" height="14" class="corner"
                   />
               </div>
            </div>

            <div class="block_top">
               <div class="round_left">
 
               <img src="/images/block_top_left.png"
                  width="9" height="31" class="corner"
                   />
               </div>
               <div class="block_title" style="width:222px;">
                 <div class="icon"><img src="/images/icon.png" alt="Понравилась погода <#TOWN2> на Метенонве? Сделайте общение удобнее!" width="26" height="26" ></div>
                  <div class="title"><b>ПОНРАВИЛСЯ САЙТ?</b></div>
               </div>
               <div class="round_right">
                  <img src="/images/block_top_right.png"
                  width="9" height="31" class="corner"
                   />
 
               </div>
            </div>
            <div class="block_content" style="width:100%;">
               <div class="content">
               <div class="favorites">
                  <div class="contact"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="<#SERVERURL>/frc/<#INDEX>.htm" onclick="if(navigator.appName=='Netscape'){ MakeStartFF('<#SERVERURL>/frc/<#INDEX>.htm'); } else if(navigator.appName!='Opera' && navigator.appName!='Google Chrome') {this.style.behavior='url(#default#homepage)'; this.setHomePage('<#SERVERURL>/frc/<#INDEX>.htm'); return false;} else {window.open('<#SERVERURL>/faq.htm#home', 'newwindow');}">Сделать стартовой</a></div></div>
                  <div class="contact"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a rel="sidebar" title="Погода <#TOWN2> на Метеонове" onclick="javascript:window.external.AddFavorite('<#SERVERURL>/frc/<#INDEX>.htm', 'Погода <#TOWN2> на Метеонове');  return false;" href="<#SERVERURL>/frc/<#INDEX>.htm">Добавить в Избранное</a></div></div>
                  <div class="contact"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="<#SERVERURL>/wap.htm">Приложения iOS и Android</a></div></div>
                  <div class="contact"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="<#SERVERURL>/fan/gadget.htm">Виджет для Vista и Win 7</a></div></div>
                  <div class="contact"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="<#SERVERURL>/fan/tray.htm">Погодный трей для Win XP</a></div></div>
                  <div class="contact"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="<#SERVERURL>/fan.htm">Виджеты для браузеров</a></div></div>
                  <div class="contact"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="<#SERVERURL>/icq.htm">Прогноз погоды по ICQ</a></div></div>
                  <div class="contact"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="<#SERVERURL>/informer/index.php?index=<#INDEX>">Информеры для сайтов</a></div></div>
                  <div class="contact_last"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="<#SERVERURL>/rss/<#INDEX>.xml">Экпорт погоды в RSS</a></div></div>
               </div>
               </div>
            </div>
            <div class="block_bottom">
 
               <div class="round_left">
               <img src="/images/block_bt_left.png"
                  width="9" height="14" class="corner"
                   />
               </div>
               <div class="block_bt" style="width:222px"></div>
               <div class="round_right">
                  <img src="/images/block_bt_right.png"
                  width="9" height="14" class="corner"
                   />
               </div>
            </div>

         <div class="block_top ie">
            <div class="round_left">
            <img src="<#IMGBASE>/block_top_left.png"
               width="9" height="31" class="corner"/>
            </div>
            <div class="block_title" style="width:222px">
              <div class="icon"><img src="<#IMGBASE>/icon.png" width="26" height="26" alt="Метеопрогноз погоды <#TOWN3> на неделю - Контактная информация"></div>
               <div class="title"><b>КОНТАКТЫ</b></div>

            </div>
            <div class="round_right">
               <img src="<#IMGBASE>/block_top_right.png"
               width="9" height="31" class="corner"/>
            </div>
         </div>
         <div class="block_content ie">
         <div class="content">
               <div class="contacts">
                  <div class="contact"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="<#SERVERURL>/about.htm">О проекте</a></div></div>
                  <div class="contact"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="mailto:korolkow@meteonova.ru">Руководитель</a></div></div>
                  <div class="contact_last"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="<#SERVERURL>/guestbook.htm">Гостевая книга</a></div></div>
               </div>
         </div>
         </div>

         <div class="block_bottom">
            <div class="round_left">
            <img src="<#IMGBASE>/block_bt_left.png"
               width="9" height="14" class="corner"/>
            </div>
            <div class="block_bt" style="width:222px"></div>
            <div class="round_right">
               <img src="<#IMGBASE>/block_bt_right.png"
               width="9" height="14" class="corner"/>
            </div>
         </div>


      </div>
   </div>
</div>
<div class="right_block">           <div class="block_top">
               <div class="round_left">
 
               <img src="/images/block_top_left.png"
                  width="9" height="31" class="corner"
                   />
               </div>
               <div class="block_title" style="width:222px;">
                 <div class="icon"><img src="/images/icon.png" width="26" height="26" alt="Метеопрогноз погоды <#TOWN3> на неделю - погодные новости"></div>
                  <div class="title"><b>НОВОСТИ</b></div>
               </div>
               <div class="round_right">
                  <img src="/images/block_top_right.png"
                  width="9" height="31" class="corner"
                   />
 
               </div>
            </div>
            <div class="block_content" style="width:100%;">
               <div class="content" style="width:210px;">
                 <#FOBOSNEWSNOVA 14>
               </div>
            </div>
            <div class="block_bottom">
 
               <div class="round_left">
               <img src="/images/block_bt_left.png"
                  width="9" height="14" class="corner"
                   />
               </div>
               <div class="block_bt" style="width:222px"></div>
               <div class="round_right">
                  <img src="/images/block_bt_right.png"
                  width="9" height="14" class="corner"
                   />
               </div>
            </div>
 

</div>
 <#TEMPLATE ru_footer_ru>
</div>
</div>

<script language="JavaScript">

document.getElementById("profi_td2_content").innerHTML=document.getElementById("DESC12").innerHTML;

var state=<#REGIONINDEX>;
var predict=<#PREDD1>;
var lat=<#FIF>;
var lng=<#LAF>;
      
function renderMap() {
         var map = new Map({
            predict: 18,
            count: 1,
            step: 3,
            lat: (typeof lat != 'undefined'?lat:55.8),
            lng: (typeof lng != 'undefined'?lng:37.6),
            zoom: 6,
            target: 'map',
            type: 'mc_TMP_2_m_above_ground',
            summertime: 0,
            progressbar: new Progress(document.getElementById('progress')),
            url: '/mapcache',
            timeline: new Timeline(
              null,
              {timelabel: $('.timelabel'), summertime: 0, timeshift: -999, predict: 18, step: 3, count: 1, display: 'none'} 
            )           
         });    
         map.render();
         map.map.on('singleclick', function(e){
            var coordinate = ol.proj.transform([e.coordinate[0], e.coordinate[1]], 'EPSG:3857', 'EPSG:4326');
            document.location = "map.htm?fi="+(coordinate[1] || 55.8)+"&la="+(coordinate[0] || 37.6)+"&type="+$('.tab-link.checked').attr('map');
         });         

         $('.tab-link').unbind('click').bind('click', function(e) {
            e.preventDefault();
            $('.tab-link').removeClass('checked');
            $(this).addClass('checked');
            if (map) map.update({type: $(this).attr('map')}); 
         });
      }
      
var mapScripts = ['/js/ol3_1.js', '/js/openlayers.js'];
function loadScript(js) {
         if (typeof js == 'undefined') return; 
         var script = document.createElement('script');
         script.src = js;
         script.async = true;
         script.charset = "utf-8";
         script.onload = function() {
            if (mapScripts.length == 0) {
               renderMap();
            }
            loadScript(mapScripts.shift());
         }
         document.head.appendChild(script);
      }
loadScript(mapScripts.shift());
</script>

<script>
var bPageExpired=0;
var bAllowRefresh=1;
function pageUpdate(){ bPageExpired=1; if(bAllowRefresh && navigator.onLine) document.location.href=document.location.href;}
window.onblur = function() { bAllowRefresh=0;}
window.onfocus = function() { bAllowRefresh=1; if(bPageExpired) pageUpdate();}
setInterval(pageUpdate,1800000);
</script>

<!-- Yandex.Metrika counter --><script src="//mc.yandex.ru/metrika/watch.js" type="text/javascript"></script><script type="text/javascript">try { var yaCounter53149 = new Ya.Metrika({id:53149, clickmap:true, accurateTrackBounce:true, webvisor:true,type:1});} catch(e) { }</script><noscript><div><img src="//mc.yandex.ru/watch/53149?cnt-class=1" style="position:absolute; left:-9999px;" alt="" /></div></noscript><!-- /Yandex.Metrika counter -->

<!-- Google.Analytics counter -->
<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-22957370-1']);
  _gaq.push(['_setDomainName', '.meteonova.ru']);
  _gaq.push(['_trackPageview']);
  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>

  <script type="text/javascript"> 
  var suggest = null;
  function setSuggest(obj, parent, loader, str) {
      suggest = new mnovaSuggest(
        {
          o: 'suggest',
          tpl: '<div id="%id%" onmouseover = "suggest.mouseOver(null, this)" onclick = "suggest.mouseClick()">%name%<span class="dc">%mun_name%%d_name%%c_name%</span></div>',
          nulltpl: '<div class="discript" id="discript" onClick = "suggest.mouseClick()"><span class="e"><a id="err_a" href="/mgfind.htm?%input.val%">%input.val%</a></span></div>',
          tplc: '<div class="discript"><span class="c"><a href="/search/?req=listcountries">Страны:</a></span></div>',
          tplmu: '<div class="discript"><span class="d">Районы:</span></div>',
          tpld: '<div class="discript"><span class="d">Области:</span></div>',
          tplt: '<div class="discript"><span class="t">Города:</span></div>',
          tpla: '<div class="discript"><span class="d">Аэропорты:</span></div>',
          tpl_allsearch: 'Все результаты'         
        },
        {
          parent: parent,
          o: obj,       
          loader: loader,
          defVal: str
        }
      );
  }
  </script>


</body>
</html>