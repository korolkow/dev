<?php
if(isset($_GET['id'])) $id=$_GET['id']; else $id=1;
?> 
<html>
<head>
<?php include("$id-headers.php"); ?>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<link rel="stylesheet" type="text/css" href="/css/meteonova.about.min.css?d=201802021946">
<script type="text/javascript" src="/js/engine.js"></script>
<style>
 h1 {font: bold 20px Arial; color: #1f2298; margin-bottom:12px; margin-top:24px;  float: none;}
 h2 {font: bold 18px Arial; color: #1f2298; margin-bottom:6px;  margin-top:12px; }
 h3 {font: bold 16px Arial; color: #1f2298; margin-bottom:6px;  margin-top:12px; }
 p  { text-indent: 1.5em; line-height: 1.5; font-size: 14px; }
</style>
</head>
<body>
<div id="doc4" class="yui-t5">
<?PHP 
	if (file_exists('../topline.php' ))	require("../topline.php");
?> 
   <div id="hd">
     <div id="onhd">
      <div>
<div id="logo"><a href="//www.meteonova.ru"><img src="/images/logo.png" width="277" height="96" border="0" alt="��������� - ������� ������ �������" ></a></div>
	      <div id="mainmenu">
	      	<ul>
	          <li><a href="//www.meteonova.ru" title="������ �� ���������: ������� ������ �� ������� ������ � ����">�������</a></li>
	          <li class="line"></li>
	          <li><a href="/news/" title="��� ��������� �������� ������� �� ������ �����">�������</a></li>
	          <li class="line"></li>
	          <li><a href="/klimat/" title="������������� ������ �� ������� � ��������">������</a></li>
	          <li class="line"></li>
	          <li><a href="/map.htm" title="������������� �������� �����">�����</a></li>
	          <li class="line"></li>
	          <li><a href="/infogra.htm">�����������</a></li>
	          <li class="line"></li>	          
	          <li><a href="/search/" title="����� ������ �� ������� � �������">�����</a></li>
	          <li class="line"></li>
	          <li><a href="/informer/" title="���������� ������� ������ ���� �� ����">��������</a></li>
	          <li class="line"></li>
	          <li><a href="/fan.htm" title="���������� ������� ������ ���� �� ���������">����������</a>
				<script type="text/javascript">new Image().src = "//counter.yadro.ru/hit?r" + escape(document.referrer) + ((typeof(screen)=="undefined")?"" : ";s"+screen.width+"*"+screen.height+"*" + (screen.colorDepth?screen.colorDepth:screen.pixelDepth)) + ";u"+escape(document.URL) +  ";" +Math.random();</script>
	          </li>
	    	</ul>
	      </div>
      </div>
     </div>
   </div>
<div>
<div id="bd">
	<div id="yui-main">
	<div class="yui-b">
  <div class="main_container">
			<div class="block_top">
   			<div class="round_left">
	 		  	<img src="/images/block_top_left.png" width="9" height="31" class="corner" >
   			</div>
   			<div class="block_title main_container_title_width">
 				  <div class="icon"><img src="/images/icon.png" width="26" height="26" ></div>
 			 		<div class="title"><b>���������� ����� ��������������</b></div>
   			</div>
   			<div class="round_right">
	 				<img src="/images/block_top_right.png" width="9" height="31" class="corner" >
   			</div>
			</div>
			<div class="block_content">
		    	<div class="content">
		        	<div style="position:relative;">
						<?php include("$id-body.php"); ?>
		        		<?PHP if (file_exists('yandex100.php')) require("yandex100.php"); ?> 
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
 			 		<div class="title"><b>����� ����� ����� ��������� � ������� ������ ������?</b></div>
   			</div>
   			<div class="round_right">
	 				<img src="/images/block_top_right.png" width="9" height="31" class="corner" >
   			</div>
			</div>
			<div class="block_content">
		    	<div class="content">
		        	<div style="position:relative;">
						<h3>������� ������, ������� � ���������� ����������� ������</h3>
						<?php include("linklist2.php"); ?>
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
 			 		<div class="title"><b>�������</b></div>
   			</div>
   			<div class="round_right">
	 				<img src="/images/block_top_right.png" width="9" height="31" class="corner" >
   			</div>
			</div>
				<div class="block_content">
					<?php if (file_exists("../ban240x400.php")) 
						require("../ban240x400.php"); 
					?>						
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
		 		  	<img src="/images/block_top_left.png" width="9" height="31" class="corner" >
	   			</div>
	   			<div class="block_title" style="width:222px;">
	 				  <div class="icon"><img src="/images/icon.png" width="26" height="26" ></div>
	 			 		<div class="title"><b>��� �����</b></div>
	   			</div>
	   			<div class="round_right">
		 				<img src="/images/block_top_right.png" width="9" height="31" class="corner" >
	   			</div>
				</div>
				<div class="block_content" style="width:100%;">
						<div class="content">
							<?php include("teasers.php"); ?>
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
		 		  	<img src="/images/block_top_left.png" width="9" height="31" class="corner" >
	   			</div>
	   			<div class="block_title" style="width:222px;">
	 				  <div class="icon"><img src="/images/icon.png" width="26" height="26" ></div>
	 			 		<div class="title"><b>��������</b></div>
	   			</div>
	   			<div class="round_right">
		 				<img src="/images/block_top_right.png" width="9" height="31" class="corner" >
	   			</div>
				</div>
				<div class="block_content" style="width:100%;">
					<div class="content" style="width:210px; margin-left:-5px;">
						<p style="padding-bottom:4px;"><a href="mailto:korolkow@meteonova.ru" target="_blank">����������� �����</a></p>
						<p style="padding-bottom:4px;"><a href="/guestbook.htm">�������� �����</a></p>
						<p style="padding-bottom:4px;">+7 (499) 390-55-16</p>
						<p style="padding-bottom:0px;">+7 (925) 184-08-55</p>
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
			</div>
	</div>
</div>
<div class="right_block">
					<div class="block_top">
		   			<div class="round_left">
	
			 		  	<img src="/images/block_top_left.png"
			 				width="9" height="31" class="corner"
			 				 />
		   			</div>
		   			<div class="block_title" style="width:222px;">
		 				  <div class="icon"><img src="/images/icon.png" width="26" height="26" alt="��� ������� � ������ �� ���������" ></div>
		 			 		<div class="title"><b>����� � ������</b></div>
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
</div>
	  <div id="ft" role="contentinfo">
	      <div class="copyright"><span>Copyright &copy; 2009-2018, ������������</span></div>
	      <div class="counters">
	    <noindex>
	        <div class="counter"><a rel="nofollow" href="//www.liveinternet.ru/click" target="_blank"><img src="//counter.yadro.ru/logo?41.11" border="0" width="31" height="31" alt="" title="LiveInternet: �������� ����� ���������� �� 24 ����, ����������� �� 24 ���� � �� �������"/></a></div>
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