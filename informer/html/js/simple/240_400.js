!function(){for(var e=document.getElementsByTagName("script"),t=0;t<e.length;t++)if("240_400"==e[t].inftype){var l=e[t].src.replace(/^[^\?]+\??/,"");e[t].inftype=null;break}var i=function(e){if(""==e)return{};for(var t={},l=0;l<e.length;++l){var i=e[l].split("=",2);1==i.length?t[i[0]]="":t[i[0]]=decodeURIComponent(i[1].replace(/\+/g," "))}return t}([l]);"undefined"!=typeof i.callback&&window[i.callback].call({width:"240px",height:"400px",src:"about:blank",frameborder:0,scrolling:"no",style:"html,body{margin: 0; padding: 0} #informer{width: 240px; height: 400px;} a{text-decoration: none}",wrapper:'<div class="informer inf_240_400 400 " style="-moz-box-shadow: %box_shadow%; -webkit-box-shadow: %box_shadow%; background: %background_color%; border-color: %border_color%; border-radius: %border_radius%; box-shadow: %box_shadow%; box-sizing: border-box; color: #000; font: 11px Arial; height: 400px; line-height: 11px; outline-offset: -1px; overflow: hidden; padding: 6px; position: relative; text-align: center; text-overflow: ellipsis; white-space: nowrap; width: 240px;"> %content%</div>',content:'<a class="inf_240_400" href="%href%" alt="%alt%" title="%alt%" target="_blank" style="color: #000; height: 388px; padding: 6px; text-decoration: none; width: 222px;"><div class="city_name" style="color: %city_color%; font-size: 18px; line-height: 32px; overflow: hidden; text-align: center; text-overflow: ellipsis; white-space: nowrap;">%city%</div><div class="wrapper-table" style="border-collapse: collapse; display: table; table-layout: fixed; width: 100%;"><div class="row" style="display: table-row;"><div class="cell" style="display: table-cell; padding-right: 6px; position: relative; vertical-align: middle; width: 50%;"><div class="temper" style="color: %main_color%; font-size: 32px; line-height: 64px; text-align: right;"><em style="font-style: normal; font-weight: 400;">%znak%</em>%temper%<em style="font-style: normal; font-weight: 400;">&deg;</em></div></div><div class="cell phenomen" style="display: table-cell; padding-left: 6px; position: relative; text-align: left; vertical-align: middle; width: 50%;"> <img src="//www.meteonova.ru/informer/html/icons/svg/%pic0%.svg" height="72" alt="%pic0_descr%" title="%pic0_descr%" style="border: 0; bottom: 1; left: 0;"></div></div></div><div class="wrapper-table middle " style="border-collapse: collapse; display: table; table-layout: fixed; width: 100%;"><div class="row" style="border-bottom-style: solid; border-bottom-width: 1px; border-collapse: collapse; border-color: %border_color%; border-top-style: solid; border-top-width: 1px; display: table-row;"><div class="cell" style="color: %main_color%; display: table-cell; font-size: 14px; height: 56px; padding-right: 6px; position: relative; text-align: left; vertical-align: middle; width: 50%;">Давление</div><div class="cell" style="color: %params_color%; display: table-cell; font-size: 14px; height: 56px; padding-left: 6px; position: relative; text-align: left; vertical-align: middle; width: 50%;">%press% <em style="font-style: normal; font-weight: 400;">%press_units%</em></div></div><div class="row" style="border-bottom-style: solid; border-bottom-width: 1px; border-collapse: collapse; border-color: %border_color%; border-top-style: solid; border-top-width: 1px; display: table-row;"><div class="cell" style="color: %main_color%; display: table-cell; font-size: 14px; height: 56px; padding-right: 6px; position: relative; text-align: left; vertical-align: middle; width: 50%;">Влажность</div><div class="cell" style="color: %params_color%; display: table-cell; font-size: 14px; height: 56px; padding-left: 6px; position: relative; text-align: left; vertical-align: middle; width: 50%;">%hum% <em style="font-style: normal; font-weight: 400;">%hum_units%</em></div></div><div class="row" style="border-bottom-style: solid; border-bottom-width: 1px; border-collapse: collapse; border-color: %border_color%; border-top-style: solid; border-top-width: 1px; display: table-row;"><div class="cell" style="color: %main_color%; display: table-cell; font-size: 14px; height: 56px; padding-right: 6px; position: relative; text-align: left; vertical-align: middle; width: 50%;">Ветер</div><div class="cell" style="color: %params_color%; display: table-cell; font-size: 14px; height: 56px; padding-left: 6px; position: relative; text-align: left; vertical-align: middle; width: 50%;">%wind%%wind_speed% <em style="font-style: normal; font-weight: 400;">%wind_units%</em></div></div></div><div class="wrapper-table inline " style="border-collapse: collapse; display: table; table-layout: fixed; width: 100%;"><div class="row" style="display: table-row;"><div class="cell" style="border-color: %border_color%; border-right-style: solid; border-right-width: 1px; display: table-cell; padding-right: 6px; position: relative; text-align: center; vertical-align: middle; width: auto;"><div class="date" style="color: %main_color%; font-size: 13px; line-height: 28px;">%tod2%</div> <img src="//www.meteonova.ru/informer/html/icons/svg/%pic2%.svg" height="32" alt="%pic2_descr%" title="%pic2_descr%" style="border: 0; bottom: 1; left: 0;"><div class="temper" style="color: %main_color%; font-size: 18px; line-height: 28px; text-align: center;"><em style="font-style: normal; font-weight: 400;">%znak2%</em>%temper2%<em style="font-style: normal; font-weight: 400;">&deg;</em></div></div><div class="cell" style="border-color: %border_color%; border-right-style: solid; border-right-width: 1px; display: table-cell; position: relative; text-align: center; vertical-align: middle; width: auto;"><div class="date" style="color: %main_color%; font-size: 13px; line-height: 28px;">%tod3%</div> <img src="//www.meteonova.ru/informer/html/icons/svg/%pic3%.svg" height="32" alt="%pic3_descr%" title="%pic3_descr%" style="border: 0; bottom: 1; left: 0;"><div class="temper" style="color: %main_color%; font-size: 18px; line-height: 28px; text-align: center;"><em style="font-style: normal; font-weight: 400;">%znak3%</em>%temper3%<em style="font-style: normal; font-weight: 400;">&deg;</em></div></div><div class="cell" style="border-color: %border_color%; border-right-style: none; border-right-width: 0; display: table-cell; padding-left: 6px; position: relative; text-align: center; vertical-align: middle; width: auto;"><div class="date" style="color: %main_color%; font-size: 13px; line-height: 28px;">%tod4%</div> <img src="//www.meteonova.ru/informer/html/icons/svg/%pic4%.svg" height="32" alt="%pic4_descr%" title="%pic4_descr%" style="border: 0; bottom: 1; left: 0;"><div class="temper" style="color: %main_color%; font-size: 18px; line-height: 28px; text-align: center;"><em style="font-style: normal; font-weight: 400;">%znak4%</em>%temper4%<em style="font-style: normal; font-weight: 400;">&deg;</em></div></div></div></div><div class="logo center" style="bottom: 0; display: %display%; position: absolute; text-align: center;"><embed id="svgLogo" type="image/svg+xml" src="//www.meteonova.ru/informer/html/icons/logo-main.svg" height="11"></div></a>'})}();