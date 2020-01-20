<!DOCTYPE html><#TEMPLATE ru_definitions_ru>
<html>
<head>
<title>МЕТЕОНОВА - погода <#TOWN3> на 5 суток, прогноз погоды <#TOWN3>, <#REGIONNAME> на 5 дней для садоводов и огородников - агро прогноз неблагоприятных погодных условий для посадки рассады, ухода, выращивания и сбора урожая</title>
<meta http-equiv="Content-Type" content="text/html; charset=<#ENCODING>">
<meta name="description" content="Погода <#TOWN3> на 5 дней. Наиболее точный прогноз погоды на 5 дней суток для садоводов и огородников по городу <#TOWN>, <#REGIONNAME>. Агро прогноз благоприятных условий для посадки рассады, ухода, выращивания и сбора урожая <#TOWN3> (<#REGIONNAME>). Температура, влажность, заморозки на почве. Количество осадков, высота снега, пожароопасность">
<meta name="keywords" content="погода на 5 дней прогноз <#TOWN> <#REGIONNAME> садовод огородник дачник рассада парник теплица мороз почва осадки ветер влажность давление агро сельхозработы заморозки засуха снег класс пожароопасность количество снега влажность почва рассада уход выращивание сбор урожай">
<meta name="Category" content="Справки, Погода">
<meta name="Document-state" content="Dynamic">
<base href="<#SERVERURL>/agro.htm">
<!-- inject:css -->
<!-- endinject -->
<!-- inject:js -->
<!-- endinject -->
<script type="text/javascript">
var townindex=<#INDEX>;
var geosuffix="";
var state=<#REGIONINDEX>;
var predict=12;
var lat=<#FIF>;
var lng=<#LAF>;
</script>
<noscript>
Прогноз погоды <#TOWN3> на 5 дней неблагоприятных условий для посадки рассады, ухода, выращивания и сбора урожая. Температура, влажность, заморозки на почве и засуха. Количество осадков, высота снега, пожароопасность
</noscript>
</head>
<body>
<div class="suggest" id="suggest"></div>
<div class="hint hidden" id="s3hint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Наглядный прогноз погоды <#TOWN3> на 3 дня</div>
<div class="hint hidden" id="agrohint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Подробный прогноз погоды для садоводов и огродников в окрестностях г. <#TOWN>.</div>
<div class="hint hidden" id="prohint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Более подробные данные о состоянии атмосферы, поверхности и почвы <#TOWN2>.</div>
<div class="hint hidden" id="medhint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Медицинский прогноз погоды <#TOWN3> для метеочувствительных людей с заболеваниями сердечно-сосудистой системы и дыхательных путей. <a href="<#SERVERURL>/faq.htm#med" target=_blank>Подробнее...</a></div>
<div class="hint hidden" id="airhint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">В этом блоке приведен прогноз состояния приземного слоя воздуха. Отображаются: экстремальная температура (минимальная ночью и максимальная днеим), относительная влажность воздуха, а также скорость и направление приземного ветра.</div>
<div class="hint hidden" id="sfchint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">В этом блоке приведен прогноз состояния поверхности. Отображаются: температура поверхности, сумма осадков за последние 6 часов в мм, высота снежного покрова в метрах, прирост снежного покрова за 6 часов в сантиметрах, класс пожароопасности (<a href=<#SERVERURL>/faq.htm#fire target=_blank>Подробнее...</a>)</div>
<div class="hint hidden" id="soilhint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">В этом блоке приведен прогноз состояния верхнего слоя почвы. Отображаются: средняя температура верхнего слоя почвы, а также влагосодержание почвы, которое представляет собой отношение массы воды к общей массе почвы, выраженное в процентах.</div>
<div class="hint hidden" id="monthhint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Прогноз погоды на месяц <#TOWN2>. Оценка температуры и вероятности осадков на 30 дней. <a href="<#SERVERURL>/faq.htm#month" target=_blank>Подробнее...</a></div>
<div id="doc4" class="yui-t5">
<#TEMPLATE ru_adw728x90_ru>
   <div id="hd">
     <div id="onhd">
       <div id="logo"><img src="/images/logo.png" width="277" height="96" alt="Погода <#TOWN3> на 5 дней""></div>
	<#TEMPLATE ru_menu_ru>
     </div>
   </div>
<div>
<div id="bd">
	<div id="yui-main">
	<div class="yui-b">
      <div class="block_city">
   		<div class="round_left">
	 		<img src="<#IMGBASE>/city_left.png"
	 		width="10" height="46" class="corner""/>
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
	 		width="10" height="46" class="corner">
   		</div>
    </div>
  <div class="main_container">
			<div class="block_top">
   			<div class="round_left">
	 		  	<img src="/images/block_top_left.png"
	 				width="9" height="31" class="corner">
   			</div>
   			<div class="block_title main_container_title_width">
 				  <div class="icon"><img src="/images/icon.png" width="26" height="26" alt="Агро прогноз погоды на 5 дней <#TOWN3>"" /></div>
 			 	  <div class="title"><b>АГРОПРОГНОЗ</b></div>
 			 		<div class="top_link">
	      		  		<ul>
	          			<li><a href="<#SERVERURL>/3days/<#INDEX>-pogoda-<#TOWNEN_>.htm"><b>На 3 дня</b></a></li>
	          			<li><a href="<#SERVERURL>/frc/<#INDEX>.htm"><b>На 14 дней</b></a></li>
					<#MONTHLINK ru_monthlinkt_ru>
	          			<li><a href="<#SERVERURL>/med/<#INDEX>.htm"><b>Медицинский</b></a>&nbsp;<img src="images/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'medhint', true, 250);" onmouseout="showHint(this, 'medhint', false, 250);"></li>
	          			<li><a href="<#SERVERURL>/pro/<#INDEX>.htm"><b>Профи</b></a>&nbsp;<img src="images/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'prohint', true, 150);" onmouseout="showHint(this, 'prohint', false, 150);"></li>
	          			<li class="last"><a href="<#SERVERURL>/auto/<#INDEX>.htm"><b>Авто</b></a>&nbsp;<img src="images/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'agrohint', true, 150);" onmouseout="showHint(this, 'agrohint', false, 150);"></li>
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
		    	<div id="agro_content_weather">
	              <table border="0" cellspacing="0" cellpadding="0"><tr>
		    		<td><table border="0"  cellspacing="0" cellpadding="0" style="margin-top:6px;">
		    			<tr><td class="date sign">Дата</td></tr>
		    			<tr><td class="tod sign">Время суток</td></tr>
		    			<tr><td class="phenom sign">Облачность<br>Явления</td></tr>
		    			<tr><td class="hum sign">Надо ли поливать?</td></tr>
		    			<tr><td class="hum sign">Надо ли укрывать?</td></tr>
		    			<tr><td class="agro_title"></td></tr>
		    			<tr><td class="temper sign">Экстремальная<br>Температура,&deg;C</td></tr>
		    			<tr><td class="hum sign">Влажность, %</td></tr>
		    			<tr><td class="wind sign">Ветер, м/с</td></tr>
		    			<tr><td class="hum sign">Порывы, м/с</td></tr>
		    			<tr><td class="agro_title"></td></tr>
		    			<tr><td class="temper sign">Температура,&deg;C</td></tr>
		    			<tr><td class="hum sign">Осадки, мм</td></tr>
		    			<tr><td class="hum sign">Высота снега, м</td></tr>
		    			<tr><td class="hum sign">Прирост снега за 6 ч.</td></tr>
		    			<tr><td class="hum sign">Класс пожаров (1-5)</td></tr>
		    			<tr><td class="agro_title"></td></tr>
		    			<tr><td class="temper sign">Температура<br>почвы,&deg;C</td></tr>
		    			<tr><td class="hum sign">Влагосодержание, %</td></tr>
		    			<tr><td class="hum sign">Доступная влага, %</td></tr>
		    			<tr><td class="agro_title"></td></tr>
		    			<tr><td class="temper sign">Температура<br>почвы,&deg;C</td></tr>
		    			<tr><td class="hum sign">Влагосодержание, %</td></tr>
		    		</table></td>
				 <td><table border=0 cellpadding=0 cellspacing=0 height=620><tr><td valign=top><div id="arrow_left_top"><img src="<#IMGBASE>/arrows_left.gif" border="0" width="9" height="144" onmouseover="this.src='<#IMGBASE>/arrows_left_over.gif';" onmouseout="this.src='<#IMGBASE>/arrows_left.gif';"><br><img src="<#IMGBASE>/arrows_left.gif" border="0" width="9" height="144" onmouseover="this.src='<#IMGBASE>/arrows_left_over.gif';" onmouseout="this.src='<#IMGBASE>/arrows_left.gif';"></div></td></tr><tr><td valign=bottom><div id="arrow_right_bottom"><img src="<#IMGBASE>/arrows_right.gif" border="0" width="9" height="144" onmouseover="this.src='<#IMGBASE>/arrows_right_over.gif';" onmouseout="this.src='<#IMGBASE>/arrows_right.gif';"><br><img src="<#IMGBASE>/arrows_right.gif" border="0" width="9" height="144" onmouseover="this.src='<#IMGBASE>/arrows_right_over.gif';" onmouseout="this.src='<#IMGBASE>/arrows_right.gif';"></div></td></tr></table></td>
		    		 <td align="center"><div id="frc_cont" style="width:510px; overflow:hidden; margin-left:10px; margin-right:10px;">
                                     <table border="0" cellspacing="0" cellpadding="0">
		    			<tr><td id="agro_content_weather0">
						<table border="0" cellspacing="0" cellpadding="0">
							<tr>					
								 <#TEMPLATEPREDICT ru_agrofrc1_ru 12>
								 <#TEMPLATEPREDICT ru_agrofrc1_ru 18>
								 <#TEMPLATEPREDICT ru_agrofrc1_ru 24>
								 <#TEMPLATEPREDICT ru_agrofrc1_ru 30>
								 <#TEMPLATEPREDICT ru_agrofrc1_ru 36>
								 <#TEMPLATEPREDICT ru_agrofrc1_ru 42>
								 <#TEMPLATEPREDICT ru_agrofrc1_ru 48>
								 <#TEMPLATEPREDICT ru_agrofrc1_ru 54>
								 <#TEMPLATEPREDICT ru_agrofrc1_ru 60>
								 <#TEMPLATEPREDICT ru_agrofrc1_ru 66>
								 <#TEMPLATEPREDICT ru_agrofrc1_ru 72>
								 <#TEMPLATEPREDICT ru_agrofrc1_ru 78>
								 <#TEMPLATEPREDICT ru_agrofrc1_ru 84>
								 <#TEMPLATEPREDICT ru_agrofrc1_ru 90>
								 <#TEMPLATEPREDICT ru_agrofrc1_ru 96>
								 <#TEMPLATEPREDICT ru_agrofrc1_ru 102>
								 <#TEMPLATEPREDICT ru_agrofrc1_ru 108>
								 <#TEMPLATEPREDICT ru_agrofrc1_ru 114>
								 <#TEMPLATEPREDICT ru_agrofrc1_ru 120>
								 <#TEMPLATEPREDICT ru_agrofrc1_ru 126>
								 <#TEMPLATEPREDICT ru_agrofrc1_ru 132>
								 <#TEMPLATEPREDICT ru_agrofrc1_ru 138>
								 <#TEMPLATEPREDICT ru_agrofrc1_ru 144>
								 <#TEMPLATEPREDICT ru_agrofrc1_ru 150>
								 <#TEMPLATEPREDICT ru_agrofrc1_ru 156>
								 <#TEMPLATEPREDICT ru_agrofrc1_ru 162>
								 <#TEMPLATEPREDICT ru_agrofrc1_ru 168>
								 <#TEMPLATEPREDICT ru_agrofrc1_ru 174>
								 <#TEMPLATEPREDICT ru_agrofrc1_ru 180>
								 <#TEMPLATEPREDICT ru_agrofrc1_ru 186>
								 <#TEMPLATEPREDICT ru_agrofrc1_ru 192>
							</tr>
						</table>
					</td></tr>
		    			<tr><td id="agro_title" class="agro_title"><div style="position:absolute; margin-top:-8px; margin-left:-20px; left:50%;">Воздух (на высоте 2 м)&nbsp;<img src="<#IMGBASE>/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'airhint', true, 200);" onmouseout="showHint(this, 'airhint', false, 200);"></div></td></tr>
		    			<tr><td id="agro_content_weather2">
						<table border="0" cellspacing="0" cellpadding="0">
							<tr>					
								 <#TEMPLATEPREDICT ru_agrofrc2_ru 12>
								 <#TEMPLATEPREDICT ru_agrofrc2_ru 18>
								 <#TEMPLATEPREDICT ru_agrofrc2_ru 24>
								 <#TEMPLATEPREDICT ru_agrofrc2_ru 30>
								 <#TEMPLATEPREDICT ru_agrofrc2_ru 36>
								 <#TEMPLATEPREDICT ru_agrofrc2_ru 42>
								 <#TEMPLATEPREDICT ru_agrofrc2_ru 48>
								 <#TEMPLATEPREDICT ru_agrofrc2_ru 54>
								 <#TEMPLATEPREDICT ru_agrofrc2_ru 60>
								 <#TEMPLATEPREDICT ru_agrofrc2_ru 66>
								 <#TEMPLATEPREDICT ru_agrofrc2_ru 72>
								 <#TEMPLATEPREDICT ru_agrofrc2_ru 78>
								 <#TEMPLATEPREDICT ru_agrofrc2_ru 84>
								 <#TEMPLATEPREDICT ru_agrofrc2_ru 90>
								 <#TEMPLATEPREDICT ru_agrofrc2_ru 96>
								 <#TEMPLATEPREDICT ru_agrofrc2_ru 102>
								 <#TEMPLATEPREDICT ru_agrofrc2_ru 108>
								 <#TEMPLATEPREDICT ru_agrofrc2_ru 114>
								 <#TEMPLATEPREDICT ru_agrofrc2_ru 120>
								 <#TEMPLATEPREDICT ru_agrofrc2_ru 126>
								 <#TEMPLATEPREDICT ru_agrofrc2_ru 132>
								 <#TEMPLATEPREDICT ru_agrofrc2_ru 138>
								 <#TEMPLATEPREDICT ru_agrofrc2_ru 144>
								 <#TEMPLATEPREDICT ru_agrofrc2_ru 150>
								 <#TEMPLATEPREDICT ru_agrofrc2_ru 156>
								 <#TEMPLATEPREDICT ru_agrofrc2_ru 162>
								 <#TEMPLATEPREDICT ru_agrofrc2_ru 168>
								 <#TEMPLATEPREDICT ru_agrofrc2_ru 174>
								 <#TEMPLATEPREDICT ru_agrofrc2_ru 180>
								 <#TEMPLATEPREDICT ru_agrofrc2_ru 186>
								 <#TEMPLATEPREDICT ru_agrofrc2_ru 192>
							</tr>
						</table>
					</td></tr>
		    			<tr><td id="agro_title2" class="agro_title"><div style="position:absolute; margin-top:-8px; margin-left:-30px; left:50%;">Поверхность земли (почвы)&nbsp;<img src="<#IMGBASE>/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'sfchint', true, 200);" onmouseout="showHint(this, 'sfchint', false, 200);"></div></td></tr>
		    			<tr><td id="agro_content_weather3">
						<table border="0" cellspacing="0" cellpadding="0">
							<tr>					
								 <#TEMPLATEPREDICT ru_agrofrc3_ru 12>
								 <#TEMPLATEPREDICT ru_agrofrc3_ru 18>
								 <#TEMPLATEPREDICT ru_agrofrc3_ru 24>
								 <#TEMPLATEPREDICT ru_agrofrc3_ru 30>
								 <#TEMPLATEPREDICT ru_agrofrc3_ru 36>
								 <#TEMPLATEPREDICT ru_agrofrc3_ru 42>
								 <#TEMPLATEPREDICT ru_agrofrc3_ru 48>
								 <#TEMPLATEPREDICT ru_agrofrc3_ru 54>
								 <#TEMPLATEPREDICT ru_agrofrc3_ru 60>
								 <#TEMPLATEPREDICT ru_agrofrc3_ru 66>
								 <#TEMPLATEPREDICT ru_agrofrc3_ru 72>
								 <#TEMPLATEPREDICT ru_agrofrc3_ru 78>
								 <#TEMPLATEPREDICT ru_agrofrc3_ru 84>
								 <#TEMPLATEPREDICT ru_agrofrc3_ru 90>
								 <#TEMPLATEPREDICT ru_agrofrc3_ru 96>
								 <#TEMPLATEPREDICT ru_agrofrc3_ru 102>
								 <#TEMPLATEPREDICT ru_agrofrc3_ru 108>
								 <#TEMPLATEPREDICT ru_agrofrc3_ru 114>
								 <#TEMPLATEPREDICT ru_agrofrc3_ru 120>
								 <#TEMPLATEPREDICT ru_agrofrc3_ru 126>
								 <#TEMPLATEPREDICT ru_agrofrc3_ru 132>
								 <#TEMPLATEPREDICT ru_agrofrc3_ru 138>
								 <#TEMPLATEPREDICT ru_agrofrc3_ru 144>
								 <#TEMPLATEPREDICT ru_agrofrc3_ru 150>
								 <#TEMPLATEPREDICT ru_agrofrc3_ru 156>
								 <#TEMPLATEPREDICT ru_agrofrc3_ru 162>
								 <#TEMPLATEPREDICT ru_agrofrc3_ru 168>
								 <#TEMPLATEPREDICT ru_agrofrc3_ru 174>
								 <#TEMPLATEPREDICT ru_agrofrc3_ru 180>
								 <#TEMPLATEPREDICT ru_agrofrc3_ru 186>
								 <#TEMPLATEPREDICT ru_agrofrc3_ru 192>
							</tr>
						</table>
					</td></tr>
		    			<tr><td id="agro_title3" class="agro_title"><div style="position:absolute; margin-top:-8px; margin-left:-45px; left:50%;">Почва (в верхнем слое 0-10 см)&nbsp;<img src="<#IMGBASE>/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'soilhint', true, 200);" onmouseout="showHint(this, 'soilhint', false, 200);"></div></td></tr>
		    			<tr><td id="agro_content_weather4">
						<table border="0" cellspacing="0" cellpadding="0">
							<tr>					
								 <#TEMPLATEPREDICT ru_agrofrc4_ru 12>
								 <#TEMPLATEPREDICT ru_agrofrc4_ru 18>
								 <#TEMPLATEPREDICT ru_agrofrc4_ru 24>
								 <#TEMPLATEPREDICT ru_agrofrc4_ru 30>
								 <#TEMPLATEPREDICT ru_agrofrc4_ru 36>
								 <#TEMPLATEPREDICT ru_agrofrc4_ru 42>
								 <#TEMPLATEPREDICT ru_agrofrc4_ru 48>
								 <#TEMPLATEPREDICT ru_agrofrc4_ru 54>
								 <#TEMPLATEPREDICT ru_agrofrc4_ru 60>
								 <#TEMPLATEPREDICT ru_agrofrc4_ru 66>
								 <#TEMPLATEPREDICT ru_agrofrc4_ru 72>
								 <#TEMPLATEPREDICT ru_agrofrc4_ru 78>
								 <#TEMPLATEPREDICT ru_agrofrc4_ru 84>
								 <#TEMPLATEPREDICT ru_agrofrc4_ru 90>
								 <#TEMPLATEPREDICT ru_agrofrc4_ru 96>
								 <#TEMPLATEPREDICT ru_agrofrc4_ru 102>
								 <#TEMPLATEPREDICT ru_agrofrc4_ru 108>
								 <#TEMPLATEPREDICT ru_agrofrc4_ru 114>
								 <#TEMPLATEPREDICT ru_agrofrc4_ru 120>
								 <#TEMPLATEPREDICT ru_agrofrc4_ru 126>
								 <#TEMPLATEPREDICT ru_agrofrc4_ru 132>
								 <#TEMPLATEPREDICT ru_agrofrc4_ru 138>
								 <#TEMPLATEPREDICT ru_agrofrc4_ru 144>
								 <#TEMPLATEPREDICT ru_agrofrc4_ru 150>
								 <#TEMPLATEPREDICT ru_agrofrc4_ru 156>
								 <#TEMPLATEPREDICT ru_agrofrc4_ru 162>
								 <#TEMPLATEPREDICT ru_agrofrc4_ru 168>
								 <#TEMPLATEPREDICT ru_agrofrc4_ru 174>
								 <#TEMPLATEPREDICT ru_agrofrc4_ru 180>
								 <#TEMPLATEPREDICT ru_agrofrc4_ru 186>
								 <#TEMPLATEPREDICT ru_agrofrc4_ru 192>
							</tr>
						</table>
					</td></tr>
		    			<tr><td id="agro_title4" class="agro_title"><div style="position:absolute; margin-top:-8px; margin-left:-20px; left:50%;">Почва (в слое 10-40 см)&nbsp;<img src="<#IMGBASE>/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'soilhint', true, 200);" onmouseout="showHint(this, 'soilhint', false, 200);"></div></td></tr>
		    			<tr><td id="agro_content_weather5">
						<table border="0" cellspacing="0" cellpadding="0">
							<tr>					
								 <#TEMPLATEPREDICT ru_agrofrc5_ru 12>
								 <#TEMPLATEPREDICT ru_agrofrc5_ru 18>
								 <#TEMPLATEPREDICT ru_agrofrc5_ru 24>
								 <#TEMPLATEPREDICT ru_agrofrc5_ru 30>
								 <#TEMPLATEPREDICT ru_agrofrc5_ru 36>
								 <#TEMPLATEPREDICT ru_agrofrc5_ru 42>
								 <#TEMPLATEPREDICT ru_agrofrc5_ru 48>
								 <#TEMPLATEPREDICT ru_agrofrc5_ru 54>
								 <#TEMPLATEPREDICT ru_agrofrc5_ru 60>
								 <#TEMPLATEPREDICT ru_agrofrc5_ru 66>
								 <#TEMPLATEPREDICT ru_agrofrc5_ru 72>
								 <#TEMPLATEPREDICT ru_agrofrc5_ru 78>
								 <#TEMPLATEPREDICT ru_agrofrc5_ru 84>
								 <#TEMPLATEPREDICT ru_agrofrc5_ru 90>
								 <#TEMPLATEPREDICT ru_agrofrc5_ru 96>
								 <#TEMPLATEPREDICT ru_agrofrc5_ru 102>
								 <#TEMPLATEPREDICT ru_agrofrc5_ru 108>
								 <#TEMPLATEPREDICT ru_agrofrc5_ru 114>
								 <#TEMPLATEPREDICT ru_agrofrc5_ru 120>
								 <#TEMPLATEPREDICT ru_agrofrc5_ru 126>
								 <#TEMPLATEPREDICT ru_agrofrc5_ru 132>
								 <#TEMPLATEPREDICT ru_agrofrc5_ru 138>
								 <#TEMPLATEPREDICT ru_agrofrc5_ru 144>
								 <#TEMPLATEPREDICT ru_agrofrc5_ru 150>
								 <#TEMPLATEPREDICT ru_agrofrc5_ru 156>
								 <#TEMPLATEPREDICT ru_agrofrc5_ru 162>
								 <#TEMPLATEPREDICT ru_agrofrc5_ru 168>
								 <#TEMPLATEPREDICT ru_agrofrc5_ru 174>
								 <#TEMPLATEPREDICT ru_agrofrc5_ru 180>
								 <#TEMPLATEPREDICT ru_agrofrc5_ru 186>
								 <#TEMPLATEPREDICT ru_agrofrc5_ru 192>
							</tr>
						</table>
					</td></tr>
		    		     </table></div></td>
				 <td><table border=0 cellpadding=0 cellspacing=0 height=620><tr><td valign=top><div id="arrow_right_top"><img src="<#IMGBASE>/arrows_right2.gif" border="0" width="9" height="144" onmouseover="this.src='<#IMGBASE>/arrows_right2_over.gif';" onmouseout="this.src='<#IMGBASE>/arrows_right2.gif';"><br><img src="<#IMGBASE>/arrows_right2.gif" border="0" width="9" height="144" onmouseover="this.src='<#IMGBASE>/arrows_right2_over.gif';" onmouseout="this.src='<#IMGBASE>/arrows_right2.gif';"></div></td></tr><tr><td valign=bottom><div id="arrow_left_bottom"><img src="<#IMGBASE>/arrows_left2.gif" border="0" width="9" height="144" onmouseover="this.src='<#IMGBASE>/arrows_left2_over.gif';" onmouseout="this.src='<#IMGBASE>/arrows_left2.gif';"><br><img src="<#IMGBASE>/arrows_left2.gif" border="0" width="9" height="144" onmouseover="this.src='<#IMGBASE>/arrows_left2_over.gif';" onmouseout="this.src='<#IMGBASE>/arrows_left2.gif';"></div></td></tr></table></td>
		              </tr>
    			     </table>
		    	</div>
			</div>
			<div class="block_bottom">
   			<div class="round_left">
	 		  	<img src="/images/block_bt_left.png"
	 				width="9" height="14" class="corner"
	 				 />
   			</div>
   			<div class="block_bt main_container_title_width"></div>
   			<div class="round_right">
	 				<img src="/images/block_bt_right.png"
	 				width="9" height="14" class="corner"
	 				 />
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
	 		  	<img src="/images/block_top_left.png"
	 				width="9" height="31" class="corner""/>
   			</div>
   			<div class="block_title left_contener_title_width">
 				  <div class="icon"><img src="/images/icon.png" width="26" height="26"  alt="Агро прогноз погоды на 5 дней <#TOWN3> - Астрономические данные""></div>
 			 		<div class="title"><b>АСТРОНОМИЯ</b></div>
   			</div>
   			<div class="round_right">
	 				<img src="/images/block_top_right.png"
	 				width="9" height="31" class="corner""/>
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
	 		  	<img src="/images/block_bt_left.png"
	 				width="9" height="14" class="corner"" />
   			</div>
   			<div class="block_bt left_contener_title_width"></div>
   			<div class="round_right">
	 				<img src="/images/block_bt_right.png"
	 				width="9" height="14" class="corner""/>
   			</div>
			</div>


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
	 		  	<img src="/images/block_top_left.png"
	 				width="9" height="31" class="corner""/>
   			</div>
   			<div class="block_title left_contener_title_width">
 				  <div class="icon"><img src="/images/icon.png" width="26" height="26""></div>
 			 		<div class="title"><b>КОНТАКТЫ</b></div>
   			</div>
   			<div class="round_right">
	 				<img src="/images/block_top_right.png"
	 				width="9" height="31" class="corner""/>
   			</div>
			</div>
			<div class="block_content ie">
      	<div class="content">
					<div class="contacts">
						<div class="contact"><div class="apun"><img src="/images/apun.png" width="11" height="11""></div><div class="apun_link"><a href="<#SERVERURL>/about.htm">О проекте</a></div></div>
						<div class="contact"><div class="apun"><img src="/images/apun.png" width="11" height="11""></div><div class="apun_link"><a href="mailto:korolkow@meteonova.ru">Руководитель</a></div></div>
						<div class="contact_last"><div class="apun"><img src="/images/apun.png" width="11" height="11""></div><div class="apun_link"><a href="<#SERVERURL>/guestbook.htm">Гостевая книга</a></div></div>
					</div>
      	</div>
			</div>
			<div class="block_bottom ie">
   			<div class="round_left">
	 		  	<img src="/images/block_bt_left.png"
	 				width="9" height="14" class="corner""/>
   			</div>
   			<div class="block_bt left_contener_title_width"></div>
   			<div class="round_right">
	 				<img src="/images/block_bt_right.png"
	 				width="9" height="14" class="corner""/>
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

		 		  	<img src="/images/block_top_left.png"
		 				width="9" height="31" class="corner"
		 				 />
	   			</div>
	   			<div class="block_title" style="width:222px;">
	 				  <div class="icon"><img src="/images/icon.png" width="26" height="26" alt="Агро прогноз <#TOWN3> - Реклама""></div>
	 			 		<div class="title"><b>РЕКЛАМА</b></div>
	   			</div>
	   			<div class="round_right">
		 				<img src="/images/block_top_right.png"
		 				width="9" height="31" class="corner"
		 				 />

	   			</div>
				</div>


				<div class="block_content" style="z-index:-1"><div id="ban_240">
					<#TEMPLATE ru_ban240_ru>
				</div></div>
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
		 				 />
	   			</div>
	   			<div class="block_title" style="width:222px;">
	 				  <div class="icon"><img src="<#IMGBASE>/icon.png" alt="Погода <#TOWN2> - все погодные сервисы" width="26" height="26" "></div>
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
						<#MONTHLINK ru_monthlinkr_ru>
						<div style="width:100%; margin-bottom:6px;"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11""></div><div class="apun_link"><a href="<#SERVERURL>/frc/<#INDEX>.htm" title="Погода <#TOWN3> на 14 дней"><b>Прогноз погоды на 14 дней</b></a></div></div>
						<div style="width:100%; margin-bottom:6px;"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11""></div><div class="apun_link"><a href="<#SERVERURL>/3days/<#INDEX>-pogoda-<#TOWNEN_>.htm" title="Погода на 3 дня <#TOWN3>">Краткий прогноз на 3 дня</a></div></div>
						<div style="width:100%; margin-bottom:6px;"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11""></div><div class="apun_link"><a href="/auto/<#INDEX>.htm" title="Погода <#TOWN3> на 3 дня для автомобилистов">Почасовой Авто прогноз</a></div></div>
						<div style="width:100%; margin-bottom:6px;"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11""></div><div class="apun_link"><a href="/pro/<#INDEX>.htm" title="Подробный профессиональный прогноз погоды <#TOWN3> на неделю">Подробный прогноз неделю</a></div></div>
						<div style="width:100%; margin-bottom:6px;"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11""></div><div class="apun_link"><a href="/med/<#INDEX>.htm" title="Погода <#TOWN3> на 14 дней для метеочувствительных людей">Медицинский прогноз погоды</a></div></div>
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
	 				  <div class="icon"><img src="/images/icon.png" width="26" height="26"  alt="Агро прогноз погоды - Новости о погоде в России и за рубежом""></div>
	 			 		<div class="title"><b>РЕКЛАМА</b></div>
	   			</div>
	   			<div class="round_right">
		 				<img src="/images/block_top_right.png"
		 				width="9" height="31" class="corner"
		 				 />

	   			</div>
				</div>
					<div class="block_content" style="width:100%;">
						<#TEMPLATE ru_adw240x400_ru>
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
 				  <div class="icon"><img src="/images/icon.png" width="26" height="26"  alt="Установите прогноз погоды <#TOWN3> себе на сайт""></div>
 			 		<div class="title"><b>ИНФОРМЕР</b></div>
   			</div>
   			<div class="round_right">

	 				<img src="/images/block_top_right.png"
	 				width="9" height="31" class="corner"
	 				 />
   			</div>
			</div>
			<div class="block_content" style="width:100%;">
                        <div align="center" style="position: relative; margin:10px 0 0 0;">
                                        <div style="position: absolute; top: 0; left: 20px; width: 200px; height: 80px; z-index: 1000">
                                                <a href="/informer" style="display: block; height: 80px;"></a>
                                        </div>
                                        <a style="display: block; width: 200px; height: 90px; position: relative; border: 0; padding: 0; margin: 0; text-decoration: none;" id="meteonova_inf_200_80_<#INDEX>" href="//www.meteonova.ru"></a>
                                        <script type="text/javascript">
                                                var script = document.createElement("script");
                                                script.src = "//www.meteonova.ru/informer/html/js/install.min.js";
                                                script.defer = true;
                                                script.charset = "UTF-8";
                                                script.onload = function() {
                                                        new MeteonovaInf({
                                                                type: "200_80",
                                                                cities: ["<#INDEX>"],
                                                                scheme: {"border_radius":"4px","box_shadow":"inset #dce0e3 0 0 0 1px","border_color":"#26346e","background_color":"#e5edfb","city_color":"#333","main_color":"#333","params_color":"#3b55c5"}
                                                        });
                                                };
                                                document.getElementsByTagName("head")[0].appendChild(script);
                                        </script>
                        </div>
                       <div align="center"><a href="/informer">Установите погоду на сайт</a>&nbsp;<img src="images/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'infhint', true, 200);" onmouseout="showHint(this, 'infhint', false, 200);"></div> 
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
	 				  <div class="icon"><img src="/images/icon.png" width="26" height="26" alt="Новости от наших партнеров на прогнозе погоды <#TOWN3>"></div>
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
					 <#FOBOSNEWSNOVA 15>
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


<script type="text/javascript">

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
