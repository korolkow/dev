<?php
if (array_key_exists('message', $_POST)) {
   $to = 'nova@meteonova.ru, vasilev@meteonova.ru';
   $subject = 'FeedBack from '.$_SERVER['HTTP_REFERER'];
   $subject = "=?utf-8?b?". base64_encode($subject) ."?=";
   $message = "Имя: ".$_POST['name']."\nCity: ".$_POST['city']."\nEmail: ".$_POST['contact']."\nIP: ".$_SERVER['REMOTE_ADDR']."\nСообщение: ".$_POST['message'];
   $headers = "Content-type: text/plain; charset=utf-8\r\n";
   if ($_POST['contact'] !== '') $headers .= "From: ".$_POST['contact']."\r\n" .
   $headers .= "MIME-Version: 1.0\r\n";
   $headers .= "Date: ". date('D, d M Y h:i:s O') ."\r\n";
   if (mail($to, $subject,  trim(urldecode(htmlspecialchars($message))), $headers)) {
   	echo 'Done';
   }
   else {
	  echo 'Error';
   }
}
?>