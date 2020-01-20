<?php
class Config {

	static $DB_SERVER    = 'localhost';
    static $DB_NAME      = 'telegram';
    static $DB_USERNAME  = 'alkor';
    static $DB_PASSWORD  = 'wawawalenok';
}

$query = "SELECT SUM(CASE WHEN (telegram.clients.rating > 0) then 1 else 0 end) as sum_rating, AVG(CASE WHEN (telegram.clients.rating > 0) THEN telegram.clients.rating END) as avg_rating FROM telegram.clients WHERE telegram.clients.messenger = 'telegram' AND telegram.clients.service_name <> 'meteovesti'";
$res = call($query)->fetch(PDO::FETCH_ASSOC);
$rating = isset($res['avg_rating'])?$res['avg_rating']:5;
$sum_rating = isset($res['sum_rating'])?$res['sum_rating']:0;


$query = "SELECT telegram.clients.chat_id, telegram.clients.rating, telegram.feedback.user, telegram.feedback.datetime, telegram.feedback.review FROM telegram.clients, telegram.feedback WHERE telegram.clients.chat_id = telegram.feedback.chat_id AND telegram.clients.messenger = 'telegram' AND telegram.clients.service_name <> 'meteovesti' ORDER BY telegram.feedback.datetime desc";
$res = call($query);
$reviews = [];
$reviewsOnPage = 10;
while ($item= $res->fetch(PDO::FETCH_ASSOC)) {
	$reviews[] = $item;
}
$reviews = array_chunk($reviews, $reviewsOnPage);

$query = "SELECT COUNT(*) as count  FROM telegram.clients WHERE telegram.clients.messenger = 'telegram' AND telegram.clients.service_name <> 'meteovesti'";
$count = call($query)->fetch(PDO::FETCH_ASSOC);

function call($sql) {
	if (!isset($db)) {
		try {
			$db = new PDO("mysql:host=".Config::$DB_SERVER.";dbname=".Config::$DB_NAME, Config::$DB_USERNAME, Config::$DB_PASSWORD);
			$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			$db->exec("set names utf8");
		}
		catch(PDOException $e) {
			$db = NULL;
			return NULL;
		}
	}
	try {
	  	$res = $db->query($sql);
	}
	catch(PDOException $e) {
		$res = NULL;
	}
	$db = NULL;
	return $res;	
}

?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<title>МЕТЕОНОВА: Telegram-бот @meteonovabot</title>
<!-- inject:css -->
<!-- endinject -->
<!-- inject:js -->
<!-- endinject -->
</head>
<body>
<div id="doc4" class="yui-t5">
   <div id="hd">
     <div id="onhd">
       <div id="logo"><a href="//www.meteonova.<%= domain %>"><img src="/images/logo.png" width="277" height="96" border="0" ></a></div>
@@include('../menu/<%= tpl_path %>/index.tpl')
     </div>
   </div>
<div id="bd" style="float: none;">
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
 				  <div class="icon"><img src="/images/icon.png" width="26" height="26"  ></div>
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
							<div class="jessie" style="border-radius: 96px;"></div>																
						</div>
					</div>
					<div style="margin:10px 0; text-align: center; color: #acacac">@meteonovabot</div>     							
     				<div style=" text-align: center"><a href="http://telegram.me/meteonovabot" target="_blank" class="but addto border">Добавить в</a></div>	
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
			<div class="block_top ie">
   			<div class="round_left">
	 		  	<img src="/images/block_top_left.png"
	 				width="9" height="31" class="corner" >
   			</div>
   			<div class="block_title left_contener_title_width">
 				  <div class="icon"><img src="/images/icon.png" width="26" height="26" ></div>
 			 		<div class="title"><b>ИНФОРМАЦИЯ</b></div>
   			</div>
   			<div class="round_right">
	 				<img src="/images/block_top_right.png"
	 				width="9" height="31" class="corner" >
   			</div>
			</div>

			<div class="block_content ie">
				<div class="content">
				<div class="text"><?php echo($count['count']);?> пользователей</div>									
				<div class="title2" style="margin: 10px 0">Рейтинг</div>
     			<div class="text">
     							<div style="text-align: center; display: inline-block;">
					     			<div class="stars stars-example-css"> 
						                <select id="example-css" name="rating" autocomplete="off">
						                  <option value="1">1</option>
						                  <option value="2">2</option>
						                  <option value="3">3</option>
						                  <option value="4">4</option>
						                  <option value="5">5</option>
						                </select>
					              	</div>
					            </div>
					            <div style="text-align: center; display: inline-block; color: #acacac; position: relative; font-size: 14px; top: -14px;">
					             	(<?php echo($sum_rating);?>)
					             </div>
				<div class="title2" style="margin-bottom: 10px">Язык</div>
				<div class="text">Русский, English</div>				
				<div class="title2" style="margin: 10px 0">Опубликовано</div>				 									             
				<div class="text">1 ноября, 2017</div>     				
     			</div>
     		</div>
			</div>

			<div class="block_bottom ie">
   			<div class="round_left">
	 		  	<img src="/images/block_bt_left.png"
	 				width="9" height="14" class="corner"  >
   			</div>
   			<div class="block_bt left_contener_title_width"></div>
   			<div class="round_right">
	 				<img src="/images/block_bt_right.png"
	 				width="9" height="14" class="corner" >
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
 				  <div class="icon"><img src="/images/icon.png" width="26" height="26"  ></div>
 			 		<div class="title"><b>@METEONOVABOT</b></div>

   			</div>
   			<div class="round_right">
	 				<img src="/images/block_top_right.png"
	 				width="9" height="31" class="corner"
	 				 />
   			</div>
			</div>

			<div class="block_content">
	 		 	<div class="content">
     				<div id="blog_text" class="text" style="height: auto; overflow-y: auto;">
     				Telegtam bot <a href="https://telegram.me/meteonovabot" target="_blank">@meteonovabot</a> - это удобный сервис получения прогноза погоды с помощью бесплатного кроссплатформенного мессенджера <a href="https://telegram.org" target="_blank">Telegram</a>
     				<br>Приложение показывает погоду сейчас и прогноз на 3 дня по любому из 45 тысяч городов мира из базы Метеоновы.
     				</div>
				</div>
				<div class="content">				
					<div class="owl-carousel owl-theme">
						<div class="item"><img src="/images/fan/telegram/1.jpg" width="280" height="498"></div>
						<div class="item"><img src="/images/fan/telegram/2.jpg" width="280" height="498"></div>
						<div class="item"><img src="/images/fan/telegram/3.jpg" width="280" height="498"></div>
						<div class="item"><img src="/images/fan/telegram/5.jpg" width="280" height="498"></div>
						<div class="item"><img src="/images/fan/telegram/4.jpg" width="280" height="498"></div>						
						<div class="item"><img src="/images/fan/telegram/6.jpg" width="280" height="498"></div>						
					</div>
					<div class="description" style="height: 108px;">После запуска вы можете переключить  язык или сразу отправить боту запрос, введя название города в поле «Сообщение».  Можно ввести не все название города целиком, а первые несколько букв (не менее трех). В ответ вы получите список найденных городов в виде кнопок. Нажав на кнопку с нужным городом, Вы получите текущую погоду по нему. Также можно получить почасовой прогноз на ближайшие сутки или краткий прогноз погоды на три дня вперед.
					</div>
					<div style=" text-align: center; margin-top: 10px;"><a href="http://telegram.me/meteonovabot" target="_blank" class="but addto border">Добавить в</a></div>					
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
 		<div class="main_container">
  		<div class="center_container">
			<div class="block_top">
   			<div class="round_left">
	 		  	<img src="/images/block_top_left.png"
	 				width="9" height="31" class="corner" >
   			</div>
   			<div class="block_title center_container_title_width">
 				  <div class="icon"><img src="/images/icon.png" width="26" height="26"  ></div>
 			 		<div class="title"><b>ОТЗЫВЫ (<?php echo($res->rowCount());?>)</b></div>
   			</div>
   			<div class="round_right">
	 				<img src="/images/block_top_right.png"
	 				width="9" height="31" class="corner" >
   			</div>
			</div>

			<div class="block_content">
				<div class="content">
     			<div class="text">
     				<div class="reviews"></div>
     				<div style="margin:10px 0 0 0" id="compact-pagination"></div>     				
     			</div>
     		</div>
			</div>

			<div class="block_bottom">
   			<div class="round_left">
	 		  	<img src="/images/block_bt_left.png"
	 				width="9" height="14" class="corner" >
   			</div>
   			<div class="block_bt center_container_title_width"></div>
   			<div class="round_right">
	 				<img src="/images/block_bt_right.png"
	 				width="9" height="14" class="corner" >
   			</div>
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
			   	  	<?php if (file_exists("../ban240x400.php")) 
						require("../ban240x400.php");
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
	 			 		<div class="title"><b>КОНТАКТЫ</b></div>
	   			</div>
	   			<div class="round_right">
		 				<img src="/images/block_top_right.png"
		 				width="9" height="31" class="corner"
		 				 />
	   			</div>
				</div>
				<div class="block_content" style="width:100%;">
					<div class="content" style="width:210px;">
						<p class="title2">Руководитель проекта</p>
						<p style="padding-bottom:10px;"><a href="mailto:korolkow@meteonova.ru" target="_blank">Корольков Александр Михайлович</a></p>
						<p style="padding-bottom:14px;">(925) 184-08-55</p>
					</div>
					<div class="news_line"></div>
					<div class="content"><a href="/guestbook.htm">Гостевая книга</a></div>

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
			</div>
	</div>
@@include('../footer/<%= tpl_path %>/index.tpl')
</div>
</div>
</body>
<script language="JavaScript">
$(document).ready(function() {
	$(".owl-carousel").owlCarousel({
		autoWidth: true,
		onChanged: callback,
    	center: true,
    	items: 1,
    	margin: 16		
	});

	function callback(event) {
		var discript = {
			"0": "После запуска вы можете переключить  язык или сразу отправить боту запрос, введя название города в поле «Сообщение».  Можно ввести не все название города целиком, а первые несколько букв (не менее трех). В ответ вы получите список найденных городов в виде кнопок. Нажав на кнопку с нужным городом, Вы получите текущую погоду по нему. Также можно получить почасовой прогноз на ближайшие сутки или краткий прогноз погоды на три дня вперед.",
			"1": "После запуска вы можете переключить  язык или сразу отправить боту запрос, введя название города в поле «Сообщение».  Можно ввести не все название города целиком, а первые несколько букв (не менее трех). В ответ вы получите список найденных городов в виде кнопок. Нажав на кнопку с нужным городом, Вы получите текущую погоду по нему. Также можно получить почасовой прогноз на ближайшие сутки или краткий прогноз погоды на три дня вперед.",
			"2": "Робот запоминает все города, по которым Вы запрашивали погоду, и хранит их в списке, который можно вывести, нажав на кнопку «Список городов». Находясь в списке, вы можете получить прогноз погоды по любому городу, настроить уведомления или удалить его из списка.",
			"3": "Для настройки уведомлений по нужному городу нажмите кнопку с облачком справа от названия в списке и затем выберите часы, когда хотели бы получать уведомления. Теперь каждый день в указанные часы Вы будете получать уведомления о погоде в выбранном городе. Городов в подписке может быть несколько.",
			"4": "Вы также можете изменить единицы измерения и язык интерфейса, нажав кнопку «Настройка»",
			"5": "Мы будем рады получить от Вас оценку и отзыв о нашем погодном боте. Кнопка обратной связи находится в Настройках."
		},
		item = event.item.index;
		$('.description').html(discript[item]);
		console.log(item);	
	}

    $('#example-css').barrating({
        theme: 'css-stars',
        showSelectedRating: false,
        initialRating: <?php echo(intval($rating));?>,
        readonly: true
    });
	$('#compact-pagination').pagination({
	    items: <?php echo($res->rowCount());?>,
	    itemsOnPage: <?php echo($reviewsOnPage);?>,
	    cssStyle: 'compact-theme',
	    onInit: function() {
			var reviews = <?php echo(json_encode($reviews))?>;
			renderReviews(reviews[0]);

	    },
	    onPageClick: function(pageNumber, event) {
	    	var reviews = <?php echo(json_encode($reviews))?>;
	    	renderReviews(reviews[pageNumber-1]);
	    }
	});


	function renderReviews(reviews) {
		var content = '';
		var months = ['янв', 'фев', 'март', 'апр', 'мая', 'июн', 'июл', 'авг', 'сент', 'окт', 'ноя', 'дек'];
		$.each(reviews, function(index) {
			var item = this;
			var d = sqlToJsDate(item['datetime']);
			content+='<div style="font-size: 14px; font-weight: bold; color: #000;">'+(item['user'] == ''?'Аноним':item['user'])+'<span style="font-size: 13px; font-weight: normal; color: #8f989c; padding-left: 8px">'+d.getDate()+' '+months[d.getMonth()]+' '+d.getFullYear()+'</span>'; 
			if (item['rating']>0) {
				content+='<div class="stars stars-example-css review" style="display: inline-block; position: relative; top: 13px; left: 8px;">';
				content+='<select id="stars'+item['chat_id']+index+'" name="rating" autocomplete="off">';
				content+='<option value="1">1</option>';
				content+='<option value="2">2</option>';
				content+='<option value="3">3</option>';
				content+='<option value="4">4</option>';
				content+='<option value="5">5</option>';
				content+='</select>';
				content+='</div>';
			}
			content+='</div>';
			content+='<div style="margin: 10px 0; color: #000;">'+item['review']+'</div>';
			if (typeof reviews[index+1] != 'undefined') content+='<div style="margin: 15px 0 5зч  0; width: 100%; height: 1px; background-color: #ecebf7"></div>';
			else content+='<div style="margin-top: 25px;"></div>';
		});
		$('.reviews').html(content);
		$.each(reviews, function(index) {
			var item = this;
			if (item['rating']>0)
			   	$('#stars'+item['chat_id']+index).barrating({
			        theme: 'css-stars',
			        showSelectedRating: false,
			        initialRating: item['rating'],
			        readonly: true
			    });			
		});
	}

	function sqlToJsDate(sqlDate) {
	    //sqlDate in SQL DATETIME format ("yyyy-mm-dd hh:mm:ss.ms")
	    var sqlDateArr1 = sqlDate.split("-");
	    //format of sqlDateArr1[] = ['yyyy','mm','dd hh:mm:ms']
	    var sYear = sqlDateArr1[0];
	    var sMonth = (Number(sqlDateArr1[1]) - 1).toString();
	    var sqlDateArr2 = sqlDateArr1[2].split(" ");
	    //format of sqlDateArr2[] = ['dd', 'hh:mm:ss.ms']
	    var sDay = sqlDateArr2[0];
	    var sqlDateArr3 = sqlDateArr2[1].split(":");
	    //format of sqlDateArr3[] = ['hh','mm','ss.ms']
	    var sHour = sqlDateArr3[0];
	    var sMinute = sqlDateArr3[1];
	    var sqlDateArr4 = sqlDateArr3[2].split(".");
	    //format of sqlDateArr4[] = ['ss','ms']
	    var sSecond = sqlDateArr4[0];
	    var sMillisecond = sqlDateArr4[1];
	    return new Date(sYear,sMonth,sDay,sHour);
	}
});
</script>
</html>
