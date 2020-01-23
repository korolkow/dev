<?php
 if (isset($_GET['id'])) $id=$_GET['id']; else $id='50';
 require('h'.$id.'.php');
 function upr($s){ return strtr($s, "абвгдеёжзийклмнопрстуфхцчшщъыьэюя","АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩљЫЬЭЮЯ"); }
?>
<html lang="ru">
<head>
<title>Метеонова - <?php echo $title ?></title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="<?php echo $descr ?>">
<meta name="keywords" content="<?php echo $keyw ?>">
<link rel='stylesheet' href='/css/v2/reset-fonts-grids_990.css' type='text/css'>
<link rel="stylesheet" href="/css/v2/block.css" type="text/css">
<link rel="stylesheet" href="/css/v2/general.css" type="text/css">
<link rel='stylesheet' href='/css/v2/mosg_990.css' type='text/css'>
<style>
.klimat p{
 margin: 15px;
 font-size:14px;
 text-indent: 20px;
}	
.klimat h1{
 color:#000;
 float:none;
 font-size: 20px;
 font-weight: normal;    
 margin: 15px;
 margin-left:35px;
 }
.frcinf h2 {
 padding:0;
 margin:0;
 font-size:14px;
}
.frcinf{
 font-size:12px;
 margin: 8px;
}
.frcinf td, .frcinf table, .frcinf tr{
 font-size:12px;
 margin-top:4px;
 margin-bottom:4px;
 margin-right:2px;
}
</style>
</head>
<body>
<div id="doc4" class="yui-t5">
   <div id="hd">
     <div id="onhd">
      <div>
       <div id="logo"><img src="/images/logo.png" width="277" height="96""></div>
	<?PHP require("../menu.php"); ?>
      </div>
     </div>
   </div>
    <?PHP require("../topline.php"); ?>
<div>
<div id="bd" style="float: none;">
	<div id="yui-main">
	<div class="yui-b">
  <div class="main_container">
			<div class="block_top">
   			<div class="block_title main_container_title_width">
 				  <div class="icon"><img src="/images/icon.png" width="26" height="26""></div>
 			 		<div class="title"><b><?php echo upr($title); ?></b></div>
   			</div>
			</div>
			<div class="block_content">
		    	<div class="klimat">
				 <?php require($id.".php"); ?>
				<p>Вы также можете ознакомиться с <a href="/klimat/">климатом</a> других регионов России</p>
			    </div>
			</div>
			<div class="block_bottom">
			</div>
  </div>
  <div class="main_container">
			<div class="block_top">
   			<div class="block_title main_container_title_width">
 				  <div class="icon"><img src="/images/icon.png" width="26" height="26""></div>
 			 		<div class="title"><b>РЕКЛАМА</b></div>
   			</div>
			</div>
			<div class="block_content">
<script type="text/javascript"><!--
google_ad_client = "pub-8600085897479141";
google_ad_slot = "5188765136";
google_ad_width = 728;
google_ad_height = 90;
//-->
</script>
<script language="JavaScript">
document.write('<sc'+'ript type="text/javascript" src="//pagead2.googlesyndication.com/pagead/show_ads.js"></sc'+'ript>'); 
</script>
			</div>
			<div class="block_bottom">
			</div>
  </div>
  
</div>
</div>
	<div class="yui-b">
  	 <div class="right_main">
			<div class="block_top">
   			<div class="block_title">
 				  <div class="icon"><img src="/images/icon.png" width="26" height="26""></div>
 			 		<div class="title"><b>ПОГОДА ПО РЕГИОНУ</b></div>
   			</div>
			</div>
				<div class="block_content">
<?php require("http://gen3.meteonova.ru:8002/cgi-bin/nova.dll?template=klimatrgntemplate&state=".$id."&lang=ru1251&populationlimit=10"); ?>
				</div>
				<div class="block_bottom">
				</div>
<!--
				<div class="block_top">
	   			<div class="round_left">

		 		  	<img src="/images/block_top_left.png"
		 				width="9" height="31" class="corner"
		 				onLoad="transparent(this)" />
	   			</div>
	   			<div class="block_title" style="width:222px;">
	 				  <div class="icon"><img src="/images/icon.png" width="26" height="26" "></div>
	 			 		<div class="title"><b>НОВОСТИ</b></div>
	   			</div>
	   			<div class="round_right">
		 				<img src="/images/block_top_right.png"
		 				width="9" height="31" class="corner"
		 				onLoad="transparent(this)" />

	   			</div>
				</div>
				<div class="block_content" style="width:100%;">
					<div class="content" style="width:210px;">
						<script language="Javascript" src="//www.meteonova.ru/newsheaders/3.js"></script>
					</div>
				</div>
				<div class="block_bottom">

	   			<div class="round_left">
		 		  	<img src="/images/block_bt_left.png"
		 				width="9" height="14" class="corner"
		 				onLoad="transparent(this)" />
	   			</div>
	   			<div class="block_bt" style="width:222px"></div>
	   			<div class="round_right">
		 				<img src="/images/block_bt_right.png"
		 				width="9" height="14" class="corner"
		 				onLoad="transparent(this)" />
	   			</div>
				</div>
-->
<!--
				<div class="block_top">
	   			<div class="round_left">
		 		  	<img src="/images/block_top_left.png" width="9" height="31" class="corner"">
	   			</div>
	   			<div class="block_title" style="width:222px;">
	 				  <div class="icon"><img src="/images/icon.png" width="26" height="26""></div>
	 			 		<div class="title"><b>КОНТАКТЫ</b></div>
	   			</div>
	   			<div class="round_right">
		 				<img src="/images/block_top_right.png" width="9" height="31" class="corner"">
	   			</div>
				</div>
				<div class="block_content" style="width:100%;">
					<div class="content" style="width:210px;">
						<p class="title2">Руководитель проекта</p>
						<p style="padding-bottom:6px;"><a href="mailto:korolkow@meteonova.ru" target="_blank">Корольков Александр Михайлович</a></p>
						<p style="padding-bottom:4px;">(499) 390-55-16</p>
						<p style="padding-bottom:0px;">(925) 184-08-55</p>
					</div>
					<div class="news_line"></div>
					<div class="content"><a href="/guestbook.htm">Гостевая книга</a></div>

				</div>
				<div class="block_bottom">
	   			<div class="round_left">
		 		  	<img src="/images/block_bt_left.png" width="9" height="14" class="corner"">
	   			</div>
	   			<div class="block_bt" style="width:222px"></div>
	   			<div class="round_right">
		 				<img src="/images/block_bt_right.png" width="9" height="14" class="corner"">
	   			</div>
				</div>
			</div>
-->			
	</div>
</div>

<?PHP require("../footer.php"); ?>
</div>
</div>

</body>
</html>
 
