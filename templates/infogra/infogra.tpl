<?PHP
header("Cache-Control: no-store, no-cache, must-revalidate, max-age=0");
header("Cache-Control: post-check=0, pre-check=0", false);
header("Pragma: no-cache");
?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<title>МЕТЕОНОВА - Инфографика прогноза осадков</title>
<meta name="description" content="Метеонова Инфографика прогноза осаков">
<meta name="keywords" content="инфографика осадки погода прогноз Москва Санкт-Петербург Новосибирск Казань Самара Челябинск Краснодар Екатеринбург Нижний Новгород Ростов-на_Дону">
<!-- inject:css -->
<!-- endinject -->
<!-- inject:js -->
<!-- endinject -->	
<?PHP 
	$townindex = 27612;
	include("http://gen3.meteonova.ru:8001/cgi-bin/novageo.dll/ipgeo?IP=".getenv('HTTP_X_REAL_IP').'&PHP=1&defindex=<%= defindex %>');
	if($townindex!==0) $index=$townindex;
?>
</head>
<script>
  var townindex = <?php echo($townindex);?>;
 </script>
<body>
<div id="doc4" class="yui-t5">
   <div id="hd">
     <div id="onhd">
       <div id="logo"><a href="//www.meteonova.<%= domain %>"><img src="images/logo.png" width="277" height="96" border="0" ></a></div>
			@@include('../menu/<%= tpl_path %>/index.tpl')
     </div>
   </div>
	<?PHP
	if (file_exists('google_top728x90.php' ))
		require("google_top728x90.php");
?>
<div id="bd" style="float: none;">
	<div id="yui-main">
	<div class="yui-b">

  <div class="main_container" style="width: 100%">
			<div class="block_top">
   			<div class="block_title main_container_title_width" style="width: 977px;">
 				  <div class="icon"><img src="/images/icon.png" width="26" height="26"   ></div>
 			 	<div class="map title"><b>ДИАГРАММА ВЕРОЯТНОСТИ ОСАДКОВ</b></div>
   			</div>
			</div>
			<div class="block_content">
		    	<div class="content">
		    		<div style="width:268px; float: left;">
		    			<div class="title2">Вероятность осадков, %</div>
		    			<div id="chartPrec"></div>
		    			<div class="title2">Вероятность сильных осадков, %</div>
		    			<div id="chartPrecMax"></div>		    			
		    		</div>
					<div class="map-wrapper">
						<div class="title2">Карта суммы атмосферных осадков за 1 час</div>
						<div id="map" class="map"></div> 									
						<div class="legends"><div class="legmini"></div></div>    
						<div id="progress"></div>
					</div>
					<div class="map-wrapper" style="margin-top: 30px; height: 24px">
						<div id="timeline-wrapper">									     
							<div class="timeline"></div>
							<div class="clear"></div>     
						</div>
					</div>
					<div style="clear: both;"></div>
					<div class="map_descr_full" style="margin-top: 15px;">
					 <p><b>Что это такое?</b> Диаграмма вероятности осадков показывает вероятность выпадения осадков в окрестности примерно 50 км от точки, отмеченной на карте, и плюс-минус три часа относительно времени, указанного на таймлайне под картой осадков. Верхняя диаграмма дает информацию о возможности любых осадков, нижняя - вероятность выпадения сильных осадков.</p>
					 <p><b>Для чего это нужно?</b> Не секрет, что выпадение осадков по териитории и по времени обладает большой пестротой. Например, в ясный день неожиданно может подойти облако, из которого выпадет сильный дождь или даже град, сопровождающийся порывистым ветром, температура упадет на 7-10 градусов, а в 10 км от этого места будет продолжать светить солнце. К сожалению, современные глобальные модели погоды не могут всегда точно спрогнозоировать время и место выпадения осадков над заданной точкой, но при этом достаточно хорошо прогнозируют общий характер погоды на окружающей местности. Чтобы понять, возможны ли осадки в заданной точке в примерный временной интервал, а также определить, с какой стороны могут подойти дождевые облака, мы разработали специальную диаграмму вероятности осадков. Зная вероятность осадков в окрестности точки, можно понять, стоит ждать дождя или нет.</p>
					 <p><b>Как пользоваться?</b> Сначала выберите время, для которого хотелось бы оценить вероятность осадков. Для этого щелкните на нужный час в линейке времени под картой. В настоящее время доступен прогноз на ближайшие сутки с шагом 1 час. После этого щелкните на карте в точку, для которой нужно произвести расчет. Если Вы перешли на страницу инфографики с прогноза по городу, этот город автоматически будет отмечен на карте красным маркером. Однако, Вы можете посмотреть данные и для любой другой точки. Карту можно масштабировать, нажимая значки "+" и "-", а также продвигать при помощи мыши.</p>
					 <p><b>Что изображено на диаграмме?</b> На диаграмме изображены вероятности осадков по 8 направлениям света относительно выделенной на карте точки. Чем выше вероятность, тем больше шансов, что около данной точки или в ней будет дождь или снег.</p>
					 <p><b>Нужна консультация?</b> Если Вам нужна помощь, <a href="mailto:korolkow@meteonova.ru">напишите</a> Руководителю проекта или <a href="guestbook.htm" target=_blank>оставьте сообщение</a> в Гостевой книге.</p></div>
			    </div>
			</div>
			<div class="block_bottom">
			</div>
			 <div id="ban_500" style="float: left; width:100%; height:90px; position: relative; text-align: center">
			    <iframe  src="//www.meteonova.ru/google.htm" width="728" height="90" frameborder=0 vspace=0 hspace=0 marginwidth=0 marginheight=0 scrolling=no></iframe>
			</div>
  </div>
</div>
</div>


@@include('../footer/<%= tpl_path %>/index.tpl')

<script type="text/javascript">
  $(document).ready(function() {
	function getParameterByName(name) {
    	name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    	var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
    	return results === null ? null : decodeURIComponent(results[1].replace(/\+/g, " "));
	}
	
	var type = 'FORMULA_PREC1';
	var step = 1;
	var visibleLayer = getParameterByName('vl') || 4;
	var zoom = getParameterByName('zoom') || 6;

	var _lat = parseFloat(getParameterByName('fi')) || (typeof lat != 'undefined'?lat:<%= lat %>),
		_lng = parseFloat(getParameterByName('la')) || (typeof lng != 'undefined'?lng:<%= lng %>),
		map = new Map({
	    predict: 6,
	    step: 1,
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
	    		"infogra.htm?fi="+position[1]+"&la="+position[0]+"&vl="+map.opt.visibleLayer+"&zoom="+map.opt.zoom)
	    	try {
				getPrecipGraph(marker.positions[1], marker.positions[0], makeChart);
	    	}
	    	catch(err) {
	    		getPrecipGraph(map.opt.lat, map.opt.lng, makeChart);
	    	}	    	
	    }      
	});
	map.render();

	map.renderMarker = function() {
		var $marker = $('<div id="'+townindex+'">').addClass('marker');
 		$('#map').append($marker);
 		var marker = new ol.Overlay({element: document.getElementById($marker.attr('id'))});
 		this.setOverlay(marker);
 		marker.setPosition(ol.proj.transform([this.opt.lng, this.opt.lat], 'EPSG:4326', 'EPSG:3857'));
		return marker;
	}
	var marker = map.renderMarker();

	map.map.on('singleclick', function(e) {
		var coordinate = ol.proj.transform([e.coordinate[0], e.coordinate[1]], 'EPSG:3857', 'EPSG:4326');
		marker.setPosition([e.coordinate[0], e.coordinate[1]]);
		marker.positions = coordinate;
	    history.pushState(
	    	null, 
	    	null, 
	    	"infogra.htm?fi="+coordinate[1] || 55.8+"&la="+coordinate[0] || 37.6+"&vl="+map.opt.visibleLayer+"&zoom="+map.opt.zoom)		
		getPrecipGraph(coordinate[1] || 55.8, coordinate[0] || 37.6, makeChart);
	});	

	function getPrecipGraph(lat, lng, cb) {
		$.ajax({ url: '/infogrengine',
	        method: 'GET', 
	        data: {fi: lat, la: lng, predict: map.opt.predict + map.opt.step*map.opt.visibleLayer}, 
	        dataType: 'json',
	        cache: false})
	    .done(
	        function(data) {
	            try {
	            	var wind_dirs = ['Север', 'С-В', 'Восток', 'Ю-В', 'Юг', 'Ю-З', 'Запад', 'С-З'],
	            		parseData = function(_data) {
	            			var arr = [];
			            	$.each(_data, function(index) {
			            		var o = {
			            			"direction": wind_dirs[index],
			            			"value": _data[index]
			            		};
			            		arr.push(o);
			            	});
			            	return arr;	            				
	            		};
	            	var r = data.precprobs.lr;
	            	r.pop();
	            	var maximum = getMaxOfArray(r);	            		
	            	if (cb && typeof cb == 'function') cb('chartPrec', parseData(r), maximum);
	            	r = data.precprobs.hr;
	            	r.pop();
	            	maximum = getMaxOfArray(r);	            		
	            	if (cb && typeof cb == 'function') cb('chartPrecMax', parseData(r), maximum);	            		
	            }
	            catch(err) {
	            	console.log(err);
	            }
	        }
	    );			
	}

	function getMaxOfArray(numArray) {
	  return Math.max.apply(null, numArray);
	}

	var chart;
	function makeChart(intoDiv, dataProvider, maximum) {
		chart = AmCharts.makeChart(intoDiv, {
			"type": "radar",
			"theme": "light",
			"dataProvider": dataProvider,
			"valueAxes": [{
			    "gridType": "circles",
			    "minimum": 0,
			    "maximum": maximum,
			    "autoGridCount": false,
			    "axisAlpha": 0.2,
			    "fillAlpha": 0.05,
			    "fillColor": "#FFFFFF",
			    "gridAlpha": 0.08,
			    "position": "left"
			}],
			"graphs": [{
			    "balloonText": "[[category]]: [[value]] %",
			    "bullet": "round",
			    "fillAlphas": 0.3,
			    "valueField": "value"
			}],
			"categoryField": "direction"
		});		
	}
	getPrecipGraph(_lat, _lng, makeChart);
});  	
</script>
</div>
</div>
</body>
</html>