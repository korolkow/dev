<?PHP
header("Cache-Control: no-store, no-cache, must-revalidate, max-age=0");
header("Cache-Control: post-check=0, pre-check=0", false);
header("Pragma: no-cache");
?>
<html lang="ru">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
   <div id="hd">
     <div id="onhd">
       <div id="logo"><a href="//www.meteonova.<%= domain %>"><img src="images/logo.png" width="277" height="96" border="0" ></a></div>
		 @@include('../menu/<%= tpl_path %>/index.tpl')
     </div>
   </div>
	<?PHP
	if (file_exists('topline.php' ))
		require("topline.php");
?>
<div id="bd" style="float: none;">
	<div id="yui-main">
	<div class="yui-b">

  <div class="main_container" style="width: 100%">
			<div class="block_top">
   			<div class="round_left">
	 		  	<img src="/images/block_top_left.png"
	 				width="9" height="31" class="corner"  />
   			</div>
   			<div class="block_title main_container_title_width" style="width: 977px;">
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
		    				<div class="select-wrapper">
					    		<div class="map_types">
							    	<select name="map_types"></select>
								</div>
								<div class=" step">
							    	<select name="step"></select>
								</div>
								<div class="hours">
							    	<select name="hours"></select>
								</div>
							</div>											
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
										<div class="timeline" style="width:97%"></div>
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
				<div class="block_bt main_container_title_width" style="width: 959px;"></div>
				<div class="round_right">
						<img src="/images/block_bt_right.png"  />
				</div>
			</div>
  <div style="width:728px; height:90px; margin: 0 auto; padding-bottom:8px; position: relative;">
    <?php
    	if (file_exists('ban728x90.php' ))
      		require("ban728x90.php"); 
    ?>
  </div>
  </div>
</div>


@@include('../footer/<%= tpl_path %>/index.tpl')

<script type="text/javascript">


	var mapTypes = {
		"TMP_2_m_above_ground": {"group": "popular", "steps": {"set": [1,3,6,12], "def": 6}, "name": "Температура воздуха", "descr": "Приземная температура воздуха на высоте 2 метра (стандартный уровень изменений приземных метеопараметров)"},
		"TMIN_2_m_above_ground": {"steps": {"set": [6,12], "def": 6}, "name": "Минимальная температура", "descr": "Минимальная температура воздуха в приземном слое за последние %hours% перед сроком составления карты"},
		"TMAX_2_m_above_ground": {"steps": {"set": [6,12], "def": 6}, "name": "Максимальная температура", "descr": "Максимальная температура воздуха в приземном слое за последние %hours% перед сроком составления карты"},
		"TMP_surface": {"steps": {"set": [3,6,12], "def": 6}, "name": "Температура поверхности", "descr": "Температура поверхности, в отличие от приземной температуры воздуха, определяет степень нагретости поверхности земли или водоема"},
		"TMP_850_mb": {"steps": {"set": [6,12], "def": 6}, "name": "Температура на 850 гПа", "descr": "Температура на уровне 850 гПа, или примерно 1,5 км, используется обычно для оценки притоков и оттоков тепла в нижней тропосфере"},
		"TMP_700_mb": {"steps": {"set": [6,12], "def": 6}, "name": "Температура на 700 гПа", "descr": "Температура на уровне 700 гПа, или примерно 3 км, используется обычно для оценки притоков и оттоков тепла в нижней тропосфере"},
		"TMP_500_mb": {"steps": {"set": [6,12], "def": 6}, "name": "Температура на 500 гПа", "descr": "Температура на уровне 500 гПа, или примерно 5,5 км, используется обычно для оценки притоков и оттоков тепла в средней тропосфере"},
		"PRMSL_mean_sea_level": {"group": "popular", "steps": {"set": [3,6,12], "def": 6}, "name": "Давление на уровне моря", "descr": "Давление воздуха, приведенное к уровню моря. Карта обычно используется для оценки расположения циклонов и антициклонов в нижних слоях атмосферы"},
		"PRES_surface": {"steps": {"set": [3,6,12], "def": 6}, "name": "Давление на поверхности", "descr": "Карта показывает распределение давления на поверхности с учетом рельефа"},
		"FORMULA_PREC1": {"group": "popular", "steps": {"set": [1], "def": 1}, "name": "Осадки. Сумма за 1 час", "descr": "Слой осадков в милиметрах, выпавших на поверхность за последний час перед сроком построения карты. Для твердых осадков это приведенный слой воды, который образовался бы при полном их таянии. Анимация таких карт удобна для оценки перемещения облачных систем с осадками"},
		"FORMULA_PREC3": {"group": "popular", "steps": {"set": [3], "def": 3}, "name": "Осадки. Сумма за 3 часа", "descr": "Слой осадков в милиметрах, выпавших на поверхность за последние 3 часа перед сроком построения карты. Для твердых осадков это приведенный слой воды, который образовался бы при полном их таянии. Анимация таких карт удобна для оценки распределения зон интенсивных осадков"},
		"APCP_surface": {"group": "popular", "steps": {"set": [6], "def": 6}, "name": "Осадки. Сумма за 6 часов", "descr": "Слой осадков в милиметрах, выпавших на поверхность за последние 3 часа перед сроком построения карты. Для твердых осадков это приведенный слой воды, который образовался бы при полном их таянии. Анимация таких карт удобна для оценки распределения зон слабых и обложных осадков"},
		"RH_2_m_above_ground": {"group": "popular", "steps": {"set": [3,6,12], "def": 6}, "name": "Относительная влажность", "descr": "Относительная влажность воздуха в приземном слое, оценивается на высоте 2 метра над землей. Относительная влажность - это отношение фактического влагосодержания воздуха к влагосодержанию при максимально возможном для данной температуры насыщении воздуха водяным паром, выраженное в процентах"},
		"TCDC_entire_atmosphere": {"steps": {"set": [1,3,6,12], "def": 6}, "name": "Карта общей облачности", "descr": "На карте отображено поле покрытия неба облаками, выраженное в процентах 0 - ясно, до 100% - пасмурно"},
		"FORMULA_WINDSPD": {"group": "popular", "steps": {"set": [1,3,6,12], "def": 6}, "name": "Средняя скорость приземного ветра", "descr": "Скорость приземного ветра оценивается на высоте 10 метров над поверхностью"},
		"GUST_surface": {"group": "popular", "steps": {"set": [1,3,6,12], "def": 6}, "name": "Порывы призменого ветра", "descr": "Скорость ветра характеризуется как средним значением, так и максимальным значением скорости за интервал осреднения, называемым порывом ветра"},
		"TSOIL_0-0.1_m_below_ground": {"steps": {"set": [6,12], "def": 6}, "name": "Температура почвы 0-10 см", "descr": "Температура почвы в верхнем слое представляет собой среднее значение в слое от поверхности до глубини 10 см. Этот параметр важен для оценки состояния травянистых сельскохозяйственных культур и плодовых кустов"},
		"TSOIL_0.1-0.4_m_below_ground": {"steps": {"set": [6,12], "def": 6}, "name": "Температура почвы 10-40 см", "descr": "Температура почвы в верхнем слое представляет собой среднее значение в слое на глубине от 10 до 40 см. Этот параметр важен для оценки состояния плодовых деревьев"},
		"TSOIL_0.4-1_m_below_ground": {"steps": {"set": [6,12], "def": 6}, "name": "Температура почвы 40-100 см", "descr": "Температура почвы в верхнем слое представляет собой среднее значение в слое на глубине от 40 до 100 см. Этот параметр важен для оценки состояния плодовых деревьев"},
		"TSOIL_1-2_m_below_ground": {"steps": {"set": [6,12], "def": 6}, "name": "Температура почвы 1-2 м", "descr": "Температура почвы в верхнем слое представляет собой среднее значение в слое на глубине от 1 до 2 метров. Этот параметр важен для оценки зимнего промерзания почвы"},
		"SOILW_0-0.1_m_below_ground": {"steps": {"set": [6,12], "def": 6}, "name": "Влажность почвы 0-10 см", "descr": "Влагосодержание почвы в верхнем слое до глубины 10 см. Влагосодержание почвы в верхнем слое представляет собой среднее долю влаги, содержащуюся в почве относительно ее максимальной влагоемкости. Этот параметр важен для оценки состояния травянистых сельскохозяйственных культур и плодовых кустов"},
		"SOILW_0.1-0.4_m_below_ground": {"steps": {"set": [6,12], "def": 6}, "name": "Влажность почвы 10-40 см", "descr": "Влагосодержание почвы в слое 10-40 см. Влагосодержание почвы в верхнем слое представляет собой среднее долю влаги, содержащуюся в почве относительно ее максимальной влагоемкости. Этот параметр важен для оценки состояния плодовых кустов и деревьев"},
		"HLCY_3000-0_m_above_ground": {"group": "new", "steps": {"set": [1,3,6], "def": 1}, "name": "Штормовая опасность", "descr": "Эта экспериментальная карта представляет оценку вероятности развитя сильных внутримассовых и прифронтальных конвективных систем и связанной с ними штормовой погоды (порывы ветра, гроза, град, смерч)"},
		"FORMULA_FIRE": {"group": "new", "steps": {"set": [12], "def": 12}, "name": "Класс пожароопасности", "descr": "Эта экспериментальная карта представляет оценку пожароопасности, рассчитанную на базе влажности верхнего слоя почвы. Данный метод является неофициальным и не совпадает с методикой оценки пожароопасности, принятой Росгидрометом"},
		"FORMULA_SNOWDENS": {"group": "new", "steps": {"set": [12], "def": 12}, "name": "Плотность снега", "descr": "Плотность снежного покрова характеризует, насколько сильно оседает снег в результате подтаивания и сезонного уплотнения. Обычно после длительных оттепелей и к весне снег имеет наибольшую плотность. Карта может быть полезна для любителей активного зимнего отдыха, оценки состояния зимников, а также (в комбинации с картой высоты снега) для оценки запасов влаги на полях"},
		"SNOD_surface": {"group": "new", "steps": {"set": [3,6,12], "def": 6}, "name": "Высота снега", "descr": "Карта оценки средней высоты снега. В оценке не учитывается перемещение снега при метели, а также отвалы при уборке дорог и дворов."}				
	};


	var mapGroups = {
		'new': {'name': 'Новые'},
		'popular': {'name': 'Популярные'},
		'others' : {'name': '&nbsp;'}
	}; 

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
	var step = getParameterByName('step') || getDefStep(type);
	var visibleLayer = getParameterByName('vl') || 4;
	var zoom = getParameterByName('zoom') || 6;

	function getDefStep(map_type) {
		try {
			var mapType = mapTypes[map_type];
			console.log(mapType.steps.def);
			return mapType.steps.def;
		}	
		catch(err) {
			return 3;
		} 
	}

	var _lat = parseFloat(getParameterByName('fi')) || (typeof lat != 'undefined'?lat:<%= lat %>),
		_lng = parseFloat(getParameterByName('la')) || (typeof lng != 'undefined'?lng:<%= lng %>),
		map = new Map({
	    predict: 6,
	    step: step,
	    count: 20,
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
	        {summertime: 0, timeshift: -999, predict: 6, step: step, count: 20, maptype: type, display: 'block', select_hours: $('select[name="hours"]')} 
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

	var $select_map = $('select[name="map_types"]');
	$.each(mapGroups, function(key, value) {
		$select_map.append($("<optgroup label="+value.name+"></optgroup>"));
		$.each(mapTypes, function(k, v) {
			if (key === 'others' && typeof v.group === 'undefined') v.group = key; 
			if (key === v.group) {
				$select_map
					.find('optgroup')
					.last()
					.append($("<option></option>")
					.attr("value", k)
					.attr("descr", v.descr)
            		.prop('selected', (k == type?'true':''))
                	.attr("selected", (k == type?'selected':''))
            		.text(v.name));

			}
		});		
	});

	var $select_step = $('select[name="step"]');
	reloadSelect($select_step, type, step);

	function reloadSelect($select, map_type, step_hour) {
		if (!step_hour) step_hour = getDefStep(map_type);
		$select.find('option').remove();
		var maptype = mapTypes[map_type];
		$.each(maptype.steps.set, function(index, value) { 
			var hour = 'час';
			switch (value) {
				case 1:
				hour = 'час';
				break;
				case 2:
				case 3:
				case 4:
				hour = 'часa';
				break;
				default:
				hour = 'часов';
			}			
			$select.append($("<option></option>")
			.attr("value", value)
			.prop('selected', (value == step_hour?'true':''))
            .attr("selected", (value == step_hour?'selected':''))
		    .text('Шаг ' + value + ' ' + hour));	
		});
		try {
			$select.data('plugin_vDrop').update($select);
		}
		catch(err) {

		}
	}

	$('select').vDrop({allowMultiple: false});
	$('.vClicker:first').trigger('click');

	var descr = $('option:selected', $select_map).attr('descr');
	$('.map_descr_full').html(descr.replace('%hours%', $select_step.find(":selected").text()));		

	$select_map.change(function() {
		reloadSelect($select_step, $(this).val());		
		if (map) {
			map.opt.timeline.update({summertime: 0, timeshift: -999, step: $select_step.find(":selected").val(), maptype: $(this).val()});
			map.update({
				type: $(this).val(),
				step: $select_step.find(":selected").val()
			});
		}
	    history.pushState(null, null, "map.htm?fi="+map.opt.lat+"&la="+map.opt.lng+"&type="+$(this).val()+"&step="+$select_step.find(":selected").val());
	    var descr = $('option:selected', this).attr('descr');
	    $('.map_descr_full').html(descr.replace('%hours%', $select_step.find(":selected").text()));
	    __gaTracker('send', 'event', 'map', 'change:type', $(this).val());		
	});

	$select_step.change(function() {
		if (map) {
			map.opt.timeline.update({summertime: 0, timeshift: -999, step: $(this).val(), maptype: $select_map.find(":selected").val()});
			map.update({
				type: $select_map.find(":selected").val(),
				step: $(this).val()
			});
		}
	    history.pushState(null, null, "map.htm?fi="+map.opt.lat+"&la="+map.opt.lng+"&type="+$select_map.find(":selected").val()+"&step="+$(this).val());
		var descr = $('option:selected', $select_map).attr('descr');
		$('.map_descr_full').html(descr.replace('%hours%', $(this).text()));		    
	    __gaTracker('send', 'event', 'map', 'change:step', $(this).val());			
	});

	$('.timeline').on('mouseover', function () {
		$select_map.data('plugin_vDrop').close($select_map);	
	});

	$('.play-button').on('mouseover', function () {
		$select_map.data('plugin_vDrop').close($select_map);	
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