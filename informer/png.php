<html>
<head>
<title>��������� - �������� �����: ����������� ���������</title>
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
		margin-bottom: 20px;	
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
	a {
		text-decoration: underline;
	}
</style>

<?php include_once('config.php')?>

<script type="text/javascript">
<?php
	$index = '27612';
	$townname = '������';
	if(isset($_GET['index'])) {
		$index=$_GET['index'];
	}
	else {
		include("http://gen3.meteonova.ru/cgi-bin/novainf.dll/ipgeo?PHP=1&IP=".getenv('HTTP_X_REAL_IP')."&defindex=27612");
		if($townindex!==0) $index=$townindex;
	}
	
	$arr = json_decode(file_get_contents("http://gen3.meteonova.ru/cgi-bin/betasearch.dll?searchby=cities&id=".$index), true);
	if (($arr != null) and (count($arr['items'])>0)) {
		$townname = iconv('utf-8', 'windows-1251', $arr['items'][0]['name']);
	}	
	
?>

var townindex = <?php echo $index;?>;
var townname = "<?php echo $townname;?>"; 

</script>
</head>
<body>
<div id="doc4" class="yui-t5">
   <div id="hd">
     <div id="onhd">
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
		 		  	<img src="/images/block_top_left.png" width="9" height="31" class="corner" >
	   			</div>
	   			<div class="block_title main_container_title_width">
	 				  <div class="icon"><img src="/images/icon.png" width="26" height="26" ></div>
	 			 		<div class="title"><b>����������� ���������</b></div>
	   			</div>
	   			<div class="round_right">
		 				<img src="/images/block_top_right.png" width="9" height="31" class="corner" >
	   			</div>
				</div>
	
				<div class="block_content">
					<div class="content">
					 	<div class="title2"><b>�������� �����</b></div>
					 	<div style="margin:0 0 20px 0">�������� �������� ����� ���������</div>
	                	<table border=0 >
	                	<?php
	
	                	    $i=0;
	                	    $content='';
	
	                		foreach($pnginf as $inftype=>$infSettings) {
	                			if ($inftype==$_GET['type']) {
	
								if ($i==0)
								  echo '<script type="text/javascript">var newInfObj=new InfObj("'.$inftype.'", '.$index.', "'.$townname.'");</script>';
	
	
									if ($infSettings['width']>300)$d=2;
	                				else if (($infSettings['width']>120) && ($infSettings['width']<=150)) $d=5;
	                					 else if (($infSettings['width']>100) && ($infSettings['width']<=120)) $d=6;
	                	                 	  else $d=7;
	
									$tdwidth=ceil(100/$d);
	
									foreach ($infSettings['colorset'] as $colorset=>$value) {
	
										if ($i==0)
											echo '<script>newInfObj.index='.$_GET['index'].'; newInfObj.setInfParam("'.$value[0].'","'.$value[1].'","'.$value[2].'","'.$value[3].'","'.$value[4].'","'.$value[5].'","'.$value[6].'");</script>';
	
	                					if (ceil($i/$d)==$i/$d){
	                						if ($content!='') $content.='</tr>';
	                						$content.='<tr>';
	                	                }
	
									    $content.='<td style="padding-right: 30px;" valign=top height='.(int)($infSettings['height']+30).'>'.
				                                  '<table width='.$tdwidth.'% border=0  cellspacing=0 cellpadding=0>';
				                                  if ($i==0) $content.='<tr><td align=center style="padding-bottom: 7px;"><input type=radio name=rchange id='.$i.' checked onclick=newInfObj.infChange("'.$value[0].'","'.$value[1].'","'.$value[2].'","'.$value[3].'","'.$value[4].'","'.$value[5].'","'.$value[6].'");></td></tr>';
				                                  else  $content.='<tr><td align=center style="padding-bottom: 7px;"><input type=radio name=rchange id='.$i.' onclick=newInfObj.infChange("'.$value[0].'","'.$value[1].'","'.$value[2].'","'.$value[3].'","'.$value[4].'","'.$value[5].'","'.$value[6].'");></td></tr>';
									    		  $content.='<tr><td width='.$tdwidth.'%  align=center><img id="img'.$i.'"'.
									    	 						'width='.$infSettings['width'].' height='.$infSettings['height'].' border=0></td></tr>'.
												  '</table></td>';
	
										$i++;
									}
	                            }
	                        }
	
	        				echo $content;
	                	?>
	
	                	</table>
					    <div class="title2"><b>��������� �������� ����</b></div>
					    <div>� ������� �������� ������� ����� �������� �������� ����� ���������� �������� ���������. ���� ���������� ������ ����, ����� ������������� ��������������� ����� ����� ����� ��� �������� ������</div>
					    <div class="informer">
					    	<div id="informer"></div>
					    	<div id="changeSettings">
					    		<p><input type=radio id="borderinf" name=rsettings checked onclick="newInfObj.fillOwnColor(newInfObj.border)">&nbsp;����� ���������</p>
					    		<p style="margin-top: 10px;"><input type=radio id="textinf" name=rsettings onclick="newInfObj.fillOwnColor(newInfObj.text)">&nbsp;����� ���������</p>
					    		<p style="margin-top: 10px;"><input type=radio id="titleinf" name=rsettings onclick="newInfObj.fillOwnColor(newInfObj.bgtitle)">&nbsp;��� �������� ������</p>
					    		<p style="margin-top: 10px;"><input type=radio id="body1inf" name=rsettings onclick="newInfObj.fillOwnColor(newInfObj.bgbodycolor1)">&nbsp;��� �������� �������</p>
					    		<p style="margin-top: 10px;"><input type=radio id="body2inf" name=rsettings onclick="newInfObj.fillOwnColor(newInfObj.bgbodycolor2)">&nbsp;��� �������� ������</p>
					    		<p style="margin-top: 10px;"><input type=radio id="logo1inf" name=rsettings onclick="newInfObj.fillOwnColor(newInfObj.bglogo1)">&nbsp;��� �������� �������</p>
					    		<p style="margin-top: 10px;"><input type=radio id="logo2inf" name=rsettings onclick="newInfObj.fillOwnColor(newInfObj.bglogo2)">&nbsp;��� �������� ������</p>
					    	</div>
					    	<div id="colorSettings">
					    		<div>
									<table><tr>
									<?php
										$colorArr=Array('00','33','50','66','80','99','CC','FF');
										foreach ($colorArr as $value) {
											echo '<td class="colortable" bgcolor="#'.$value.$value.$value.'" onclick=newInfObj.setInformer(newInfObj.index,newInfObj.townname,"'.$value.$value.$value.'",false);></td>';
			 							}
									?>
									</tr></table>
								</div>
					    		<div style="margin:10px 0 0 0"><table><tr>
								<?php
									$i=0;
									foreach ($colorArr as $valueB) {
									    if (ceil($i/2)==$i/2) {
									    	if ($i!=0)
												echo '</table></td>';
											echo '<td><table>';
				                        }
				                        $i++;
										foreach ($colorArr as $valueG) {
											echo '</tr><tr>';
											foreach ($colorArr as $valueR)
												echo '<td class="colortable" bgcolor="#'.$valueR.$valueG.$valueB.'" onclick=newInfObj.setInformer(newInfObj.index,newInfObj.townname,"'.$valueR.$valueG.$valueB.'",false);></td>';
			                            }
			                        }
								?>
								</table></td></tr></table></div>
								<div style="margin:10px 0 0 0">������� ���� ����&nbsp;#<input type="text" id="owncolor" size=6 maxlength=6 onkeyup="newInfObj.checkColor(this.value);">&nbsp;<button disabled id="buttoncolor" onClick="newInfObj.setInformer(newInfObj.index, newInfObj.townname, document.getElementById('owncolor').value,false);">���������</button></div>
					    	</div>
					    </div>
					    <div class="title2"><b>����� ������</b></div>
					    <div>
					    	<table><tr>
	     						<td align="center" style="padding-right: 30px;"><span>������</span><p><select id="countries" class="selectList" size="10"></p></td>
	     						<td align="center" style="padding-right: 30px;"><span>�������</span><p><select id="regions" class="selectList" size="10"></p></td>
	     						<td align="center"><span>�����</span><p><select id="cities" class="selectList" size="10"></p></td>
	         			</tr></table>
					    </div>
					    <div><input type="checkbox" id="setGeotarg" onClick="newInfObj.setGeotarg();">&nbsp;�������� ������ �� ������, ������ ����� ������������</div>
					    <div class="title2"><b>��� ���������</b></div>
					    <div style="margin:0 0 20px 0">�������� ��� �� ���� �������� *</div>
					    <div style="margin:0 0 20px 0"><b>HTML-��� ��� ���-�������</b></div>
					    <div><textarea id="icode"></textarea></div>
					    <div style="margin:0 0 20px 0"><b>BB-��� ��� ������ � �������</b></div>
					    <div><textarea id="i_BB_code"></textarea></div>
					    <div id="goback" style="margin:20px 0 0 0"><a href="/index.php?index=<?php echo $_GET['index'];?>">������� ������ ��������</a></div>
					    <div style="margin:20px 0 0 0"><font size=1>* �� ������ ������������ ���������� ��� �� ����� ���������� ������� � ����� �������� � ���� �������� ��� �����-���� �����������. ���� ����������� ������������� ������� � ������ �����, ���������, ����������, � ������������� �������</font></div>
	
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
</div>
</body>
<script type="text/javascript">
	newInfObj.setDomain();	
	newInfObj.fillOwnColor("FFFFFF");
	newInfObj.setCallbackFunct(setInformer);

	function setInformer(innerObj,type,index,ctext,cborder,cbgtitle,cbgbodycolor1,cbgbodycolor2,cbglogo1,cbglogo2,bUpdateSamples) {
			
			var name = newInfObj.townname;
			
			if (document.getElementById("setGeotarg").checked) {
				type=type.replace("1", "2");
				name = null;
				$ufrc="ifrc";
			} else $ufrc="frc";
			 
      document.getElementById("informer").innerHTML="";
      
 			innerObj.src="//www.meteonova."+newInfObj.domain+"/informer/PNG"+type+"_"+index+'_'+
 					 ctext+'_'+cborder+'_'+cbgtitle+'_'+cbgbodycolor1+'_'+
 					 cbgbodycolor2+'_'+cbglogo1+'_'+cbglogo2+".PNG ";
    	
    	document.getElementById("informer").appendChild(innerObj);

    	var title=null;
    	if (name==null) title="��������� - ������� ������ �� 14 ����";
    	else title="������ �� ��������� �� �. "+name;

    	document.getElementById("icode").value='<a href="//www.meteonova.'+newInfObj.domain+'/'+$ufrc+'/'+index+'.htm">'+
    	'<img src="//www.meteonova.'+newInfObj.domain+'/informer/PNG'+type+'_'+index+'_'+
 					 ctext+'_'+cborder+'_'+cbgtitle+'_'+cbgbodycolor1+'_'+
 					 cbgbodycolor2+'_'+cbglogo1+'_'+cbglogo2+'.PNG" border="0" title="'+title+'" alt="'+title+'"></a>';

        document.getElementById("i_BB_code").value='[url=//www.meteonova.'+newInfObj.domain+'/'+$ufrc+'/'+index+'.htm]'+
    	'[img]//www.meteonova.'+newInfObj.domain+'/informer/PNG'+type+'_'+index+'_'+
 					 ctext+'_'+cborder+'_'+cbgtitle+'_'+cbgbodycolor1+'_'+
 					 cbgbodycolor2+'_'+cbglogo1+'_'+cbglogo2+'.PNG[/img][/url]';

                	<?php

                	    $i=0;

                		foreach($pnginf as $inftype=>$infSettings) {
                			if ($inftype==$_GET['type']) {

								foreach ($infSettings['colorset'] as $colorset=>$value) {

									echo 'if (bUpdateSamples) document.getElementById("img'.$i.'").src='.
                                    '"//www.meteonova."+newInfObj.domain+"/informer/PNG'.$inftype.'_"+index+"_'.$value[0].'_'.$value[1].'_'.$value[2].'_'.$value[3].'_'.$value[4].'_'.$value[5].'_'.$value[6].'.PNG";';

									$i++;
								}
                            }
                        }
                	?>

 	   document.getElementById("goback").innerHTML='<a href="./index.php?index='+index+'">������� ������ ��������</a>';
    }
	
	newInfObj.setInformer(townindex, townname,  null, true);
	
	
	
 			jQuery.fn.render = function(opt) {
			 	var $el = this,
			 		ajaxUrl = '',
			 		html = '';
			 	return function() {
			 		$el.empty();
					$.ajax({
						url: '/sinpl',
						type: "GET",
						data: opt.query,
						dataType: "json",
						success: function(data, status, xhr) {
							var $option = '';
							$.each(data.items, function() {
								var icon = this.name_en.replace(/ /g, '-');
								$option = $('<option>').attr('data-icon', icon.toLowerCase()).attr('value', this.id).attr('data', JSON.stringify(this)).prop('selected', ((opt.query.searchby == 'countries' && typeof country != 'undefined' && parseInt(this.id, 10) == country)?true:false));
								$option.html(this.name);
								$el.append($option);
							});
							if (data.length == 0) {
								$option = $('<option>');
								$option.html('������ �� �������');
								$el.append($option);
							}
							//$el.selectpicker('refresh');
							if (opt.callback) opt.callback(data.items);
						},
						error: function() {
							var $option = $('<option>');
							$option.html('������ �� �������');
							$el.append($option);
						}						
					});	
			 	}();
			}
			
			$('#countries').on('change', function (e) {
				var id = $(this).find("option:selected").val();
				if (id == 0) {
					$(this).val($(this).find("option").eq(1).val());
					return;	
				}
	 			$('#regions').render({
	 				query: {searchby: 'regions', c_id: id},
	 				callback: function(data) {
	 					var query = {searchby: 'cities', d_id: $('#regions').find("option:selected").val()};
	 					if (data.length == 0) {
 						 	query = {searchby: 'cities', c_id: id}	;
	 					}
	 					$('#cities').render({
 							query: query,
					 		callback: function(data) {
					 			//renderMarkers(data, true);		
					 		} 							
 						});	
	 				}	 				
	 			});				
			});

			$('#regions').on('change', function (e) {
				var id = $(this).find("option:selected").val();
	 			$('#cities').render({
	 				query: {searchby: 'cities', d_id: id},
					callback: function(data) {} 	 				
	 			});				
			});			

 			$('#countries').render({
 				query: {searchby: 'countries'}
 			});

			$('#cities').on('change', function (e) {
				var o = $(this).find("option:selected");
				try {
					var data  = JSON.parse(o.attr('data'));
					newInfObj.setInformer(data.id, data.name, null,true);				
				}	
				catch (err) {console.log(err);}			
			});	
</script>
</html>