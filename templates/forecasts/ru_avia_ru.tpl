<!DOCTYPE html><#TEMPLATE ru_definitions_ru>
<html>
<head>
<title>МЕТЕОНОВА - авиа прогноз погоды по аэропорту <#TOWN>, риск задержки в расписании вылетов авиа рейсов самолетов по метеоусловиям, опасные явления для гражданской авиации, по данным за <#FRCPUBTIME></title>
<meta http-equiv="Content-Type" content="text/html; charset=<#ENCODING>">
<meta name="description" content="Подробный авиа прогноз погоды по аэропорту <#TOWN>, риск задержки в расписании вылетов авиа рейсов самолетов по метеоусловиям, опасные явления для гражданской авиации, прогноз ограниченной или плохой видимости, метеорологической дальности видимости, прогноз нижней границы облаков, прогноз туманов">
<meta name="keywords" content="погода прогноз аэропорт <#TOWN> задержка рейс вылет опасное явление гражданская авиация ограниченная горизонтальная дальность видимость нижняя граница облаков роса туман роса дождь снег">
<meta name="Category" content="Справки, Погода">
<meta name="Document-state" content="Dynamic">
<base href="<#SERVERURL>/avia.htm">
<link rel="alternate" media="only screen and (max-width: 640px)" href="<#MSERVERURL>/avia/<#INDEXAVIA>.htm" >
<!-- inject:css -->
<!-- endinject -->
<!-- inject:js -->
<!-- endinject -->
</head>

<body>
<div class="hint hidden" id="ngohint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);"><b>НГО, или нижняя граница облаков</b> - прогноз нижней границы облачности. Если она ниже полетного минимума пилота или аэропорта, то рейс может быть задержан или направлен на запасной аэродром.</div>
<div class="hint hidden" id="heathint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);"><b>Комфорт</b> - это температура по ощущению одетого по сезону человека, выходящего на улицу. <a target=_blank href="<#SERVERURL>/faq.htm#comfort">Подробнее...</a></div>
<div class="hint hidden" id="vishint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Метеорологическая дальность видимости. <a href="<#SERVERURL>/faq.htm#visibility">Подробнее...</a></div>
<div class="hint hidden" id="gusthint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Скорость ветра характериуется средней величиной и повыами, когда ветер кратковременно усиливается в 2 и более раз. Измеренная скорость ветра при таком усилении назвается <b>скоростью порывов ветра</b></div>
<div class="hint hidden" id="classhint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Оценка риска задержек рейсов по метеоусловиям</div>
<div id="doc4" class="yui-t5">
   <div id="hd">
     <div id="onhd">
      <div>	
       <div id="logo"><img src="<#IMGBASE>/logo.png" width="277" height="96" alt="Авиа прогноз погоды по аэропорту <#TOWN>"></div>
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
		    	<div id="city_name" class="city_name">Погода по аэропорту <#TOWN></div>
		    	<div class="other_city"><a style="margin: 15px 0 0 15px" href="<#SERVERURL>/avia/"><font color="#8ca2fe"><b>Другой аэропорт</b></font></a></div>
<!--
        		<div class="serchcontent" style="padding-top:12px; float:right;">
        		<div id="search_text" class="search_text">
	          		<input type="text" id="searchCity" name="search" onkeyup="press(event)">&nbsp;&nbsp;<b style="cursor:pointer; text-decoration:underline;" onClick="gotoPage(getSearchURL(document.getElementById('searchCity').value));">Искать</b>
	       		</div>
        </div>
-->
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
 				  <div class="icon"><img src="<#IMGBASE>/icon.png" width="26" height="26" alt="Авиа прогноз погоды по аэропорту <#TOWN>" ></div>
 			 		<div class="title"><b>АВИАПРОГНОЗ</b></div>
<!--
 			 		<div class="top_link">
	      		  		<ul>
		          			<li><a href="<#SERVERURL>/frc/<#INDEX>.htm"><b>Прогноз на 2 недели</b></a></li>
		          			<li><a href="<#SERVERURL>/pro/<#INDEX>.htm"><b>Погода для профи</b></a>&nbsp;<img src="images/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'prohint', true, 150);" onmouseout="showHint(this, 'prohint', false, 150);"></li>
		          			<li><a href="<#SERVERURL>/auto/<#INDEX>.htm"><b>Погода на дорогах</b></a>&nbsp;<img src="images/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'prohint', true, 150);" onmouseout="showHint(this, 'prohint', false, 150);"></li>
		          			<li><a href="<#SERVERURL>/agro/<#INDEX>.htm"><b>Агропрогноз</b></a>&nbsp;<img src="images/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'agrohint', true, 150);" onmouseout="showHint(this, 'agrohint', false, 150);"></li>
	          				<li class="last"><a href=#><b>Печать</b></a></li>
	    		  		</ul>
 			 		</div>
-->
   			</div>
   			<div class="round_right">
	 				<img src="<#IMGBASE>/block_top_right.png"
	 				width="9" height="31" class="corner" />
   			</div>
			</div>
			<div class="block_content">
		    	<div id="frc_content_weather" style="padding-top:0px; height:390px;">
			       <table border="0" cellspacing="0" cellpadding="0" width="97%">
                                <tr>
		    		 <td valign="top"><table border="0"  cellspacing="0" cellpadding="0">
		    			<tr><td class="date sign">Дата</td></tr>
		    			<tr><td class="tod sign">Время суток</td></tr>
		    			<tr><td class="phenom sign">Облачность<br>Погодные явления</td></tr>
		    			<tr><td class="hum sign">Осадки, мм</td></tr>
		    			<tr><td class="temper sign">Температура&nbsp;&deg;C</td></tr>
		    			<tr><td class="hum sign">Комфорт,&deg;C&nbsp;&nbsp;<img src="<#IMGBASE>/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'heathint', true, 300);" onmouseout="showHint(this, 'heathint', false, 300);"></td></tr>
		    			<tr><td class="wind sign">Ветер, метр/с</td></tr>
		    			<tr><td class="hum sign">Порывы ветра&nbsp;&nbsp;<img src="<#IMGBASE>/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'gusthint', true, 300);" onmouseout="showHint(this, 'gusthint', false, 300);"></td></tr>
		    			<tr><td class="hum sign">Видимость, м&nbsp;&nbsp;<img src="<#IMGBASE>/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'vishint', true, 300);" onmouseout="showHint(this, 'vishint', false, 300);"></td></tr>
		    			<tr><td class="hum sign"> НГО, м&nbsp;&nbsp;<img src="<#IMGBASE>/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'ngohint', true, 300);" onmouseout="showHint(this, 'ngohint', false, 300);"></td></tr>
		    			<tr><td class="temper sign">Риск задержек&nbsp;&nbsp;<img src="<#IMGBASE>/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'classhint', true, 300);" onmouseout="showHint(this, 'classhint', false, 300);"></td></tr>
		    		 </table></td>
				 <td><table border=0 cellpadding=0 cellspacing=0 height=330><tr><td valign=top><img src="<#IMGBASE>/arrows_left.gif" border="0" width="9" height="144" onmouseover="this.src='<#IMGBASE>/arrows_left_over.gif'; goLeft();" onmouseout="this.src='<#IMGBASE>/arrows_left.gif'; stopAutoScroll();"></td></tr><tr><td valign=bottom><img src="<#IMGBASE>/arrows_right.gif" border="0" width="9" height="144" onmouseover="this.src='<#IMGBASE>/arrows_right_over.gif'; goRight()" onmouseout="this.src='<#IMGBASE>/arrows_right.gif'; stopAutoScroll()"></td></tr></table></td>
		    		 <td align="center"><div id="frc_cont" style="width:511px; overflow:hidden;">
                                     <table border="0" cellspacing="0" cellpadding="0">
		    			<tr><td id="frc_content_weather0">

						<table border="0" cellspacing="0" cellpadding="0">
							<tr>					
								 <#TEMPLATEPREDICT ru_aviafrc2_ru 9>
								 <#TEMPLATEPREDICT ru_aviafrc2_ru 12>
								 <#TEMPLATEPREDICT ru_aviafrc2_ru 15>
								 <#TEMPLATEPREDICT ru_aviafrc2_ru 18>
								 <#TEMPLATEPREDICT ru_aviafrc2_ru 21>
								 <#TEMPLATEPREDICT ru_aviafrc2_ru 24>
								 <#TEMPLATEPREDICT ru_aviafrc2_ru 27>
								 <#TEMPLATEPREDICT ru_aviafrc2_ru 30>
								 <#TEMPLATEPREDICT ru_aviafrc2_ru 33>
								 <#TEMPLATEPREDICT ru_aviafrc2_ru 36>
								 <#TEMPLATEPREDICT ru_aviafrc2_ru 39>
								 <#TEMPLATEPREDICT ru_aviafrc2_ru 42>
								 <#TEMPLATEPREDICT ru_aviafrc2_ru 45>
								 <#TEMPLATEPREDICT ru_aviafrc2_ru 48>
								 <#TEMPLATEPREDICT ru_aviafrc2_ru 51>
								 <#TEMPLATEPREDICT ru_aviafrc2_ru 54>
								 <#TEMPLATEPREDICT ru_aviafrc2_ru 57>
								 <#TEMPLATEPREDICT ru_aviafrc2_ru 60>
								 <#TEMPLATEPREDICT ru_aviafrc2_ru 63>
								 <#TEMPLATEPREDICT ru_aviafrc2_ru 66>
								 <#TEMPLATEPREDICT ru_aviafrc2_ru 69>
								 <#TEMPLATEPREDICT ru_aviafrc2_ru 72>
								 <#TEMPLATEPREDICT ru_aviafrc2_ru 75>
								 <#TEMPLATEPREDICT ru_aviafrc2_ru 78>
								 <#TEMPLATEPREDICT ru_aviafrc2_ru 81>
							</tr>
						</table>

					</td></tr>
		    		     </table></div></td>
				 <td><table border=0 cellpadding=0 cellspacing=0 height=330><tr><td valign=top><img src="<#IMGBASE>/arrows_right2.gif" border="0" width="9" height="144" onmouseover="this.src='<#IMGBASE>/arrows_right2_over.gif'; goRight()" onmouseout="this.src='<#IMGBASE>/arrows_right2.gif'; stopAutoScroll()"></td></tr><tr><td valign=bottom><img src="<#IMGBASE>/arrows_left2.gif" border="0" width="9" height="144" onmouseover="this.src='<#IMGBASE>/arrows_left2_over.gif'; goLeft()" onmouseout="this.src='<#IMGBASE>/arrows_left2.gif'; stopAutoScroll()"></td></tr></table></td>
		              </tr>
<!--
  			      <tr>
				<td colspan="4">
 			 		<div class="top_link" style="float:left; left:-5px;">
	      		  		<ul>
	          				<li class="first"><b>Спецпроекты:</b></li>
		          			<li><a href="<#SERVERURL>/pro/<#INDEX>.htm">Прогноз для профессионалов</a>&nbsp;<img src="images/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'prohint', true, 150);" onmouseout="showHint(this, 'prohint', false, 150);"></li>
		          			<li class="last"><a href="<#SERVERURL>/agro/<#INDEX>.htm">Агропрогноз</a>&nbsp;<img src="images/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'agrohint', true, 150);" onmouseout="showHint(this, 'agrohint', false, 150);"></li>
	          				<li class="first">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Экспорт:</b></li>
	        	  			<li><a href="<#SERVERURL>/xml/<#INDEX>.xml">XML</a></li>
	          				<li class="last"><a href="<#SERVERURL>/rss/<#INDEX>.xml">RSS</a></li>
	    		  		</ul>
 			 		</div>
				</td>
			      </tr>
-->
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
 				  <div class="icon"><img src="<#IMGBASE>/icon.png" width="26" height="26" alt="Авиа прогноз погоды по аэропорту <#TOWN> - Астрономические данные"></div>
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
<!--
			      <div class="icon" style="background: url(<#IMGBASE>/astro_moon.gif);" ></div>
			      <div class="data">
			       	<div class="text_bg" style="background: url(<#IMGBASE>/astro_moon_day.png) no-repeat"><div id="astro_dolgota" class="text_inf"><#MOONDAY>-й лунный день</div></div>
			        <div class="text_bg" style="background: url(<#IMGBASE>/astro_dolgota.png) no-repeat"><div id="astro_phase" class="text_inf"><#MOONNPHASE></div></div>
			        <div class="text_bg" style="background: url(<#IMGBASE>/astro_vosxod.png) no-repeat"><div id="astro_vosxod" class="text_inf">Восход: <#MOONRISE></div></div>
			       	<div class="text_bg_last" style="background: url(<#IMGBASE>/astro_zaxod.png) no-repeat"><div id="astro_zaxod" class="text_inf">Заход: <#MOONSET></div></div>
			       </div>
-->
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
 				  <div class="icon"><img src="<#IMGBASE>/icon.png" width="26" height="26" alt="Авиа прогноз погоды по аэропорту <#TOWN> - Контактная информация"></div>
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
 				  <div class="icon"><img src="<#IMGBASE>/icon.png" width="26" height="26" alt="Авиа прогноз погоды по аэропорту <#TOWN> - Народные приметы"></div>
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
	 				  <div class="icon"><img src="<#IMGBASE>/icon.png" width="26" height="26" alt="Авиа прогноз погоды по аэропорту <#TOWN> - Реклама"></div>
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

			<div class="block_top ie">
   			<div class="round_left">
	 		  	<img src="<#IMGBASE>/block_top_left.png"
	 				width="9" height="31" class="corner"/>
   			</div>
   			<div class="block_title" style="width:222px">
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
   			<div class="block_bt" style="width:222px"></div>
   			<div class="round_right">
	 				<img src="<#IMGBASE>/block_bt_right.png"
	 				width="9" height="14" class="corner"/>
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
						<div class="contact_last"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="<#SERVERURL>/informer/index.php?index=<#INDEX>">Информеры для сайтов</a></div></div>
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

		</div>
	</div>
</div>
<div class="right_block">
				<div class="block_top">
	   			<div class="round_left">
 
		 		  	<img src="/images/block_top_left.png"
		 				width="9" height="31" class="corner"
		 				/>
	   			</div>
	   			<div class="block_title" style="width:222px;">
	 				  <div class="icon"><img src="/images/icon.png" width="26" height="26" alt="Авиа прогноз погоды по аэропорту <#TOWN> - Новости в Россиии и мире от ФОБОС"></div>
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
					 <#FOBOSNEWSNOVA 9>
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
</div>

<script language="JavaScript">

function updateBanner(id)
{
ban=document.getElementById(id);
s=ban.innerHTML; ban.innerHTML=""; ban.innerHTML=s;
}

function updateBanners(page)
{
//setTimeout('updateBanner("ban_240")',3000);
setTimeout('updateBanner("ban_500")',2000);
}

function updateForecast(n)
{
numFRC=n;
}

function updateForecastBg(n)
{
if(numFRC==n) return;
numFRC=n;
}

var townindex=<#INDEX>;
var geosuffix="<#GEOSUFFIX>";
var state=<#REGIONINDEX>;
var predict=<#PREDD1>;

var strlocation=new String(document.location);
var reg=/#\d{1}/;
var numFRC=reg.exec(strlocation);
var reg=/\d{1}/;
numFRC=reg.exec(numFRC);
strlocation=null;
if (numFRC==null) numFRC=0;

fco=document.getElementById('frc_cont');
setInterval(tmDispatch,20);

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

</body>
</html>