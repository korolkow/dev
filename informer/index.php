<html>
<head>
<title>Метеонова - установи погоду себе на сайт - Погодные информеры</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" type="text/css" href="//code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css">

<link rel="stylesheet" type="text/css" href="http://dev.meteonova.ru/css/block.css?d=201801181904">
<link rel="stylesheet" type="text/css" href="http://dev.meteonova.ru/css/reset-fonts-grids_990.css?d=201801181904">
<link rel="stylesheet" type="text/css" href="http://dev.meteonova.ru/css/general.css?d=201801181904">
<link rel="stylesheet" type="text/css" href="http://dev.meteonova.ru/css/mosg_990.css?d=201801181904">
<link rel="stylesheet" type="text/css" href="http://dev.meteonova.ru/css/bootstrap-select.min.css?d=201801181904">
<link rel="stylesheet" type="text/css" href="http://dev.meteonova.ru/css/typeaheadjs.css?d=201801181904">
<link rel="stylesheet" type="text/css" href="http://dev.meteonova.ru/css/bootstrap-colorpicker.min.css?d=201801181904">
<link rel="stylesheet" type="text/css" href="http://dev.meteonova.ru/css/inf.css?d=201801181904">


<script type="text/javascript" src="http://dev.meteonova.ru/js/jquery-1.11.1.min.js?d=201801181904" charset = "utf-8"></script>
<script type="text/javascript" src="http://dev.meteonova.ru/js/jquery-ui.min.js?d=201801181904" charset = "utf-8"></script>
<script type="text/javascript" src="http://dev.meteonova.ru/js/bootstrap/bootstrap-colorpicker.min.js?d=201801181904" charset = "utf-8"></script>
<script type="text/javascript" src="http://dev.meteonova.ru/js/typeahead.jquery.min.js?d=201801181904" charset = "utf-8"></script>
<script type="text/javascript" src="http://dev.meteonova.ru/js/bootstrap/bootstrap-select.js?d=201801181904" charset = "utf-8"></script>
<script type="text/javascript" src="http://dev.meteonova.ru/js/bootstrap/bootstrap.js?d=201801181904" charset = "utf-8"></script>
<script type="text/javascript" src="http://dev.meteonova.ru/js/constructor.js?d=201801181904" charset = "utf-8"></script>

<script type="text/javascript">
<?php
	$index='27612';
	if(isset($_GET['index'])) $index=$_GET['index'];
	else {
		include("http://gen3.meteonova.ru/cgi-bin/novainf.dll/ipgeo?PHP=1&IP=".getenv('HTTP_X_REAL_IP')."&defindex=27612");
		if($townindex!==0) $index=$townindex;
	}
	$cities = array('27612', '26063', '31960', '29574', '27553', '37099');
	$arr = json_decode(file_get_contents("http://gen3.meteonova.ru/cgi-bin/betasearch.dll?searchby=nearby&id=".$index."&sortby=population"), true);
	if (($arr != null) and (count($arr['items'])>0)) {
		unset($cities);
		$cities = array();
		foreach ($arr['items'] as $value)
			array_push($cities, $value['id']);
	}
	$outputCities = array_slice($cities, 0, 4);	
?>

var path=null;
var type=null;
var index="<?php echo $index;?>";
var cities = ['<?php echo implode('\',\'', $outputCities);?>']; 

function setVarParam(p,t) {
	path=p;
	type=t;
}

function goto(){
	top.location.href="./"+path+"?type="+type+"&index="+index;
}
</script>

<?php include_once('config.php')?>
<style>
	body {
		font: 13px/1.23 arial,helvetica,clean,sans-serif;
		text-align: center;
	}	
	.main_container {
		width:100%;
	}
	.main_container_title_width {
	    width: 959px;
	}		
	#informer {
		width: auto;
		float: none;
		margin: 0;
	}

	label {
		font-weight: normal;
	}
	h1, h2  {
		font-size: 13px;
		margin-top: 6px;
	}
	.container {
		width: 100%;
		padding: 0;
	}
	a {
		text-decoration: underline;
	}
</style>		
</head>
<body>
<div id="doc4" class="yui-t5">
  <div id="hd">
     <div id="onhd">
      <div>
       <div id="logo"><a href="//www.meteonova.ru"><img src="/images/logo.png" width="277" height="96" border="0" alt="МЕТЕОНОВА - прогноз погоды голосом" ></a></div>
				      <div id="mainmenu">
				      	<ul>
				          <li><a href="//www.meteonova.ru" title="Погода на Метеонове: прогноз погоды по городам России и Мира">Главная</a></li>
				          <li class="line"></li>
				          <li><a href="/news/" title="Все последние погодные новости от Центра Фобос">Новости</a></li>
				          <li class="line"></li>
				          <li><a href="/klimat/" title="Климатические обзоры по городам и регионам">Климат</a></li>
				          <li class="line"></li>
				          <li><a href="/map.htm" title="Интерактивные погодные карты">Карты</a></li>
				          <li class="line"></li>
				          <li><a href="/infogra.htm">Инфографика</a></li>
				          <li class="line"></li>	          
				          <li><a href="/search/" title="Поиск погоды по городам и странам">Поиск</a></li>
				          <li class="line"></li>
				          <li><a href="/informer/" title="Установите прогноз погоды себе на сайт">Информер</a></li>
				          <li class="line"></li>
				          <li><a href="/fan.htm" title="Установите прогноз погоды себе на компьютер">Приложения</a>
							<script type="text/javascript">new Image().src = "//counter.yadro.ru/hit?r" + escape(document.referrer) + ((typeof(screen)=="undefined")?"" : ";s"+screen.width+"*"+screen.height+"*" + (screen.colorDepth?screen.colorDepth:screen.pixelDepth)) + ";u"+escape(document.URL) +  ";" +Math.random();</script><img src="//www.meteovesti.ru/cgi-bin/mmcount3.dll?config=nova&fgcolor=000000&bgcolor=000000&fs=13" border="0" width="1" height="1">	          	
				          </li>
				    	</ul>
				      </div>
      </div>
     </div>
	</div>
	<div id="bd" style="float: none;">
	<div id="yui-main">
	<div class="yui-b">

  <div class="main_container">
			<div class="block_top">
   			<div class="round_left">
	 		  	<img src="/images/block_top_left.png" width="9" height="31" class="corner" >
   			</div>
   			<div class="block_title main_container_title_width">
 				  <div class="icon"><img src="/images/icon.png" width="26" height="26" ></div>
 			 		<div class="title"><b>ПОГОДНЫЕ ИНФОРМЕРЫ ШАГ 1: ВЫБОР ДИЗАЙНА</b></div>
   			</div>
   			<div class="round_right">
	 				<img src="/images/block_top_right.png" width="9" height="31" class="corner" >
   			</div>
			</div>

			<div class="block_content">
				<div class="content">
					<div class="title2"><b>Текстово-графические информеры с погодой по одному городу</b></div>
                	<?php
						foreach ($simple_htmlinf as $line) {
							echo('<div style="margin-bottom: 30px;">');
							foreach($line as $inftype => $infSettings) {
								foreach ($infSettings['types'] as $type) {
										echo('<div style="float: left; text-align: center;">');
										echo('<a href="html.php?type='.$type.'" style="width:'.($infSettings['width']+20).'px; margin: 0 auto; padding-right: 30px; display: block;">');
										echo('<div>'.$infSettings['width'].' x '.$infSettings['height'].'</div>');										
										echo('<div style="width: '.$infSettings['width'].'px; height: '.$infSettings['height'].'px; margin: 10px auto"><div id="meteonova_inf_'.$type.'_'.$index.'"></div></div>');
										echo('<div>Получить код</div>');
										echo('</a>');										
										echo('</div>');
								}
							}
							echo('<div style="clear: both"></div>');
							echo('</div>');
						}
					?>
					<div class="title2"><b>Текстово-графические информер с динамической шириной</b></div>
                	<?php
						foreach ($rubber_htmlinf as $line) {
							echo('<div style="margin-bottom: 30px;">');
							foreach($line as $inftype => $infSettings) {
								foreach ($infSettings['types'] as $type) {
										echo('<div style="float: left; text-align: center;">');
										echo('<a href="html.php?type='.$type.'" style="width:'.($infSettings['width']+20).'px; margin: 0 auto; padding-right: 30px; display: block;">');										
										echo('<div style="width: '.$infSettings['width'].'px; height: '.$infSettings['height'].'px; margin: 10px auto"><div id="meteonova_inf_'.$type.'_'.$index.'"></div></div>');
										echo('<div>Получить код</div>');
										echo('</a>');										
										echo('</div>');
								}
							}
							echo('<div style="clear: both"></div>');
							echo('</div>');
						}
					?>					
										<div class="title2"><b>Информеры в шапку сайта с курсами валют</b></div>
					                	<?php
											foreach ($exchange_htmlinf as $line) {
												echo('<div style="margin-bottom: 30px;">');
												foreach($line as $inftype => $infSettings) {
													foreach ($infSettings['types'] as $type) {
															echo('<div style="float: left; text-align: center;">');
															echo('<a href="html.php?type='.$type.'" style="width:'.($infSettings['width']+20).'px; margin: 0 auto; padding-right: 30px; display: block;">');
															echo('<div style="width: '.$infSettings['width'].'px; height: '.$infSettings['height'].'px; margin: 10px auto"><div id="meteonova_inf_'.$type.'_'.$index.'"></div></div>');
															echo('<div>Получить код</div>');
															echo('</a>');
															echo('</div>');
													}
												}
												echo('<div style="clear: both"></div>');
												echo('</div>');
											}
										?>
					<div class="title2"><b>Информеры с погодой по несколькими городам</b></div>
                	<?php
						foreach ($multiple_htmlinf as $line) {
							echo('<div style="margin-bottom: 30px;">');
							foreach($line as $inftype => $infSettings) {
								foreach ($infSettings['types'] as $type) {
										echo('<div style="float: left; text-align: center;">');
										echo('<a href="html.php?type='.$type.'" style="width:'.($infSettings['width']+20).'px; margin: 0 auto; padding-right: 10px; display: block;">');										
										echo('<div style="width: '.$infSettings['width'].'px; height: '.$infSettings['height'].'px; margin: 10px auto"><div id="meteonova_inf_'.$type.'_'.implode('_', $outputCities).'"></div></div>');
										echo('<div>Получить код</div>');
										echo('</a>');										
										echo('</div>');
								}
							}
							echo('<div style="clear: both"></div>');
							echo('</div>');
						}
					?>
					<div class="title2"><b>Специальные информеры</b></div>
                	<?php
						foreach ($special_htmlinf as $line) {
							echo('<div style="margin-bottom: 30px;">');
							foreach($line as $inftype => $infSettings) {
								foreach ($infSettings['types'] as $type) {
										echo('<div style="float: left; text-align: center;">');
										echo('<div>Ширина '.$infSettings['width'].'</div>');	
										echo('<a href="htmlsp.php?type='.$type.'" style="width:'.($infSettings['width']+20).'px; margin: 0 auto; padding-right: 30px; display: block;">');
										echo('<div style="width: '.$infSettings['width'].'px; height: '.$infSettings['height'].'px; margin: 10px auto"><div id="meteonova_inf_'.$type.'_'.$index.'"></div></div>');
										echo('<div>Получить код</div>');
										echo('</a>');			
										echo('</div>');
								}
							}
							echo('<div style="clear: both"></div>');
							echo('</div>');
						}
					?>										
				 	<div class="title2"><b>Графические информеры</b></div>
                	<table border=0>
                	<?php

                	    $i=0;
                	    $content='';
                	    $d=4;

                		foreach($pnginf_main as $inftype=>$infSettings) {

                			if ($i==0) echo '<script type="text/javascript">setVarParam("'.$infSettings['goto'].'","'.$inftype.'");</script>';

                			$param="";

                			if (ceil($i/$d)==$i/$d){
                		    	if ($content!='') $content.='</td></tr></table></tr><tr><td height=20></td></tr>';
                				$content.='<tr><tr><td><table>';
                	        }

                	        $content.='<td align=left valign=top width='.(int)($infSettings['width']+20).'>'.
                	        		  '<table width='.(int)($infSettings['width']+20).' border=0  cellspacing=0 cellpadding=0>';

							foreach ($infSettings['pnginf'] as $value)
								$param.= "_".$value;

			                $content.='<tr><td align=center style="padding:0 20px 20px; 0">';
			                
			                //if ($i==0) $content.='<tr><td align=center><input type=radio name=infchange id='.$i.' checked onchange=setVarParam("'.$infSettings['goto'].'","'.$inftype.'");>';
			                //else  $content.='<tr><td align=center><input type=radio name=infchange id='.$i.' onchange=setVarParam("'.$infSettings['goto'].'","'.$inftype.'");>';

							$content.='<p style="margin:10px 0 0 0"><img src=//www.meteonova.ru/informer/PNG'.$inftype.'_'.$index.$param.'.PNG'.' '.
								      'width='.$infSettings['width'].' height='.$infSettings['height'].'></p>'.
								      '<p style="margin:10px 0 0 0"><a href=\'javascript: setVarParam("'.$infSettings['goto'].'","'.$inftype.'"); goto();\'>Получить код</a></p></td></tr>'.
								      '</table></td>';
							$i++;
                        }

        				echo $content.'</td></tr></table></tr>';
                	?>

                	</table>
     			</div>
			</div>
			<div class="block_bottom">
   			<div class="round_left">
	 		  	<img src="/images/block_bt_left.png" width="9" height="14" class="corner" >
   			</div>
   			<div class="block_bt main_container_title_width"></div>
   			<div class="round_right">
	 				<img src="/images/block_bt_right.png" width="9" height="14" class="corner" >
   			</div>
			</div>
  </div>
</div>
</div>
  <div id="ft" role="contentinfo">
      <div class="copyright"><span>Copyright &copy; 2009-2018, Метеосистемы</span></div>
      <div class="counters">
    <noindex>
        <div class="counter"><a rel="nofollow" href="//www.liveinternet.ru/click" target="_blank"><img src="//counter.yadro.ru/logo?41.11" border="0" width="31" height="31" alt="" title="LiveInternet: показано число просмотров за 24 часа, посетителей за 24 часа и за сегодня"/></a></div>
    </noindex>
      </div>
  </div>


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

<script src="//mc.yandex.ru/metrika/watch.js" type="text/javascript"></script><script type="text/javascript">try { var yaCounter53149 = new Ya.Metrika({id:53149, clickmap:true, accurateTrackBounce:true, webvisor:true,type:1});} catch(e) { }</script><noscript><div><img src="//mc.yandex.ru/watch/53149?cnt-class=1" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
</div>
</div>
<script type="text/javascript">
window.onload = function() {
	<?php
		$c = 'cities: ["'.$index.'"]';
		foreach ($simple_htmlinf as $line)
			foreach($line as $inftype => $infSettings) 
				foreach ($infSettings['types'] as $type) 
					echo('new MeteonovaInf({type: "'.$type.'", '.$c.', href: "html.php?type='.$type.'"});');
		foreach ($rubber_htmlinf as $line)
			foreach($line as $inftype => $infSettings) 
				foreach ($infSettings['types'] as $type) 
					echo('new MeteonovaInf({type: "'.$type.'", '.$c.', href: "html.php?type='.$type.'"});');				
		foreach ($special_htmlinf as $line)
			foreach($line as $inftype => $infSettings) 
				foreach ($infSettings['types'] as $type) 
					echo('new MeteonovaInf({type: "'.$type.'", '.$c.', href: "htmlsp.php?type='.$type.'"});');				
		foreach ($exchange_htmlinf as $line)
			foreach($line as $inftype => $infSettings) 
				foreach ($infSettings['types'] as $type) 
					echo('new MeteonovaInf({type: "'.$type.'", '.$c.', href: "html.php?type='.$type.'"});');
		foreach ($multiple_htmlinf as $line)
			foreach($line as $inftype => $infSettings) 
				foreach ($infSettings['types'] as $type) {
					$c = 'cities: [\''.implode('\',\'', $outputCities).'\']';
					echo('new MeteonovaInf({type: "'.$type.'", '.$c.', href: "html.php?type='.$type.'"});');
				}
	?>
}
</script>
</body>
</html>