<?php
class Config {
    static $UrlToList = '/list';

	static $DB_SERVER    = 'localhost';
    static $DB_NAME      = 'cities';
    static $DB_USERNAME  = 'alkor';
    static $DB_PASSWORD  = 'wawawalenok';
}

class ProcSearch {
	public $translite = array(
		'q'=>'й', 'w'=>'ц', 'e'=>'у', 'r'=>'к', 't'=>'е', 'y'=>'н', 'u'=>'г', 'i'=>'ш', 'o'=>'щ', 'p'=>'з', '['=>'х', ']'=>'ъ',
		'a'=>'ф', 's'=>'ы', 'd'=>'в', 'f'=>'а', 'g'=>'п', 'h'=>'р', 'j'=>'о', 'k'=>'л', 'l'=>'д', ';'=>'ж', '\''=>'э',
		'z'=>'я', 'x'=>'ч', 'c'=>'с', 'v'=>'м', 'b'=>'и', 'n'=>'т', 'm'=>'ь', ','=>'б', '.'=>'ю'				
	);

	public  $sqls = array(
  			'countries' => 	'SELECT name_en AS id, name_ru AS name, name_en AS country_name_en FROM countries WHERE name_en LIKE \'search%\' OR name_ru LIKE \'translite%\' OR name_ru LIKE \'Win1251%\'  ORDER BY name_ru',
  			'regions'  => 	'SELECT regions.state AS id, regions.`RU` AS name, countries.`name_ru` AS country_name, countries.`name_en` AS country_name_en 
  							FROM countries RIGHT JOIN regions ON (countries.`cIndex` = regions.`nCountry`) 
  							WHERE regions.`en` LIKE \'search%\' OR regions.`ru` LIKE \'translite%\' OR regions.`ru` LIKE \'Win1251%\' 
  							ORDER BY regions.`ru`',
  			'municipals' => 'SELECT municipal.nMun AS id, municipal.`RU` AS name, regions.`RU` AS region_name, regions.`state` AS region_id, countries.`name_ru` AS country_name, countries.`name_en` AS country_name_en  
  							FROM regions RIGHT JOIN municipal ON (regions.`state` = `municipal`.`state`) LEFT JOIN countries ON (countries.`cIndex` = regions.`nCountry`) 
  							WHERE municipal.`en` LIKE \'search%\' OR municipal.`ru` LIKE \'translite%\' OR municipal.`ru` LIKE \'Win1251%\'  
  							ORDER BY municipal.`ru`',
  			'cities' => 	'SELECT Town.`index` AS id, Town.`name_ru` AS name, municipal.`RU` AS municipal_name, municipal.nMun AS municipal_id, regions.`RU` AS region_name, regions.`state` AS region_id, countries.`name_ru` AS country_name, countries.`name_en` AS country_name_en  
						 	FROM (((City INNER JOIN Town ON City.index = Town.index) LEFT JOIN countries ON City.nCountry = countries.cIndex) LEFT JOIN regions ON City.state = regions.state) LEFT JOIN municipal ON City.nMun = municipal.nMun
						 	WHERE Town.name_en LIKE \'search%\' OR Town.name_ru LIKE \'translite%\' OR Town.name_ru LIKE \'Win1251%\'
						 	ORDER BY Town.name_ru;',
			'airpots' => 'SELECT (code+10000)*(-1) AS id, name_ru AS name, name_en AS name_en, country_ru AS country_name,  country_en AS country_name_en FROM avia WHERE name_en LIKE \'search%\' OR name_ru LIKE \'translite%\' OR name_ru LIKE \'Win1251%\'  ORDER BY name_ru'
  		);

	public $pushString = '';

	function __construct($url = '') {
		$url = preg_replace('/^.*\/search/', '', $url);
    	$path = urldecode(parse_url($url, PHP_URL_PATH));		
    	$pathTrimmed = trim($path, '/');
    	$pathTokens = explode('/', $pathTrimmed);

    	//if (substr($path, -1) !== '/') {
        	//array_pop($pathTokens);
    	//}

    	$this->pathTokens = $pathTokens;
    	$this->pushString = '<label>Извините, по Вашему запросу ничего не найдено</label>';
		
		array_walk(
			$this->translite,
			function (&$entry, &$key) {
				$entry = iconv('windows-1251', "UTF-8", $entry);
			}
		);
  	}

  	function getResult() {
  		if (count($this->pathTokens)>0 && $this->pathTokens[0] !=='') {
  			$isAdd = $this->add(
  				str_replace('translite', strtr($this->pathTokens[0], $this->translite), str_replace('Win1251', iconv('windows-1251', "UTF-8", $this->pathTokens[0]), str_replace('search', $this->pathTokens[0], $this->sqls["countries"]))),
  				'<a href="'.Config::$UrlToList.'/countries/%href">%name</a>',
  				'Страны'
  			);
			if($isAdd === true) $this->pushString.='<br>';
  			$isAdd = $this->add(
  				str_replace('translite', strtr($this->pathTokens[0], $this->translite), str_replace('Win1251', iconv('windows-1251', "UTF-8", $this->pathTokens[0]), str_replace('search', $this->pathTokens[0], $this->sqls["regions"]))),
  				'<a href="'.Config::$UrlToList.'/regions/%href">%name</a>%country_name',
  				'Области'
  			);
			if($isAdd === true) $this->pushString.='<br>';			
  			$isAdd = $this->add(
  				str_replace('translite', strtr($this->pathTokens[0], $this->translite), str_replace('Win1251', iconv('windows-1251', "UTF-8", $this->pathTokens[0]), str_replace('search', $this->pathTokens[0], $this->sqls["municipals"]))),
  				'<a href="'.Config::$UrlToList.'/municipals/%href">%name</a>%region_name%country_name',
  				'Районы'  			
  			);
			if($isAdd === true) $this->pushString.='<br>';			
  			$isAdd = $this->add(
  				str_replace('translite', strtr($this->pathTokens[0], $this->translite),  str_replace('Win1251', iconv('windows-1251', "UTF-8", $this->pathTokens[0]), str_replace('search', $this->pathTokens[0], $this->sqls["cities"]))),
  				'<a href="/frc/%href.htm">%name</a>%municipal_name%region_name%country_name',
  				'Города'  			
  			);
			if($isAdd === true) $this->pushString.='<br>';			
  			$isAdd = $this->add(
  				str_replace('translite', strtr($this->pathTokens[0], $this->translite),  str_replace('Win1251', iconv('windows-1251', "UTF-8", $this->pathTokens[0]), str_replace('search', $this->pathTokens[0], $this->sqls["airpots"]))),
  				'<a href="/avia/%href.htm">%name</a>%country_name',
  				'Аэропорты'  			
  			);  			  			
  		}
  	}

  	function call($sql) {
  		if (!isset($this->db)) {
			try {
				$this->db = new PDO("mysql:host=".Config::$DB_SERVER.";dbname=".Config::$DB_NAME, Config::$DB_USERNAME, Config::$DB_PASSWORD);
				$this->db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
				$this->db->exec("set names utf8");
			}
			catch(PDOException $e) {
				echo $e->getMessage();
				die();
			}
		}
  		$res = $this->db->query($sql);
  		$this->db = null;
  		return $res;	
  	}

  	function add($sql, $template, $title) {
		$sth = $this->call($sql);		
		if ($sth->rowCount()>0) {
			$this->pushString.='<div class="title2">'.$title.'</div><table border=0 cellspacing=3 cellpadding=3><tr valign="top"><td>';
			$i = 0;
			$rowCount  = $sth->rowCount();
			while ($row = $sth->fetch()) {
				$id = str_replace(' ', '-', str_replace("'", '-', strtolower($row['country_name_en'])));
				$template_ = str_replace("%country_name", ' | <a href="'.Config::$UrlToList.'/countries/'.$row['country_name_en'].'">'.$row['country_name'].'</a>', $template);
				$template_ = $row['region_name'] !== NULL?str_replace("%region_name", ' | <a href="'.Config::$UrlToList.'/regions/'.$row['region_id'].'">'.$row['region_name'].'</a>', $template_ ):str_replace("%region_name", '', $template_ );
				$template_ = $row['municipal_name'] !== NULL?str_replace("%municipal_name", ' | <a href="'.Config::$UrlToList.'/municipals/'.$row['municipal_id'].'">'.$row['municipal_name'].'</a>', $template_):str_replace("%municipal_name", '', $template_);
				try {
					$this->pushString.= '<div '.($i<$rowCount-1?'style="margin-bottom: 7px;"':'').'>'.iconv("UTF-8", "windows-1251", str_replace('%class', $id, str_replace('%name', $row['name'], str_replace('%href', str_replace(" ", "-", strtolower($row['id'])), $template_))).'</div>'); 
				}
				catch (Exception $e) {
				}
				$i++;
			}
			$this->pushString.='</tr></table>';
			$this->pushString = preg_replace('#(<label>.*</label>)#s', '', $this->pushString);
			return true;
		}
		else return false;
  	} 
}

$search = new ProcSearch($_SERVER['REQUEST_URI']);
$search->getResult();
?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<meta name="description" content="Метеонова: поиск погоды. Поиск  по "<?php echo iconv("UTF-8", "windows-1251", $search->pathTokens[0])?>"">
<meta name="keywords" content="погода прогноз голос робот погода России карта магнитные бури две недели Поиск  по "<?php echo iconv("UTF-8", "windows-1251", $search->pathTokens[0])?>"">
<title>МЕТЕОНОВА - поиск погоды. Поиск  по "<?php echo iconv("UTF-8", "windows-1251", $search->pathTokens[0])?>"</title>

<link rel="stylesheet" type="text/css" href="http://dev.meteonova.ru/css/reset-fonts-grids_990.css?d=201801181904">
<link rel="stylesheet" type="text/css" href="http://dev.meteonova.ru/css/block.css?d=201801181904">
<link rel="stylesheet" type="text/css" href="http://dev.meteonova.ru/css/general.css?d=201801181904">
<link rel="stylesheet" type="text/css" href="http://dev.meteonova.ru/css/mosg_990.css?d=201801181904">
<link rel="stylesheet" type="text/css" href="http://dev.meteonova.ru/css/frc.css?d=201801181904">
<link rel="stylesheet" type="text/css" href="http://dev.meteonova.ru/css/agro.css?d=201801181904">
<link rel="stylesheet" type="text/css" href="http://dev.meteonova.ru/css/dropdownlist.css?d=201801181904">
<link rel="stylesheet" type="text/css" href="http://dev.meteonova.ru/css/mgfind.css?d=201801181904">
<link rel="stylesheet" type="text/css" href="http://dev.meteonova.ru/css/ol3.css?d=201801181904">
<link rel="stylesheet" type="text/css" href="http://dev.meteonova.ru/css/map.css?d=201801181904">


<script type="text/javascript" src="http://dev.meteonova.ru/js/dropdownlist.js?d=201801181904" charset = "utf-8"></script>

</head>
<body>
<div align="center"><center>
<script language="javascript" type="text/javascript"></script></center></div>
<div class="suggest" id="suggest"></div> 
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
	 		  	<img src="/images/block_top_left.png"
	 				width="9" height="31" class="corner"
	 				/>
   			</div>
   			<div class="block_title main_container_title_width">
 				  <div class="icon"><img src="/images/icon.png" width="26" height="26"  ></div>
 			 		<div class="title"><b>ПОИСК ПОГОДЫ</b></div>
   			</div>
   			<div class="round_right">
	 				<img src="/images/block_top_right.png"
	 				width="9" height="31" class="corner"
	 				/>
   			</div>
			</div>
			<div class="block_content">
		    	<div class="content">
			   		<div class="title2">Поиск по первым буквам названия страны, города или аэропорта</div>
		        	<div class="serchcontent_searchpage" style="width:100% !important">
		        	  <div class="top_search">
		        		<div id="search_text" class="search_text gray">
				 		<div class="searchform w-300" id="searchform3">
							<div class= "left-input l"> 
							<div class= "right-input r">
								<div class="img gray" id="searchform_img3"></div>							 
								<div class= "fill-input c">  			
					 				<input class="search" type="text" value="поиск" onload="this.value = 'поиск погоды'" onfocus="setSuggest(this, 'searchform3', 'searchform_img3', 'поиск погоды')">
								</div> 			 
							</div>   
							</div> 				
				 		</div>	 							          		
			          		
			          		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="\mgfind.htm">Мегапоиск</a>
			          		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="\list\">Все страны</a>
			       			</div>
			 			</div>
		        	 </div>
					<?php echo $search->pushString?>           		
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
	<div class="yui-b">
  	 <div class="right_main">
							<div class="block_top">
				   			<div class="round_left">
			
					 		  	<img src="/images/block_top_left.png"
					 				width="9" height="31" class="corner"
					 				 />
				   			</div>
				   			<div class="block_title" style="width:222px;">
				 				  <div class="icon"><img src="/images/icon.png" width="26" height="26" alt="Все новости о погоде на Метеонове" ></div>
				 			 		<div class="title"><b>НОВОЕ О ПОГОДЕ</b></div>
				   			</div>
				   			<div class="round_right">
					 				<img src="/images/block_top_right.png"
					 				width="9" height="31" class="corner"
					 				 />
			
				   			</div>
							</div>
							<div class="block_content" style="width:100%;">
								<div class="content">
									<script language="Javascript" src="//www.meteonova.ru/newsheaders/17.js"></script>
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
			<div class="block_content" style="width:240px; height:71px;">
      	<div class="content">
					<div class="contacts">
						<div class="contact"><div class="apun"><img src="/images/apun.png" width="11" height="11" ></div><div class="apun_link"><a href="/about.htm">О проекте</a></div></div>
						<div class="contact"><div class="apun"><img src="/images/apun.png" width="11" height="11" ></div><div class="apun_link"><a href="mailto:korolkow@korolkow.ru">Руководитель</a></div></div>
						<div class="contact_last"><div class="apun"><img src="/images/apun.png" width="11" height="11" ></div><div class="apun_link"><a href="/guestbook.htm">Гостевая книга</a></div></div>
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