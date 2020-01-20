<?PHP
header("Cache-Control: no-store, no-cache, must-revalidate, max-age=0");
header("Cache-Control: post-check=0, pre-check=0", false);
header("Pragma: no-cache");
?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<title>Метеонова - погодный робот: Карта погоды</title>
<meta name="description" content="Метеонова: Карта погоды, погодная анимация">
@@include('../main/<%= tpl_path %>/meta_keywords.tpl')
<!-- inject:css -->
<!-- endinject -->
<!-- inject:js -->
<!-- endinject -->	
<?PHP include("http://gen3.meteonova.ru:8001/cgi-bin/novageo.dll/ipgeo?IP=".getenv('HTTP_X_REAL_IP').'&PHP=1&defindex=<%= defindex %>');?>
</head>
<body>
<div id="doc4" class="yui-t5">
<?PHP 
	if (file_exists('topline.php' ))
		require("topline.php");
?>
   <div id="hd">
     <div id="onhd">
       <div id="logo"><a href="http://www.meteonova.<%= domain %>"><img src="images/logo.png" width="277" height="96" border="0" ></a></div>
			@@include('../menu/<%= tpl_path %>/index.tpl')
     </div>
   </div>
<div id="bd" style="float: none;">
	<div id="yui-main">
	<div class="yui-b">

  <div class="main_container">
  			<div class="prec_graph" style="display: none">
				<div class="block_top">
	   			<div class="round_left">
		 		  	<img src="/images/block_top_left.png"
		 				width="9" height="31" class="corner"  />
	   			</div>
	   			<div class="block_title main_container_title_width">
	 				  <div class="icon"><img src="/images/icon.png" width="26" height="26"   ></div>
	 			 	<div class="map title"><b>ЗАГОЛОВОК</b></div>
	   			</div>
	   			<div class="round_right">
		 				<img src="/images/block_top_right.png"
		 				width="9" height="31" class="corner"  />
	   			</div>
				</div>
				<div class="block_content">
			    	<div class="content">
			    		<div class="loader"></div>
			    		<div style="display:inline-block; width: 330px; margin-right: 30px;">
			    			<div class="title3" style="color: #3b55c5; font-size: 15px;">Диаграмма осадков</div>
							<div id="prec_rose" style="width:330px; height:250px;"></div>
						</div>
						<div style="display:inline-block; width: 330px;">
							<div class="title3" style="color: #3b55c5; font-size: 15px;">Диаграмма осадков максимально</div>
							<div id="prec_rose_max" style="width:330px; height:250px;"></div>
						</div>					
			    	</div>
			   	</div>
				<div class="block_bottom">
					<div class="round_left">
						<img src="/images/block_bt_left.png"
							width="9" height="14" class="corner"  />
					</div>
					<div class="block_bt main_container_title_width"></div>
					<div class="round_right">
							<img src="/images/block_bt_right.png"  />
					</div>
				</div>		   	
			</div>

			<div class="block_top">
   			<div class="round_left">
	 		  	<img src="/images/block_top_left.png"
	 				width="9" height="31" class="corner"  />
   			</div>
   			<div class="block_title main_container_title_width">
 				  <div class="icon"><img src="/images/icon.png" width="26" height="26"   ></div>
 			 	<div class="map title"><b>КАРТА ПОГОДЫ</b></div>
   			</div>
   			<div class="round_right">
	 				<img src="/images/block_top_right.png"
	 				width="9" height="31" class="corner"  />
   			</div>
			</div>
			<div class="block_content">
		    	<div class="content">
		    		<div class="title2"></div>
							<div class="map-wrapper">
									<div id="map" class="map"></div> 									
									<div class="legends">
										<div class="legmini"></div>            
									</div>    
									<div id="progress"></div>
							</div>								
							<div class="map-wrapper" style="margin-top: 30px; height: 24px">
									<div id="timeline-wrapper">
										<div class="play-button">  
											<a class="play-button paused" href="#">
											    <div class="left"></div>
											    <div class="right"></div>
											    <div class="triangle-1"></div>
											    <div class="triangle-2"></div>
											</a>
										</div>									     
										<div class="timeline"></div>
										<div class="clear"></div>     
									</div>
							</div>
							<div class="map_descr_full" style="margin-top: 15px;"></div>
								<!--div class="stepChange" style="margin-top: 10px;">
									<div style="margin-right: 6px; display: inline-block">Шаг прогноза</div>
									<div class="button" data='{"step": 1}'>1 час</div>
									<div class="button selected" data='{"step": 3}'>3 часа</div>
									<div class="button" data='{"step": 6}'>6 часов</div>		
								</div-->															
			    </div>
			</div>
			<div class="block_bottom">
				<div class="round_left">
					<img src="/images/block_bt_left.png"
						width="9" height="14" class="corner"  />
				</div>
				<div class="block_bt main_container_title_width"></div>
				<div class="round_right">
						<img src="/images/block_bt_right.png"  />
				</div>
			</div>
  <div style=" float:left; width:728px; height:90px; padding-bottom:8px; position: relative;">
    <?php
    	if (file_exists('ban728x90.php' ))
      		require("ban728x90.php"); 
    ?>
  </div>
  </div>
</div>
</div>
	<div class="yui-b">
  	 <div class="right_main">

				<div class="block_top">
	   			<div class="round_left">
		 		  	<img src="/images/block_top_left.png"
		 				width="9" height="31" class="corner" >
	   			</div>
	   			<div class="block_title" style="width:222px;">
	 				  <div class="icon"><img src="/images/icon.png" width="26" height="26" ></div>
	 			 		<div class="title"><b>КАРТЫ</b></div>
	   			</div>
	   			<div class="round_right">
		 				<img src="/images/block_top_right.png" class="corner"	width="9" height="31" class="corner" >
	   			</div>
				</div>
				<div class="block_content">
					<div class="content">
						<div style="width:100%; margin-bottom:7px;white-space: nowrap;"><div class="apun"><img src="/images/apun.png" width="11" height="11"></div><div class="apun_link"><a href="#" class="map_tab" data='{"type":"TMP_2_m_above_ground", "step": 3}'>Температура воздуха шаг 3ч</a></div></div>
						<div style="width:100%; margin-bottom:7px;white-space: nowrap;"><div class="apun"><img src="/images/apun.png" width="11" height="11"></div><div class="apun_link"><a href="#" class="map_tab" data='{"type":"TMP_2_m_above_ground", "step": 6}'>Температура воздуха шаг 6ч</a></div></div>
						<div style="width:100%; margin-bottom:7px;white-space: nowrap;"><div class="apun"><img src="/images/apun.png" width="11" height="11"></div><div class="apun_link"><a href="#" class="map_tab" data='{"type":"TMIN_2_m_above_ground", "step": 6}'>Минимальная температура</a></div></div>
						<div style="width:100%; margin-bottom:7px;white-space: nowrap;"><div class="apun"><img src="/images/apun.png" width="11" height="11"></div><div class="apun_link"><a href="#" class="map_tab" data='{"type":"TMAX_2_m_above_ground", "step": 6}'>Максимальная температура</a></div></div>
						<div style="width:100%; margin-bottom:7px;white-space: nowrap;"><div class="apun"><img src="/images/apun.png" width="11" height="11"></div><div class="apun_link"><a href="#" class="map_tab" data='{"type":"PRMSL_mean_sea_level", "step": 6}'>Давление на уровне моря</a></div></div>
						<div style="width:100%; margin-bottom:7px;white-space: nowrap;"><div class="apun"><img src="/images/apun.png" width="11" height="11"></div><div class="apun_link"><a href="#" class="map_tab" data='{"type":"FORMULA_PREC1", "step": 1}'>Осадки сумма за 1 час</a></div></div>
						<div style="width:100%; margin-bottom:7px;white-space: nowrap;"><div class="apun"><img src="/images/apun.png" width="11" height="11"></div><div class="apun_link"><a href="#" class="map_tab" data='{"type":"FORMULA_PREC3", "step": 3}'>Осадки сумма за 3 часа</a></div></div>
						<div style="width:100%; margin-bottom:7px;white-space: nowrap;"><div class="apun"><img src="/images/apun.png" width="11" height="11"></div><div class="apun_link"><a href="#" class="map_tab" data='{"type":"APCP_surface", "step": 6}'>Осадки сумма за 6 часов</a></div></div>												
						<div style="width:100%; margin-bottom:7px;white-space: nowrap;"><div class="apun"><img src="/images/apun.png" width="11" height="11"></div><div class="apun_link"><a href="#" class="map_tab" data='{"type":"RH_2_m_above_ground", "step": 6}'>Относительная влажность</a></div></div>
						<div style="width:100%; margin-bottom:7px;white-space: nowrap;"><div class="apun"><img src="/images/apun.png" width="11" height="11"></div><div class="apun_link"><a href="#" class="map_tab" data='{"type":"TCDC_entire_atmosphere", "step": 1}'>Облачность шаг 1 час</a></div></div>
						<div style="width:100%; margin-bottom:7px;white-space: nowrap;"><div class="apun"><img src="/images/apun.png" width="11" height="11"></div><div class="apun_link"><a href="#" class="map_tab" data='{"type":"TCDC_entire_atmosphere", "step": 3}'>Облачность шаг 3 часа</a></div></div>
						<div style="width:100%; margin-bottom:7px;white-space: nowrap;"><div class="apun"><img src="/images/apun.png" width="11" height="11"></div><div class="apun_link"><a href="#" class="map_tab" data='{"type":"TCDC_entire_atmosphere", "step": 6}'>Облачность шаг 6 часов</a></div></div>
						<div style="width:100%; margin-bottom:7px;white-space: nowrap;"><div class="apun"><img src="/images/apun.png" width="11" height="11"></div><div class="apun_link"><a href="#" class="map_tab" data='{"type":"FORMULA_WINDSPD", "step": 3}'>Скорость ветра шаг 3 часа</a></div></div>								
						<div style="width:100%; margin-bottom:7px;white-space: nowrap;"><div class="apun"><img src="/images/apun.png" width="11" height="11"></div><div class="apun_link"><a href="#" class="map_tab" data='{"type":"FORMULA_WINDSPD", "step": 6}'>Скорость ветра шаг 6 часов</a></div></div>								
						<div style="width:100%; margin-bottom:7px;white-space: nowrap;"><div class="apun"><img src="/images/apun.png" width="11" height="11"></div><div class="apun_link"><a href="#" class="map_tab" data='{"type":"GUST_surface", "step": 3}'>Порывы ветра шаг 3 часа</a></div></div>								
						<div style="width:100%; margin-bottom:7px;white-space: nowrap;"><div class="apun"><img src="/images/apun.png" width="11" height="11"></div><div class="apun_link"><a href="#" class="map_tab" data='{"type":"GUST_surface", "step": 6}'>Порывы ветра шаг 6 часов</a></div></div>								
						<div style="width:100%; margin-bottom:7px;white-space: nowrap;"><div class="apun"><img src="/images/apun.png" width="11" height="11"></div><div class="apun_link"><a href="#" class="map_tab" data='{"type":"TMP_surface", "step": 3}'>Температура поверхности 3ч</a></div></div>
						<div style="width:100%; margin-bottom:7px;white-space: nowrap;"><div class="apun"><img src="/images/apun.png" width="11" height="11"></div><div class="apun_link"><a href="#" class="map_tab" data='{"type":"TMP_surface", "step": 6}'>Температура поверхности 6ч</a></div></div>
						<div style="width:100%; margin-bottom:7px;white-space: nowrap;"><div class="apun"><img src="/images/apun.png" width="11" height="11"></div><div class="apun_link"><a href="#" class="map_tab" data='{"type":"TSOIL_0-0.1_m_below_ground", "step": 6}'>Температура почвы 0-10 см</a></div></div>
						<div style="width:100%; margin-bottom:7px;white-space: nowrap;"><div class="apun"><img src="/images/apun.png" width="11" height="11"></div><div class="apun_link"><a href="#" class="map_tab" data='{"type":"TSOIL_0.1-0.4_m_below_ground", "step": 6}'>Температура почвы 10-40 см</a></div></div>
						<div style="width:100%; margin-bottom:7px;white-space: nowrap;"><div class="apun"><img src="/images/apun.png" width="11" height="11"></div><div class="apun_link"><a href="#" class="map_tab" data='{"type":"TSOIL_0.4-1_m_below_ground", "step": 6}'>Температура почвы 40-100 см</a></div></div>
						<div style="width:100%; margin-bottom:7px;white-space: nowrap;"><div class="apun"><img src="/images/apun.png" width="11" height="11"></div><div class="apun_link"><a href="#" class="map_tab" data='{"type":"TSOIL_1-2_m_below_ground", "step": 6}'>Температура почвы 1-2 м</a></div></div>
						<div style="width:100%; margin-bottom:7px;white-space: nowrap;"><div class="apun"><img src="/images/apun.png" width="11" height="11"></div><div class="apun_link"><a href="#" class="map_tab" data='{"type":"SOILW_0-0.1_m_below_ground", "step": 6}'>Влажность почвы 0-10 см</a></div></div>
						<div style="width:100%; margin-bottom:7px;white-space: nowrap;"><div class="apun"><img src="/images/apun.png" width="11" height="11"></div><div class="apun_link"><a href="#" class="map_tab" data='{"type":"SOILW_0.1-0.4_m_below_ground", "step": 6}'>Влажность почвы 10-40 см</a></div></div>
						<div style="width:100%; margin-bottom:7px;white-space: nowrap;"><div class="apun"><img src="/images/apun.png" width="11" height="11"></div><div class="apun_link"><a href="#" class="map_tab" data='{"type":"TMP_850_mb", "step": 6}'>Температура на 850 гПа</a></div></div>
						<div style="width:100%; margin-bottom:7px;white-space: nowrap;"><div class="apun"><img src="/images/apun.png" width="11" height="11"></div><div class="apun_link"><a href="#" class="map_tab" data='{"type":"TMP_700_mb", "step": 6}'>Температура на 700 гПа</a></div></div>
						<div style="width:100%; margin-bottom:7px;white-space: nowrap;"><div class="apun"><img src="/images/apun.png" width="11" height="11"></div><div class="apun_link"><a href="#" class="map_tab" data='{"type":"TMP_500_mb", "step": 6}'>Температура на 500 гПа</a></div></div>
						<div style="width:100%; margin-bottom:7px;white-space: nowrap;"><div class="apun"><img src="/images/apun.png" width="11" height="11"></div><div class="apun_link"><a href="#" class="map_tab" data='{"type":"PRES_surface", "step": 6}'>Давление на поверхности</a></div></div>
						<div style="width:100%; margin-bottom:7px;white-space: nowrap;"><div class="apun"><img src="/images/apun.png" width="11" height="11"></div><div class="apun_link"><a href="#" class="map_tab" data="{&quot;type&quot;:&quot;HLCY_3000-0_m_above_ground&quot;, &quot;step&quot;: 1}">Штормовая опасность</a></div></div>		
						<div style="width:100%; white-space: nowrap;"><div class="apun"><img src="/images/apun.png" width="11" height="11"></div><div class="apun_link"><a href="#" class="map_tab last" data='{"type":"FORMULA_FIRE", "step": 6}'>Класс пожароопасности</a></div></div>							
					</div>
				</div>
				<div class="block_bottom">
					<div class="round_left">
						<img src="/images/block_bt_left.png" width="9" height="14" class="corner">
					</div>
					<div class="block_bt" style="width:222px"></div>
					<div class="round_right">
							<img src="/images/block_bt_right.png" width="9" height="14" class="corner">
					</div>
				</div>
			</div>
	</div>

	<div class="map_descr" id="descr_TMP_2_m_above_ground_3">Приземная температура воздуха. Шаг прогноза 3 часа</div>
	<div class="map_descr" id="full_descr_TMP_2_m_above_ground">Приземная температура воздуха на высоте 2 метра (стандартный уровень изменений приземных метеопараметров)</div>
	<div class="map_descr" id="descr_TMP_2_m_above_ground_6">Приземная температура воздуха. Шаг прогноза 6 часов</div>	

	<div class="map_descr" id="descr_TMIN_2_m_above_ground">Минимальная температура воздуха за последние 6 часов</div>
	<div class="map_descr" id="full_descr_TMIN_2_m_above_ground">Минимальная температура воздуха в приземном слое за последние 6 часов перед сроком составления карты</div>

	<div class="map_descr" id="descr_TMAX_2_m_above_ground">Максимльная температура воздуха за последние 6 часов</div>
	<div class="map_descr" id="full_descr_TMAX_2_m_above_ground">Максимальная температура воздуха в приземном слое за последние 6 часов перед сроком составления карты</div>

	<div class="map_descr" id="descr_PRMSL_mean_sea_level">Давление на уровне моря</div>
	<div class="map_descr" id="full_descr_PRMSL_mean_sea_level">Давление воздуха, приведенное к уровню моря. Карта обычно используется для оценки расположения циклонов и антициклонов в нижних слоях атмосферы</div>

	<div class="map_descr" id="descr_FORMULA_PREC1">Сумма атмосферных осадков за 1 час</div>
	<div class="map_descr" id="full_descr_FORMULA_PREC1_1">Слой осадков в милиметрах, выпавших на поверхность за последний час перед сроком построения карты. Для твердых осадков это приведенный слой воды, который образовался бы при полном их таянии. Анимация таких карт удобна для оценки перемещения облачных систем с осадками</div>

	<div class="map_descr" id="descr_FORMULA_PREC3">Сумма атмосферных осадков за 3 часа</div>
	<div class="map_descr" id="full_descr_FORMULA_PREC3_3">Слой осадков в милиметрах, выпавших на поверхность за последние 3 часа перед сроком построения карты. Для твердых осадков это приведенный слой воды, который образовался бы при полном их таянии. Анимация таких карт удобна для оценки распределения зон интенсивных осадков</div>

	<div class="map_descr" id="descr_APCP_surface">Cумма атмосферных осадков за 6 часов</div>
	<div class="map_descr" id="full_descr_APCP_surface">Слой осадков в милиметрах, выпавших на поверхность за последние 3 часа перед сроком построения карты. Для твердых осадков это приведенный слой воды, который образовался бы при полном их таянии. Анимация таких карт удобна для оценки распределения зон слабых и обложных осадков</div>
			
	<div class="map_descr" id="descr_RH_2_m_above_ground">Относительная влажность воздуха</div>
	<div class="map_descr" id="full_descr_RH_2_m_above_ground">Относительная влажность воздуха в приземном слое, оценивается на высоте 2 метра над землей. Относительная влажность - это отношение фактического влагосодержания воздуха к влагосодержанию при максимально возможном для данной температуры насыщении воздуха водяным паром, выраженное в процентах</div>

	<div class="map_descr" id="descr_TCDC_entire_atmosphere">Карта общей облачности</div>
	<div class="map_descr" id="full_descr_TCDC_entire_atmosphere">На карте отображено поле покрытия неба облаками, выраженное в процентах 0 - ясно, до 100% - пасмурно</div>

	<div class="map_descr" id="descr_FORMULA_WINDSPD">Средняя скорость приземного ветра</div>
	<div class="map_descr" id="full_descr_FORMULA_WINDSPD">Скорость приземного ветра оценивается на высоте 10 метров над поверхностью</div>

	<div class="map_descr" id="descr_GUST_surface">Порывы призменого ветра</div>
	<div class="map_descr" id="full_descr_GUST_surface">Скорость ветра характеризуется как средним значением, так и максимальным значением скорости за интервал осреднения, называемым порывом ветра</div>

	<div class="map_descr" id="descr_TMP_surface">Температура поверхности</div>
	<div class="map_descr" id="full_descr_TMP_surface">Температура поверхности, в отличие от приземной температуры воздуха, определяет степень нагретости поверхности земли или водоема</div>

	<div class="map_descr" id="descr_TSOIL_0-01_m_below_ground">Температура почвы в верхнем слое до 10 см</div>
	<div class="map_descr" id="full_descr_TSOIL_0-01_m_below_ground">Температура почвы в верхнем слое представляет собой среднее значение в слое от поверхности до глубини 10 см. Этот параметр важен для оценки состояния травянистых сельскохозяйственных культур и плодовых кустов</div>

	<div class="map_descr" id="descr_TSOIL_01-04_m_below_ground">Температура почвы в слое 10-40 см</div>
	<div class="map_descr" id="full_descr_TSOIL_01-04_m_below_ground">Температура почвы в верхнем слое представляет собой среднее значение в слое на глубине от 10 до 40 см. Этот параметр важен для оценки состояния плодовых деревьев</div>

	<div class="map_descr" id="descr_TSOIL_04-1_m_below_ground">Температура почвы в слое 40-100 см</div>
	<div class="map_descr" id="full_descr_TSOIL_04-1_m_below_ground">Температура почвы в верхнем слое представляет собой среднее значение в слое на глубине от 40 до 100 см. Этот параметр важен для оценки состояния плодовых деревьев</div>

	<div class="map_descr" id="descr_TSOIL_1-2_m_below_ground">Температура почвы в слое 1-2 м</div>
	<div class="map_descr" id="full_descr_TSOIL_1-2_m_below_ground">Температура почвы в верхнем слое представляет собой среднее значение в слое на глубине от 1 до 2 метров. Этот параметр важен для оценки зимнего промерзания почвы</div>

	<div class="map_descr" id="descr_SOILW_0-01_m_below_ground">Влагосодержание почвы в верхнем слое до глубины 10 см</div>
	<div class="map_descr" id="full_descr_SOILW_0-01_m_below_ground">Влагосодержание почвы в верхнем слое представляет собой среднее долю влаги, содержащуюся в почве относительно ее максимальной влагоемкости. Этот параметр важен для оценки состояния травянистых сельскохозяйственных культур и плодовых кустов</div>

	<div class="map_descr" id="descr_SOILW_01-04_m_below_ground">Влагосодержание почвы в слое 10-40 см</div>
	<div class="map_descr" id="full_descr_SOILW_01-04_m_below_ground">Влагосодержание почвы в верхнем слое представляет собой среднее долю влаги, содержащуюся в почве относительно ее максимальной влагоемкости. Этот параметр важен для оценки состояния плодовых кустов и деревьев</div>

	<div class="map_descr" id="descr_TMP_850_mb">Температура воздуха на уровне 850 гПа</div>
	<div class="map_descr" id="full_descr_TMP_850_mb">Температура на уровне 850 гПа, или примерно 1,5 км, используется обычно для оценки притоков и оттоков тепла в нижней тропосфере</div>

	<div class="map_descr" id="descr_TMP_700_mb">Температура воздуха на уровне 700 гПа</div>
	<div class="map_descr" id="full_descr_TMP_700_mb">Температура на уровне 700 гПа, или примерно 3 км, используется обычно для оценки притоков и оттоков тепла в нижней тропосфере</div>

	<div class="map_descr" id="descr_TMP_500_mb">Температура воздуха на уровне 500 гПа</div>
	<div class="map_descr" id="full_descr_TMP_500_mb">Температура на уровне 500 гПа, или примерно 5,5 км, используется обычно для оценки притоков и оттоков тепла в средней тропосфере</div>

	<div class="map_descr" id="descr_PRES_surface">Давление воздуха на поверхности</div>
	<div class="map_descr" id="full_descr_PRES_surface">Карта показывает распределение давления на поверхности с учетом рельефа</div>

	<div class="map_descr" id="descr_HLCY_3000-0_m_above_ground">Штормовая опасность (экспериментально)</div>
	<div class="map_descr" id="full_descr_HLCY_3000-0_m_above_ground">Эта экспериментальная карта представляет оценку вероятности развитя сильных внутримассовых и прифронтальных конвективных систем и связанной с ними штормовой погоды (порывы ветра, гроза, град, смерч)</div>	

	<div class="map_descr" id="descr_FORMULA_FIRE">Класс пожароопасности в лесах (экспериментально)</div>
	<div class="map_descr" id="full_descr_FORMULA_FIRE">Эта экспериментальная карта представляет оценку пожароопасности, рассчитанную на базе влажности верхнего слоя почвы. Данный метод является неофициальным и не совпадает с методикой оценки пожароопасности, принятой Росгидрометом</div>

			
@@include('../footer/<%= tpl_path %>/index.tpl')

<script type="text/javascript">
  $(document).ready(function() {
	function getParameterByName(name) {
    	name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    	var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
    	return results === null ? null : decodeURIComponent(results[1].replace(/\+/g, " "));
	}
	
	var type = 'TMP_2_m_above_ground';	
	try {
		type = getParameterByName('type').replace('mc_', '') 
	}
	catch(err) {}
	var step = getParameterByName('step') || 3;
	var visibleLayer = getParameterByName('vl') || 4;
	var zoom = getParameterByName('zoom') || 6;

	var $o = $("a.map_tab[data='{\"type\":\""+ type +"\", \"step\": " + step + "}']");
	if ($o.length == 0) $o = $('a.map_tab[data='+ type +']');
	$o.addClass('checked');

	var _type = type.replace('.', '');
	var $_do = $('#descr_'+_type+'_'+step);
	if ($_do.length == 0) $_do = $('#descr_'+_type);
	try {
		$('.title2').html(($_do.length>0?$_do.html():''));
	}
	catch(err) {
		$('.title2').html($o.html());
	}

	$_do = $('#full_descr_'+_type+'_'+step);
	if ($_do.length == 0) $_do = $('#full_descr_'+_type);
	try {
		$('.map_descr_full').html(($_do.length>0?$_do.html():''));
	}
	catch(err) {
		$('.map_descr_full').html($o.html());
	}	

	var _lat = parseFloat(getParameterByName('fi')) || (typeof lat != 'undefined'?lat:<%= lat %>),
		_lng = parseFloat(getParameterByName('la')) || (typeof lng != 'undefined'?lng:<%= lng %>),
		map = new Map({
	    predict: 6,
	    step: step,
	    count: 24,
	    visibleLayer: visibleLayer,
	    lat: _lat,
	    lng: _lng,
	    zoom: zoom,
	    minZoom: 4,
	    maxZoom: 8,
	    target: 'map',
	    type: type,
	    summertime: 0,
	    progressbar: new Progress(document.getElementById('progress')),
	    timeline: new Timeline(
	        $('.timeline'),
	        {summertime: 0, timeshift: -999, predict: 6, step: step, count: 24, maptype: type, display: 'block'} 
	    ),
	    callback: function(position) {	
	    	map.opt.lat = position[1];
	    	map.opt.lng = position[0];
	    	history.pushState(
	    		null, 
	    		null, 
	    		"map.htm?fi="+position[1]+"&la="+position[0]+"&type="+map.opt.type+"&step="+map.opt.step+"&vl="+map.opt.visibleLayer+"&zoom="+map.opt.zoom);	    	
	    }      
	});
	map.render();

	map.map.on('singleclick', function(e){
		var coordinate = ol.proj.transform([e.coordinate[0], e.coordinate[1]], 'EPSG:3857', 'EPSG:4326');
		getPrecipGraph(coordinate[1] || 55.8, coordinate[0] || 37.6, map.opt.type);
	});	

	var plotyScripts = ['/js/plotly-latest.min.js'];

	function getPrecipGraph(lat, lng, maptype) {
		var rg = function renderGraphs(lat, lng) {
			$.ajax({ url: '/proxy.php',
	            method: 'GET', 
	            data: {fi: lat, la: lng, predict: map.opt.predict + map.opt.step*map.opt.visibleLayer}, 
	            dataType: 'json',
	            cache: false})
	        .done(
	           	function(data) {
	            	try {
	            		var r = data.precprobs.lr;
	            		var popper = r.pop();
	            		var trace = {
	            			r: r,
	            			t: ['Север', 'С-В', 'Восток', 'Ю-В', 'Юг', 'Ю-З', 'Запад', 'С-З'],
	  						marker: {color: 'rgb(170,255,170)'},
	  						type: 'area'            						
	            		};
	            		var r2 = data.precprobs.hr;
	            		var popper2 = r2.pop();
	            		var trace2 = {
	            			r: r2,
	            			t: ['Север', 'С-В', 'Восток', 'Ю-В', 'Юг', 'Ю-З', 'Запад', 'С-З'],
	  						marker: {color: 'rgb(0,180,204)'},
	  						type: 'area'            						
	            		};            					
	            		var layout = {
	  						width: 320,
	  						height: 250,
	  						plot_bgcolor: 'rgb(250, 251, 251)',
							font: {
								family: 'Arial, Helvetica, sans-serif;',
								size: 11,
								color: '#3b55c5'
							},
							margin : {
						      l: 20,
						      r: 20,
						      b: 20,
						      t: 20
						    },
	  						showlegend: false,
	  						radialaxis: {
	  							ticksuffix: '%'
	  						},
	  						orientation: 270
						};
						$('.loader').hide();
						Plotly.newPlot('prec_rose', [trace], layout);
						Plotly.newPlot('prec_rose_max', [trace2], layout);
	            	}
	            	catch(err) {
	            		console.log(err);
	            	}
	            }
	        );		
		}		
		if (maptype === 'FORMULA_PREC1') {
			$('.prec_graph').css('display', 'block');
			$('.prec_rose').empty();
			$('.prec_rose_max').empty();
			$('.loader').show();
			if (plotyScripts.length == 0) rg(lat, lng);
			else {
		        function loadScript(js) {
		          if (typeof js == 'undefined') return; 
		          var script = document.createElement('script');
		          script.src = js;
		          script.async = true;
		          script.charset = 'utf-8';
		          script.onload = function() {
		            if (plotyScripts.length == 0) {
		            	rg(lat, lng);			
		            }
		            loadScript(plotyScripts.shift());
		          }
		          try {
		            document.head.appendChild(script);
		          }
		          catch(err) {
		            document.getElementsByTagName('head')[0].appendChild(script);
		          }
		        }
		        loadScript(plotyScripts.shift());				
			}
		}
		else $('.prec_graph').css('display', 'none');
	}

	getPrecipGraph(_lat, _lng, map.opt.type);
		
	var $map_tabs = $('a.map_tab');

	$map_tabs.on('click', function(e) {
		e.preventDefault();
		if ($(this).hasClass('checked')) return;
		$map_tabs.removeClass('checked');
		$(this).addClass('checked');
		var data = $(this).attr('data'),
			_step = 3,
			_type = $(this).attr('data');
		try {
			data = JSON.parse(data);
			_type = data.type,
			_step = data.step;
		}

		catch(err) {}
		if (map) {
			map.opt.timeline.update({summertime: 0, timeshift: -999, step: _step, maptype: _type});
			map.update({
				type: _type,
				step: _step
			});
		}

	    history.pushState(null, null, "map.htm?fi="+map.opt.lat+"&la="+map.opt.lng+"&type="+_type+"&step="+_step);

	    getPrecipGraph(map.opt.lat, map.opt.lng, _type);

	    __gaTracker('send', 'event', 'map', 'change:type', _type);

		_type = _type.replace(/[.]/g, '');
		var $_do = $('#descr_'+_type+'_'+_step);
		if ($_do.length == 0) $_do = $('#descr_'+_type);
		try {
			$('.title2').html(($_do.length>0?$_do.html():''));
		}
		catch(err) {
			$('.title2').html($(this).html());
		}

		$_do = $('#full_descr_'+_type+'_'+_step);
		if ($_do.length == 0) $_do = $('#full_descr_'+_type);
		try {
			$('.map_descr_full').html($_do.length>0?$_do.html():'');
		}
		catch(err) {
			$('.map_descr_full').html($(this).html());	
		}

  	});

	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
	})(window,document,'script','https://www.google-analytics.com/analytics.js','__gaTracker');

	__gaTracker('create', 'UA-100062653-1', 'auto');
	__gaTracker('send', 'pageview');
	__gaTracker('send', 'event', 'map', 'default:map', type);
});  	
</script>
</div>
</div>
</body>
</html>