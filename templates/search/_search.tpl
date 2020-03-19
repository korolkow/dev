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
'cities' => 	'SELECT Town.`index` AS id, Town.`name_ru` AS name, Town.`name_en` AS name_en, municipal.`RU` AS municipal_name, municipal.nMun AS municipal_id, regions.`RU` AS region_name, regions.`state` AS region_id, countries.`name_ru` AS country_name, countries.`name_en` AS country_name_en
FROM (((City INNER JOIN Town ON City.index = Town.index) LEFT JOIN countries ON City.nCountry = countries.cIndex) LEFT JOIN regions ON City.state = regions.state) LEFT JOIN municipal ON City.nMun = municipal.nMun
WHERE Town.name_en LIKE \'search%\' OR Town.name_ru LIKE \'translite%\' OR Town.name_ru LIKE \'Win1251%\'
ORDER BY Town.name_ru;',
'airpots' => 'SELECT (code+10000)*(-1) AS id, name_ru AS name, name_en AS name_en, country_ru AS country_name,  country_en AS country_name_en FROM avia WHERE name_en LIKE \'search%\' OR name_ru LIKE \'translite%\' OR name_ru LIKE \'Win1251%\'  ORDER BY name_ru'
);

public $pushString = '';

public $queryString = '';

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

/*array_walk(
$this->translite,
function (&$entry, &$key) {
$entry = iconv('windows-1251', "utf-8", $entry);
}
);*/
$this->queryString = iconv("windows-1251", "utf-8", $this->pathTokens[0]);
}

function getResult() {
if (count($this->pathTokens)>0 && $this->queryString !=='') {
$isAdd = $this->add(
str_replace('translite', strtr($this->queryString, $this->translite), str_replace('Win1251', $this->queryString, str_replace('search', $this->queryString, $this->sqls["countries"]))),
'<a href="'.Config::$UrlToList.'/countries/%href">%name</a>',
'Страны'
);
if($isAdd === true) $this->pushString.='<br>';
$isAdd = $this->add(
str_replace('translite', strtr($this->queryString, $this->translite), str_replace('Win1251', $this->queryString, str_replace('search', $this->queryString, $this->sqls["regions"]))),
'<a href="'.Config::$UrlToList.'/regions/%href">%name</a>%country_name',
'Области'
);
if($isAdd === true) $this->pushString.='<br>';
$isAdd = $this->add(
str_replace('translite', strtr($this->queryString, $this->translite), str_replace('Win1251', $this->queryString, str_replace('search', $this->queryString, $this->sqls["municipals"]))),
'<a href="'.Config::$UrlToList.'/municipals/%href">%name</a>%region_name%country_name',
'Районы'
);
if($isAdd === true) $this->pushString.='<br>';
$isAdd = $this->add(
str_replace('translite', strtr($this->queryString, $this->translite),  str_replace('Win1251', $this->queryString, str_replace('search', $this->queryString, $this->sqls["cities"]))),
'<a href="/weather/%href.htm">%name</a>%municipal_name%region_name%country_name',
'Города'
);
if($isAdd === true) $this->pushString.='<br>';
$isAdd = $this->add(
str_replace('translite', strtr($this->queryString, $this->translite),  str_replace('Win1251', $this->queryString, str_replace('search', $this->queryString, $this->sqls["airpots"]))),
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
			if ($title === "Города")
			$this->pushString.= '<div '.($i<$rowCount-1?'style="margin-bottom: 7px;"':'').'>'.str_replace('%class', $id, str_replace('%name', $row['name'], str_replace('%href', str_replace(" ", "-", strtolower($row['id'].(isset($row['name_en'])?('-'.str_replace(" ", "_", $row['name_en'])):""))), $template_))).'</div>';
			elseif ($title === "Аэропорты")
			$this->pushString.= '<div '.($i<$rowCount-1?'style="margin-bottom: 7px;"':'').'>'.str_replace('%class', $id, str_replace('%name', $row['name'], str_replace('%href', str_replace(" ", "-", strtolower($row['id'])), $template_))).'</div>';
			else {
			$this->pushString.= '<div '.($i<$rowCount-1?'style="margin-bottom: 7px;"':'').'>'.str_replace('%class', $id, str_replace('%name', $row['name'], str_replace('%href', str_replace(" ", "-", strtolower($row['id'])), $template_))).'</div>';
			}
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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="Метеонова: поиск погоды. Поиск  по "<?php echo $search->queryString?>"">
<meta name="keywords" content="погода прогноз голос робот погода <%= country_name %> карта магнитные бури две недели Поиск  по "<?php echo $search->queryString?>"">
<title>МЕТЕОНОВА - поиск погоды. Поиск  по "<?php echo $search->queryString?>"</title>
<!-- inject:css -->
<!-- endinject -->
<!-- inject:js -->
<!-- endinject -->
</head>
<body>
<div align="center"><center>
<script language="javascript" type="text/javascript"><!--
(function(L){if(typeof(ar_cn)=="undefined")ar_cn=1;
var S='setTimeout(function(e){if(!self.CgiHref){document.close();e=parent.document.getElementById("ar_container_"+ar_bnum);e.parentNode.removeChild(e);}},3000);',
  j=' type="text/javascript"',t=0,D=document,n=ar_cn;L+=escape(D.referrer||'unknown')+'&rnd='+Math.round(Math.random()*999999999);
function _(){if(t++<100){var F=D.getElementById('ar_container_'+n);
  if(F){try{var d=F.contentDocument||(window.ActiveXObject&&window.frames['ar_container_'+n].document);
  if(d){d.write('<sc'+'ript'+j+'>var ar_bnum='+n+';'+S+'<\/sc'+'ript><sc'+'ript'+j+' src="'+L+'"><\/sc'+'ript>');t=0}
  else setTimeout(_,100);}catch(e){try{F.src="javascript:{document.write('<sc'+'ript"+j+">var ar_bnum="+n+"; document.domain=\""
  +D.domain+"\";"+S+"<\/sc'+'ript>');document.write('<sc'+'ript"+j+" src=\""+L+"\"><\/sc'+'ript>');}";return}catch(E){}}}else setTimeout(_,100);}}
D.write('<div style="visibility:hidden;height:0px;left:-1000px;position:absolute;"><iframe id="ar_container_'+ar_cn
  +'" width=1 height=1 marginwidth=0 marginheight=0 scrolling=no frameborder=0><\/iframe><\/div><div id="ad_ph_'+ar_cn
  +'" style="display:none;"><\/div>');_();ar_cn++;
})('http://ad.adriver.ru/cgi-bin/erle.cgi?sid=173262&target=blank&bt=43&tail256=');
//--></script></center></div>
<div class="suggest" id="suggest"></div> 
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
								<div class="searchform" id="searchform3">
									<div class= "left-input l">
										<div class= "right-input r">
											<div class="img gray" id="searchform_img3"></div>
											<div class= "fill-input c">
												<input class="search" type="text" placeholder="поиск погоды - введите название населенного пункта" onload="this.value = 'поиск погоды - введите название населенного пункта'" onfocus="setSuggest(this, 'searchform3', 'searchform_img3', 'поиск погоды - введите название населенного пункта')">
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div style="margin-top: 8px;"><a href="\mgfind.htm">Мегапоиск</a>&nbsp;&nbsp;&nbsp;<a href="\list\">Все страны</a></div>
					</div>
					<?php echo $search->pushString;?>
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
			@@include('../main/<%= tpl_path %>/right_block.tpl')
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
	@@include('../footer/<%= tpl_path %>/index.tpl')
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