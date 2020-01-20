<?php
 $get_par = '';
 $type = 'json';
 if (isset($_GET['id'])) $get_par.='id='.$_GET['id'];
 if (isset($_GET['searchby'])) $get_par.='&searchby='.$_GET['searchby']; 
 if (isset($_GET['c_id'])) $get_par.= '&c_id='.$_GET['c_id'];
 if (isset($_GET['d_id'])) $get_par.='&d_id='.$_GET['d_id'];
 if (isset($_GET['fchar'])) $get_par.='&fchar='.urlencode($_GET['fchar']);
 if (isset($_GET['lang'])) $get_par.='&lang='.$_GET['lang']; 
 if (isset($_GET['type'])) { $type = $_GET['type']; $get_par.='&type='.$type; }
 if (isset($_GET['mcntcities'])) $get_par.='&mcntcities='.$_GET['mcntcities'];
// $url='http://gen1.meteonova.ru/cgi-bin/mnovaSearch3.dll?'.$get_par;
 $url='http://gen4.meteonova.ru:81/cgi-bin/betaSearch.dll?db=cityru&'.$get_par;
// $url='http://localhost/cgi-bin/mnovaSearch.dll?'.$get_par; 
 $fileContents = gzencode(file_get_contents($url));
 if ($type == 'xml') header('Content-type: application/xml');
 else header('Content-Type: application/json; charset=utf-8');
 header("Content-Encoding: gzip");
 header("Content-Length: " . strlen($fileContents));
 echo $fileContents;
?>