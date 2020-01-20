<?php
$query = urldecode(str_replace('.', ',', http_build_query($_GET, '','&')));
/*$url='http://gen3.meteonova.ru/cgi-bin/betaSearch.dll?'.$query;
// $fileContents = gzencode(file_get_contents($url));
$fileContents = file_get_contents($url);
header('Content-Type: application/json; charset=UTF-8');
// header("Content-Encoding: gzip");
header("Content-Length: " . strlen($fileContents));
echo $fileContents;*/

if (isset($_GET['type']) && $_GET['type'] == 'mgsearch') {
  $exclude_place_ids = '';
  if (isset($_GET['exclude_place_ids'])) $exclude_place_ids = 'exclude_place_ids='.$_GET['exclude_place_ids'];
  $url = encodeURI('https://nominatim.openstreetmap.org/search/'.$_GET['fchar'].'?'.$exclude_place_ids.'&osm_type=N&format=json&polygon=0&addressdetails=1&accept-language=ru-RU,ru;q=0.8&email=korolkow@korolkow.ru');
}

if (!function_exists('http_build_query')) {
  function http_build_query($data, $prefix='', $sep='', $key='') {
     $ret = array();
     foreach ((array)$data as $k => $v) {
         if (is_int($k) && $prefix != null) $k = urlencode($prefix . $k);
         if (!empty($key)) $k = $key.'['.urlencode($k).']';
         
         if (is_array($v) || is_object($v))
             array_push($ret, http_build_query($v, '', $sep, $k));
         else    array_push($ret, $k.'='.urlencode($v));
     }
   
     if (empty($sep)) $sep = ini_get('arg_separator.output');
     return implode($sep, $ret);
  }
}

if (isset($_GET['type']) && $_GET['type'] == 'mgsearchreverse') {
  unset($_GET['type']);
  $url = 'https://nominatim.openstreetmap.org/reverse?'.http_build_query($_GET, '','&').'&osm_type=N&format=json&addressdetails=1&accept-language=ru-RU,ru;q=0.8&email=korolkow@korolkow.ru';
  header('Content-Type: application/json; charset=utf-8');
  echo http_get_contents($url);
  exit;
} 

$fileContents = file_get_contents($url);
header('Content-Type: application/json; charset=utf-8');
header("Content-Length: " . strlen($fileContents));
echo $fileContents;

function http_get_contents($url) {
  $ch = curl_init($url);
  curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
  curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
  curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);  
  curl_setopt($ch, CURLOPT_USERAGENT, $_SERVER['HTTP_USER_AGENT']);
  if(FALSE === ($retval = curl_exec($ch))) {
    //error_log(curl_error($ch));
    curl_close($ch);
  } else {
    curl_close($ch);
    return $retval;
  }
}

function encodeURI($uri) {
  $regexp = "{[^0-9a-z_.!~*'();,/?:@&=+$#-]}i";
  return preg_replace_callback($regexp,  
      create_function('$m','return sprintf("%%%02X", ord($m[0]));'), 
      $uri
  );
}

?>