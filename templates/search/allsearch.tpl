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
				'countries' =>'SELECT name_en AS id, name_ru AS name FROM countries where nRegion = 1 OR nRegion = 2 ORDER BY name_ru',
				'cities' => 'SELECT Town.index AS id, Town.name_ru AS name, Town.name_en AS name_en FROM Town, regions WHERE regions.capital_s=Town.index and regions.nCountry=<%= country_id %> ORDER BY Town.name_ru',
				'favorites' =>'SELECT Town.index AS id, Town.name_ru AS name, Town.name_en AS name_en FROM Town where Town.name_ru IN ("Агра", "Аликанте", "Алматы", "Алушта", "Андорра-ла-Велья", "Анкара", "Анталья","Антананариву", "Астана", "Асуан", "Афины",  "Бангкок", "Бари", "Барселона", "Белек", "Берн","Бишкек", "Братислава", "Брюссель", "Будва", "Бухара", "Буэнос-Айрес", "Валлетта", "Варадеро", "Венеция", "Вильнюс", "Генуя", "Гиза", "Гоа", "Денпасар", "Джакарта", "Дубаи", "Душанбе", "Евпатория", "Женева", "Загреб", "Золотые Пески", "Ибица", "Ираклион", "Карловы Вары","Катманду", "Кейптаун", "Киев", "Кушадасы", "Ларнака", "Лимассол", "Лиссабон", "Луксор", "Мадрид", "Майами-Бич", "Мале", "Марианске-Лазне", "Мармарис", "Марса-Матрух", "Миконос", "Минск", "Монреаль", "Неаполь", "Ницца", "Нью-Йорк", "Осло", "Паланга", "Палма-де-Майорка", "Паттайя", "Пиза", "Подгорица", "Прага", "Пхукет", "Рига", "Рим", "Рио-де-Жанейро", "Родос", "Самуи", "Санья (Ясянь)", "Сафага", "Севастополь", "Сеул", "Сингапур", "Солнечный Берег", "Сплит", "Стамбул", "Стокгольм", "Таллин", "Ташкент", "Тбилиси", "Тель-Авив", "Токио", "Тунис", "Феодосия", "Хельсинки", "Хошимин", "Хургада", "Шанхай", "Шарджа", "Шарм-эль-Шейх", "Эдинбург", "Эйлат", "Юрмала") OR Town.index IN (10381, 06240, 72403, 78347, 03969, 16006, 71628, 07149, 54511, 38696, 15614, 16170, 33990) ORDER BY Town.name_ru'
			);
	public $pushString = '';
	public $title = 'Поиск погоды';
  	function getList() {
		$this->add(
	  		$this->sqls['cities'],
	  		'<a href="/weather/%href.htm">%name</a>',
			"Областные, краевые и республикаские центры <%= country_name %>"
	  	);
		$this->pushString.='<br>';
		$this->add(
	  		$this->sqls['countries'],
	  		'<a href="'.Config::$UrlToList.'/countries/%href">%name</a>',
			"Страны СНГ и Прибалтика"			
	  	);
		$this->pushString.='<br>';
		$this->add(
			$this->sqls['favorites'],
	  		'<a href="/weather/%href.htm">%name</a>',
			"Популярные направления"
		);		
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
		try {
			$res = $this->db->query(iconv("windows-1251", "UTF-8", $sql));
		}
		catch(PDOException $e) {
			echo $e->getMessage();
		}		
  		$this->db = null;
  		return $res;	
  	}

  	function add($sql, $template, $title) {
		$sth = $this->call($sql);
		$i = 0;
		$fChar = '';
		if ($sth->rowCount()>0) {
			$itemsinCol = ceil($sth->rowCount() / 3);
			$pushString = '<td width="222" style="overflow:hidden;"><table width="100%" border=0 cellspacing=0 cellpadding=0>';
			while ($row = $sth->fetch()) {
				if ($i==$itemsinCol){
					$i = 0;
					$pushString.= '</table></td><td width="15"></td><td width="222" style="overflow:hidden;"><table width="100%" border=0 cellspacing=0 cellpadding=0>';
				}
				$id = str_replace(' ', '-', str_replace("'", '-', strtolower($row['id'])));
				$row['name'] = ucfirst($row['name']);
				if ($fChar != mb_substr($row['name'], 0, 1, 'utf-8') || $i == 0){
					if ($fChar != '' || $i == 0) $pushString.= '</td></tr>';
					$fChar = mb_substr($row['name'], 0, 1, 'utf-8');
					$pushString.= '<tr valign="top"><td width="20"><div class="title2" style="margin-bottom: 0">'.strtoupper($fChar).'&nbsp;</div></td><td>';					
				}
				
				$pushString.= '<div style="width:100%; margin-bottom: 7px; white-space: nowrap;">'.str_replace('%name', $row['name'], str_replace('%href', str_replace(" ", "-", strtolower($row['id'].(isset($row['name_en'])?('-'.str_replace(" ", "_", $row['name_en'])):""))), $template)).'</div>';
				$i++; 
			}
			$pushString.= '</table></td>';
			$pushString = iconv("UTF-8", "windows-1251", $pushString);
			$this->pushString.= '<div class="title2">'.$title.'</div><table width=100% border=0 cellspacing=0 cellpadding=0 style="table-layout: fixed;"><tr valign=top>'.$pushString.'</td></tr></table>';	
		}
		else {
			$this->title = 'Ничего не найдено';
		}
		return $sth->rowCount();
  	} 
}
$list = new ProcList();
$list->getList();
?>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<meta name="description" content="Метеонова: поиск погоды. Список стран ">
<meta name="keywords" content="погода прогноз голос робот погода <%= country_name %> карта магнитные бури две недели <?php echo $list->title;?>">
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
				 		<div class="searchform w-300" id="searchform3">
							<div class= "left-input l"> 
							<div class= "right-input r">
								<div class="img gray" id="searchform_img3"></div>							 
								<div class= "fill-input c">  			
					 				<input class="search" type="text" value="поиск" onload="this.value = 'поиско погоды'" onfocus="setSuggest(this, 'searchform3', 'searchform_img3', 'поиск погоды')">
								</div> 			 
							</div>   
							</div> 				
				 		</div>	 							          		
			          		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="\mgfind.htm">Мегапоиск</a>
			          		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="\list\">Все страны</a>
			       			</div>
			 			</div>
		        	 </div>
					<?php echo $list->pushString;?>
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
