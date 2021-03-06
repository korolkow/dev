<!DOCTYPE html><#TEMPLATE ru_definitions_ru>
<html>
<head>
<title>МЕТЕОНОВА - погода <#TOWN3> на 3 дня, точный и актуальный прогноз погоды <#TOWN> сейчас, на завтра и послезавтра - <#FULLTOWNNAME> - прогноз погоды на 3 дня по данным за <#FRCPUBTIME></title>
<meta http-equiv="Content-Type" content="text/html; charset=<#ENCODING>">
<meta name="description" content="Погода <#TOWN3> на трое суток. Прогноз погоды <#TOWN3> на 3 дня, <#TOWN> погода сейчас на сегодня, завтра, послезавтра, третий день. Обновлен <#FRCPUBTIME>">
<meta name="keywords" content="погода <#TOWN> пагода самый точный достоверный прогноз <#TOWN3> на 3 дня три трое суток сейчас сегодня завтра послезавтра accurate weather forecast <#TOWNEN> <#REGIONNAMEEN> wetter pogoda">
<meta name="Category" content="Справки, Погода">
<meta name="Classification" content="Прогноз погоды <#TOWN3> на сегодня, завтра, послезавтра, ближайшие 3 дня"> 
<meta name="Document-state" content="Dynamic">
<link rel="canonical" href="<#SERVERURL>/3days/<#INDEX>-pogoda-<#TOWNEN_>.htm"/>
<!-- inject:css -->
<!-- endinject -->
<style>
.frc3col {position:relative; width:225px; height:310px; padding:0px; margin:0;}
.frc3date{color:#000099;
 font-weight:bold;
 font-size:20px; text-align:center; padding-top:15px;}
.frc3icon{position:absolute; top:55px; left:35px; width:150px; height:150px;}
.frc3temp{position:absolute; top:210px; left:30px; width:150px; font-weight:bold;
 font-size:48px; text-align: center;}
.frc3tempn{color:#000000; position:absolute; top:270px; left:30px; width:150px; font-weight:bold;
 font-size:20px; text-align: center;}
</style>
<!-- inject:js -->
<!-- endinject -->
<base href="<#SERVERURL>/frc.htm">
</head>

<body>
<div class="suggest" id="suggest"></div>
<div id="doc4" class="yui-t5">
<#TEMPLATE ru_adw728x90_ru>
   <div id="hd">
     <div id="onhd">
      <div>	
       <div id="logo"><a href="<#SERVERURL>"><img src="<#IMGBASE>/logo.png" alt="Погода <#TOWN2> на 3 дня" width="277" height="96" border="0"></a></div>
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
 				  <div class="icon"><img src="<#IMGBASE>/icon.png" alt="Погода <#TOWN2> - фото Метеоновы" width="26" height="26"></div>
 			 		<div class="title"><b>МЕТЕОНОВА</b></div>
   				</div>

   				<div class="round_right">
	 				<img src="<#IMGBASE>/block_top_right.png"
	 				width="9" height="31" class="corner" />
   				</div>
			</div>

<div class="block_content ie" style="height:160px">
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
 				  <div class="icon"><img src="<#IMGBASE>/icon.png" alt="Погода <#TOWN2> - блог Метеоновы" width="26" height="26"></div>
 			 		<div class="title"><b>БЛОГ МЕТЕОНОВЫ</b></div>

   			</div>
   			<div class="round_right">
	 				<img src="<#IMGBASE>/block_top_right.png"
	 				width="9" height="31" class="corner"
	 				 />
   			</div>
			</div>

			<div class="block_content" style="height:160px">
	 		 <div class="content">
     			<h2 id="blog_title">Прогноз погоды <#TOWN2> на 3 дня</h2>
     			<div id="blog_text" class="text">Погода <#TOWN2>. Здесь Вы можете прослушать прогноз погоды <#TOWN2> на 3 дня, в том числе на сегодня, завтра и послезавтра. Для ознакомления с прогнозами погоды <#TOWN2> на 14 дней и на месяц нажмите соответствующие ссылки под прогнозом погоды. Не для всех городов доступен долгосрочный прогноз погоды на месяц.<br></div>
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
 			 		<div class="title"><b>ПРОГНОЗ</b></div>
 			 		<div class="top_link">
	      		  		<ul>
		          			<li><a href="<#SERVERURL>/frc/<#INDEX>.htm"><b>На 14 дней</b></a>&nbsp;<img src="<#IMGBASE>/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'frchint', true, 250);" onmouseout="showHint(this, 'frchint', false, 250);"></li>
						<#MONTHLINK ru_monthlinkt_ru>
						<li><a href="<#SERVERURL>/med/<#INDEX>.htm"><b>Медицинский</b></a>&nbsp;<img src="<#IMGBASE>/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'medhint', true, 250);" onmouseout="showHint(this, 'medhint', false, 250);"></li>
						<li><a href="<#SERVERURL>/pro/<#INDEX>.htm"><b>Профи</b></a>&nbsp;<img src="<#IMGBASE>/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'prohint', true, 250);" onmouseout="showHint(this, 'prohint', false, 250);"></li>
		          			<li><a href="<#SERVERURL>/agro/<#INDEX>.htm"><b>Агро</b></a>&nbsp;<img src="<#IMGBASE>/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'agrohint', true, 250);" onmouseout="showHint(this, 'agrohint', false, 250);"></li>
	          				<li class="last"><a href="<#SERVERURL>/auto/<#INDEX>.htm"><b>Авто</b></a>&nbsp;<img src="<#IMGBASE>/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'autohint', true, 250);" onmouseout="showHint(this, 'autohint', false, 250);"></li>
	    		  		</ul>
 			 		</div>
   			</div>
   			<div class="round_right">
	 				<img src="<#IMGBASE>/block_top_right.png"
	 				width="9" height="31" class="corner" />
   			</div>
			</div>
			<div class="block_content">
		    	<div id="frc_content_weather" style="padding-top:0px; height:370px;">
			       <table border="0" cellspacing="0" cellpadding="0" width="98%">
                                <tr>
		   		 <td valign="top">
				   <table border="0" cellpadding="30" cellcpacing="30" width="100%">
					<tr>
                                          <td align="center"><div class="frc3col" style="background: url(<#IMGBASE>/fon150/<#S3BGD1>.jpg);"><div class="frc3date"><#TIMSD1></div><div class="frc3icon"><a href="<#SERVERURL>/frc/<#INDEX>.htm"><img border="0" src="<#IMGBASE>/icon150/<#SIMGD1>.png" alt="<#NALTD1>"></a></div><div class="frc3temp">&nbsp;<#TEMMD1>&deg;</div><div class="frc3tempn">ночью: <#TMPND1>&deg;</div></div></td>
                                          <td align="center"><div class="frc3col" style="background: url(<#IMGBASE>/fon150/<#S3BGD2>.jpg);"><div class="frc3date"><#TIMSD2></div><div class="frc3icon"><a href="<#SERVERURL>/frc/<#INDEX>.htm"><img border="0" src="<#IMGBASE>/icon150/<#SIMGD2>.png" alt="<#NALTD2>"></a></div><div class="frc3temp">&nbsp;<#TEMMD2>&deg;</div><div class="frc3tempn">ночью: <#TMPND2>&deg;</div></div></td>
                                          <td align="center"><div class="frc3col" style="background: url(<#IMGBASE>/fon150/<#S3BGD3>.jpg);"><div class="frc3date"><#TIMSD3></div><div class="frc3icon"><a href="<#SERVERURL>/frc/<#INDEX>.htm"><img border="0" src="<#IMGBASE>/icon150/<#SIMGD3>.png" alt="<#NALTD3>"></a></div><div class="frc3temp">&nbsp;<#TEMMD3>&deg;</div><div class="frc3tempn">ночью: <#TMPND3>&deg;</div></div></td>
					</tr>
				   </table>
				 </td>
 		                </tr>
  			        <tr>
				<td colspan="4">
 			 	  <div class="top_link" style="float:left; left:5px;">
				      <div class="contact"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="<#SERVERURL>/frc/<#INDEX>.htm">Подробный прогноз погоды <#TOWN2> на 14 дней (2 недели)</a></div></div>
				      <#MONTHLINK ru_monthlink3_ru>
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
 				  <div class="icon"><img src="<#IMGBASE>/icon.png" alt="Опасные погодные явления <#TOWN2>" width="26" height="26"></div>
 			 		<div class="title"><b>ВОДИТЕЛЯМ</b></div>
   			</div>
   			<div class="round_right">
	 				<img src="<#IMGBASE>/block_top_right.png" width="9" height="31" class="corner"/>
   			</div>
			</div>
			<div class="block_content ie">
		      	<div class="content">
				<div class="autoinformer">
 					<div><b>Опасные</b> погодные явления для водителей</div>
						<#AUTOINFORMER>
					<div><a href="<#SERVERURL>/auto/<#INDEX>.htm">Подробный автопрогноз</a></div>
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
 				  <div class="icon"><img src="<#IMGBASE>/icon.png" alt="Погода  <#TOWN2> для метеочувствительных" width="26" height="26"></div>
 			 		<div class="title"><b>ЗДОРОВЬЕ</b></div>
   			</div>
   			<div class="round_right">
	 				<img src="<#IMGBASE>/block_top_right.png" width="9" height="31" class="corner"/>
   			</div>
			</div>
			<div class="block_content ie">
		      	<div class="content">
				<div class="autoinformer">
 					<div>Предупреждения для <b>метеочувствительных</b></div>
						<#MEDINFORMER>
					<div><a href="<#SERVERURL>/med/<#INDEX>.htm">Подробно на 14 дней</a></div>
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
 				  <div class="icon"><img src="<#IMGBASE>/icon.png" alt="Погода  <#TOWN2> для метеочувствительных" width="26" height="26"></div>
 			 		<div class="title"><b>ВЫЛЕТЫ</b></div>
   			</div>
   			<div class="round_right">
	 				<img src="<#IMGBASE>/block_top_right.png" width="9" height="31" class="corner"/>
   			</div>
			</div>
			<div class="block_content ie">
		      	<div class="content">
				<div class="autoinformer">
 					<div>Оценка возможных <b>задержек авиарейсов по метеоусловиям</b> на ближайшие сутки</div>
						<#AVIAINFORMER>
<!--					<div><a href="<#SERVERURL>/avia/?id=<#INDEX>&town=<#TOWNEC>&req=showaero" target=_blank">Подробный авиапрогноз</a></div>-->
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
 				  <div class="icon"><img src="<#IMGBASE>/icon.png" alt="Температура воды <#TOWN2>" width="26" height="26"></div>
 			 		<div class="title"><b>ВОДА</b></div>
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
 			 		<div class="title"><b>ИНТЕРЕСНЫЕ ФАКТЫ О ПРИРОДЕ</b></div>
   			</div>
   			<div class="round_right">
	 				<img src="<#IMGBASE>/block_top_right.png"
	 				width="9" height="31" class="corner"/>
   			</div>
			</div>
			<div class="block_content">
	      			<div class="content">
					<#FOBOSNEWSNOVA 8 CENTER SelectedNews>
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
 				  <div class="icon"><img src="<#IMGBASE>/icon.png" alt="Информация о прогнозе погоды <#TOWN2>" width="26" height="26"></div>
 			 		<div class="title"><b>О ПРОГНОЗЕ ПОГОДЫ <#TOWN16></b></div>
   			</div>
   			<div class="round_right">
	 				<img src="<#IMGBASE>/block_top_right.png"
	 				width="9" height="31" class="corner"/>
   			</div>
			</div>
			<div class="block_content">
	      			<div class="content">Прогноз погоды <#TOWN2> на 3 дня составляется на основе комплексного анализа результатов нескольких гидродинамических моделей погоды. Каждая модель погоды учитывается определенным образом для достижения макимального качества прогнозов. Кроме того, для уточнения прогноза <#TOWN2> на сегодня и на завтра используется корректирующий механизм, поэтому точность прогноза <#TOWN2> на 3 дня выше, чем прогнозов погоды на 5 дней или на неделю.</div>
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
<div class="hint hidden" id="agrohint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Подробный прогноз погоды для садоводов и огродников в окресностях города <#TOWN></div>
<div class="hint hidden" id="autohint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Прогноз неблагоприятных погодных явлений для автомобилистов</div>
<div class="hint hidden" id="aviahint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Прогноз погоды по аэропортам, ближайшим к городу <b><#TOWN></b>. Оценка неблагоприятных для полетов погодных явлений, прогноз задержек вылетов по метеоусловиям.</div>
<div class="hint hidden" id="frchint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Подробный прогноз погоды <#TOWN3> на 14 дней (2 недели)</div>
<div class="hint hidden" id="prohint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Более подробные данные о состоянии атмосферы, поверхности и почвы</div>
<div class="hint hidden" id="sphint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Эти ссылки управляют голосовым сопровождением сайта. Ссылка <b>Прослушать/Остановить</b> позволяет остановить или повторить прослушивание текущего звукового фрагмента. Сылка <b>Отключить речь</b> полностью отключает воспроизведение голоса на всех страницах сайта до нажатия на <b>Включить речь</b>.</div>
<div class="hint hidden" id="medhint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Медицинский прогноз погоды <#TOWN3> для метеочувствительных людей с заболеваниями сердечно-сосудистой системы и дыхательных путей. <a href="<#SERVERURL>/faq.htm#med" target=_blank>Подробнее...</a></div>
<div class="hint hidden" id="infhint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Создали свой сайт и хотите повысить его информативность и привлекательность? <a href="/informer/" target=_blank>Установите</a> погодный информер!</div>
<div class="hint hidden" id="geomhint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Показатель геомагнитной активности Солнца на широте г. <#TOWN>. <a href="<#SERVERURL>/faq.htm#geomagn" target=_blank>Подробнее...</a></div>
<div class="hint hidden" id="waterhint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Оцена температуры воды в водоемах около г. <#TOWN>. <a href="<#SERVERURL>/faq.htm#water" target=_blank>Подробнее...</a></div>
<div class="hint hidden" id="firehint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Оценка класса пожароопасности лесов около г. <#TOWN> (от 1 до 5). <a href="<#SERVERURL>/faq.htm#fire" target=_blank>Подробнее...</a></div>
<div class="hint hidden" id="monthhint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Прогноз погоды на месяц <#TOWN2>. Оценка температуры и вероятности осадков на 30 дней. <a href="<#SERVERURL>/faq.htm#month" target=_blank>Подробнее...</a></div>
	<div class="yui-b">
  	 <div class="right_main">

				<div class="block_top">
	   			<div class="round_left">

		 		  	<img src="<#IMGBASE>/block_top_left.png"
		 				width="9" height="31" class="corner"
		 				 />
	   			</div>
	   			<div class="block_title" style="width:222px;">
	 				  <div class="icon"><img src="<#IMGBASE>/icon.png" alt="Погода <#TOWN2> - Реклама" width="26" height="26"></div>
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
	 				  <div class="icon"><img src="<#IMGBASE>/icon.png" alt="Погода <#TOWN2> - все всервисы" width="26" height="26"></div>
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
	 		  	<img src="<#IMGBASE>/block_top_left.png"
	 				width="9" height="31" class="corner"
	 				 />
   			</div>
   			<div class="block_title" style="width:222px;">
 				  <div class="icon"><img src="<#IMGBASE>/icon.png" alt="Погода <#TOWN2> - установите себе на сайт информер с прогнозом погоды" width="26" height="26"></div>
 			 		<div class="title"><b>ИНФОРМЕР</b></div>
   			</div>
   			<div class="round_right">

	 				<img src="<#IMGBASE>/block_top_right.png"
	 				width="9" height="31" class="corner"
	 				 />
   			</div>
			</div>
			<div class="block_content" style="width:100%;">
		    	<div align="center" style="margin:10px 0 10px;"><a href="/informer/index.php?index=<#INDEX>"><img src="<#SERVERURL>/informer/PNG101_<#INDEX>_000080_000080_F0F0FF_CCCCFF_FFFFFF_000000_000080.PNG" alt="Погода <#TOWN2> - установите себе на сайт информер с прогнозом погоды" width="150" height="80"></a></div>
		      <div align="center"><a href="/informer/?index=<#INDEX>" title="Погода <#TOWN2> - установите себе на сайт информер с прогнозом погоды">Установите себе на сайт</a></div>
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
	 				onLoad="transparent(this)" />
   			</div>
   			<div class="block_title" style="width:222px;">
 				  <div class="icon"><img src="<#IMGBASE>/icon.png" alt="Погода <#TOWN2>" width="26" height="26" ></div>
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


				<div class="block_top">
	   			<div class="round_left">
 
		 		  	<img src="<#IMGBASE>/block_top_left.png"
		 				width="9" height="31" class="corner"
		 				 />
	   			</div>
	   			<div class="block_title" style="width:222px;">
	 				  <div class="icon"><img src="<#IMGBASE>/icon.png" alt="Понравилась погода <#TOWN2> на Метенонве? Сделайте общение удобнее!" width="26" height="26"></div>
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
						<div class="contact"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="<#SERVERURL>/fan.htm">Виджеты для браузеров</a></div></div>
						<div class="contact_last"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="<#SERVERURL>/rss/<#INDEX>.xml">Экпорт погоды в RSS</a></div></div>
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
	 				  <div class="icon"><img src="<#IMGBASE>/icon.png" alt="Есть вопросы? Пожелания? Предложения?" width="26" height="26"></div>
	 			 		<div class="title"><b>КОНТАКТЫ</b></div>
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
						<div class="contact"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="<#SERVERURL>/about.htm">Информация о проекте</a></div></div>
						<div class="contact"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="mailto:korolkow@meteonova.ru">Руководитель проекта</a></div></div>
						<div class="contact"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="<#SERVERURL>/guestbook.htm">Гостевая книга</a></div></div>
						<div class="contact_last"><div class="apun"><img src="<#IMGBASE>/apun.png" width="11" height="11"></div><div class="apun_link"><a href="<#SERVERURL>/faq.htm">Частые вопросы</a></div></div>
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
	 				  <div class="icon"><img src="<#IMGBASE>/icon.png" alt="Погода <#TOWN2> - новости наших партнеров" width="26" height="26"></div>
	 			 		<div class="title"><b>НОВОСТИ</b></div>
	   			</div>
	   			<div class="round_right">
		 				<img src="<#IMGBASE>/block_top_right.png"
		 				width="9" height="31" class="corner"
		 				 />
 
	   			</div>
				</div>
				<div class="block_content" style="width:100%;">
					<div class="content" style="width:210px;">
					 <#FOBOSNEWSNOVA 20>
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

</div>

<div id="frc_text_0" class="nodsp"><#FRCT0></div>

<script language="JavaScript">
var townindex=<#INDEX>;
var geosuffix="<#GEOSUFFIX>";
var state=<#REGIONINDEX>;
var predict=<#PREDD1>;
var updTime=new Date(<#UPDTIME>);
var precTime=new Date(<#PRECTIME>);
var lat=<#FIF>;
var lng=<#LAF>;

function updateForecastBg(n)
{
if (document.getElementById("blog_text")) document.getElementById("blog_text").innerHTML=document.getElementById("frc_text_0").innerHTML;
updateForecast_audio();
}

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

var audio = new mnovaAudio({
	js: 'js/dancer',
	jessie: $('.jessie'),
	player_button: $('.player_button'), 
});
audio._load('<#SERVERURL>/speech/forecast_<#INDEX>_0');

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

updateForecastBg(0);
document.getElementById("frcupd").innerHTML=ForecastUpdateString();

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