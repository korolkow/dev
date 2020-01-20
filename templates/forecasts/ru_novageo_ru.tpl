<!DOCTYPE html><#TEMPLATE ru_definitions_ru>
<html>
<head>
<base href="<#SERVERURL>/frc.htm">
<title>МЕТЕОНОВА - погода <#TOWN3> на неделю, прогноз погоды <#TOWN3> на 10 дней, погода <#TOWN3> на 14 дней (на 2 недели) - по данным за <#FRCPUBTIME></title>
<meta http-equiv="Content-Type" content="text/html; charset=<#ENCODING>">
<meta name="description" content="Погода <#TOWN3>. Точный и подробный прогноз погоды <#TOWN3> на 14 дней с голосовым сопровождением синоптика, <#TOWN> - прогноз погоды на сегодня, на завтра, на 3 дня, на 5 дней, на неделю, на 10 дней, на 14 дней">
<meta name="keywords" content="погода погоды прогноз <#TOWN> <#TOWN3> точный прогноз голос робот карта магнитная буря температура осадки ветер влажность давление комфорт most accurate weather forecast <#TOWNEN> wetter pogoda">
<meta name="Category" content="Справки, Погода">
<meta name="Classification" content="Прогноз погоды <#TOWN3> на 10 и 14 дней"> 
<meta name="Document-state" content="Dynamic">
<!-- inject:css -->
<!-- endinject -->
<!-- inject:js -->
<!-- endinject -->
</head>

<body onload="tleft=-999;">
<div class="suggest" id="suggest"></div>
<div id="doc4" class="yui-t5">
<#TEMPLATE ru_adw728x90_ru>
   <div id="hd">
     <div id="onhd">
      <div>	
       <div id="logo"><a href="<#SERVERURL>"><img src="<#IMGBASE>/logo.png" alt="Погода <#TOWN2> на 2 недели" width="277" height="96" border="0"></a></div>
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
  		<div class="left_container">

			<div class="block_top ie">
   				<div class="round_left">
	 		  	<img src="<#IMGBASE>/block_top_left.png"
	 				width="9" height="31" class="corner">
   				</div>
   				<div class="block_title left_contener_title_width">
 				  <div class="icon"><img src="<#IMGBASE>/icon.png" alt="Погода <#TOWN2> - фото Метеоновы" width="26" height="26" ></div>
 			 		<div class="title"><b>МЕТЕОНОВА</b></div>
   				</div>

   				<div class="round_right">
	 				<img src="<#IMGBASE>/block_top_right.png"
	 				width="9" height="31" class="corner" />
   				</div>
			</div>

<div class="block_content ie" style="height:156px">
	<div class="jessie-block">
		<div class="container-wrapper">
			<div class="jessie"><div class="player_button"><span></span></div></div>																
		</div>
	</div>					
</div>

			<div class="block_bottom ie">

   				<div class="round_left">
	 		  	<img src="<#IMGBASE>/block_bt_left.png"
	 				width="9" height="14" class="corner"
	 				 />
   				</div>
   			<div class="block_bt left_contener_title_width"></div>
   				<div class="round_right">
	 				<img src="<#IMGBASE>/block_bt_right.png"
	 				width="9" height="14" class="corner"
	 				 />
   				</div>
			</div>
  		</div>

  		<div class="center_container">
			<div class="block_top">
   			<div class="round_left">
	 		  	<img src="<#IMGBASE>/block_top_left.png"
	 				width="9" height="31" class="corner"
	 				 />
   			</div>
   			<div class="block_title center_container_title_width">
 				  <div class="icon"><img src="<#IMGBASE>/icon.png" alt="Погода <#TOWN2> - блог Метеоновы" width="26" height="26" ></div>
 			 		<div class="title"><b>БЛОГ МЕТЕОНОВЫ</b></div>

   			</div>
   			<div class="round_right">
	 				<img src="<#IMGBASE>/block_top_right.png"
	 				width="9" height="31" class="corner"
	 				 />
   			</div>
			</div>

			<div class="block_content" style="height:156px">
	 		 <div class="content">
     			<h2 id="blog_title">Прогноз погоды <#TOWN2></h2>
     			<div id="blog_text" class="text">Погода <#TOWN2>. Сейчас Вы сможете посмотреть прогноз погоды <#TOWN2> на неделю, погоду <#TOWN2> на 10 дней и на 14 дней. Рекомендую также ознакомиться со спецпроектами: Погода <#TOWN2> для профессионалов, Агро прогноз для садоводов и огородников, авиа прогноз, а также Погода по автодорогам. Кроме того, я расскажу какая погода <#TOWN2> сейчас, будет сегодня и ожидается на 3, 5, 7 дней вперед.<br></div>
			<div>Прогноз погоды <span id="frcupd"></span> <img src="<#IMGBASE>/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'updhint', true, 250);" onmouseout="showHint(this, 'updhint', false, 250);"></div>
	     		 </div>
			</div>

			<div class="block_bottom">
   			<div class="round_left">

	 		  	<img src="<#IMGBASE>/block_bt_left.png"
	 				width="9" height="14" class="corner"
	 				 />
   			</div>
   			<div class="block_bt center_container_title_width"></div>
   			<div class="round_right">
	 				<img src="<#IMGBASE>/block_bt_right.png"
	 				width="9" height="14" class="corner"
	 				 />
   			</div>
			</div>
  		</div>
  </div>
  <div class="main_container">
			<div class="block_top">
   			<div class="round_left">
	 		  	<img src="<#IMGBASE>/block_top_left.png"
	 				width="9" height="31" class="corner" />
   			</div>
   			<div class="block_title main_container_title_width">
 				  <div class="icon"><img src="<#IMGBASE>/icon.png" alt="Прогноз погоды <#TOWN2>" width="26" height="26" ></div>
 			 		<div class="title"><b>ПРОГНОЗ ПОГОДЫ</b></div>
 			 		<div class="top_link">
 			 		</div>
   			</div>
   			<div class="round_right">
	 				<img src="<#IMGBASE>/block_top_right.png"
	 				width="9" height="31" class="corner" />
   			</div>
			</div>
			<div class="block_content">
		    	<div id="frc_content_weather" style="padding-top:0px; height:350px;">
			       <table border="0" cellspacing="0" cellpadding="0" width="97%">
                                <tr>
		    		 <td valign="top"><table border="0"  cellspacing="0" cellpadding="0">
		    			<tr><td class="date sign">Дата</td></tr>
		    			<tr><td class="tod sign">Время суток</td></tr>
		    			<tr><td class="phenom sign">Облачность<br>Осадки</td></tr>
		    			<tr><td class="hum sign" onMouseOver="this.style.background='#e8eef8'; goToFRC(); if(typeof(graphObj)!='undefined'){graphObj.preloadGraphic(0); graphObj.showGraphic(this,numFRC*4);}" onMouseOut="this.style.background='#fff'; if(typeof(graphObj)!='undefined') graphObj.timerHideGraphic();">Давление, мм.&nbsp;<img src="<#IMGBASE>/icons/graph_black.gif" width="19" height="13" border="0" alt="График хода давления" title="График хода давления"></td></tr>
		    			<tr><td class="temper sign" onMouseOver="this.style.background='#e8eef8'; goToFRC(); if(typeof(graphObj)!='undefined'){graphObj.preloadGraphic(1); graphObj.showGraphic(this,numFRC*4+1);}" onMouseOut="this.style.background='#fff'; if(typeof(graphObj)!='undefined') graphObj.timerHideGraphic();">Температура&nbsp;&nbsp;&nbsp;&nbsp;<img src="<#IMGBASE>/icons/graph_bred.gif" width="19" height="13" border="0" alt="График хода температуры" title="График хода температуры"></td></tr>
		    			<tr><td class="hum sign" onMouseOver="this.style.background='#e8eef8'; goToFRC(); if(typeof(graphObj)!='undefined'){graphObj.preloadGraphic(2); graphObj.showGraphic(this,numFRC*4+2);}" onMouseOut="this.style.background='#fff'; if(typeof(graphObj)!='undefined') graphObj.timerHideGraphic();">Влажность, %&nbsp;&nbsp;<img src="<#IMGBASE>/icons/graph_green.gif" width="19" height="13" border="0" alt="График хода влажности" title="График хода влажности"></td></tr>
		    			<tr><td class="wind sign" onMouseOver="this.style.background='#e8eef8'; goToFRC(); if(typeof(graphObj)!='undefined'){graphObj.preloadGraphic(3); graphObj.showGraphic(this,numFRC*4+3)};" onMouseOut="this.style.background='#fff'; if(typeof(graphObj)!='undefined') graphObj.timerHideGraphic();">Ветер, метр/с&nbsp;&nbsp;&nbsp;<img src="<#IMGBASE>/icons/graph_orange.gif" width="19" height="13" border="0" alt="График направления и скорости ветра" title="График направления и скорости ветра"></td></tr>
		    			<tr><td class="hum sign">Комфорт,&deg;C&nbsp;&nbsp;<img src="<#IMGBASE>/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'heathint', true, 300);" onmouseout="showHint(this, 'heathint', false, 300);"></td></tr>
  		    			<tr><td class="mstorm sign">Магнитные бури&nbsp;<img src="<#IMGBASE>/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'geomhint', true, 300);" onmouseout="showHint(this, 'geomhint', false, 300);"></td></tr>
		    		 </table></td>
				 <td><table border=0 cellpadding=0 cellspacing=0 height=300><tr><td valign=top><div id="arrow_left_top"><img src="<#IMGBASE>/arrows_left.gif" border="0" width="9" height="144" onmouseover="this.src='<#IMGBASE>/arrows_left_over.gif';" onmouseout="this.src='<#IMGBASE>/arrows_left.gif';"></div></td></tr><tr><td valign=bottom><div id="arrow_right_bottom"><img src="<#IMGBASE>/arrows_right.gif" border="0" width="9" height="144" onmouseover="this.src='<#IMGBASE>/arrows_right_over.gif';" onmouseout="this.src='<#IMGBASE>/arrows_right.gif';"></div></td></tr></table></td>
		    		 <td align="center"><div id="frc_cont" style="width:511px; overflow:hidden;">
                                     <table border="0" cellspacing="0" cellpadding="0">
		    			<tr><td id="frc_content_weather0">
						<table border="0" cellspacing="0" cellpadding="0">
							<tr>					
								 <#SYNOP ru_novasynop3_ru ru_novacur3_ru>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 12>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 18>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 24>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 30>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 36>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 42>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 48>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 54>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 60>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 66>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 72>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 78>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 84>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 90>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 96>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 102>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 108>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 114>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 120>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 126>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 132>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 138>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 144>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 150>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 156>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 162>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 168>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 174>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 180>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 186>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 192>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 198>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 204>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 210>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 216>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 222>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 228>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 234>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 240>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 246>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 252>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 258>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 264>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 270>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 276>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 282>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 288>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 294>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 300>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 306>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 312>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 318>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 324>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 330>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 336>
								 <#TEMPLATEPREDICT ru_novafrc3_ru 342>
							</tr>
						</table>
						

					</td></tr>
		    		     </table></div></td>
				 <td><table border=0 cellpadding=0 cellspacing=0 height=300><tr><td valign=top><div id="arrow_right_top"><img src="<#IMGBASE>/arrows_right2.gif" border="0" width="9" height="144" onmouseover="this.src='<#IMGBASE>/arrows_right2_over.gif'; goLeft();" onmouseout="this.src='<#IMGBASE>/arrows_right2.gif'; stopAutoScroll();"></div></td></tr><tr><td valign=bottom><div id="arrow_left_bottom"><img src="<#IMGBASE>/arrows_left2.gif" border="0" width="9" height="144" onmouseover="this.src='<#IMGBASE>/arrows_left2_over.gif';" onmouseout="this.src='<#IMGBASE>/arrows_left2.gif';"></div></td></tr></table></td>
		              </tr>
  			      <tr>
				<td colspan="4">
 			 		<div class="top_link" style="float:left; left:-5px;">
	      		  		<ul>
	          				<li class="first">Прогноз на</li>
		          			<li id="frc_0"><span onClick="updateForecast(0)">1-3 дня</span></li>
		          			<li id="frc_1"><span onClick="updateForecast(1)">3-5 дней</span></li>
	        	  			<li id="frc_2"><span onClick="updateForecast(2)">5-7 дней</span></li>
	          				<li id="frc_3"><span onClick="updateForecast(3)">7-10 дней</span></li>
	          				<li id="frc_4"><span onClick="updateForecast(4)">10-12 дней</span></li>
	          				<li id="frc_5" class="last"><span onClick="updateForecast(5)">12-14 дней</span></li>
					</ul>
					</div>
 			 		<div class="top_link" style="float:right">
	      		  		<ul>
	          				<li><a href="Javascript:printobj.makePrintWindow();"><b>Печать</b></a></li>
						<li class="last"><a href="<#SERVERURL>/wap.htm">iOS & Android</a></li>
	    		  		</ul>
 			 		</div>
				</td>
			      </tr>
    			     </table>
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
			  	<div id="astro_date" class="title3"><b>Температура воды</b>&nbsp;<img src="<#IMGBASE>/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'waterhint', true, 250);" onmouseout="showHint(this, 'waterhint', false, 250);"></div>
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
 				  <div class="icon"><img src="<#IMGBASE>/icon.png" alt="Погода <#TOWN2> - астрономические данные" width="26" height="26"></div>
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
			<div class="block_top ie">
			<div class="block_bottom ie">
   			<div class="round_left">
	 		  	<img src="<#IMGBASE>/block_bt_left.png"
	 				width="9" height="14" class="corner"/>
   			</div>
   			<div class="block_bt left_contener_title_width"></div>
   			<div class="round_right">
	 				<img src="<#IMGBASE>/block_bt_right.png"
	 				width="9" height="14" class="corner"/>
   			</div>
			</div>
   			<div class="round_left">
	 		  	<img src="<#IMGBASE>/block_top_left.png"
	 				width="9" height="31" class="corner"/>
   			</div>
   			<div class="block_title left_contener_title_width">
 				  <div class="icon"><img src="<#IMGBASE>/icon.png" alt="Погода <#TOWN2> - свяжитесь с разработчиками!" width="26" height="26"></div>
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
						<div class="contact"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="<#SERVERURL>/guestbook.htm">Гостевая книга</a></div></div>
						<div class="contact_last"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="<#SERVERURL>/faq.htm">Частые вопросы</a></div></div>
					</div>
      	</div>
			</div>
			<div class="block_bottom ie">
   			<div class="round_left">
	 		  	<img src="<#IMGBASE>/block_bt_left.png"
	 				width="9" height="14" class="corner"/>
   			</div>
   			<div class="block_bt left_contener_title_width"></div>
   			<div class="round_right">
	 				<img src="<#IMGBASE>/block_bt_right.png"
	 				width="9" height="14" class="corner"/>
   			</div>
			</div>


  	</div>
  <div class="center_container">


			<div class="block_top" style="z-index:-1;">
   			<div class="round_left">
	 		  	<img src="<#IMGBASE>/block_top_left.png"
	 				width="9" height="31" class="corner"/>
   			</div>
   			<div class="block_title center_container_title_width">
 				  <div class="icon"><img src="<#IMGBASE>/icon.png" alt="Народная погода <#TOWN2>" width="26" height="26"></div>
 			 		<div class="title"><b>НАРОДНЫЕ ПРИМЕТЫ И ПРАЗДНИКИ</b></div>
   			</div>
   			<div class="round_right">
	 				<img src="<#IMGBASE>/block_top_right.png"
	 				width="9" height="31" class="corner"/>
   			</div>
			</div>
			<div class="block_content">
	      			<div class="content"><#PRIMET></div>
			</div>
			<div class="block_bottom">
   			<div class="round_left">
	 		  	<img src="<#IMGBASE>/block_bt_left.png"
	 				width="9" height="14" class="corner"/>
   			</div>
   			<div class="block_bt center_container_title_width"></div>
   			<div class="round_right">
	 				<img src="<#IMGBASE>/block_bt_right.png"
	 				width="9" height="14" class="corner"/>
   			</div>
			</div>


			<div class="block_top" style="z-index:-1;">
   			<div class="round_left">
	 		  	<img src="<#IMGBASE>/block_top_left.png"
	 				width="9" height="31" class="corner"/>
   			</div>
   			<div class="block_title center_container_title_width">
 				  <div class="icon"><img src="<#IMGBASE>/icon.png" alt="Народная погода <#TOWN2>" width="26" height="26"></div>
 			 		<div class="title"><b>ИНТЕРЕСНЫЕ ФАКТЫ О ПРИРОДЕ</b></div>
   			</div>
   			<div class="round_right">
	 				<img src="<#IMGBASE>/block_top_right.png"
	 				width="9" height="31" class="corner"/>
   			</div>
			</div>
			<div class="block_content">
	      			<div class="content">
					<#FOBOSNEWSNOVA 6 CENTER SelectedNews>
					<div style="clear:both; left-margin:3px">Хотите разместить здесь свои новости? <a href="mailto:korolkow@meteonova.ru">Напишите нам</a></div>
				</div>
			</div>
			<div class="block_bottom">
   			<div class="round_left">
	 		  	<img src="<#IMGBASE>/block_bt_left.png"
	 				width="9" height="14" class="corner"/>
   			</div>
   			<div class="block_bt center_container_title_width"></div>
   			<div class="round_right">
	 				<img src="<#IMGBASE>/block_bt_right.png"
	 				width="9" height="14" class="corner"/>
   			</div>
			</div>


			<div class="block_top">
   			<div class="round_left">
	 		  	<img src="<#IMGBASE>/block_top_left.png"
	 				width="9" height="31" class="corner"
	 				 />
   			</div>
   			<div class="block_title center_container_title_width">
 				  <div class="icon"><img src="<#IMGBASE>/icon.png" width="26" height="26" alt="Прогноз погоды на Метеонове - карты погоды по региону" ></div>
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

	 				<img src="<#IMGBASE>/block_top_right.png"
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
	 		  	<img src="<#IMGBASE>/block_bt_left.png"
	 				width="9" height="14" class="corner"
	 				 />
   			</div>
   			<div class="block_bt center_container_title_width"></div>
   			<div class="round_right">
	 				<img src="<#IMGBASE>/block_bt_right.png"
	 				width="9" height="14" class="corner"
	 				 />

   			</div>
			</div>


			<div class="block_top" style="z-index:-1;">
	   			<div class="round_left">
		 		  	<img src="<#IMGBASE>/block_top_left_2.png"
		 				width="9" height="16" class="corner"
		 				 />
	   			</div>
	   			<div class="block_title_2 center_container_title_width"></div>
	   			<div class="round_right">
		 				<img src="<#IMGBASE>/block_top_right_2.png"
		 				width="9" height="16" class="corner"
		 				 />

	   			</div>
			</div>
			<div class="block_content_2" align="center"  style="width:100%;">
				<#TEMPLATE ru_yah_ru>
			</div>
			<div class="block_bottom">

	   			<div class="round_left">
		 		  	<img src="<#IMGBASE>/block_bt_left.png"
		 				width="9" height="14" class="corner"
		 				 />
	   			</div>
	   			<div class="block_bt center_container_title_width"></div>
	   			<div class="round_right">
		 				<img src="<#IMGBASE>/block_bt_right.png"
		 				width="9" height="14" class="corner"
		 				 />
	   			</div>
			</div>
		</div>
  </div>
</div>
</div>

<div class="hint hidden" id="heathint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);"><b>Комфорт</b> - это температура по ощущению одетого по сезону человека, выходящего на улицу. <a target=_blank href="<#SERVERURL>/faq.htm#comfort">Подробнее...</a></div>
<div class="hint hidden" id="snowhint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Оценка средней высоты снежного покрова <#TOWN2>. <a target=_blank href="<#SERVERURL>/faq.htm#snow">Подробнее...</a></div>
<div class="hint hidden" id="infhint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Создали свой сайт и хотите повысить его информативность и привлекательность? <a href="/informer" target=_blank>Установите</a> погодный информер!</div>
<div class="hint hidden" id="geomhint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Показатель геомагнитной активности Солнца на широте г. <#TOWN>. <a href="<#SERVERURL>/faq.htm#geomagn" target=_blank>Подробнее...</a></div>
<div class="hint hidden" id="waterhint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Оцена температуры воды в водоемах около г. <#TOWN>. <a href="<#SERVERURL>/faq.htm#water" target=_blank>Подробнее...</a></div>
	<div class="yui-b">
  	 <div class="right_main">

				<div class="block_top">
	   			<div class="round_left">

		 		  	<img src="<#IMGBASE>/block_top_left.png"
		 				width="9" height="31" class="corner"
		 				 />
	   			</div>
	   			<div class="block_title" style="width:222px;">
	 				  <div class="icon"><img src="<#IMGBASE>/icon.png" alt="Погода <#TOWN2> - Реклама" width="26" height="26" ></div>
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
	 				  <div class="icon"><img src="<#IMGBASE>/icon.png" alt="Понравилась погода <#TOWN2> на Метенонве? Сделайте общение удобнее!" width="26" height="26" ></div>
	 			 		<div class="title"><b>ПОНРАВИЛСЯ САЙТ?</b></div>
	   			</div>
	   			<div class="round_right">
		 				<img src="<#IMGBASE>/block_top_right.png"
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
						<div class="contact_last"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="<#SERVERURL>/informer">Информеры для сайтов</a></div></div>
					</div>
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
	 		  	<img src="<#IMGBASE>/block_top_left.png"
	 				width="9" height="31" class="corner"
	 				 />
   			</div>
   			<div class="block_title" style="width:222px;">
 				  <div class="icon"><img src="<#IMGBASE>/icon.png" alt="Погода <#TOWN2>" width="26" height="26" ></div>
 			 		<div class="title"><b>РЕКЛАМА</b></div>
   			</div>
   			<div class="round_right">

	 				<img src="<#IMGBASE>/block_top_right.png"
	 				width="9" height="31" class="corner"
	 				 />
   			</div>
			</div>
			<div class="block_content" style="width:100%;">
				<#TEMPLATE ru_adw240x400_ru>
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

		</div>
	</div>

</div>
<div class="right_block">

				<div class="block_top">
	   			<div class="round_left">
 
		 		  	<img src="<#IMGBASE>/block_top_left.png"
		 				width="9" height="31" class="corner"
		 				 />
	   			</div>
	   			<div class="block_title" style="width:222px;">
	 				  <div class="icon"><img src="<#IMGBASE>/icon.png" alt="Погодные новости от ФОБОС на Метеонове" width="26" height="26" ></div>
	 			 		<div class="title"><b>НОВОСТИ</b></div>
	   			</div>
	   			<div class="round_right">
		 				<img src="<#IMGBASE>/block_top_right.png"
		 				width="9" height="31" class="corner"
		 				 />
 
	   			</div>
				</div>
				<div class="block_content" style="width:100%">
					<div class="content">
						<#FOBOSNEWSNOVA 16>
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

</div>
 <#TEMPLATE ru_footer_ru>
</div>
</div>
<div id="graphic"><img src="<#IMGBASE>/graphicBg.png"></div>

<script language="JavaScript">

var spDone=new Array(0,0,0,0,0,0);

setPreloaderPict("graphic","preloader","");
setPreloaderStyle("graphic","preloader");

</script>
</div>

<div id="frc_text_0" class="nodsp"><#FRCT0></div>
<div id="frc_text_1" class="nodsp"><#FRCT1></div>
<div id="frc_text_2" class="nodsp"><#FRCT2></div>
<div id="frc_text_3" class="nodsp"><#FRCT3></div>
<div id="frc_text_4" class="nodsp"><#FRCT4></div>
<div id="frc_text_5" class="nodsp"><#FRCT5></div>

<#TEMPLATE ru_novaprint_ru>

<script language="JavaScript">
var CurPlayFRC=-1;
var townindex=<#INDEX>;
var geosuffix="<#GEOSUFFIX>";
var state=<#REGIONINDEX>;
var predict=<#PREDD1>;
var printcaption="Погода <#TOWN2>";
var updTime=new Date(<#UPDTIME>);
var precTime=new Date(<#PRECTIME>);
var lat=<#FIF>;
var lng=<#LAF>;

var strlocation=new String(document.location);
var reg=/#\d{1}/;
var numFRC=reg.exec(strlocation);
var reg=/\d{1}/;
numFRC=reg.exec(numFRC);
strlocation=null;
if (numFRC==null) numFRC=0;

var graphObj=new GraphObj(townindex,'');
var printobj=new PrintObject();

function decOfNum(number, titles)  
{  
    cases = [2, 0, 1, 1, 1, 2];  
    return titles[ (number%100>4 && number%100<20)? 2 : cases[(number%10<5)?number%10:5] ];  
}  

function ForecastUpdateString()
{ d=new Date(); du=d-updTime; dp=d-precTime; dud=new Date(); dud.setTime(du); dpd=new Date(); dpd.setTime(dp);
if(du==dp) 
{
 res=" обновлен ";
 if(dud.getUTCHours()>0) res=res+dud.getUTCHours()+" "+decOfNum(dud.getUTCHours(), ['час', 'часа', 'часов'])+" ";
 if(dud.getUTCMinutes()>0) res=res+" "+dud.getUTCMinutes()+" "+decOfNum(dud.getUTCMinutes(), ['минута', 'минуты', 'минут'])
 res=res+" назад"; 
}
else
{
 res=" обновлен ";
 if(dud.getUTCHours()>0) res=res+dud.getUTCHours()+" "+decOfNum(dud.getUTCHours(), ['час', 'часа', 'часов'])+" ";
 if(dud.getUTCMinutes()>0) res=res+" "+dud.getUTCMinutes()+" "+decOfNum(dud.getUTCMinutes(), ['минута', 'минуты', 'минут'])
 res=res+" и уточнен ";
 if(dpd.getUTCHours()>0) res=res+dpd.getUTCHours()+" "+decOfNum(dpd.getUTCHours(), ['час', 'часа', 'часов']) +" ";
 if(dpd.getUTCMinutes()>0) res=res+dpd.getUTCMinutes()+" "+decOfNum(dpd.getUTCMinutes(), ['минута', 'минуты', 'минут']);
 res=res+" назад"; 
}
return res;
}

document.getElementById("frcupd").innerHTML=ForecastUpdateString();

function renderMap() {
			var map = new Map({
				predict: 18,
				step: 3,
				count: 1,
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
				document.location = "/map.htm?fi="+(coordinate[1] || 55.8)+"&la="+(coordinate[0] || 37.6)+"&type="+$('.tab-link.checked').attr('map');
			});			

			var $marker = map.renderMarker();
			   $marker.unbind('click').bind('click', function(e) {
			    document.location = "/map.htm?fi="+map.opt.lat+"&la="+map.opt.lng+"&type="+$('.tab-link.checked').attr('map'); 
			   });

			$('.tab-link').unbind('click').bind('click', function(e) {
				e.preventDefault();
				$('.tab-link').removeClass('checked');
				$(this).addClass('checked');
				if (map) map.update({type: $(this).attr('map')}); 
			});
}
	
var mapScripts = ['<#JSBASE>/ol3_1.js', '<#JSBASE>/openlayers.js'];
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

function updateForecast(n)
{
if (typeof scrolling != 'undefined') scrolling.jump(numFRC, n);
numFRC = n; 
}


function updateForecastBg(n)
{
if(numFRC==n) return;
numFRC=n;
if (document.getElementById("blog_text")) document.getElementById("blog_text").innerHTML=document.getElementById("frc_text_"+numFRC).innerHTML;
checkFrcTopLink(); 
updateForecast_audio();
}

var audio = new mnovaAudio({
	js: 'js/dancer',
	jessie: $('.jessie'),
	player_button: $('.player_button'), 
});
audio._load('<#SERVERURL>/speech/forecast_<#INDEX>_'+numFRC);

var scrolling = new Scroll({
	leftBtns: ['arrow_left_top', 'arrow_left_bottom'],
	rightBtns: ['arrow_right_top', 'arrow_right_bottom'],
	scrollObjId: 'frc_cont',
	delta: 51,
	step: {normal: 5, touch: 25},					
	doLeft: function(obj, delta){
	  if (obj) {
	  	if (obj.scrollLeft-delta>=0) obj.scrollLeft = obj.scrollLeft-delta;
	  	else obj.scrollLeft = 0;
	  	updateForecastBg(Math.round(obj.scrollLeft/obj.scrollWidth*6));
	  }
	},
	doRight: function(obj, delta){
	  if (obj) {
	  	var maxWidth = obj.scrollWidth - obj.offsetWidth;
	  	if (maxWidth> obj.scrollLeft) obj.scrollLeft = obj.scrollLeft+delta;
	  	updateForecastBg(Math.round(obj.scrollLeft/obj.scrollWidth*6));
	  }
	}
});	

function updateForecast_audio() {
	if(typeof audio != 'undefined') {
//		if (audio.player.is_play)
//			var callback = function() {
//				audio.btnPlay.style.backgroundPosition = "0px -48px";
//				audio.btnReload.style.display = "block";	
//				audio.player.is_play = true;					
//				audio.play();	
//			}
//		audio.stop();				 
		audio._load('<#SERVERURL>/speech/forecast_<#INDEX>_'+numFRC);
		audio.player_button.trigger('click tap');
//		if (callback) callback();
	}
}

n=numFRC; numFRC=999; updateForecastBg(n);
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


</div>
</body>
</html>