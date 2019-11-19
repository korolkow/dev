<?PHP
header("content-type: text/javascript");
$tpl=$_GET["tpl"];
$tpls = array("main" => "styles,hints,tools", "frc" => "styles,ajax,graph,hints,tools,transparent,weather,scroll", "agro" => "styles,ajax,hints,tools,transparent,agro", "auto" => "styles,ajax,hints,tools,transparent,weather2,scroll", "avia" => "styles,ajax,hints,tools,transparent,weather3,scroll", "med" => "styles,ajax,hints,tools,transparent,weather3,scroll", "pro" => "styles,ajax,hints,tools,transparent", "month" => "styles,ajax,hints,tools,transparent,scroll");
$incs=split(",",$tpls[$tpl]);
$c=count($incs);
if($c>0) for($i=0; $i<$c; $i++){ include $incs[$i].".inc" ;}
?>
