<?php
$url='http://gen4.meteonova.ru:83/cgi-bin/infogra3.dll?fi='.$_GET['fi'].'&la='.$_GET['la'].'&predict='.$_GET['predict'];
// $fileContents = gzencode(file_get_contents($url));
$fileContents = file_get_contents($url);
header('Content-Type: application/json; charset=utf-8');
// header("Content-Encoding: gzip");
header("Content-Length: " . strlen($fileContents));
echo $fileContents;
?>