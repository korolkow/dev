<?PHP
header("Cache-Control: no-store, no-cache, must-revalidate, max-age=0");
header("Cache-Control: post-check=0, pre-check=0", false);
header("Pragma: no-cache");
header("Expires: Mon, 26 Jul 1997 05:00:00 GMT"); 
header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT"); ?>
<html lang="ru">
<head>
@@include('<%= tpl_path %>/title.tpl')
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
@@include('<%= tpl_path %>/meta_description.tpl')
@@include('<%= tpl_path %>/meta_keywords.tpl')
<!-- inject:css -->
<!-- endinject -->
<!-- inject:js -->
<!-- endinject -->
<!--script type="text/javascript" src="/js/inc/jsengine.php?tpl=main"></script-->
<?PHP
	$index='27612';
	$townindex = 27612;
	$state = 50;
	$lat = 55.754;
	$lng = 37.6204;
	$country = 156;
	$municipal = 5069;

	if(isset($_GET['index'])) $index=$_GET['index'];
	else {
		include("http://gen3.meteonova.ru:8001/cgi-bin/novageo.dll/ipgeo?IP=".getenv('HTTP_X_REAL_IP').'&PHP=1&defindex=<%= defindex %>');
		if($townindex!==0) $index=$townindex;
	}
?>
<script>
  var state = <?php echo($state);?>;
  var townindex = <?php echo($townindex);?>;
  var lat = <?php echo($lat);?>;
  var lng = <?php echo($lng);?>;
  var country = <?php echo($country);?>;
  var municipal = <?php echo($municipal);?>;
  var domain = '<%= domain %>';

  if (state>=1000 && state<1100 && domain !== 'ua') document.location="http://www.meteonova.ua";
  var bOnLoad=true;
</script>
</head>
<body>
<div class="hint hidden" id="mghint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">В нашей базе более <b>50000</b> городов мира, но бывает так, что нужно получить погоду по отдаленной точке. <b><a href="mgfind.htm">Мегапоиск</a></b> - позволяет найти на карте любой населенный пункт по его названию и/или координатам и получить погоду в той точке, где это необходимо.</div>
<div class="hint hidden" id="prohint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Более подробные данные о состоянии атмосферы, поверхности и почвы.</div>
<div class="hint hidden" id="agrohint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Подробный прогноз погоды для садоводов и огродников.</div>
<div class="hint hidden" id="autohint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Погода по автодорогам, оценка опасных погодных явлений для водителей.</div>
<div class="hint hidden" id="aviahint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Погода по аэропортам, прогноз задержек вылетов по метеоусловиям.</div>
<div class="hint hidden" id="sphint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Эти ссылки управляют голосовым сопровождением сайта. Ссылка <b>Прослушать прогноз/Остановить прослушивание</b> позволяет приостановить или продолжить прослушивание звукового фрагмента. Ссылка <b>Прослушать с начала</b> выполняет повторное воспроизведение голосового блока.</div>
<div class="hint hidden" id="infhint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Создали свой сайт и хотите повысить его информативность и привлекательность? Установите погодный информер!</div>
<div class="hint hidden" id="medhint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Медицинский прогноз погоды для метеочувствительных людей.</div>
<div class="suggest" id="suggest"></div>
<div id="doc4" class="yui-t5">
   <div id="hd">
     <div id="onhd">
      <div>
       <div id="logo"><a href="http://www.meteonova.<%= domain %>"><img src="/images/logo.png" width="277" height="96" alt="Смотрите на Метеонове: погода сегодня и точный прогноз погоды на неделю 10 и 14 дней на месяц вперед" ></a></div>
			@@include('../menu/<%= tpl_path %>/index.tpl')
      </div>
     </div>
   </div>
<?PHP
	if (file_exists('topline.php' ))
		require("topline.php");
?>
<div>
<div id="bd">
	<div id="yui-main">
	<div class="yui-b">
	  <div class="main_container">
  		<div class="left_container">
			<div class="block_top ie">
   				<div class="round_left">
	 		  	<img src="/images/block_top_left.png"
	 				width="9" height="31" class="corner" >
   				</div>
   				<div class="block_title left_contener_title_width">
 				  <div class="icon"><img src="/images/icon.png" width="26" height="26" alt="Для получения прогноза погоды выберите город в списке или на карте, либо воспользуйтесь поиском погоды" ></div>
 			 		<div class="title"><b>МЕТЕОНОВА</b></div>
   				</div>
   				<div class="round_right">
	 				<img src="/images/block_top_right.png"
	 				width="9" height="31" class="corner"
	 				 />
   				</div>
			</div>
				<div class="block_content ie">
					<div class="jessie-block">
						<div class="container-wrapper">
							<div class="jessie"><div class="player_button"><span></span></div></div>
						</div>
					</div>
				</div>

			<div class="block_bottom ie">
   				<div class="round_left">
	 		  	<img src="/images/block_bt_left.png"
	 				width="9" height="14" class="corner"
	 				 />
   				</div>
   			<div class="block_bt left_contener_title_width"></div>
   				<div class="round_right">
	 				<img src="/images/block_bt_right.png"
	 				width="9" height="14" class="corner"
	 				 />
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
 				  <div class="icon"><img src="/images/icon.png" width="26" height="26"  alt="В этом блоге я буду писать о погоде в вашем городе - выберите город!"></div>
 			 		<div class="title"><b>БЛОГ МЕТЕОНОВЫ</b></div>

   			</div>
   			<div class="round_right">
	 				<img src="/images/block_top_right.png"
	 				width="9" height="31" class="corner"
	 				 />
   			</div>
			</div>
			<div class="block_content" style="height: 160px;">
				<div class="content">
				@@include('<%= tpl_path %>/blog.tpl')
				</div>
			</div>
			<div class="block_bottom"></div>
  		</div>
 	</div>
	<div class="main_container">
		<div class="block_top" style="width: 100%;position: relative; float: left;border-top-left-radius: 4px;border-top-right-radius: 4px; height: 8px; background: #fff;"></div>
		<div class="block_content">
			<div class="content" style="padding-top: 0">
				<input class="search-control typeahead" type="search" placeholder="поиск погоды - введите название населенного пункта" id="search-input">
			</div>
		</div>
		<div class="block_bottom"></div>
	</div>
  	<div class="main_container">
		<div class="block_top" style="float:none">
			<div class="block_title">
				<div class="title"><b>ПОГОДА ПО ГОРОДАМ</b></div>
			</div>
		</div>
			<div class="block_content">
				<div class="content" id="block_list">
					<div class="loader" id="loader"></div>
					<div class="title2" id="nearby">Ближайшие пункты</div>
					<div id="citiesContainer" class="citiesContainer">
						<div id="tlist" class="tlist">
							<div id="townsContainer" class="townsContainerMain"></div>
						</div>
					</div>
			   </div>
			</div>
			<div class="block_bottom"></div>
  </div>
<?php
	if (file_exists('ban728x90.php')) require("ban728x90.php");
?>

  <div class="main_container">
  	<div class="left_container">
		<div class="block_top ie">
   			<div class="round_left">
	 		  	<img src="/images/block_top_left.png"
	 				width="9" height="31" class="corner"
	 				 />
   			</div>

   			<div class="block_title left_contener_title_width">
 				  <div class="icon"><img src="/images/icon.png" width="26" height="26" alt="Прогноз погоды на Метеонове - список популярных городов - погода в России" ></div>
 			 		<div class="title"><b>ПОПУЛЯРНЫЕ</b></div>
   			</div>
   			<div class="round_right">
	 				<img src="/images/block_top_right.png"
	 				width="9" height="31" class="corner"
	 				 />
   			</div>
			</div>
			@@include('<%= tpl_path %>/popular.tpl')
			<div class="block_bottom ie">
   			<div class="round_left">
	 		  	<img src="/images/block_bt_left.png"
	 				width="9" height="14" class="corner"
	 				 />
   			</div>
   			<div class="block_bt left_contener_title_width"></div>
   			<div class="round_right">
	 				<img src="/images/block_bt_right.png"
	 				width="9" height="14" class="corner"
	 				 />
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
<script language="JavaScript">
	(function() {
		try {
			var audio = new mnovaAudio({
				js: 'js/dancer',
				jessie: $('.jessie'),
				player_button: $('.player_button'),
			});
			audio._load('//www.meteonova.ru/sounds/intro');
		}
		catch(err) {}

		var citySearch = new CitySearch({
			callback: function(items) {
				if (items.length>0) {
					var o = document.getElementById('block_list');
					var div = document.createElement('div');
					div.style.marginBottom = "12px";
					var item = items.shift();
					var content = '<a href="/list/countries">Все страны</a> › <a href="/list/countries/'+item.c_name_en.toLowerCase()+'">'+item.c_name+'</a> › '+
								  (typeof item.d_id != 'undefined'?'<a href="/list/regions/'+item.d_id+'">'+item.d_name+'</a> › ':'') +
								  (typeof item.mun_id != 'undefined'&&item.mun_name !=item.name?'<a href="/list/municipals/'+item.mun_id+'">'+item.mun_name+'</a> › ':'')+
								  '<a href="/weather/'+item.id+'-'+item.name_en.replace(' ', '_')+'.htm"><b>'+item.name+'</b></a>';
					div.innerHTML = content;
					o.insertBefore(div, o.firstChild);
					//document.getElementById('nearby').innerHTML = '<a href="http://www.meteonova.ru/frc/'+item.id+'.htm">'+item.name + "</a> - ближайшие пункты";
				}
				var tpl = '<div style="width:100%; margin-bottom: %marginbottom%px; white-space: nowrap;"><a href="/weather/%id%-%name_en%.htm">%name%</a></div>';
				var str = '';
				document.getElementById('block_list').setAttribute('class', 'content list');
				var rowCnt = 14;
				j = 0;
				for (var i = 0; i<items.length; i++) {
					if (j==0) str += '<td valign="top" width="160" style="overflow:hidden;"><table width="100%" cellspacing="0" cellpadding="0"><tr><td>';
					str += tpl.replace('%id%', items[i].id).replace('%name_en%', items[i].name_en.replace(' ', '_')).replace('%name%', (i<5?'<b>'+items[i].name+'</b>':items[i].name)).replace('%marginbottom%', j == rowCnt-1?0:7);
					j++;
					if (j == rowCnt) {str += '</td></tr></table></td>'; j=0; if (j==0 && i!= items.length-1) str += '<td style="width: 15px"></td>';}
				}
				var o = document.getElementById('townsContainer');
				o.innerHTML = '<table width="100%" valign="top" cellspacing="0" cellpadding="0" style="table-layout: fixed;">'+str+'</table>';
			}
		});
		//citySearch.init({lat: lat, lng: lng}, {
		citySearch.init({id: townindex}, {
			doBefore: function(){
			},
			doAfter: function() {
				var el = document.getElementById('loader');
				document.getElementById('block_list').removeChild(el);
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
				document.location = "map.htm?fi="+(coordinate[1] || 55.8)+"&la="+(coordinate[0] || 37.6)+"&type="+$('.tab-link.checked').attr('map');
			});

			var $marker = map.renderMarker();
			$marker.unbind('click').bind('click', function(e) {
				document.location = "map.htm?fi="+map.opt.lat+"&la="+map.opt.lng+"&type="+$('.tab-link.checked').attr('map');
			});

			$('.tab-link').unbind('click').bind('click', function(e) {
				e.preventDefault();
				$('.tab-link').removeClass('checked');
				$(this).addClass('checked');
				if (map) map.update({type: $(this).attr('map')});

			});
		}

		var mapScripts = ['/js/ol3_1.js', '/js/openlayers.js'];
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
			try {
				document.head.appendChild(script);
			}
			catch(err) {
				document.getElementsByTagName('head')[0].appendChild(script);
			}
		}
		loadScript(mapScripts.shift());
	})();
</script>

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
			<div class="block_content_2" style="width:100%;">
				<div style="margin-left:10px; margin-right:10px;">
					<div id="yandex_rtb_R-A-53149-5"></div>
						<script type="text/javascript">
							(function(w, d, n, s, t) {
								w[n] = w[n] || [];
								w[n].push(function() {
									Ya.Context.AdvManager.render({
										blockId: "R-A-53149-5",
										renderTo: "yandex_rtb_R-A-53149-5",
										horizontalAlign: false,
										async: true,
										bg_color: 'FFFFFF',
										charset:'windows-1251',
										format: 'direct',
										font_size: 0.9,
										type: 'flat',
										limit: 6,
										title_font_size: 2,
										title_color: '990000',
										url_color: '0000CC',
										text_color: '000000',
										hover_color: '0066FF',
										favicon: true
									});
								});
								t = d.documentElement.firstChild;
								s = d.createElement("script");
								s.type = "text/javascript";
								s.src = "//an.yandex.ru/system/context.js";
								s.setAttribute("async", "true");
								t.insertBefore(s, t.firstChild);
							})(this, this.document, "yandexContextAsyncCallbacks");
						</script>
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


  	</div>
  </div>
</div>
</div>
	<div class="yui-b">
  	 <div class="right_main">
		 <div id="ajax_current_weather"></div>
		 <div id="current_weather">
			 <div class="block_top current_weather">
				 <div class="block_title">
					 <div class="icon"><img src="/images/icon.png" width="26" height="26" alt="Погода от Метеоновы - рекламные материалы"></div>
					 <div class="title" style="width: 180px;"><b>ПОГОДА</b></div>
				 </div>
			 </div>
			 <div class="block_content" style="height: 339px;">
				 <div class="content weather"></div>
			 </div>
			 <div class="block_bottom"></div>
		 </div>
		<script>
            (function() {
                var request = new XMLHttpRequest();
                request.onreadystatechange = function () {
                    if (this.readyState == 4 && this.status == 200) {
                        document.getElementById("current_weather").setAttribute("style", "display: none");
                        document.getElementById("ajax_current_weather").innerHTML = request.responseText;
                    }
                };
                request.open("GET", "//www.meteonova.ru/maininformer/" + townindex, true);
                request.send();
            })();
		</script>
@@include('<%= tpl_path %>/meteonovabot_tizer.tpl')
@@include('<%= tpl_path %>/meteonovabot_tizer_facebook.tpl')
@@include('<%= tpl_path %>/meteonova_android_tizer.tpl')
				<div class="block_top">
	   			<div class="round_left">

		 		  	<img src="/images/block_top_left.png"
		 				width="9" height="31" class="corner"
		 				 />
	   			</div>
	   			<div class="block_title" style="width:222px;">
	 				  <div class="icon"><img src="/images/icon.png" width="26" height="26" alt="Погода от Метеоновы - рекламные материалы" ></div>
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
						require("ban240x400.php"); ?>
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
 				  <div class="icon"><img src="/images/icon.png" width="26" height="26" alt="Установите прогноз погоды от Метеоновы себе на сайт!" ></div>
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
						<a href="/informer/html.php?type=200_80&index=<?php echo($townindex);?>" style="display: block; height: 80px"></a>
					</div>
					<a style="display: block; width: 200px; position: relative; border: 0; padding: 0; margin: 0; text-decoration: none;" id="meteonova_inf_200_80_auto" href="//www.meteonova.<%= domain %>"></a>
					<script type="text/javascript">
						var script = document.createElement("script");
						script.src = "//www.meteonova.<%= domain %>/informer/html/js/install.min.js";
						script.defer = true;
						script.charset = "UTF-8";
						script.onload = function() {
							new MeteonovaInf({
								type: "200_80",
								scheme: {"border_radius":"4px","box_shadow":"inset #dce0e3 0 0 0 1px","border_color":"#26346e","background_color":"#e5edfb","city_color":"  #333","main_color":"#333","params_color":"#3b55c5"}
							});
						};
						document.getElementsByTagName("head")[0].appendChild(script);
					</script>
		    	</div>
		      <div align="center" style="margin-top: 10px;"><a href="//www.meteonova.<%= domain %>/informer/?index=<?php echo($townindex);?>">Установите погоду на сайт</a>&nbsp;<img src="images/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'infhint', true, 200);" onmouseout="showHint(this, 'infhint', false, 200);"></div>
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
 				  <div class="icon"><img src="/images/icon.png" width="26" height="26" alt="Свяжитесь с разработчиками прогноза погоды на Метеонове" ></div>
 			 		<div class="title"><b>КОНТАКТЫ</b></div>
   			</div>
   			<div class="round_right">

	 				<img src="/images/block_top_right.png"
	 				width="9" height="31" class="corner"
	 				 />
   			</div>
			</div>
			<div class="block_content" style="width:240px;">
      	<div class="content">
					<div class="contacts">
						<div class="contact"><div class="apun"><img src="/images/apun.png" width="11" height="11" alt="Прогноз погоды - информация о проекте" ></div><div class="apun_link"><a href="about.htm">О проекте</a></div></div>
						<div class="contact"><div class="apun"><img src="/images/apun.png" width="11" height="11" alt="Напишите руководителю проекта Погода от Метеоновы" ></div><div class="apun_link"><a href="mailto:korolkow@korolkow.ru">Руководитель</a></div></div>
						<div class="contact"><div class="apun"><img src="/images/apun.png" width="11" height="11"></div><div class="apun_link"><a href="/faq.htm">Частые вопросы</a></div></div>
						<div class="contact_last"><div class="apun"><img src="/images/apun.png" width="11" height="11" alt="Есть вопросы, пожелания, предложения? Оставьте запись в Гостевой книге" ></div><div class="apun_link"><a href="guestbook.htm">Гостевая книга</a></div></div>
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

</div>
<div class="right_block">
	@@include('<%= tpl_path %>/right_block.tpl')
</div>
	@@include('../footer/<%= tpl_path %>/index.tpl')
</div>
</div>
<script type="text/javascript">
    $(function () {
        var f = new Favorities();
		//f.add({"id": "27511", "name": "Истра", "country": { "id": "156", "name": "Россия"}, "type":"t", "favorite": true});
        //f.add({"id": "27612", "name": "Москва", "country": { "id": "156", "name": "Россия"}, "type":"t"});
        $('.search-control.typeahead').searchAutocomplete({
			id: townindex,
			defaultList: f.getItems()
		});
    });
</script>
</body>
</html>