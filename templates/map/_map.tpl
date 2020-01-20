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
       <div id="logo"><a href="//www.meteonova.<%= domain %>"><img src="images/logo.png" width="277" height="96" border="0" ></a></div>
			@@include('../menu/<%= tpl_path %>/index.tpl')
     </div>
   </div>
<div id="bd" style="float: none;">
	<div id="yui-main">
	<div class="yui-b">

  <div class="main_container" style="width: 100%">
			<div class="block_top">
   			<div class="round_left">
	 		  	<img src="/images/block_top_left.png"
	 				width="9" height="31" class="corner"  />
   			</div>
   			<div class="block_title main_container_title_width" style="width: 959px;">
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
		    		<div class="title2">
			    		<select name="grouping">
						<optgroup label="One">
							<option>First</option>
							<option>Group</option>
						</optgroup>
						<optgroup label="Two">
							<option>Second</option>
							<option>List</option>
							<option>With</option>
							<option selected="selected">Selected</option>
						</optgroup>
					</select>		    			
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
				<div class="block_bt main_container_title_width" style="width: 959px;"></div>
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

			
@@include('../footer/<%= tpl_path %>/index.tpl')

<script type="text/javascript">
  $(document).ready(function() {
  	history.
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

	//var $o = $("a.map_tab[data='{\"type\":\""+ type +"\", \"step\": " + step + "}']");
	//if ($o.length == 0) $o = $('a.map_tab[data='+ type +']');
	//$o.addClass('checked');

	/*var _type = type.replace('.', '');
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
	}*/

	$('select').vDrop({allowMultiple: false});	

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
	    		"_map.htm?fi="+position[1]+"&la="+position[0]+"&type="+map.opt.type+"&step="+map.opt.step+"&vl="+map.opt.visibleLayer+"&zoom="+map.opt.zoom);	    	
	    }      
	});
	map.render();
		
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

	    history.pushState(null, null, "_map.htm?fi="+map.opt.lat+"&la="+map.opt.lng+"&type="+_type+"&step="+_step)

	    __gaTracker('send', 'event', 'map', 'change:type', _type);

		/*_type = _type.replace(/[.]/g, '');
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
		}*/

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