<!DOCTYPE html><#TEMPLATE ru_definitions_ru>
<html>
<head>
<title>МЕТЕОНОВА - погода <#TOWN2> на неделю для водителей - прогноз опасных явлений погоды на автодорогах города <#FULLTOWNNAME> на 7 дней вперед</title>
<meta http-equiv="Content-Type" content="text/html; charset=<#ENCODING>">
<meta name="description" content="Подробный прогноз погоды на неделю <#TOWN3>, <#REGIONNAME> для водителей, дачников, дальнобойщиков. Опасные погодные явления, гололед, гололедица, туман, дымка, дальность видимости, боковой ветер. Стоит ли помыть авмомобиль">
<meta name="keywords" content="погода прогноз погоды на 7 дней <#TOWN> <#REGIONNAME> авто автомобиль фура грузовик легковушка автолюбитель шофер водитель дальнобойщик грузоперевозка маршрут опасные явления гололед туман ветер снег дождь мойка автомойка каршеринг">
<meta name="Category" content="Справки, Погода">
<meta name="Classification" content="Прогноз погоды <#TOWN3> для водителей"> 
<meta name="Document-state" content="Dynamic">
<base href="<#SERVERURL>/auto.htm">
<link rel="alternate" media="only screen and (max-width: 640px)" href="<#MSERVERURL>/auto/<#INDEX>-pogoda-<#TOWNEN_>.htm" >
<!-- inject:css -->
<!-- endinject -->
<!-- inject:js -->
<!-- endinject -->
</head>

<body>
<div class="suggest" id="suggest"></div>
<div class="hint hidden" id="heathint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);"><b>Комфорт</b> - это температура по ощущению одетого по сезону человека, выходящего на улицу. <a target=_blank href="<#SERVERURL>/faq.htm#comfort">Подробнее...</a></div>
<div class="hint hidden" id="agrohint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Подробный прогноз погоды для садоводов и огродников.</div>
<div class="hint hidden" id="autohint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Прогноз неблагоприятных погодных явлений для автомобилистов.</div>
<div class="hint hidden" id="prohint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Более подробные данные о состоянии атмосферы, поверхности и почвы.</div>
<div class="hint hidden" id="s3hint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Наглядный погоды <#TOWN3> на 3 дня</div>
<div class="hint hidden" id="medhint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Медицинский прогноз погоды <#TOWN3> для метеочувствительных людей с заболеваниями сердечно-сосудистой системы и дыхательных путей. <a href="<#SERVERURL>/faq.htm#med" target=_blank>Подробнее...</a></div>
<div class="hint hidden" id="infhint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Создали свой сайт и хотите повысить его информативность и привлекательность? Установите погодный информер!</div>
<div class="hint hidden" id="vishint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Метеорологическая дальность видимости. <a href="<#SERVERURL>/faq.htm#visibility">Подробнее...</a></div>
<div class="hint hidden" id="classhint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Оценка критерия неблагоприятных факторов атмосферы в отношении их воздействия на водителя. <a href="<#SERVERURL>/faq.htm#dac">Подробнее...</a></div>
<div class="hint hidden" id="monthhint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Прогноз погоды на месяц <#TOWN2>. Оценка температуры и вероятности осадков на 30 дней. <a href="<#SERVERURL>/faq.htm#month" target=_blank>Подробнее...</a></div>
<div class="hint hidden" id="snowhint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Прирост высоты снежного покрова за 3 часа, в сантиметрах. Отрицательные значения говорят о таянии или уплотнении снега.</div>
<div id="doc4" class="yui-t5">
<#TEMPLATE ru_adw728x90_ru>
   <div id="hd">
     <div id="onhd">
      <div>	
       <div id="logo"><a href="<#SERVERURL>"><img src="<#IMGBASE>/logo.png" width="277" height="96" alt="Погода <#TOWN2> на 3 дня для водителей"></a></div>
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
 				  <div class="icon"><img src="<#IMGBASE>/icon.png" width="26" height="26" alt="Прогноз погоды на 3 дня <#TOWN2> для автомобилистов" ></div>
 			 		<div class="title"><b>АВТО</b></div>
 			 		<div class="top_link">
	      		  		<ul>
		          			<li><a href="<#SERVERURL>/3days/<#INDEX>-pogoda-<#TOWNEN_>.htm"><b>На 3 дня</b></a>&nbsp;<img src="images/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 's3hint', true, 250);" onmouseout="showHint(this, 's3hint', false, 250);"></li>
		          			<li><a href="<#SERVERURL>/frc/<#INDEX>.htm"><b>На 2 недели</b></a></li>
						<#MONTHLINK ru_monthlinkt_ru>
		          			<li><a href="<#SERVERURL>/med/<#INDEX>.htm"><b>Медицинский</b></a>&nbsp;<img src="images/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'medhint', true, 250);" onmouseout="showHint(this, 'medhint', false, 250);"></li>
		          			<li><a href="<#SERVERURL>/pro/<#INDEX>.htm"><b>Профи</b></a>&nbsp;<img src="images/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'prohint', true, 150);" onmouseout="showHint(this, 'prohint', false, 150);"></li>
		          			<li class="last"><a href="<#SERVERURL>/agro/<#INDEX>.htm"><b>Агро</b></a>&nbsp;<img src="images/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'agrohint', true, 150);" onmouseout="showHint(this, 'agrohint', false, 150);"></li>
 			 		</div>
   			</div>
   			<div class="round_right">
	 				<img src="<#IMGBASE>/block_top_right.png"
	 				width="9" height="31" class="corner" />
   			</div>
			</div>
			<div class="block_content">
		    	<div id="frc_content_weather" style="padding-top:0px; height:430px;">
			       <table border="0" cellspacing="0" cellpadding="0" width="98%">
                                <tr>
		    		 <td><table border="0" cellspacing="0" cellpadding="0">
		    			<tr><td class="date sign">Дата</td></tr>
		    			<tr><td class="tod sign">Время суток</td></tr>
		    			<tr><td class="phenom sign">Облачность<br>Погодные явления</td></tr>
		    			<tr><td class="hum sign"> Осадки за 3 ч, мм</td></tr>
		    			<tr><td class="temper sign">Температура&nbsp;&deg;C</td></tr>
		    			<tr><td class="hum sign">Комфорт,&deg;C&nbsp;&nbsp;<img src="<#IMGBASE>/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'heathint', true, 300);" onmouseout="showHint(this, 'heathint', false, 300);"></td></tr>
		    			<tr><td class="hum sign"> Прирост снега, см&nbsp;<img src="<#IMGBASE>/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'snowhint', true, 300);" onmouseout="showHint(this, 'snowhint', false, 300);"></td></tr>
		    			<tr><td class="wind sign">Ветер, метр/с</td></tr>
		    			<tr><td class="hum sign">Видимость, м&nbsp;&nbsp;<img src="<#IMGBASE>/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'vishint', true, 300);" onmouseout="showHint(this, 'vishint', false, 300);"></td></tr>
		    			<tr><td class="wind sign">Опасные явления</td></tr>
		    			<tr><td class="temper sign">Класс опасности&nbsp;&nbsp;<img src="<#IMGBASE>/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'classhint', true, 300);" onmouseout="showHint(this, 'classhint', false, 300);"></td></tr>
		    			<tr><td class="hum sign">Помыть автомобиль?</td></tr>
		    		 </table></td>
				 <td><table border=0 cellpadding=0 cellspacing=0 height=350><tr><td valign=top><div id="arrow_left_top"><img src="<#IMGBASE>/arrows_left.gif" border="0" width="9" height="144" onmouseover="this.src='<#IMGBASE>/arrows_left_over.gif';" onmouseout="this.src='<#IMGBASE>/arrows_left.gif';"></div></td></tr><tr><td valign=bottom><div id="arrow_right_bottom"><img src="<#IMGBASE>/arrows_right.gif" border="0" width="9" height="144" onmouseover="this.src='<#IMGBASE>/arrows_right_over.gif';" onmouseout="this.src='<#IMGBASE>/arrows_right.gif';"></div></td></tr></table></td>
		    		 <td align="center"><div id="frc_cont" style="width:511px; overflow:hidden;">
                                     <table border="0" cellspacing="0" cellpadding="0">
		    			<tr><td id="frc_content_weather0">

						<table border="0" cellspacing="0" cellpadding="0">
							<tr>					
								 <#TEMPLATEPREDICT ru_autofrc2_ru 9>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 12>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 15>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 18>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 21>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 24>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 27>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 30>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 33>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 36>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 39>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 42>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 45>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 48>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 51>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 54>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 57>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 60>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 63>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 66>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 69>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 72>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 75>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 78>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 81>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 84>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 87>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 90>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 93>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 96>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 99>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 102>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 105>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 108>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 111>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 114>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 117>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 120>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 123>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 126>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 129>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 132>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 135>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 138>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 141>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 144>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 147>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 150>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 153>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 156>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 159>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 162>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 165>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 168>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 171>
								 <#TEMPLATEPREDICT ru_autofrc2_ru 174>
							</tr>
						</table>

					</td></tr>
		    		     </table></div></td>
				 <td><table border=0 cellpadding=0 cellspacing=0 height=350><tr><td valign=top><div id="arrow_right_top"><img src="<#IMGBASE>/arrows_right2.gif" border="0" width="9" height="144" onmouseover="this.src='<#IMGBASE>/arrows_right2_over.gif';" onmouseout="this.src='<#IMGBASE>/arrows_right2.gif';"></td></div></tr><tr><td valign=bottom><div id="arrow_left_bottom"><img src="<#IMGBASE>/arrows_left2.gif" border="0" width="9" height="144" onmouseover="this.src='<#IMGBASE>/arrows_left2_over.gif';" onmouseout="this.src='<#IMGBASE>/arrows_left2.gif';"></div></td></tr></table></td>
		              </tr>
    			     </table>
		    	</div>
			</div>
			<div class="block_bottom">
   			<div class="round_left">
	 		  	<img src="<#IMGBASE>/block_bt_left.png" width="9" height="14" class="corner" />
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
 				  <div class="icon"><img src="<#IMGBASE>/icon.png" width="26" height="26" alt="Погода <#TOWN2> для автомобилистов - астрономические данные"></div>
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
			<div class="block_top ie">
   			<div class="round_left">
	 		  	<img src="<#IMGBASE>/block_top_left.png"
	 				width="9" height="31" class="corner"/>
   			</div>
   			<div class="block_title left_contener_title_width">
 				  <div class="icon"><img src="<#IMGBASE>/icon.png" width="26" height="26" alt="Погода <#TOWN2> на 3 дня для автомобилистов - контактная информация"></div>
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
						<div class="contact"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="<#SERVERURL>/faq.htm">Частые вопросы</a></div></div>
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

			<div class="block_top" style="z-index:-1;">
			<div class="block_top" style="z-index:-1;">
   			<div class="round_left">
	 		  	<img src="<#IMGBASE>/block_top_left.png"
	 				width="9" height="31" class="corner"/>
   			</div>
   			<div class="block_title center_container_title_width">
 				  <div class="icon"><img src="<#IMGBASE>/icon.png" width="26" height="26" alt="Погода <#TOWN2> на 3 дня для автомобилистов - народные приметы"></div>
 			 		<div class="title"><b>НАРОДНЫЕ ПРИМЕТЫ И ПРАЗДНИКИ</b></div>
   			</div>
   			<div class="round_right">
	 				<img src="<#IMGBASE>/block_top_right.png"
	 				width="9" height="31" class="corner"/>
   			</div>
			</div>
			<div class="block_content style="width:100%">
	      			<div class="content" style="width:100%"><#PRIMET></div>
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
	   			<div class="round_left">
		 		  	<img src="<#IMGBASE>/block_top_left_2.png"
		 				width="9" height="16" class="corner"
		 				onLoad="transparent(this)" />
	   			</div>
	   			<div class="block_title_2 center_container_title_width"></div>
	   			<div class="round_right">
		 				<img src="<#IMGBASE>/block_top_right_2.png"
		 				width="9" height="16" class="corner"
		 				onLoad="transparent(this)" />

	   			</div>
			</div>
			<div class="block_content_2" align="center"  style="width:100%;">
				<#TEMPLATE ru_yah_ru>
			</div>
			<div class="block_bottom">

	   			<div class="round_left">
		 		  	<img src="<#IMGBASE>/block_bt_left.png"
		 				width="9" height="14" class="corner"
		 				onLoad="transparent(this)" />
	   			</div>
	   			<div class="block_bt center_container_title_width"></div>
	   			<div class="round_right">
		 				<img src="<#IMGBASE>/block_bt_right.png"
		 				width="9" height="14" class="corner"
		 				onLoad="transparent(this)" />
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
		 				onLoad="transparent(this)" />
	   			</div>
	   			<div class="block_title" style="width:222px;">
	 				  <div class="icon"><img src="<#IMGBASE>/icon.png" width="26" height="26" alt="Погода <#TOWN2> на 3 дня для автомобилистов - Реклама"></div>
	 			 		<div class="title"><b>РЕКЛАМА</b></div>
	   			</div>
	   			<div class="round_right">
		 				<img src="<#IMGBASE>/block_top_right.png"
		 				width="9" height="31" class="corner"
		 				onLoad="transparent(this)" />

	   			</div>
				</div>


				<div class="block_content"><div id="ban_240">
					<#TEMPLATE ru_ban240_ru>
				</div></div>
				<div class="block_bottom">
	   			<div class="round_left">
		 		  	<img src="<#IMGBASE>/block_bt_left.png"
		 				width="9" height="14" class="corner"
		 				onLoad="transparent(this)" />

	   			</div>
	   			<div class="block_bt" style="width:222px"></div>
	   			<div class="round_right">
		 				<img src="<#IMGBASE>/block_bt_right.png"
		 				width="9" height="14" class="corner"
		 				onLoad="transparent(this)" />
	   			</div>
				</div>

				<div class="block_top">
	   			<div class="round_left">

		 		  	<img src="<#IMGBASE>/block_top_left.png"
		 				width="9" height="31" class="corner"
		 				onLoad="transparent(this)" />
	   			</div>
	   			<div class="block_title" style="width:222px;">
	 				  <div class="icon"><img src="<#IMGBASE>/icon.png" alt="Погода <#TOWN2> - все погодные сервисы на Метеонове" width="26" height="26" ></div>
	 			 		<div class="title"><b><#TOWN16></b></div>
	   			</div>
	   			<div class="round_right">
		 				<img src="<#IMGBASE>/block_top_right.png"
		 				width="9" height="31" class="corner"
		 				onLoad="transparent(this)" />

	   			</div>
				</div>
				<div class="block_content" style="width:100%;">
					<div class="content" style="width:215px;">
						<div style="width:100%; margin-bottom:6px;"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="<#SERVERURL>/3days/<#INDEX>-pogoda-<#TOWNEN_>.htm" title="Погода на 3 дня <#TOWN3>">Краткий прогноз на 3 дня</a></div></div>
						<div style="width:100%; margin-bottom:6px;"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="/frc/<#INDEX>.htm" title="Погода <#TOWN3> на 14 дней"><b>Прогноз погоды на 14 дней</b></a></div></div>
						<#MONTHLINK ru_monthlinkr_ru>
						<div style="width:100%; margin-bottom:6px;"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="/agro/<#INDEX>.htm" title="Погода <#TOWN3> на 5 дней для дачников и сельхозпроизводителей">Агропрогноз погоды на 5 дней</a></div></div>
						<div style="width:100%; margin-bottom:6px;"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="/pro/<#INDEX>.htm" title="Подробный профессиональный прогноз погоды <#TOWN3> на неделю">Подробный прогноз неделю</a></div></div>
						<div style="width:100%; margin-bottom:6px;"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="/med/<#INDEX>.htm" title="Погода <#TOWN3> на 14 дней для метеочувствительных людей">Медицинский прогноз погоды</a></div></div>
						<div style="width:100%;"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="/map.htm?fi=<#FIF>&la=<#LAF>&type=mc_TMP_2_m_above_ground" target=_blank title="Карты погоды в регионе города <#TOWN>">Карты погоды</a></div></div>

					</div>
				</div>
				<div class="block_bottom">

	   			<div class="round_left">
		 		  	<img src="<#IMGBASE>/block_bt_left.png"
		 				width="9" height="14" class="corner"
		 				onLoad="transparent(this)" />
	   			</div>
	   			<div class="block_bt" style="width:222px"></div>
	   			<div class="round_right">
		 				<img src="<#IMGBASE>/block_bt_right.png"
		 				width="9" height="14" class="corner"
		 				onLoad="transparent(this)" />
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

		 		  	<img src="<#IMGBASE>/block_top_left.png"
		 				width="9" height="31" class="corner"
		 				onLoad="transparent(this)" />
	   			</div>
	   			<div class="block_title" style="width:222px;">
	 				  <div class="icon"><img src="<#IMGBASE>/icon.png" width="26" height="26" alt="Погода <#TOWN2> на 3 дня для водителей"></div>
	 			 		<div class="title"><b>РЕКЛАМА</b></div>
	   			</div>
	   			<div class="round_right">
		 				<img src="<#IMGBASE>/block_top_right.png"
		 				width="9" height="31" class="corner"
		 				onLoad="transparent(this)" />

	   			</div>
				</div>
				<div class="block_content" style="width:100%;">
					<#TEMPLATE ru_adw240x400_ru>
				</div>
				<div class="block_bottom">

	   			<div class="round_left">
		 		  	<img src="<#IMGBASE>/block_bt_left.png"
		 				width="9" height="14" class="corner"
		 				onLoad="transparent(this)" />
	   			</div>
	   			<div class="block_bt" style="width:222px"></div>
	   			<div class="round_right">
		 				<img src="<#IMGBASE>/block_bt_right.png"
		 				width="9" height="14" class="corner"
		 				onLoad="transparent(this)" />
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
		 				onLoad="transparent(this)" />
	   			</div>
	   			<div class="block_title" style="width:222px;">
	 				  <div class="icon"><img src="/images/icon.png" width="26" height="26" alt="Погода <#TOWN2> на 3 дня для автомобилистов - Новости от наших партнеров"></div>
	 			 		<div class="title"><b>НОВОСТИ</b></div>
	   			</div>
	   			<div class="round_right">
		 				<img src="/images/block_top_right.png"
		 				width="9" height="31" class="corner"
		 				onLoad="transparent(this)" />
 
	   			</div>
				</div>
				<div class="block_content" style="width:100%;">
					<div class="content" style="width:210px;">
					 <#FOBOSNEWSNOVA 13>
					</div>
				</div>
				<div class="block_bottom">
 
	   			<div class="round_left">
		 		  	<img src="/images/block_bt_left.png"
		 				width="9" height="14" class="corner"
		 				onLoad="transparent(this)" />
	   			</div>
	   			<div class="block_bt" style="width:222px"></div>
	   			<div class="round_right">
		 				<img src="/images/block_bt_right.png"
		 				width="9" height="14" class="corner"
		 				onLoad="transparent(this)" />
	   			</div>
				</div>
 
</div>
 <#TEMPLATE ru_footer_ru>
</div>
</div>
</div>

<script language="JavaScript">
var townindex=<#INDEX>;
var geosuffix="<#GEOSUFFIX>";
var state=<#REGIONINDEX>;
var predict=<#PREDD1>;
var lat=<#FIF>;
var lng=<#LAF>;

var scrolling = new Scroll({
	leftBtns: ['arrow_left_top','arrow_left_bottom'],
	rightBtns: ['arrow_right_top','arrow_right_bottom'],
	scrollObjId: 'frc_cont',
	delta: 51,
	step: {normal: 5, touch: 25},					
	doLeft: function(obj, delta){
	  if (obj) {
	  	if (obj.scrollLeft-delta>=0) obj.scrollLeft = obj.scrollLeft-delta;
	  	else obj.scrollLeft = 0;
//	  	updateForecastBg(Math.round(obj.scrollLeft/obj.scrollWidth*6));
	  }
	},
	doRight: function(obj, delta){
	  if (obj) {
	  	var maxWidth = obj.scrollWidth - obj.offsetWidth;
	  	if (maxWidth> obj.scrollLeft) obj.scrollLeft = obj.scrollLeft+delta;
//	  	updateForecastBg(Math.round(obj.scrollLeft/obj.scrollWidth*6));
	  }
	}
});	

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
			script.charset = 'utf-8';
			script.onload = function() {
				if (mapScripts.length == 0) {
					renderMap();
				}
				loadScript(mapScripts.shift());
			}
			document.head.appendChild(script);
}

loadScript(mapScripts.shift());

var bPageExpired=0;
var bAllowRefresh=1;
function pageUpdate(){ bPageExpired=1; if(bAllowRefresh && navigator.onLine) document.location.href=document.location.href;}
window.onblur = function() { bAllowRefresh=0;}
window.onfocus = function() { bAllowRefresh=1; if(bPageExpired) pageUpdate();}
setInterval(pageUpdate,1800000);
</script>

<script src="//mc.yandex.ru/metrika/watch.js" type="text/javascript"></script><script type="text/javascript">try { var yaCounter53149 = new Ya.Metrika({id:53149, clickmap:true, accurateTrackBounce:true, webvisor:true,type:1});} catch(e) { }</script><noscript><div><img src="//mc.yandex.ru/watch/53149?cnt-class=1" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
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