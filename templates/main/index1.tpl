<?PHP
header("Cache-Control: no-store, no-cache, must-revalidate, max-age=0");
header("Cache-Control: post-check=0, pre-check=0", false);
header("Pragma: no-cache");
header("Expires: Mon, 26 Jul 1997 05:00:00 GMT"); 
header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT"); ?>
<html>
<head>
//=/<%= tpl_path %>/title.tpl')
	@@include('..templates/main/<%= tpl_path %>/title.tpl')')
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
@@include('<%= tpl_path %>/meta_description.tpl')
@@include('<%= tpl_path %>/meta_keywords.tpl')
<link rel="stylesheet" href="/css/meteonova.min.css" type="text/css">
<script> if (screen.width>1024) document.write("<link rel='stylesheet' href='/css/1280.css' type='text/css'>"); </script>
<script type="text/javascript" src="/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="/js/dropdownlist.js"></script>
<script type="text/javascript" src="/js/inc/jsengine.php?tpl=main"></script>
<script type="text/javascript" src="/js/dancer.min.js"></script>
<script type="text/javascript" src="/js/novaspeak.js"></script>
<script type="text/javascript" src="/js/citysearch.js"></script>
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
		include("http://gen3.meteonova.ru:8001/cgi-bin/novageo.dll/ipgeo?IP=".getenv('HTTP_X_REAL_IP').'&PHP=1');
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

  if (state>=1000 && state<1100) document.location="http://www.meteonova.ua"; 
  var bOnLoad=true;

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
</head>
<body>
<div class="hint hidden" id="mghint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">В нашей базе более <b>12000</b> городов по России и миру, но бывает так, что нужно получить погоду по отдаленной точке. <b><a href="mgfind.htm">Мегапоиск</a></b> - позволяет найти на карте любой населенный пункт по его названию и/или координатам и получить погоду в той точке, где это необходимо.</div>
<div class="hint hidden" id="prohint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Более подробные данные о состоянии атмосферы, поверхности и почвы.</div>
<div class="hint hidden" id="agrohint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Подробный прогноз погоды для садоводов и огродников.</div>
<div class="hint hidden" id="autohint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Погода по автодорогам, оценка опасных погодных явлений для водителей.</div>
<div class="hint hidden" id="aviahint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Погода по аэропортам, прогноз задержек вылетов по метеоусловиям.</div>
<div class="hint hidden" id="sphint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Эти ссылки управляют голосовым сопровождением сайта. Ссылка <b>Прослушать прогноз/Остановить прослушивание</b> позволяет приостановить или продолжить прослушивание звукового фрагмента. Ссылка <b>Прослушать с начала</b> выполняет повторное воспроизведение голосового блока.</div>
<div class="hint hidden" id="infhint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Создали свой сайт и хотите повысить его информативность и привлекательность? Установите погодный информер!</div>
<div class="hint hidden" id="medhint" onmouseover="setTimeoutHint(this, true);" onmouseout="setTimeoutHint(this, false);">Медицинский прогноз погоды для метеочувствительных людей.</div>
<div class="suggest" id="suggest"></div> 
<div id="doc4" class="yui-t5">
<?PHP require("topline.php"); ?>
   <div id="hd">
     <div id="onhd">
      <div>
       <div id="logo"><a href="http://www.meteonova.<%= domain %>"><img src="/images/logo.png" width="277" height="96" alt="Смотрите на Метеонове: погода сегодня и точный прогноз погоды на неделю 10 и 14 дней на месяц вперед" ></a></div>
		<?PHP require("menu.php"); ?>
      </div>
     </div>
   </div>
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

			@@include('<%= tpl_path %>/blog.tpl')

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
  	<div class="main_container">
			<div class="block_city" style="height: 47px;">
				<div class="round_left">
					<img src="/images/city_left.png" width="10" height="46" class="corner">
				</div>
				<div class="city_content">
						<div class="serchcontent">
									<div class="searchform frc main" id="searchform">
										<div class="left-input l">
											<div class="right-input r">
												<div class="img" id="searchform_img"></div>							 
												<div class="fill-input c" style="width:98%">  			
													<input class="search grey" type="text" value="поиск погоды" onload="this.value = 'поиск погоды'" onfocus="setSuggest(this, 'searchform', 'searchform_img', 'поиск погоды')">
												</div> 			 
											</div>   
										</div> 				
									</div>
						</div>
				</div>
				<div class="round_right">
					<img src="/images/city_right.png" width="10" height="46" class="corner">
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
<div style=" float:left; width:728px; height:90px; padding-bottom:8px; position: relative;">
    <?php require("ban728x90.php"); ?>
</div>
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
								  '<a href="//www.meteonova.<%= domain %>/frc/'+item.id+'.htm"><b>'+item.name+'</b></a>';
					div.innerHTML = content;
					o.insertBefore(div, o.firstChild);
					//document.getElementById('nearby').innerHTML = '<a href="http://www.meteonova.ru/frc/'+item.id+'.htm">'+item.name + "</a> - ближайшие пункты";
				}
				var tpl = '<div style="width:100%; margin-bottom: %marginbottom%px; white-space: nowrap;"><a href="//www.meteonova.<%= domain %>/frc/%id%.htm">%name%</a></div>';
				var str = '';
				document.getElementById('block_list').setAttribute('class', 'content list');
				var rowCnt = 14;
				j = 0; 
				for (var i = 0; i<items.length; i++) {
					if (j==0) str += '<td valign="top" width="160" style="overflow:hidden;"><table width="100%" cellspacing="0" cellpadding="0"><tr><td>';
					str += tpl.replace('%id%', items[i].id).replace('%name%', (i<5?'<b>'+items[i].name+'</b>':items[i].name)).replace('%marginbottom%', j == rowCnt-1?0:7);
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
				count: 1,
				lat: (typeof lat != 'undefined'?lat:55.8),
				lng: (typeof lng != 'undefined'?lng:37.6),
				zoom: 6,
				target: 'map',
				type: 'mc_TMP_2_m_above_ground',
				summertime: 0,
				progressbar: new Progress(document.getElementById('progress')),
				url: '/mapcache'
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
			<div class="block_content_2" align="center" style="width:100%;">
				<div style="margin-left:10px; margin-right:10px;">
					<?php require("ban_under_map_500-yandex.php"); ?>
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
<?php
	include('http://gen3.meteonova.ru:8002/cgi-bin/novainf.dll?template=ru_novamaininf_ru&lang=ru1251&index='.$index);
?>

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
					<?php require("ban240x400.php"); ?>
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
	 				  <div class="icon"><img src="/images/icon.png" width="26" height="26" alt="Погода от Метеоновы - последние изменения на сайте" ></div>
	 			 		<div class="title"><b>АНОНСЫ</b></div>
	   			</div>
	   			<div class="round_right">
		 				<img src="/images/block_top_right.png"
		 				width="9" height="31" class="corner"
		 				 />

	   			</div>
				</div>
				<div class="block_content" style="width:100%;">
					<div class="content" style="width:210px;">
					 <div class="news_position"><div id="news_text">Новые дизайны погодных информеров. <a href="/informer"><b>Установите погоду</b></a> себе на сайт!</div><div class="news_line"></div></div>
					 <div class="news_position"><div id="news_text">Оцените характер погоды по территории, посмотрев <a href="map.htm" target=_blank><b>погодные карты и анимации</b></a>.</div><div class="news_line"></div></div>
					 <div class="news_position"><div id="news_text">Посетите <a href="//m.meteonova.ru" target=_blank><b>мобильную версию</b></a> Сайта, оптимизированную для смартфонов.</div><div class="news_line"></div></div>
					 <div class="news_position"><div id="news_text">Погодные расширения для панели инструментов <a href="fan.htm"><b>Google Chrome и Opera</b></a>, а также для <a href="fan.htm"><b>расширение для стартового экрана Opera</b></a>.</div>
					</div></div>
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
						<a href="/informer" style="display: block; height: 80px;"></a>
					</div>
					<a style="display: block; width: 200px; height: 90px; position: relative; border: 0; padding: 0; margin: 0; text-decoration: none;" id="meteonova_inf_200_80_auto" href="//www.meteonova.ru"></a>
					<script type="text/javascript">
						var script = document.createElement("script");
						script.src = "/informer/html/js/install.min.js";
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
		      <div align="center"><a href="http://www.meteonova.ru/informer">Установите погоду на сайт</a>&nbsp;<img src="images/hints/help_icon.gif" width="14" height="11" onmouseover="showHint(this, 'infhint', true, 200);" onmouseout="showHint(this, 'infhint', false, 200);"></div>
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
						<div class="contact"><div class="apun"><img src="/images/apun.png" width="11" height="11"></div><div class="apun_link"><a href="<#SERVERURL>/faq.htm">Частые вопросы</a></div></div>
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
<?PHP require("footer.php"); ?>
</div>
</div>
</body>
</html>
