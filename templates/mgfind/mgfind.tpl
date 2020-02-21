<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<title>Метеонова: Мегапоиск по всем городам мира, прогноз погоды по любой точке планеты</title>
<!-- inject:css -->
<!-- endinject -->
<!-- inject:js -->
<!-- endinject -->
</head>
<body>
<div id="doc4" class="yui-t5">
   <div id="hd">
     <div id="onhd">
       <div id="logo"><a href="//www.meteonova.<%= domain %>"><img src="/images/logo.png" width="277" height="96" border="0" alt="МЕТЕОНОВА - прогноз погоды голосом" ></a></div>
@@include('../menu/<%= tpl_path %>/index.tpl')
     </div>
   </div>
<div id="bd" style="float: none;">
	<div id="yui-main">
	<div class="yui-b">
  <div class="main_container">
			<div class="block_top">
   			<div class="round_left">
	 		  	<img src="/images/block_top_left.png"
	 				width="9" height="31" class="corner"
	 				 />
   			</div>
   			<div class="block_title main_container_title_width">
 				  <div class="icon"><img src="/images/icon.png" width="26" height="26"  ></div>
 			 		<div class="title"><b>МЕГАПОИСК ПО ВСЕМ ГОРОДАМ МИРА</b></div>
   			</div>
   			<div class="round_right">
	 				<img src="/images/block_top_right.png"
	 				width="9" height="31" class="corner"
	 				 />
   			</div>
			</div>
			<div class="block_content">
			  <div class="content">
					<div class="title2">Поиск погоды по любой точке планеты</div>
					<div class="search_form">
						<form action="" name="search">
							<input type="search" class="_search" placeholder="Введите полное название населенного пункта">
							<div style="position: absolute; right: 0; top: 0; cursor: pointer">
								<a href="#" class="search-button"><span class="title-button">Найти</span></a>
							</div>
						</form>
						<div class="search-result"></div>
						<a href="#" class="search-button more" style="display: none;"><span class="underline-dotted">Найти ещё</span></a>						
					</div>					
					<div class="title2" id="titleres">Что такое Мегапоиск?</div>
					@@include('../mgfind/<%= tpl_path %>/title.tpl')
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
  <div class="main_container">
			<div class="block_top">
   			<div class="round_left">
	 		  	<img src="/images/block_top_left.png"
	 				width="9" height="31" class="corner"
	 				 />
   			</div>
   			<div class="block_title main_container_title_width">
 				  <div class="icon"><img src="/images/icon.png" width="26" height="26"  ></div>
 			 		<div class="title"><b>МЕГАПОИСК ПО КАРТЕ МИРА</b></div>
   			</div>
   			<div class="round_right">
	 				<img src="/images/block_top_right.png"
	 				width="9" height="31" class="corner"
	 				 />
   			</div>
			</div>
			<div class="block_content">
			  <div class="content">
				   <div class="title2">Увеличьте и прокрутите карту к нужной точке, щелкните в нее для получения прогноза</div>
								<div class="map-wrapper" style="width: 100%">
									<div id="map" class="map"></div>
									<div id="popup" class="ol-popup">
										<a href="#" id="popup-closer" class="ol-popup-closer"></a>
										<div id="popup-content"></div>
									</div>
									<div id="mouse-position"></div>
								</div>
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
	 				  <div class="icon"><img src="/images/icon.png" width="26" height="26"  ></div>
	 			 		<div class="title"><b>РЕКЛАМА</b></div>
	   			</div>
	   			<div class="round_right">
		 				<img src="/images/block_top_right.png"
		 				width="9" height="31" class="corner"
		 				 />
	   			</div>
				</div>


				<div class="block_content">
					<?php if (file_exists("ban240x400.php")) 
						require("ban240x400.php"); 
					?>
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
	 				  <div class="icon"><img src="/images/icon.png" width="26" height="26"  ></div>
	 			 		<div class="title"><b>НОВОСТИ</b></div>
	   			</div>
	   			<div class="round_right">
		 				<img src="/images/block_top_right.png"
		 				width="9" height="31" class="corner"
		 				 />
	   			</div>
				</div>
				<div class="block_content" style="width:100%">
					<div class="content">
						<script language="Javascript" src="//www.meteonova.ru/newsheaders/4.js"></script>
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
	 		  	<img src="/images/block_top_left.png"
	 				width="9" height="31" class="corner"
	 				 />
   			</div>
   			<div class="block_title" style="width:222px;">
 				  <div class="icon"><img src="/images/icon.png" width="26" height="26"  ></div>
 			 		<div class="title"><b>КОНТАКТЫ</b></div>
   			</div>
   			<div class="round_right">
	 				<img src="/images/block_top_right.png"
	 				width="9" height="31" class="corner"
	 				 />
   			</div>
			</div>
			<div class="block_content" style="width:240px">
      	<div class="content">
					<div class="contacts">
						<div class="contact"><div class="apun"><img src="/images/apun.png" width="11" height="11" ></div><div class="apun_link"><a href="about.htm">О проекте</a></div></div>
						<div class="contact"><div class="apun"><img src="/images/apun.png" width="11" height="11" ></div><div class="apun_link"><a href="mailto:korolkow@korolkow.ru">Руководитель</a></div></div>
						<div class="contact"><div class="apun"><img src="/images/apun.png" width="11" height="11" ></div><div class="apun_link"><a href="stat.htm">Статистика</a></div></div>
						<div class="contact"><div class="apun"><img src="/images/apun.png" width="11" height="11" ></div><div class="apun_link"><a href="guestbook.htm">Гостевая книга</a></div></div>
					</div>
      	</div>
			</div>
			<div class="block_bottom">
   			<div class="round_left">
	 		  	<img src="/images/block_bt_left.png"
	 				width="9" height="14" class="corner"
	 				 />
   			</div>
   			<div class="block_bt" style="width:222px;"></div>
   			<div class="round_right">
	 				<img src="/images/block_bt_right.png"
	 				width="9" height="14" class="corner"
	 				 />
   			</div>
			</div>
			</div>
	</div>
@@include('../footer/<%= tpl_path %>/index.tpl')
</div>
</div>
<script type="text/javascript">
	 $(document).ready(function() { 
			$('input').focus().mgSearch({
				resultblock: $('.search-result'),
				f: $('form[name=search]'),
				more_btn: $('.search-button.more'),
				goto: '/frcgeo'
			});

			$('a.search-button').bind('click', function(e){
				e.preventDefault();
				$('form[name=search]').submit();
			});
			
      		var container = document.getElementById('popup');
      		var content = document.getElementById('popup-content');
      		var closer = document.getElementById('popup-closer');
			
			function getParameterByName(name) {
		    	name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
		    	var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
		        results = regex.exec(location.search);
		    	return results === null ? null : decodeURIComponent(results[1].replace(/\+/g, " "));
			}
			
			function setOverlay() {
				var overlay = new ol.Overlay(/** @type {olx.OverlayOptions} */ ({
					element: container,
					autoPan: true,
					autoPanAnimation: {
					  duration: 250
					}
				}));
				return overlay;
			}

			function setMousePosition() {
                return new ol.control.MousePosition({
                    coordinateFormat: ol.coordinate.createStringXY(2),
                    projection: 'EPSG:4326',
                    className: 'custom-mouse-position',
                    target: document.getElementById('mouse-position'),
                    undefinedHTML: '&nbsp;'
                });
            }
			
			function renderMap() {
				var overlay = setOverlay(),
				    map = new Map({
                        lat: parseFloat(getParameterByName('fi')) || (typeof lat != 'undefined'?lat:<%= lat %>),
                        lng: parseFloat(getParameterByName('la')) || (typeof lng != 'undefined'?lng:<%= lng %>),
                        zoom: 8,
                        minZoom: 2,
                        maxZoom: 20,
                        target: 'map',
                        overlays: [overlay],
                        mouseWheelZoom: true,
                        mousePositionControl: setMousePosition()
				    });
				map.render();
				
				map.map.on('singleclick', function(e) {
					container.style.visibility = "visible";
					var coordinate = e.coordinate;
					var new_coordinate = ol.proj.transform(coordinate, 'EPSG:3857', 'EPSG:4326');
					while (new_coordinate[0] > 180)
						new_coordinate[0] = new_coordinate[0] = new_coordinate[0]-360;
					while (new_coordinate[0] < -180) new_coordinate[0] = new_coordinate[0]+360;

					content.innerHTML = 'Загружаю данные...';
					var self = this;
					overlay.setPosition(coordinate);
					$(content).mgSearch({
						resultblock: $('#popup-content'),
						lat: new_coordinate[1] || <%= lat %>,
						lon: new_coordinate[0] || <%= lng %>,
						zoom: 11,
						goto: '/frcgeo'		
					});
				});
				
				closer.onclick = function() {
					overlay.setPosition(undefined);
					closer.blur();
					return false;
				};				
			}
			
			var mapScripts = ['/js/ol3_1.js', '/js/openlayers.js'];
			function loadScript(js) {
				if (typeof js == 'undefined') return; 
				var script = document.createElement('script');
				script.src = js;
				script.async = true;
				script.onload = function() {
					if (mapScripts.length == 0) {
						renderMap();
					}
					loadScript(mapScripts.shift());
				}
				document.head.appendChild(script);
			}
			loadScript(mapScripts.shift());			
	  });
</script>

</body>
</html>