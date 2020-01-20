<html>
<head>
	<?PHP
	$town=$_GET["town"];
	$id=$_GET["id"];
	$req=$_GET["req"];

	if (!$town) {
		print "<title>МЕТЕОНОВА - погода по аэропортам, авиапрогноз. Прогноз задержек вылетов по метеоусловиям</title>";
	} else {
		print "<title>МЕТЕОНОВА - погода по аэропортам около города \"$town\"</title>";
	}
?>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<meta name="description" content="Погода по аэропортам, прогноз задержек вылетов по метеоусловиям">
<meta name="keywords" content="погода, прогноз, аэропорт, авиабилет, задержка вылета по метеоусловиям">
<!-- inject:css -->
<!-- endinject -->
<!-- inject:js -->
<!-- endinject -->
</head>
<body>
<div id="doc4" class="yui-t5">
   <div id="hd">
     <div id="onhd">
      <div>
       <div id="logo"><img src="/images/logo.png" width="277" height="96"></div>
@@include('../menu/<%= tpl_path %>/index.tpl')
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
	 				width="9" height="31" class="corner">
   				</div>
   				<div class="block_title left_contener_title_width">
 				  <div class="icon"><img src="/images/icon.png" width="26" height="26" ></div>
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
		 		  	<img src="/images/block_top_left.png" width="9" height="31" class="corner">
	   			</div>
	   			<div class="block_title center_container_title_width">
	 				  <div class="icon"><img src="/images/icon.png" width="26" height="26"></div>
	 			 		<div class="title"><b>ПОГОДА ПО АЭРОПОРТАМ</b></div>
	   			</div>
	   			<div class="round_right">
		 				<img src="/images/block_top_right.png" width="9" height="31" class="corner">
	   			</div>
			</div>
			<div class="block_content" style="height: 160px;">
				<div class="content">
	     			<h2 id="blog_title"><b>Представляю вашему вниманию прогноз погоды по аэропортам</b></h2>
	     			<div id="blog_text" class="text">
	     				Собираетесь в путешествие или в деловую поездку, а может планируете встречу родных или партнеров в аэропорте? Хотите быть в курсе возможных задержек рейсов из-за неблагоприятных погодных явлений? Тогда этот сервис непременно Вам пригодится!<br>
	     				По названию города или аэропорта найдите точки отправления, назначения и транзита, чтобы определить возможные риски задержек вылетов и посадки по метеоусловиям. Кроме того, Вы можете всегда получить прогноз по ближайшим к вашему городу аэропортам, нажав на ссылку "Погода по аэропортам" на странице с прогнозом погоды по выбранному городу.
	     			</div>
     			</div>
			</div>
			<div class="block_bottom">
   			<div class="round_left">
	 		  	<img src="/images/block_bt_left.png" width="9" height="14" class="corner">
   			</div>
   			<div class="block_bt center_container_title_width"></div>
   			<div class="round_right">
	 				<img src="/images/block_bt_right.png" width="9" height="14" class="corner">
   			</div>
			</div>
  		</div>
  </div>
  <div class="main_container">
			<div class="block_top">
   			<div class="round_left">
	 		  	<img src="/images/block_top_left.png" width="9" height="31" class="corner">
   			</div>
   			<div class="block_title main_container_title_width">
 				  <div class="icon"><img src="/images/icon.png" width="26" height="26"></div>
 			 		<div class="title"><b>ПОИСК ПО ГОРОДАМ И АЭРОПОРТАМ</b></div>
   			</div>
   			<div class="round_right">
	 				<img src="/images/block_top_right.png" width="9" height="31" class="corner">
   			</div>
			</div>
			<div class="block_content">
				  <!--?PHP require("engine.inc"); ?-->
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
  <div class="main_container">
			<div class="block_top">
   			<div class="round_left">
	 		  	<img src="/images/block_top_left.png" width="9" height="31" class="corner" >
   			</div>
   			<div class="block_title main_container_title_width">
 				  <div class="icon"><img src="/images/icon.png" width="26" height="26"></div>
 			 		<div class="title"><b>ОГРАНИЧЕНИЯ</b></div>
   			</div>
   			<div class="round_right">
	 				<img src="/images/block_top_right.png" width="9" height="31" class="corner">
   			</div>
			</div>
			<div class="block_content">
		    	<div class="content">
		        	<div style="position:relative;">
                    	<p style="padding-bottom:4px;">Сервис работает в полностью автоматическом режиме на основе данных моделей погоды. Информация не проходит контроль со стороны профессиональных метеорологов, поэтому возможны ошибки. Информация предоставляется «как есть», без каких-либо гарантий и обязательств со стороны владельцев сервиса.</p>
                    	<p style="padding-bottom:4px;"><b>Данные о задержках по метеоусловиям явялются оценкой возможных погодных явлений, влияющих на полеты. Информацию о фактических задержках рейсов смотрите на табло аэропортов.</b></p>
       	    		<p style="padding-bottom:4px;">Информация с данного сайта носит консультативный характер и не может быть использована как официальный источник данных о погоде при планировании мероприятий, связанных с риском материальных потерь или человеческих жертв, а также при выяснении обстоятельств проишествий в суде или выдачи справок в страховые компании для возмещения ущерба.</p>
                	<p style="padding-bottom:4px;">Владельцы сайта не несут ответственности за возможные убытки имуществу или здоровью, возникшие в результате использования информации с настоящего сайта. Для получения официальных справок, обращайтесь в государственные органы Росгидромета на местах или в Гидрометцентр России в Москве.</p>
		        	</div>
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
	<div class="yui-b">
  	 <div class="right_main">
			<div class="block_top">
   			<div class="round_left">
	 		  	<img src="/images/block_top_left.png" width="9" height="31" class="corner">
   			</div>
   			<div class="block_title" style="width:222px">
 				  <div class="icon"><img src="/images/icon.png" width="26" height="26"></div>
 			 		<div class="title"><b>РЕКЛАМА</b></div>
   			</div>
   			<div class="round_right">
	 				<img src="/images/block_top_right.png" width="9" height="31" class="corner">
   			</div>
			</div>
				<div class="block_content">
					<?php if (file_exists("/ban240x400.php")) 
						require("/ban240x400.php"); 
					?>	
				</div>
				<div class="block_bottom">
	   			<div class="round_left">
		 		  	<img src="/images/block_bt_left.png" width="9" height="14" class="corner">
	   			</div>
	   			<div class="block_bt" style="width:222px"></div>
	   			<div class="round_right">
		 				<img src="/images/block_bt_right.png" width="9" height="14" class="corner">
	   			</div>
				</div>
				<div class="block_top">
	   			<div class="round_left">
		 		  	<img src="/images/block_top_left.png" width="9" height="31" class="corner">
	   			</div>
	   			<div class="block_title" style="width:222px;">
	 				  <div class="icon"><img src="/images/icon.png" width="26" height="26"></div>
	 			 		<div class="title"><b>КОНТАКТЫ</b></div>
	   			</div>
	   			<div class="round_right">
		 				<img src="/images/block_top_right.png" width="9" height="31" class="corner">
	   			</div>
				</div>
				<div class="block_content" style="width:100%;">
      				<div class="content">
					<div class="contacts">
						<div class="contact"><div class="apun"><img src="/images/apun.png" width="11" height="11"></div><div class="apun_link"><a href="/about.htm">О проекте</a></div></div>
						<div class="contact"><div class="apun"><img src="/images/apun.png" width="11" height="11"></div><div class="apun_link"><a href="/faq.htm">Частые вопросы</a></div></div>
						<div class="contact"><div class="apun"><img src="/images/apun.png" width="11" height="11"></div><div class="apun_link"><a href="mailto:korolkow@meteonova.ru">Руководитель</a></div></div>
						<div class="contact_last"><div class="apun"><img src="/images/apun.png" width="11" height="11"></div><div class="apun_link"><a href="/guestbook.htm">Гостевая книга</a></div></div>
					</div>
			      	</div>
				</div>
				<div class="block_bottom">
	   			<div class="round_left">
		 		  	<img src="/images/block_bt_left.png" width="9" height="14" class="corner">
	   			</div>
	   			<div class="block_bt" style="width:222px"></div>
	   			<div class="round_right">
		 				<img src="/images/block_bt_right.png" width="9" height="14" class="corner">
	   			</div>
				</div>
			</div>
	</div>
</div>
<div class="right_block">
	@@include('../avia/<%= tpl_path %>/right_block.tpl')
</div>
@@include('../footer/<%= tpl_path %>/index.tpl')
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
			audio._load('//www.meteonova.ru/sounds/avia');
		}
		catch(err) {}
	})();
</script>
</body>
</html>