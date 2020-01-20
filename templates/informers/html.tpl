<html>
<head>
<title>Метеонова - погодный робот: Графические информеры</title>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" type="text/css" href="//code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css">
<!-- inject:css -->
<!-- endinject -->
<!-- inject:js -->
<!-- endinject -->

<style>
	body {
		font: 13px/1.23 arial,helvetica,clean,sans-serif;
		text-align: center;
	}	
	.main_container {
		width:100%;
	}
	.main_container_title_width {
	    width: 977px;
	}		
	#informer {
		width: auto;
		float: none;
		margin: 0;
	}
	button {
		width: auto;
	}
	button.up {
		width: auto;
	}	
	.input-group-addon {
		padding: 0;
		width: 24px;
		height: 24px;
		border-radius: 0;
		border: 1px solid #fff;
		display: inline-block;
	}
	.input-group-addon:first-child {
	  	border: 1px solid #fff;
	}
	.colorpicker-element .input-group-addon i {
		width: 22px;
		height: 22px;		
	}
	
	.form-control {
		font-size: 13px;
	}

	input[type="text"] {
		color: #000;
	}		

	input.form-control {
		display:inline-block;
		width: 90px;
		height: 24px;
		border-radius: 0;
		line-height: 0;
	}
    .colorpicker-2x .colorpicker-saturation {
        width: 200px;
        height: 200px;
    }
    .colorpicker-2x .colorpicker-hue {
        width: 30px;
        height: 200px;
    }
	.colorpicker.colorpicker-with-alpha .colorpicker-alpha {
    	display: none;
	}  
    .colorpicker-2x .colorpicker-color,
    .colorpicker-2x .colorpicker-color div {
        display: none;
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
	.input-group {
		position: relative;
	}
	.twitter-typeahead {
		display:block !important;
	}

	span.twitter-typeahead .tt-menu, span.twitter-typeahead .tt-dropdown-menu {
		width: auto;
	}

	.ui-icon {
		width: 24px;
    	height: 24px;
    	background-image: url(html/icons/expand.svg);
    	background-position: 0;
	}

	.ui-resizable-se {
		right: -8px;
		top: 50%;
		margin-top: -12px;
	}

	a {
		text-decoration: underline;
	}
</style>

<?php
	$index = '<%= defindex %>';
	if(isset($_GET['index'])) {
		$index=$_GET['index'];
	}
	else {
		include("http://gen3.meteonova.ru/cgi-bin/novainf.dll/ipgeo?PHP=1&IP=".getenv('HTTP_X_REAL_IP')."&defindex=<%= defindex %>");
		if($townindex!==0) $index=$townindex;
	}
	
	$type = '88_31';
	if(isset($_GET['type'])) {
		$type = $_GET['type'];
	}
	
	$cities = array('<%= defindex %>', '26063', '31960', '29574', '27553', '37099');
	$arr = json_decode(file_get_contents("http://gen3.meteonova.ru/cgi-bin/betasearch.dll?searchby=nearby&id=".$index."&sortby=population"), true);
	if (($arr != null) and (count($arr['items'])>0)) {
		unset($cities);
		$cities = array();
		foreach ($arr['items'] as $value)
			array_push($cities, $value['id']);
	}
	$outputCities = array_slice($cities, 0, 5);
	
?>

<script type="text/javascript">
var index = <?php echo $index;?>,
	cities = ['<?php echo implode('\',\'', $outputCities);?>'],
	type = "<?php echo $type;?>";
if (type.indexOf('multiple') == - 1) cities = ['<?php echo array_shift($outputCities);?>'];
</script>

</head>
<body>
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
	 		  	<img src="/images/block_top_left.png" width="9" height="31" class="corner">
   			</div>
   			<div class="block_title main_container_title_width">
 				  <div class="icon"><img src="/images/icon.png" width="26" height="26"></div>
 			 		<div class="title"><b>ТЕКСТОВО-ГРАФИЧЕСКИЙ ИНФОРМЕР, ШАГ 2: НАСТРОЙКА ВНЕШНЕГО ВИДА И ПОЛУЧЕНИЕ КОДА</b></div>
   			</div>
   			<div class="round_right">
	 				<img src="/images/block_top_right.png" width="9" height="31" class="corner">
   			</div>
			</div>
			<div class="block_content">
				<div class="content">
				    <div class="title2"><b>Настройка внешнего вида</b></div>
						<div id="resizeble" style="padding: 10px; background: #fff; display: inline-block; box-sizing: border-box;">
							<a id="informer" href="#"></a>
						</div>
					<div id="inf_width" style="display: none; margin-top: 20px;">
						<input type="text" id="inf_width_value" class="form-control" />
						<span>px - ширина информера</span>
					</div>	
					<div id="site_color" class="colorpicker-component" style="margin-top: 20px;">			
						<span class="input-group-addon" style=" border: 1px solid #ccc; margin-right:3px"><i></i></span>
						<input type="text" class="form-control" />
						<span> - цвет фона сайта</span>
					</div>					
					<form name="constructor">
					<div style="display: table; margin-top: 20px;">
						<div style="display: table-cell; vertical-align: top;">
							<div>
								<h2><b>Выберите цветовую схему</b></h2>
								<div style="display: table; margin-top: 10px;">
									<div style="display: table-cell; padding-right: 5px;">
										<div class="colorscheme" style="width: 22px; height: 22px; background: #ced4da; border:1px solid #fff; cursor:pointer;" data="gray"></div>
									</div>
									<div style="display: table-cell; padding-right: 5px;">
										<div class="colorscheme" style="width: 22px; height: 22px; background: #ffa8a8; border:1px solid #fff; cursor:pointer;" data="red"></div>
									</div>
									<div style="display: table-cell; padding-right: 5px;">
										<div class="colorscheme" style="width: 22px; height: 22px; background: #faa2c1; border:1px solid #fff; cursor:pointer;" data="pink"></div>
									</div>					
									<div style="display: table-cell; padding-right: 5px;">
										<div class="colorscheme" style="width: 22px; height: 22px; background: #e599f7; border:1px solid #fff; cursor:pointer;" data="grape"></div>
									</div>
									<div style="display: table-cell; padding-right: 5px;">
										<div class="colorscheme" style="width: 22px; height: 22px; background: #b197fc; border:1px solid #fff; cursor:pointer;" data="violet"></div>
									</div>
									<div style="display: table-cell; padding-right: 5px;">
										<div class="colorscheme" style="width: 22px; height: 22px; background: #91a7ff; border:1px solid #fff; cursor:pointer;" data="indigo"></div>
									</div>
									<div style="display: table-cell; padding-right: 5px;">
										<div class="colorscheme" style="width: 22px; height: 22px; background: #72c3fc; border:1px solid #fff; cursor:pointer;" data="blue"></div>
									</div>
									<div style="display: table-cell; padding-right: 5px;">
										<div class="colorscheme" style="width: 22px; height: 22px; background: #66d9e8; border:1px solid #fff; cursor:pointer;" data="cyan"></div>
									</div>
									<div style="display: table-cell; padding-right: 5px;">
										<div class="colorscheme" style="width: 22px; height: 22px; background: #63e6be; border:1px solid #fff; cursor:pointer;" data="teal"></div>
									</div>
									<div style="display: table-cell; padding-right: 5px;">
										<div class="colorscheme" style="width: 22px; height: 22px; background: #8ce99a; border:1px solid #fff; cursor:pointer;" data="green"></div>
									</div>
									<div style="display: table-cell; padding-right: 5px;">
										<div class="colorscheme" style="width: 22px; height: 22px; background: #c0eb75; border:1px solid #fff; cursor:pointer;" data="lime"></div>
									</div>
									<div style="display: table-cell; padding-right: 5px;">
										<div class="colorscheme" style="width: 22px; height: 22px; background: #ffe066; border:1px solid #fff; cursor:pointer;" data="yellow"></div>
									</div>
									<div style="display: table-cell; padding-right: 5px;">
										<div class="colorscheme" style="width: 22px; height: 22px; background: #ffc078; border:1px solid #fff; cursor:pointer;" data="orange"></div>
									</div>
									<div style="display: table-cell;">
										<div class="colorscheme" style="width: 22px; height: 22px; background: #212529; border:1px solid #fff; cursor:pointer;" data="dark_gray"></div>
									</div>												
								</div>		
							</div>			
						</div>
					</div>				
					<div style="display: table; margin-top: 20px">
						<div style="display: table-cell; vertical-align: top; padding-right: 36px;">									
							<div style="background: #fafafb; border: 1px solid #f0f0f0; border-radius: 4px; padding: 6px;">
								<h2><b>Настройка местоположения</b></h2>
										<div class="container">
											<div class="input-group">
											  <input type="text" name="citySearch" class="form-control citySearch" style="width: 338px; position: relative;" placeholder="Введите название города" autocomplete="off"> 
											</div>
											<div class="input-group citiesList" style="width: 338
											px;  display: none; margin-top: 10px;">
												<ul class="list-group" style="margin: 0; padding: 0">
												</ul>
											</div>
											<div>
												<input type="checkbox" name="is_auto_city" id="is_auto_city">
												<label for="is_auto_city">определять город автоматически</label>
											</div>					
										</div>
							</div>
						</div>							
						<div style="display: table-cell; vertical-align: top; padding-right: 36px;">
							<div style="background: #fafafb; border: 1px solid #f0f0f0; border-radius: 4px; padding: 6px;">
								<h2><b>Настройка рамки и фона</b></h2>
									<div style="margin-top: 10px;">
										<input type="checkbox" name="is_border" id="is_border" value="1" checked>
										<label for="is_border">Рамка</label>
									</div>				
									<div style="margin-top: 10px;">
										<input type="checkbox" name="is_border_radius" id="is_border_radius" value="1" checked>
										<label for="is_border_radius">Скруглённые углы</label>
									</div>
									<div id="border_color" class="colorpicker-component" style="margin-top: 10px;">
										<span class="input-group-addon" style="margin-right:3px"><i></i></span>
										<input type="text" class="form-control" />
										<span> - цвет рамки</span>
									</div>
									<div id="background_color" class="colorpicker-component" style="margin-top: 10px;">
										<span class="input-group-addon" style="margin-right:3px"><i></i></span>
										<input type="text" class="form-control" />
										<span> - цвет фона</span>
									</div>
									<div style="margin-top: 10px;">
										<input type="checkbox" name="is_transparent_background" id="is_transparent_background">
										<label for="is_transparent_background">прозрачный фон</label>
									</div>	
							</div>
						</div>
						<div style="display: table-cell; vertical-align: top;">
							<div style="background: #fafafb; border: 1px solid #f0f0f0; border-radius: 4px; padding: 6px;">						
								<h2><b>Цвет текста</b></h2>
									<div id="city_color" class="colorpicker-component" style="margin-top: 10px;">
										<span class="input-group-addon" style="margin-right:3px"><i></i></span>
										<input type="text" class="form-control" />
										<span> - цвет названия города</span>
									</div>					
									<div id="main_color" class="colorpicker-component" style="margin-top: 10px;">
										<span class="input-group-addon" style="margin-right:3px"><i></i></span>
										<input type="text" class="form-control" />
										<span> - цвет температуры воздуха</span>
									</div>
									<div id="params_color" class="colorpicker-component" style="margin-top: 10px;">
										<span class="input-group-addon" style="margin-right:3px"><i></i></span>
										<input type="text" class="form-control" />
										<span> - дополнительный цвет</span>
									</div>
							</div>
						</div>		
					</form>				
					</div>
					<div style="background: #fafafb; border: 1px solid #f0f0f0; border-radius: 4px; padding: 6px; margin-top: 20px;">
						<header><b>Код информера</b></header>
						<pre class="infcode" style="background: #fff; margin-top: 10px;"></pre>
					</div>		
				    <div id="goback" style="margin:20px 0 0 0"><a href="/informer/index.php?index=<?php echo $index;?>">Выбрать другой информер</a></div>
				    <div style="margin:20px 0 0 0"><font size=1>* Вы можете использовать полученный код на любом количестве страниц и любых ресурсах в сети Интернет без каких-либо ограничений. Если планируется использование сервиса в других целях, свяжитесь, пожалуйста, с руководителем проекта</font></div>

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
@@include('../footer/<%= tpl_path %>/index.tpl')
</div>
</div>			
</body>
</html>