<html>
<head>
<title>Приложения от Метеонова - Погода в вашем компьютере, планшете и телефоне!</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
@@include('../main/<%= tpl_path %>/meta_description.tpl')
@@include('../main/<%= tpl_path %>/meta_keywords.tpl')
<!-- inject:css -->
<!-- endinject -->
<!-- inject:js -->
<!-- endinject -->
</head>
<body>
<div id="doc4" class="yui-t5">
   <div id="hd">
     <div id="onhd">
       <div id="logo"><a href="//www.meteonova.<%= domain %>"><img src="/images/logo.png" width="277" height="96" alt="Смотрите на Метеонове: погода сегодня и точный прогноз погоды на неделю 10 и 14 дней на месяц вперед" ></a></div>
			@@include('../menu/<%= tpl_path %>/index.tpl')
     </div>
   </div>
	<?PHP
	if (file_exists('topline.php' ))
		require("topline.php");
?>
<div id="bd" style="float: none;">
	<div id="yui-main">
	<div class="yui-b">
  <div class="main_container">
			<div class="block_top">
   			<div class="round_left">
	 		  	<img src="/images/block_top_left.png" width="9" height="31" class="corner"  >
   			</div>
   			<div class="block_title main_container_title_width">
 				  <div class="icon"><img src="/images/icon.png" width="26" height="26" ></div>
 			 		<div class="title"><b>Meteonova - для Telegram и мессенжера Facebook</b></div>
   			</div>
   			<div class="round_right">
	 				<img src="/images/block_top_right.png" width="9" height="31" class="corner" >
   			</div>
			</div>
			<div class="block_content">
		    	<div class="content">
		        	<div style="position:relative;">
		        		Meteonovabot - это удобный сервис получения прогноза погоды с помощью бесплатных кроссплатформенных мессенджеров <a href="https://telegram.org" target="_blank">Telegram</a> и  <a href="https://m.me" target="_blank">Facebook</a><br></br>
		        		<table width="100%">
		        			<tr>
		        			<td width="50%" valign="top" style="text-align: center;">
		        				<div class="title2">@MeteonovaBot - бот для Telegram</div>
		        				<a href="/fan/telegram.htm"><img src="/images/fan/telegram/promo.jpg" width="280" height="498" border="0" style="-webkit-box-shadow: 5px 5px 8px 0px rgba(0,0,0,0.19); -moz-box-shadow: 5px 5px 8px 0px rgba(0,0,0,0.19); box-shadow: 5px 5px 8px 0px rgba(0,0,0,0.19);"></a>
		        			<p align="center" style="padding-top:15px;"><a href="https://telegram.me/meteonovabot" target="_blank" class="but addto border">Добавить в</a></p>
							<p align="center" style="padding-top:15px;"><a href="/fan/telegram.htm"><b>Подробнее</b></a></p>
							</td>
							<td width="50%" style="text-align: center;" valign="top">
		        				<div class="title2">Meteonovabot - бот для Facebook</div>
		        				<a href="/fan/facebook.htm"><img src="/images/fan/facebook/promo.jpg" width="280" height="498" border="0" style="-webkit-box-shadow: 5px 5px 8px 0px rgba(0,0,0,0.19); -moz-box-shadow: 5px 5px 8px 0px rgba(0,0,0,0.19); box-shadow: 5px 5px 8px 0px rgba(0,0,0,0.19);"></a>
		        				<p align="center" style="padding-top:15px;">
							   		<div class="fb-messengermessageus" 
								         messenger_app_id="1554296411280142" 
								         page_id="128192144563917"
								         color="blue"
								         size="large">
							    	</div>		        					
		        				</p>
							<p align="center" style="padding-top:15px;"><a href="/fan/facebook.htm"><b>Подробнее</b></a></p>
							</td>								
		        			</tr>
		        		</table>
		        		<p style="margin: 10px 0 5px 0;"><br>Приложение показывает погоду сейчас и прогноз на 3 дня по любому из 50 тысяч городов мира из базы Метеоновы</p>
						<p style="margin-bottom: 5px;"><br>- текущая погода по городу</p>
						<p style="margin-bottom: 5px;">- почасовой прогноз на ближайшие сутки</p>
						<p style="margin-bottom: 5px;">- краткий прогноз погоды на три дня вперед</p>
						<p style="margin-bottom: 5px;">- прогноз по текущему положению</p> 
						<p style="margin-bottom: 5px;">- запоминает все города, по которым Вы запрашивали погоду, и хранит их в списке</p>
						<p style="margin-bottom: 5px;">- отправляет уведомления о погоде в выбранном городе</p>
						<p style="margin-bottom: 5px;">- подписка на погодные новости</p> 						        		
		        	</div>
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
  <div class="main_container">
			<div class="block_top">
   			<div class="round_left">
	 		  	<img src="/images/block_top_left.png" width="9" height="31" class="corner"  >
   			</div>
   			<div class="block_title main_container_title_width">
 				  <div class="icon"><img src="/images/icon.png" width="26" height="26" ></div>
 			 		<div class="title"><b>МЕТЕОНОВА: ICQ-РОБОТ</b></div>
   			</div>
   			<div class="round_right">
	 				<img src="/images/block_top_right.png" width="9" height="31" class="corner" >
   			</div>
			</div>
			<div class="block_content">
		    	<div class="content">
		        	<div style="position:relative;">
		        		<table>
		        			<tr>
		        			<td width="300" style="padding-right: 50px; text-align: center;"><a href="/fan/telegram.htm">
		        				<img src="/images/fan/icq/promo.jpg" width="280" height="308" border="0" style="-webkit-box-shadow: 5px 5px 8px 0px rgba(0,0,0,0.19); -moz-box-shadow: 5px 5px 8px 0px rgba(0,0,0,0.19); box-shadow: 5px 5px 8px 0px rgba(0,0,0,0.19);"></a>
							<p align="center" style="padding-top:15px;"><a href="/fan/icq.htm"><b>Подробнее</b></a></p></td>
							<td valign="top" style="color: #000">ICQ на Метеонова - это удобный сервис получения прогноза погоды с помощью самой популярной в мире службы обмена короткими сообщениями <a href="//www.icq.com" target="_blank">ICQ</a>.
     						<p><br>Сервис ICQ на Метеонова - представляет собой ICQ-робота, - программу, которая позволяет круглосуточно получать информацию о погоде с помощью службы обмена короткими сообщениями <a href="http://www.icq.com" target="_blank">ICQ</a>. Для этого необходимо просто добавить в контакт-лист ICQ-клиента пользователя METEONOVA с номером  <b><font color="#FF0000">587139424</font></b> и отправить сообщение с названием города или его пятизначным кодом.
							</p>
		        			</td>
		        			</tr>
		        		</table>
		        	</div>
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
  <div class="main_container">
			<div class="block_top">
   			<div class="round_left">
	 		  	<img src="/images/block_top_left.png" width="9" height="31" class="corner"  >
   			</div>
   			<div class="block_title main_container_title_width">
 				  <div class="icon"><img src="/images/icon.png" width="26" height="26" ></div>
 			 		<div class="title"><b>РАСШИРЕНИЕ ДЛЯ GOOGLE CHROME И OPERA</b></div>
   			</div>
   			<div class="round_right">
	 				<img src="/images/block_top_right.png" width="9" height="31" class="corner" >
   			</div>
			</div>
			<div class="block_content">
			<div class="content" >
			  Представляем погодное расширение для браузеров Google Chrome и Opera. Расширение помещает погодную иконку на панель браузера. Информация о погоде будет у вас всегда перед глазами. Щелчок по иконке открывает всплывающее окно с детальным прогнозом погоды на сутки вперёд, а также знакомит с интересными новостями о погоде и климате.  
			</div>
		    	<div class="content">
		        	<div style="position:relative; text-align: center; margin-top: 15px;">
		        		<table>
		        			<tr>
		        				<td width="160" valign="top" align="center" style="padding-top:5px;">
								<img src="/images/fan/extensions/p1.jpg" width="160" height="64" border="0">
								<p style="padding-top:19px;"><a href="/fan/extensions.htm"><b>Подробнее</b></a></p>
							</td>
		        				<td valign="top" align="center"  style="padding-left:30px;  color: #000"><a href="/fan/chrome.htm">
								<img src="/images/fan/extensions/chrome.jpg" width="248" height="102" border="0"></a>
								<p style="padding-top:16px; color: #000;">Версия 1.0.0.2</p>
								<p style="padding-top:16px;"><a class="fan button chrome" href="https://chrome.google.com/webstore/detail/aiefnajnklcignlnnkkkffpmldmpidkd?hl=ru"><img src="/images/fan/extensions/addtochrome.jpg" width="196" height="39"></a></p>
							</td>
		        				<td width="243" valign="top" align="center" style="padding-left:12px; color: #000"><a href="/fan/chrome.htm">
								<img src="/images/fan/extensions/opera.jpg" width="248" height="102" border="0"></a>
								<p style="padding-top:16px; color: #000;">Версия 1.0-4</p>
								<p style="padding-top:15px; width: 185px; height: 40px;"><a style="width: 185px; height: 40px;" href="https://addons.opera.com/extensions/download/meteonova-prognoz-pogody-golosom/"><img src="/images/fan/extensions/addtoopera.jpg" width="186" height="40"></a></p>

							</td>
		        			</tr>
		        		</table>
		        	</div>
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
  <div class="main_container">
			<div class="block_top">
   			<div class="round_left">
	 		  	<img src="/images/block_top_left.png" width="9" height="31" class="corner"  >
   			</div>
   			<div class="block_title main_container_title_width">
 				  <div class="icon"><img src="/images/icon.png" width="26" height="26" ></div>
 			 		<div class="title"><b>РАСШИРЕНИЕ ДЛЯ ЭКСПРЕСС-ПАНЕЛИ БРАУЗЕРА OPERA</b></div>
   			</div>
   			<div class="round_right">
	 				<img src="/images/block_top_right.png" width="9" height="31" class="corner" >
   			</div>
			</div>
			<div class="block_content">
		    	<div class="content">
		        	<div style="position:relative;">
		        		<table>
		        			<tr>
		        				<td width="300" style="padding-right: 50px; text-align: center;"><a href="/fan/gadget.htm"><img src="/images/fan/speed-dial/speed-dial4.jpg" width="263" height="192" border="0"></a>		        				
							<p align="center" style="padding-top:15px;"><a href="/fan/speeddial.htm"><b>Подробнее</b></a></p></td>
							<td valign="top" style="color: #000">Метеонова на экспресс-панели браузера Opera - это расширение, которое показывает прогноз погоды по выбранному городу и предоставляет возможность быстрого перехода к страницам погодного сервера. Расширение удобно разместится на экспресс-панели среди частно посещаемых и наиболее интересных страниц сайтов. Теперь прогноз погоды будет всегда перед глазами и станет неотъемлемой частью браузера.
							<p style="padding-top:16px; color: #000;">Версия 1.0-1</p>							
							<p><br><a style="width: 185px; height: 40px;" href="https://addons.opera.com/extensions/download/meteonova/"><img src="/images/fan/extensions/addtoopera.jpg" width="186" height="40"></a></p>
		        				</td>
		        			</tr>
		        		</table>
		        	</div>
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
  <div class="main_container">
			<div class="block_top">
   			<div class="round_left">
	 		  	<img src="/images/block_top_left.png" width="9" height="31" class="corner"  >
   			</div>
   			<div class="block_title main_container_title_width">
 				  <div class="icon"><img src="/images/icon.png" width="26" height="26" ></div>
 			 		<div class="title"><b>ВИДЖЕТ ДЛЯ WINDOWS VISTA / WINDOWS 7</b></div>
   			</div>
   			<div class="round_right">
	 				<img src="/images/block_top_right.png" width="9" height="31" class="corner" >
   			</div>
			</div>
			<div class="block_content">
		    	<div class="content">
		        	<div style="position:relative;">
		        		<table>
		        			<tr>
		        				<td width="300" style="padding-right: 50px; text-align: center;"><a href="/fan/gadget.htm"><img src="/images/fan/vista_gadget.jpg" width="130" height="124" border="0"></a>
		        				<p align="center" style="padding-top:15px;"><a href="/fan/gadget.htm"><b>Подробнее</b></a></p>
		        				</td>
		        				<td valign="top" style="color: #000">Mини-приложение для боковой панели Windows Vista и для рабочего стола Windows 7, показывающее прогноз погоды и анонсы свежих новостей о погоде. Установите это приложение и следите за погодой в своём городе прямо на рабочем столе.
		        				<p><br>Версия 1.2.0.0</p>
							<!--p><br><script language=JavaScript>document.write('<IF'+'RAME src=http://a.meteonova.ru/show.php?pl=1&bt=26&ref='+escape(document.location.href)+'&ac='+ Math.round(Math.random()*100000)+' width=142 height=40 frameborder=0 vspace=0 hspace=0 marginwidth=0'+ ' marginheight=0 scrolling=no></IF'+'RAME>'); </script></p-->
									<p><br><a href="/fan/Meteonova.gadget"><img src="/images/fan/extensions/add.jpg" border="0" width="142" height="40"></a></p>

							</td>
		        			</tr>
		        		</table>
		        	</div>
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
  <div class="main_container">
			<div class="block_top">
   			<div class="round_left">
	 		  	<img src="/images/block_top_left.png" width="9" height="31" class="corner"  >
   			</div>
   			<div class="block_title main_container_title_width">
 				  <div class="icon"><img src="/images/icon.png" width="26" height="26" ></div>
 			 		<div class="title"><b>ПОГОДА НА ПАНЕЛИ ЗАДАЧ WINDOWS</b></div>
   			</div>
   			<div class="round_right">
	 				<img src="/images/block_top_right.png" width="9" height="31" class="corner" >
   			</div>
			</div>
			<div class="block_content">
		    	<div class="content">
		        	<div style="position:relative;">
		        		<table>
		        			<tr>
		        				<td width="300" style="padding-right: 50px; text-align: center;"><a href="/fan/gadget.htm"><img src="/images/fan/tray/tray.jpg" width="216" height="50" border="0"></a>
		        				<p align="center"><br><a href="/fan/tray.htm"><b>Подробнее</b></a></p>
		        				</td>
		        				<td valign="top" style="color: #000">Mетеонова для панели задач - это приложение, которое функционирует в системном трее ОС Windows (на панели задач в правом нижнем углу экрана). Щелчок по иконке погоды открывает окно с прогнозом погоды на ближайщие 24 часа и блок самых свежих погодных новостей.  
		        				<p><br>Версия 1.2.0.1</p>
							<!--p><br><script language=JavaScript> document.write('<IF'+'RAME src=http://a.meteonova.ru/show.php?pl=5&bt=26&ref='+escape(document.location.href)+'&ac='+ Math.round(Math.random()*100000)+' width=142 height=40 frameborder=0 vspace=0 hspace=0 marginwidth=0'+ ' marginheight=0 scrolling=no></IF'+'RAME>'); </script></p-->
									<p><br><a href="/tray/meteonovatray.exe"><img src="/images/fan/extensions/add.jpg" border="0" width="142" height="40"></a></p>
									<p><br>Метеонова работает под управлением операционных систем Windows 98/Me/2000/XP/Vista/7.</p>
		        				</td>
		        			</tr>
		        		</table>
		        	</div>
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
	 		  	<img src="/images/block_top_left.png" width="9" height="31" class="corner" >
   			</div>
   			<div class="block_title" style="width:222px">
 				  <div class="icon"><img src="/images/icon.png" width="26" height="26" ></div>
 			 		<div class="title"><b>РЕКЛАМА</b></div>
   			</div>
   			<div class="round_right">
	 				<img src="/images/block_top_right.png" width="9" height="31" class="corner" >
   			</div>
			</div>
				<div class="block_content" style="width:100%;">
			   	  <div class="banner">					
			   	  	<?php if (file_exists("ban240x400.php")) 
						require("ban240x400.php"); ?>
				  </div>
				</div>
				<div class="block_bottom">
	   			<div class="round_left">
		 		  	<img src="/images/block_bt_left.png" width="9" height="14" class="corner" >
	   			</div>
	   			<div class="block_bt" style="width:222px"></div>
	   			<div class="round_right">
		 				<img src="/images/block_bt_right.png" width="9" height="14" class="corner" >
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
	 			 		<div class="title"><b>НОВОСТИ</b></div>
	   			</div>
	   			<div class="round_right">
		 				<img src="/images/block_top_right.png"
		 				width="9" height="31" class="corner"
		 				 />

	   			</div>
				</div>
				<div class="block_content" style="width:100%;">
					<div class="content" style="width:210px;">
						<script language="Javascript" src="//www.meteonova.ru/newsheaders/7.js"></script>
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
		 		  	<img src="/images/block_top_left.png" width="9" height="31" class="corner" >
	   			</div>
	   			<div class="block_title" style="width:222px;">
	 				  <div class="icon"><img src="/images/icon.png" width="26" height="26" ></div>
	 			 		<div class="title"><b>КОНТАКТЫ</b></div>
	   			</div>
	   			<div class="round_right">
		 				<img src="/images/block_top_right.png" width="9" height="31" class="corner" >
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
		 		  	<img src="/images/block_bt_left.png" width="9" height="14" class="corner" >
	   			</div>
	   			<div class="block_bt" style="width:222px"></div>
	   			<div class="round_right">
		 				<img src="/images/block_bt_right.png" width="9" height="14" class="corner" >
	   			</div>
				</div>
			</div>
	</div>
@@include('../footer/<%= tpl_path %>/index.tpl')
</div>
</div>
<script>
  window.fbAsyncInit = function() {
    FB.init({
      appId            : '1554296411280142',
      autoLogAppEvents : true,
      xfbml            : true,
      version          : 'v2.10'
    });
    FB.AppEvents.logPageView();
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) return;
     js = d.createElement(s); js.id = id;
     js.src = "https://connect.facebook.net/ru_RU/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
</script>
</body>
<script language="JavaScript">
	(function() {
		try {
			var audio = new mnovaAudio({
				js: 'js/dancer',
				jessie: $('.jessie'),
				player_button: $('.player_button'), 
			});
			audio._load('//www.meteonova.ru/sounds/fan');
		}
		catch(err) {}
	});
</script>
</html>