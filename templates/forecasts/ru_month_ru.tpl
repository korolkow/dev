<!DOCTYPE html><#TEMPLATE ru_definitions_ru>
<html>
<head>
<base href="<#SERVERURL>/frc.htm">
<title>МЕТЕОНОВА - погода <#TOWN3> на месяц <#MONTHTITLENAME> года, <#TOWN> - долгосрочный прогноз погоды <#TOWN3> на месяц</title>
<meta http-equiv="Content-Type" content="text/html; charset=<#ENCODING>">
<meta name="description" content="Погода <#TOWN3> на месяц. Долгосрочный прогноз погоды <#TOWN3> на месяц <#MONTHTITLENAME> года">
<meta name="keywords" content="погода долгосрочный погоды прогноз <#TOWN> <#TOWN3> месяц <#REGIONNAME> точный месячный январь февраль март апрель май июнь июль август сентябрь октябрь ноябрь декабрь 2017 года month weather forecast <#TOWNEN> <#REGIONNAMEEN> wetter pogoda">
<meta name="Category" content="Справки, Погода">
<meta name="Classification" content="Долгосрочный прогноз погоды <#TOWN3> на месяц <#MONTHTITLENAME> года"> 
<meta name="Document-state" content="Dynamic">
<link rel="canonical" href="<#SERVERURL>/month/<#INDEX>-pogoda-<#TOWNEN_>.htm">
<link rel="alternate" media="only screen and (max-width: 640px)" href="<#MSERVERURL>/month/<#INDEX>-pogoda-<#TOWNEN_>.htm" >
<!-- inject:css -->
<!-- endinject -->
<!-- inject:js -->
<!-- endinject -->
</head>

<body>
<div class="suggest" id="suggest"></div>
<div id="doc4" class="yui-t5">
<#TEMPLATE ru_adw728x90_ru>
   <div id="hd">
     <div id="onhd">
      <div>	
       <div id="logo"><a href="<#SERVERURL>"><img src="<#IMGBASE>/logo.png" alt="Погода <#TOWN2> на месяц на Метеонове" width="277" height="96" border="0"></a></div>
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
<!--
 	  <div class="main_container">
  		<div class="left_container">
			<div class="block_top ie">
   				<div class="round_left">
	 		  	<img src="<#IMGBASE>/block_top_left.png"
	 				width="9" height="31" class="corner">
   				</div>
   				<div class="block_title left_contener_title_width">
 				  <div class="icon"><img src="<#IMGBASE>/icon.png" alt="Погода <#TOWN2> на месяц - фото Метеоновы" width="26" height="26" ></div>
 			 		<div class="title"><b>МЕТЕОНОВА</b></div>
   				</div>

   				<div class="round_right">
	 				<img src="<#IMGBASE>/block_top_right.png"
	 				width="9" height="31" class="corner" />
   				</div>
			</div>

				<div class="block_content ie" style="height:192px">
 				  <div>
					<div id="meteonova"></div>
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
 				  <div class="icon"><img src="<#IMGBASE>/icon.png" alt="Погода <#TOWN2> на месяц - блог Метеоновы" width="26" height="26" ></div>
 			 		<div class="title"><b>БЛОГ МЕТЕОНОВЫ</b></div>

   			</div>
   			<div class="round_right">
	 				<img src="<#IMGBASE>/block_top_right.png"
	 				width="9" height="31" class="corner"
	 				 />
   			</div>
			</div>

			<div class="block_content" style="height:192px">
	 		 <div class="content">
     			<h2 id="blog_title">Прогноз погоды <#TOWN2> (<#REGIONNAME>) на месяц</h2>
     			<div id="blog_text" class="text">Представляем долгосрочный прогноз погоды <#TOWN2> на месяц <#MONTHTITLENAME> года. Погода <#TOWN2> на месяц (30 дней) не может быть точно спрогнозирована моделями погоды, поэтому прогноз носит вероятностный характер и строится с использованием статистических методов.<br></div>
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
-->
  <div class="main_container">
			<div class="block_top">
   			<div class="round_left">
	 		  	<img src="<#IMGBASE>/block_top_left.png"
	 				width="9" height="31" class="corner" />
   			</div>
   			<div class="block_title main_container_title_width">
 				  <div class="icon"><img src="<#IMGBASE>/icon.png" alt="Прогноз погоды <#TOWN2> на месяц" width="26" height="26" ></div>
 			 		<div class="title"><b>МЕСЯЦ</b></div>
 			 		<div class="top_link">
	      		  		<ul>
		          			<li><a href="<#SERVERURL>/3days/<#INDEX>-pogoda-<#TOWNEN_>.htm"><b>Прогонз на 3 дня</b></a>&nbsp;<img src="images/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 's3hint', true, 250);" onmouseout="showHint(this, 's3hint', false, 250);"></li>
		          			<li><a href="<#SERVERURL>/frc/<#INDEX>.htm"><b>На 14 дней</b></a>&nbsp;<img src="images/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'frchint', true, 250);" onmouseout="showHint(this, 'frchint', false, 250);"></li>
		          			<li><a href="<#SERVERURL>/med/<#INDEX>.htm"><b>Медицинский</b></a>&nbsp;<img src="images/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'medhint', true, 250);" onmouseout="showHint(this, 'medhint', false, 250);"></li>
		          			<li><a href="<#SERVERURL>/pro/<#INDEX>.htm"><b>Профи</b></a>&nbsp;<img src="images/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'prohint', true, 250);" onmouseout="showHint(this, 'prohint', false, 250);"></li>
		          			<li><a href="<#SERVERURL>/agro/<#INDEX>.htm"><b>Агро</b></a>&nbsp;<img src="images/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'agrohint', true, 250);" onmouseout="showHint(this, 'agrohint', false, 250);"></li>
	          				<li class="last"><a href="<#SERVERURL>/auto/<#INDEX>.htm"><b>Авто</b></a>&nbsp;<img src="images/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'autohint', true, 250);" onmouseout="showHint(this, 'autohint', false, 250);"></li>
	    		  		</ul>
 			 		</div>
   			</div>
   			<div class="round_right">
	 				<img src="<#IMGBASE>/block_top_right.png"
	 				width="9" height="31" class="corner" />
   			</div>
			</div>
			<div class="block_content">
		    	<div id="frc_content_weather" style="padding-top:0px; height:250px;">
			       <table border="0" cellspacing="0" cellpadding="0" width="97%">
                                <tr>
		    		 <td valign="top"><table border="0" cellspacing="0" cellpadding="0" style="margin-top:20px;">
		    			<tr><td class="date sign" >Дата</td></tr>
		    			<tr><td class="tod sign">&nbsp;</td></tr>
		    			<tr><td class="phenom sign">Погодные<br>явления</td></tr>
		    			<tr><td class="temper sign">Температура днем</td></tr>
		    			<tr><td class="hum sign">Температура ночью</td></tr>
		    		 </table></td>
				 <td><table border=0 cellpadding=0 cellspacing=0 height=200><tr><td valign=top><div id="arrow_left"><img src="<#IMGBASE>/arrows_left.gif" style="margin-top:25px;" border="0" width="9" height="144" onmouseover="this.src='<#IMGBASE>/arrows_left_over.gif';" onmouseout="this.src='<#IMGBASE>/arrows_left.gif';"></div></td></tr></table></td>
		    		 <td align="center"><div id="frc_cont" style="width:511px; overflow:hidden;">
                                     <table border="0" cellspacing="0" cellpadding="0">
		    			<tr><td id="frc_content_weather0"><#MONTHTABLE></td></tr>
		    		     </table></div></td>
				 <td><table border=0 cellpadding=0 cellspacing=0 height=200><tr><td valign=top><div id="arrow_right"><img src="<#IMGBASE>/arrows_right2.gif" style="margin-top:25px;"  border="0" width="9" height="144" onmouseover="this.src='<#IMGBASE>/arrows_right2_over.gif';" onmouseout="this.src='<#IMGBASE>/arrows_right2.gif';"></div></td></tr></table></td>
		              </tr>
  			      <tr>
				<td colspan="4">
 			 		<div class="top_link" style="float:left; left:-5px;">
	      		  		<ul>
	          				<li class="first">Прогноз по декадам:</li>
		          			<li><span id="frc_0"onClick="updateForecast(0)">Первая декада</span></li>
		          			<li><span id="frc_1" onClick="updateForecast(1)">Вторая декада</span></li>
	        	  			<li class="last"><span id="frc_2" onClick="updateForecast(2)">Третья декада</span></li>
					</ul>
					</div>
 			 		<div class="top_link" style="float:right">
	      		  		<ul>
						<li class="last"><a href="<#MSERVERURL>/month/<#INDEX>-pogoda-<#TOWNEN_>.htm">Мобильная версия</a></li>
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
 				  <div class="icon"><img src="<#IMGBASE>/icon.png" alt="Погода <#TOWN2> на месяц - свяжитесь с разработчиками!" width="26" height="26"></div>
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

			<div class="block_top ie">
   			<div class="round_left">
	 		  	<img src="<#IMGBASE>/block_top_left.png"
	 				width="9" height="31" class="corner"/>
   			</div>
   			<div class="block_title left_contener_title_width">
   			</div>
   			<div class="round_right">
	 				<img src="<#IMGBASE>/block_top_right.png"
	 				width="9" height="31" class="corner"/>
   			</div>
			</div>
			<div class="block_content ie">
		      	<div class="content" style="margin:2px;">
				<#TEMPLATE ru_yav_ru>			
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
<!--
			<div class="block_top" style="z-index:-1;">
   			<div class="round_left">
	 		  	<img src="<#IMGBASE>/block_top_left.png"
	 				width="9" height="31" class="corner"/>
   			</div>
   			<div class="block_title center_container_title_width">
 				  <div class="icon"><img src="<#IMGBASE>/icon.png" alt="Новости от ФОБОС" width="26" height="26"></div>
 			 		<div class="title"><b>ИНТЕРЕСНЫЕ ФАКТЫ О ПРИРОДЕ</b></div>
   			</div>
   			<div class="round_right">
	 				<img src="<#IMGBASE>/block_top_right.png"
	 				width="9" height="31" class="corner"/>
   			</div>
			</div>
			<div class="block_content">
	      			<div class="content">
					<FOBOSNEWSNOVA 8 CENTER SelectedNews>
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
-->
			<#TEMPLATE ru_adfox_center_ru>

			<div class="block_top" style="z-index:-1;">
   			<div class="round_left">
	 		  	<img src="<#IMGBASE>/block_top_left.png"
	 				width="9" height="31" class="corner"/>
   			</div>
   			<div class="block_title center_container_title_width">
 				  <div class="icon"><img src="<#IMGBASE>/icon.png" alt="Информация о прогнозе погоды <#TOWN2> на месяц" width="26" height="26"></div>
 			 		<div class="title"><b>О ПРОГНОЗЕ ПОГОДЫ <#TOWN16> НА МЕСЯЦ</b></div>
   			</div>
   			<div class="round_right">
	 				<img src="<#IMGBASE>/block_top_right.png"
	 				width="9" height="31" class="corner"/>
   			</div>
			</div>
			<div class="block_content">
	      			<div class="content">Физические параметры атмосферы Земли испытывают большое количество циклических колебаний, в их ряду наиболее широко известны сезонные изменения. Для прогноза <#TOWN3> на месяц набольший интерес представляют естественные синоптические периоды - колебания, имеющие длительность несколько дней. На возникновение и продолжительность этих циклов оказывают влияние многие факторы: от температуры воды поверхностного слоя Атлантики, до столь экзотических, как изменения уровня солнечной активности и вариации скорости вращения Земли. Месячный прогноз <#TOWN2> готовится с использованием методов регрессионного анализа.</div>
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

<div class="hint hidden" id="heathint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);"><b>Комфорт</b> - это температура по ощущению одетого по сезону человека, выходящего на улицу. <a target=_blank href="<#SERVERURL>/faq.htm#comfort">Подробнее...</a></div>
<div class="hint hidden" id="snowhint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Оценка средней высоты снежного покрова <#TOWN2>. <a target=_blank href="<#SERVERURL>/faq.htm#snow">Подробнее...</a></div>
<div class="hint hidden" id="agrohint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Подробный прогноз погоды для садоводов и огродников в окресностях</div>
<div class="hint hidden" id="autohint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Прогноз неблагоприятных погодных явлений для автомобилистов</div>
<div class="hint hidden" id="s3hint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Наглядный погоды <#TOWN3> на 3 дня</div>
<div class="hint hidden" id="frchint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Подробный прогноз погоды <#TOWN3> на 14 дней (2 недели) с голосовым сопровождением робота</div>
<div class="hint hidden" id="prohint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Более подробные данные о состоянии атмосферы, поверхности и почвы</div>
<div class="hint hidden" id="medhint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Медицинский прогноз погоды <#TOWN3> для метеочувствительных людей с заболеваниями сердечно-сосудистой системы и дыхательных путей. <a href="<#SERVERURL>/faq.htm#med" target=_blank>Подробнее...</a></div>
<div class="hint hidden" id="sphint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Эти ссылки управляют голосовым сопровождением сайта. Ссылка <b>Прослушать прогноз/Остановить прослушивание</b> позволяет приостановить или продолжить прослушивание текущего звукового фрагмента. Ссылка <b>Прослушать с начала</b> выполняет повторное воспроизведение блока прогноза погоды.</div>
<div class="hint hidden" id="infhint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Создали свой сайт и хотите повысить его информативность и привлекательность? <a href="/informer" target=_blank>Установите</a> погодный информер!</div>
<div class="hint hidden" id="geomhint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Показатель геомагнитной активности Солнца на широте г. <#TOWN>. <a href="<#SERVERURL>/faq.htm#geomagn" target=_blank>Подробнее...</a></div>
<div class="hint hidden" id="waterhint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Оцена температуры воды в водоемах около г. <#TOWN>. <a href="<#SERVERURL>/faq.htm#water" target=_blank>Подробнее...</a></div>
<div class="hint hidden" id="firehint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Оценка класса пожароопасности лесов около г. <#TOWN> (от 1 до 5). <a href="<#SERVERURL>/faq.htm#fire" target=_blank>Подробнее...</a></div>
	<div class="yui-b">
  	 <div class="right_main">

				<div class="block_top">
	   			<div class="round_left">

		 		  	<img src="<#IMGBASE>/block_top_left.png"
		 				width="9" height="31" class="corner"
		 				 />
	   			</div>
	   			<div class="block_title" style="width:222px;">
	 				  <div class="icon"><img src="<#IMGBASE>/icon.png" alt="Погода <#TOWN2> на месяц - Реклама" width="26" height="26" ></div>
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
	 				  <div class="icon"><img src="<#IMGBASE>/icon.png" alt="Погода <#TOWN2> на месяц" width="26" height="26" ></div>
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
						<div style="width:100%; margin-bottom:6px;"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="<#SERVERURL>/frc/<#INDEX>.htm" title="Погода <#TOWN3> на 14 дней"><b>Прогноз погоды на 14 дней</b></a></div></div>
						<div style="width:100%; margin-bottom:6px;"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="<#SERVERURL>/3days/<#INDEX>-pogoda-<#TOWNEN_>.htm" title="Погода на 3 дня <#TOWN3>">Краткий прогноз на 3 дня</a></div></div>
						<div style="width:100%; margin-bottom:6px;"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="<#SERVERURL>/auto/<#INDEX>.htm" title="Погода <#TOWN3> на 3 дня для автомобилистов">Почасовой Авто прогноз</a></div></div>
						<div style="width:100%; margin-bottom:6px;"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="<#SERVERURL>/agro/<#INDEX>.htm" title="Погода <#TOWN3> на 5 дней для дачников и сельхозпроизводителей">Агро прогноз погоды на 5 дней</a></div></div>
						<div style="width:100%; margin-bottom:6px;"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="<#SERVERURL>/pro/<#INDEX>.htm" title="Подробный профессиональный прогноз погоды <#TOWN3> на неделю">Подробный прогноз неделю</a></div></div>
						<div style="width:100%; margin-bottom:6px;"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="<#SERVERURL>/med/<#INDEX>.htm" title="Погода <#TOWN3> на 14 дней для метеочувствительных людей">Медицинский прогноз погоды</a></div></div>
						<div style="width:100%"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="<#SERVERURL>/map.htm?fi=<#FIF>&la=<#LAF>&type=mc_TMP_2_m_above_ground" target=_blank title="Карты погоды в регионе города <#TOWN>">Карты погоды</a></div></div>

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

				<div class="block_top">
	   			<div class="round_left">
 
		 		  	<img src="/images/block_top_left.png"
		 				width="9" height="31" class="corner"
		 				 />
	   			</div>
	   			<div class="block_title" style="width:222px;">
	 				  <div class="icon"><img src="/images/icon.png" alt="Понравилась погода <#TOWN2> на Метенонве? Сделайте наше общение удобнее!" width="26" height="26" ></div>
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
	 				  <div class="icon"><img src="/images/icon.png" alt="Погода <#TOWN2> на месяц - погодные новости от ФОБОС" width="26" height="26" ></div>
	 			 		<div class="title"><b>НОВОСТИ</b></div>
	   			</div>
	   			<div class="round_right">
		 				<img src="/images/block_top_right.png"
		 				width="9" height="31" class="corner"
		 				 />
 
	   			</div>
				</div>
				<div class="block_content" style="width:100%;">
					<div class="content" style="width:220px;">
					 <#FOBOSNEWSNOVA 16>
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

//var so = new SWFObject("jessie2.swf", "mnova", "174", "180", "9", "#ffffff");
//so.write("meteonova");
</script>
</div>

<div id="frc_text_0" style="display: none;">Прогноз погоды <#TOWN2> на месяц представляет собой оценку основных погодных характеристик на период от 30 дней и более. Мы предлагаем Вашему вниманию прогноз по городу <#TOWN> с заблаговременностью более <b>35 дней</b></a>. Уточнение прогноза производится 1-3 раза в месяц.</div>
<div id="frc_text_1" style="display: none;"><b>Внимание!</b> Прогноз погоды <#TOWN2> на месяц является экспериментальным и предназначен только для консультативного использования частными лицами. Прогноз погоды <#TOWN3> на месяц не может публиковаться в СМИ, а также применяться в производственных, коммерческих целях либо для принятия важных решений.</div>
<div id="frc_text_2" style="display: none;">Прогноз погоды <#TOWN2> на месяц, представленный на этой странице, составлен специалистами центра ФОБОС и является объектом авторского права, охраняемого законом.</div>

<script language="JavaScript">

var scrolling = new Scroll({
	leftBtns: ['arrow_left'],
	rightBtns: ['arrow_right'],
	scrollObjId: 'frc_cont',
	delta: 51,
	step: {normal: 5, touch: 25},					
	doLeft: function(obj, delta){
	  if (obj) {
	  	if (obj.scrollLeft-delta>=0) obj.scrollLeft = obj.scrollLeft-delta;
	  	else obj.scrollLeft = 0;
	  	updateForecastBg(Math.round(obj.scrollLeft/obj.scrollWidth*3));
	  }
	},
	doRight: function(obj, delta){
	  if (obj) {
	  	var maxWidth = obj.scrollWidth - obj.offsetWidth;
	  	if (maxWidth> obj.scrollLeft) obj.scrollLeft = obj.scrollLeft+delta;
	  	updateForecastBg(Math.round(obj.scrollLeft/obj.scrollWidth*3));
	  }
	}
});

function checkFrcLink(n){
for (var i=0; i<3; i++) { if (n==i) { document.getElementById("frc_"+i).style.fontWeight="bold";} else { document.getElementById("frc_"+i).style.fontWeight="normal"; } }
 }

function updateForecast(n)
{
if (typeof scrolling != 'undefined') scrolling.jump(numFRC, n);
numFRC=n;
}

function updateForecastBg(n)
{
//if(numFRC==n) return;
//numFRC=n;
//if (document.getElementById("blog_text")) document.getElementById("blog_text").innerHTML=document.getElementById("frc_text_"+n).innerHTML;
checkFrcLink(n); 
}

var townindex=<#INDEX>;
var state=<#REGIONINDEX>;

numFRC=0; n=numFRC; 
updateForecastBg(numFRC);
checkFrcLink(numFRC); 
</script>
<noscript>
<h2>Погода <#TOWN2> на 30 дней месяц долгосрочный прогноз</h2>
</noscript>


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
