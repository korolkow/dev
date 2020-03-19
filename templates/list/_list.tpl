<?php
class Config {

    static $UrlToList = '/list';

	static $DB_SERVER    = 'localhost';
    static $DB_NAME      = 'cities<%= _domain %>';
    static $DB_USERNAME  = 'alkor';
    static $DB_PASSWORD  = 'wawawalenok';
}

class ProcList {
	public  $sqls = array(
  			'countries' => array(
  				'default' => "SELECT name_en AS id, name_ru AS name FROM countries order by name_ru",
  				'regions' => "SELECT regions.state AS id, regions.`RU` AS name, countries.`name_ru` AS title, countries.`name_en` AS country_name_en, countries.`name_ru` AS country_name FROM regions, countries WHERE countries.cindex = regions.`nCountry` AND countries.`name_en` = '%name' ORDER BY name",
  				'cities' => "SELECT Town.`index` AS id, Town.`name_ru` AS name , countries.`name_ru` AS title, countries.`name_en` AS country_name_en, countries.`name_ru` AS country_name FROM countries, City, Town WHERE countries.cindex = City.`nCountry` AND countries.`name_en` = '%name' AND City.index = Town.`index` ORDER BY name",
		  		'airports' => "SELECT (code+10000)*(-1) AS id, name_ru AS name, name_en AS name_en, country_ru AS country_name,  country_en AS country_name_en FROM avia WHERE country_en = '%name' ORDER BY name" 				
  			),
  			'regions'  => array(
  				'municipal' => "SELECT municipal.nMun AS id, municipal.`RU` AS name, regions.`state` AS region_state,  regions.`RU` AS title, regions.`RU` AS region_name, countries.`name_en` AS country_name_en, countries.`name_ru` AS country_name FROM countries, regions, municipal WHERE regions.`nCountry` = countries.`cIndex` AND  regions.`state` = municipal.`state` AND regions.`state` = '%id' ORDER BY name",
				'citiesByMunicipal' =>"SELECT Town.`index` AS id, Town.`name_ru` AS name, regions.`state` AS region_state,  regions.`RU` AS title, regions.`RU` AS region_name, municipal.`RU` AS municipal_name, countries.`name_en` AS country_name_en, countries.`name_ru` AS country_name, countries.`name_ru` AS country_name FROM countries, regions, municipal, City, Town WHERE regions.`nCountry` = countries.`cIndex` AND regions.`state` = City.`state`  AND regions.`state` = '%id' AND City.`nMun` = municipal.`nMun` AND City.index = Town.`index` ORDER BY name",
  				'cities' => "SELECT Town.`index` AS id, Town.`name_ru` AS name, Town.`name_en` AS name_en, regions.`state` AS region_state,  regions.`RU` AS title, regions.`RU` AS region_name, countries.`name_en` AS country_name_en, countries.`name_ru` AS country_name, countries.`name_ru` AS country_name FROM countries, regions, City, Town WHERE regions.`nCountry` = countries.`cIndex` AND regions.`state` = City.`state`  AND regions.`state` = '%id' AND City.index = Town.`index` ORDER BY name",
			),
  			'municipals' => array(
  				'cities' => "SELECT Town.`index` AS id, Town.`name_ru` AS name, Town.`name_en` AS name_en, municipal.`nMun` AS municipal_id, municipal.`RU` AS title, municipal.`RU` AS municipal_name, regions.`state` AS region_state,  regions.`RU` AS region_name, countries.`name_en` AS country_name_en, countries.`name_ru` AS country_name FROM countries, regions, municipal, City, Town WHERE regions.`nCountry` = countries.`cIndex` AND municipal.`state` = regions.`state` AND City.`nMun` = municipal.`nMun` AND municipal.`nMun` = '%id' AND Town.`index` = City.`index` ORDER BY name"
  			) 			
  		);
	public $pushString = '<label>Извините, по Вашему запросу ничего не найдено</label>';
	public $title = 'Список стран';
	public $citiesLink = '';
	public $breadcrumbs = '';
	function __construct($url = ''){
		$query = parse_url($url, PHP_URL_QUERY);
		$pathTokens = [];
		parse_str(html_entity_decode($query), $pathTokens);
    	if (count($pathTokens) == 0) {
    		$this->pathTokens[0] = 'countries';	
    	}
		foreach($pathTokens as $key => $value) {
			$this->pathTokens[0] = $key;
			$this->pathTokens[1] = explode('/',  $value);
			if (count($this->pathTokens[1])>1) {
				$this->pathTokens[2] = str_replace('-', ' ', $this->pathTokens[1][1]);
			}
			$this->pathTokens[1] = str_replace('-', ' ', $this->pathTokens[1][0]);
			break;
		}
  	}
  	function getList() {
		$style = '';
  		if (count($this->pathTokens)>0 && $this->pathTokens[0] !=='' ) {
  			switch ($this->pathTokens[0]) {
  				case "countries":
  					$this->add(
  						$this->sqls["countries"]["default"],
  						'<a style="'.$style.'" href="'.Config::$UrlToList.'/countries/%href">%name</a>'
  					);
				break;
				case "country":
  					$this->title = "Список областей/районов по стране";
					if (isset($this->pathTokens[2]) && $this->pathTokens[2] == 'airports') {
						$this->title = "Список аэропортов по";
							$this->add(
  								str_replace('%name', $this->pathTokens[1], $this->sqls["countries"]["airports"]),
  								'<a style="'.$style.'" href="/avia/%href.htm">%name</a>'		
  							);	
						return;
					}
					switch ($this->pathTokens[1]) {
						case "Russian Federation":
							$countryName = 'russia';
							break;
						case "United States of America":
							$countryName = 'United States';
							break;
						default:
							$countryName =$this->pathTokens[1];
					}
  					$rowCount = $this->add(
  						str_replace('%name', $countryName, $this->sqls["countries"]["regions"]),
  						'<a style="'.$style.'" href="'.Config::$UrlToList.'/regions/%href">%name</a>'		
  					);
  					if ($rowCount == 0) {
  						$this->title = "Список городов по стране";
						$this->add(
  							str_replace('%name', $countryName, $this->sqls["countries"]["cities"]),
  							'<a style="'.$style.'" href="/weather/%href.htm">%name</a>'
  						);
  					}
  					$this->citiesLink = '<br><a href="'.Config::$UrlToList.'/countries/'.$this->pathTokens[1].'/airports/">Полный список аэропортов по региону</a>';
  				break;
  				case "region":
					if (isset($this->pathTokens[2]) && $this->pathTokens[2] == 'all') {
						$this->title = "Список городов по";
							$this->add(
  								str_replace('%id', $this->pathTokens[1], $this->sqls["regions"]["citiesByMunicipal"]),
  								'<a style="'.$style.'" href="/weather/%href.htm">%name</a><br><span style="color: #3b55c5; opacity: 0.7">%municipal</span>'
  							);	
						return;
					}
  					if (isset($this->pathTokens[1])) {
  						$this->title = "Список районов по";
  						$rowCount = $this->add(
  							str_replace('%id', $this->pathTokens[1], $this->sqls["regions"]["municipal"]),
  							'<a style="'.$style.'" href="'.Config::$UrlToList.'/municipals/%href">%name</a>'		
  						);
						$this->citiesLink = '<br><a href="'.Config::$UrlToList.'/regions/'.$this->pathTokens[1].'/all/">Полный список городов по региону</a>';
  						if ($rowCount == 0) {
							$this->citiesLink = '';
  							$this->title = "Список городов по";
							$this->add(
  								str_replace('%id', $this->pathTokens[1], $this->sqls["regions"]["cities"]),
  								'<a style="'.$style.'" href="/weather/%href.htm">%name</a>'
  							);
  						}
  					}
  				break;	
  				case "municipal":
  					if (isset($this->pathTokens[1])) {
  						$this->title = "Список городов по";
						$this->add(
	  						str_replace('%id', $this->pathTokens[1], $this->sqls["municipals"]["cities"]),
	  						'<a style="'.$style.'" href="/weather/%href.htm">%name</a>'
	  					);
  					}
  				break;
  			}	
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

  	function add($sql, $template) {
		$sth = $this->call($sql);
		$i = 0;
		$bSetTitle = false;
		$fChar = '';
		if ($sth->rowCount()>0) {
			$itemsinCol = ceil($sth->rowCount() / 3);
			$this->pushString = '<td width="222" style="overflow:hidden;"><table width="100%" border=0 cellspacing=0 cellpadding=0>';
			while ($row = $sth->fetch()) {
				if ($i==$itemsinCol){
					$i = 0;
					$this->pushString.= '</table></td><td width="15"></td><td width="222" style="overflow:hidden;"><table width="100%" border=0 cellspacing=0 cellpadding=0>';
				}
				$id = str_replace(' ', '-', str_replace("'", '-', strtolower($row['id'])));
				$row['name'] = ucfirst($row['name']);
				if ($fChar != mb_substr($row['name'], 0, 1, 'utf-8') || $i == 0){
					if ($fChar != '' || $i == 0) $this->pushString.= '</td></tr>';
					$fChar = mb_substr($row['name'], 0, 1, 'utf-8');
					$this->pushString.= '<tr valign="top"><td width="20"><div class="title2" style="margin-bottom: 0">'.strtoupper($fChar).'&nbsp;</div></td><td>';					
				}
				
				$municipal = '';
				if (isset($row['municipal_name'])) $municipal = $row['municipal_name'];
				$this->pushString.= '<div style="width:100%; margin-bottom: 7px; white-space: nowrap;">'.str_replace('%class', $id, str_replace('%municipal', $municipal, str_replace('%name', $row['name'], str_replace('%href', str_replace(" ", "-", strtolower($row['id']).(isset($row['name_en'])?('-'.str_replace(" ", "_", $row['name_en'])):"")), $template)))).'</div>';
				
				if (isset($row['title']) && $bSetTitle == false) {
					 $this->title = $this->title." "."\"".iconv("UTF-8", "windows-1251", $row['title'])."\"";
					 $bSetTitle = true;
				}

				if (isset($this->pathTokens[2]) && $this->pathTokens[2] == 'airports' && $bSetTitle == false) {
					$this->title = $this->title." "."\"".iconv("UTF-8", "windows-1251", $row['country_name'])."\"";
					$bSetTitle = true;
				}

				$this->breadcrumbs = '<a href="/list/countries">Страны</a>';	
				if (isset($row['country_name'])) {
					$country_name_en = str_replace(' ', '-', str_replace("'", '-', strtolower($row['country_name_en'])));
					$this->breadcrumbs.= ' › <a href="/list/countries/'.$country_name_en.'">'.iconv("UTF-8", "windows-1251", $row['country_name']).'</a>';
				}				
				if (isset($row['region_name'])) $this->breadcrumbs.= ' › <a href="/list/regions/'.$row['region_state'].'">'.iconv("UTF-8", "windows-1251", $row['region_name']).'</a>';
				if (isset($row['municipal_name']) && isset($row['municipal_id'])) $this->breadcrumbs.= ' › <a href="/list/municipals/'.$row['municipal_id'].'">'.iconv("UTF-8", "windows-1251", $row['municipal_name']).'</a>';
				if (isset($this->pathTokens[2]) && $this->pathTokens[2] == 'airports') {
					$this->breadcrumbs.= ' › Список аэропортов';
				}				
				
				$i++; 
			}
			$this->pushString.= '</table></td>';
			$this->pushString = preg_replace('#(<label>.*</label>)#s', '', iconv("UTF-8", "windows-1251", $this->pushString));
		}
		else {
			$this->title = 'Ничего не найдено';
		}
		return $sth->rowCount();
  	} 
}
$list = new ProcList($_SERVER['REQUEST_URI']);
$list->getList();
?>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
@@include('../main/<%= tpl_path %>/meta_description.tpl')
@@include('../main/<%= tpl_path %>/meta_keywords.tpl')
<title>МЕТЕОНОВА - поиск погоды. <?php echo $list->title;?></title>
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
						<div style="margin-top: 8px;"><a href="\mgfind.htm">Мегапоиск</a></div>
					</div>
				<div class="title2"><?php echo $list->breadcrumbs;?></div><table width=100% border=0 cellspacing=0 cellpadding=0 style="table-layout: fixed;"><tr valign=top><?php echo $list->pushString;?></td></tr></table>
				<?php echo $list->citiesLink;?> 
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
