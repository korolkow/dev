<html>
<head>
<title>Метеонова - погодный робот: Графические информеры</title>
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
	button {
		width: auto;
	}
	button.up {
		width: auto;
	}	
	.input-group-addon {
		padding: 0;
		width: 24px;
		height: 24px;
		border-radius: 0;
		border: 1px solid #fff;
		display: inline-block;
	}
	.input-group-addon:first-child {
	  	border: 1px solid #fff;
	}
	.colorpicker-element .input-group-addon i {
		width: 22px;
		height: 22px;		
	}
	
	.form-control {
		font-size: 13px;
	}

	input[type="text"] {
		color: #000;
	}		

	input.form-control {
		display:inline-block;
		width: 90px;
		height: 24px;
		border-radius: 0;
		line-height: 0;
	}
    .colorpicker-2x .colorpicker-saturation {
        width: 200px;
        height: 200px;
    }
    .colorpicker-2x .colorpicker-hue {
        width: 30px;
        height: 200px;
    }
	.colorpicker.colorpicker-with-alpha .colorpicker-alpha {
    	display: none;
	}  
    .colorpicker-2x .colorpicker-color,
    .colorpicker-2x .colorpicker-color div {
        display: none;
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
	.input-group {
		position: relative;
	}
	.twitter-typeahead {
		display:block !important;
	}

	span.twitter-typeahead .tt-menu, span.twitter-typeahead .tt-dropdown-menu {
		width: auto;
	}

	a {
		text-decoration: underline;
	}
</style>

<?php
	$index = '27612';
	if(isset($_GET['index'])) {
		$index=$_GET['index'];
	}
	else {
		include("http://gen3.meteonova.ru/cgi-bin/novainf.dll/ipgeo?PHP=1&IP=".getenv('HTTP_X_REAL_IP')."&defindex=27612");
		if($townindex!==0) $index=$townindex;
	}
	
	$type = 'med240_0';
	if(isset($_GET['type'])) {
		$type = $_GET['type'];
	}
	
?>

<script type="text/javascript">
var index = <?php echo $index;?>,
	type = "<?php echo $type;?>",
	cities = [index+''];
</script>

</head>
<body>
<div id="doc4" class="yui-t5">
   <div id="hd">
     <div id="onhd">
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
<div id="bd" style="float: none;">
	<div id="yui-main">
	<div class="yui-b">
  <div class="main_container">
			<div class="block_top">
   			<div class="round_left">
	 		  	<img src="/images/block_top_left.png" width="9" height="31" class="corner">
   			</div>
   			<div class="block_title main_container_title_width">
 				  <div class="icon"><img src="/images/icon.png" width="26" height="26"></div>
 			 		<div class="title"><b>ТЕКСТОВО-ГРАФИЧЕСКИЙ ИНФОРМЕР, ШАГ 2: НАСТРОЙКА ВНЕШНЕГО ВИДА И ПОЛУЧЕНИЕ КОДА</b></div>
   			</div>
   			<div class="round_right">
	 				<img src="/images/block_top_right.png" width="9" height="31" class="corner">
   			</div>
			</div>
			<div class="block_content">
				<div class="content">
				    <div class="title2"><b>Настройка внешнего вида</b></div>
					<div id="resizeble" style="padding: 10px; background: #fff; display: inline-block; box-sizing: border-box;">
							<a id="informer" href="#"></a>
					</div>
					<div id="site_color" class="colorpicker-component" style="margin-top: 20px;">			
						<span class="input-group-addon" style=" border: 1px solid #ccc; margin-right:3px"><i></i></span>
						<input type="text" class="form-control" />
						<span> - цвет фона сайта</span>
					</div>									
					<form name="constructor">			
					<div style="display: table; margin-top: 20px">
						<div style="display: table-cell; vertical-align: top; padding-right: 36px;">									
							<div style="background: #fafafb; border: 1px solid #f0f0f0; border-radius: 4px; padding: 6px;">
								<h2><b>Настройка местоположения</b></h2>
										<div class="container">
											<div class="input-group">
											  <input type="text" name="citySearch" class="form-control citySearch" style="width: 338px; position: relative;" placeholder="Введите название города" autocomplete="off"> 
											</div>
											<div class="input-group citiesList" style="width: 338
											px;  display: none; margin-top: 10px;">
												<ul class="list-group" style="margin: 0; padding: 0">
												</ul>
											</div>
											<div>
												<input type="checkbox" name="is_auto_city" id="is_auto_city">
												<label for="is_auto_city">определять город автоматически</label>
											</div>					
										</div>
							</div>
						</div>							
						<div style="display: table-cell; vertical-align: top; padding-right: 36px;">
							<div style="background: #fafafb; border: 1px solid #f0f0f0; border-radius: 4px; padding: 6px;">
								<h2><b>Настройка рамки и фона</b></h2>
									<div style="margin-top: 10px;">
										<input type="checkbox" name="is_border" id="is_border" value="1" checked>
										<label for="is_border">Рамка</label>
									</div>				
									<div style="margin-top: 10px;">
										<input type="checkbox" name="is_border_radius" id="is_border_radius" value="1" checked>
										<label for="is_border_radius">Скруглённые углы</label>
									</div>
									<div id="border_color" class="colorpicker-component" style="margin-top: 10px;">
										<span class="input-group-addon" style="margin-right:3px"><i></i></span>
										<input type="text" class="form-control" />
										<span> - цвет рамки</span>
									</div>
									<div style="margin-top: 10px;">
										<input type="checkbox" name="is_transparent_background" id="is_transparent_background">
										<label for="is_transparent_background">прозрачный фон</label>
									</div>	
							</div>
						</div>		
					</form>				
					</div>
					<div style="background: #fafafb; border: 1px solid #f0f0f0; border-radius: 4px; padding: 6px; margin-top: 20px;">
						<header><b>Код информера</b></header>
						<pre class="infcode" style="background: #fff; margin-top: 10px;"></pre>
					</div>		
				    <div id="goback" style="margin:20px 0 0 0"><a href="/informer/index.php?index=<?php echo $index;?>">Выбрать другой информер</a></div>
				    <div style="margin:20px 0 0 0"><font size=1>* Вы можете использовать полученный код на любом количестве страниц и любых ресурсах в сети Интернет без каких-либо ограничений. Если планируется использование сервиса в других целях, свяжитесь, пожалуйста, с руководителем проекта</font></div>

     			</div>
			</div>
			<div class="block_bottom">
   			<div class="round_left">
	 		  	<img src="/images/block_bt_left.png" width="9" height="14" class="corner">
   			</div>
   			<div class="block_bt main_container_title_width"></div>
   			<div class="round_right">
	 				<img src="/images/block_bt_right.png" width="9" height="14" class="corner">
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
</body>
</html>