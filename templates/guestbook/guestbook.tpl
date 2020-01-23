<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1251" />
<title>Метеонова - погодный робот: Обратная связь</title>
<!-- inject:css -->
<!-- endinject -->
<!-- inject:js -->
<!-- endinject -->
<style>
#feedback-form {
  padding: 2%;
  border-radius: 3px;
}
#feedback-form [required], .inputF {
  width: 100%;
  box-sizing: border-box;
  margin: 2px 0 2% 0;
  padding: 2%;
  border: 1px solid rgba(0,0,0,.1);
  border-radius: 3px;
  box-shadow: 0 1px 2px -1px rgba(0,0,0,.2) inset, 0 0 transparent;
}
#feedback-form [required]:hover, .inputF:hover {
  border-color: #7eb4ea;
  box-shadow: 0 1px 2px -1px rgba(0,0,0,.2) inset, 0 0 transparent;
}
#feedback-form [required]:focus, .inputF:focus {
  outline: none;
  border-color: #7eb4ea;
  box-shadow: 0 1px 2px -1px rgba(0,0,0,.2) inset, 0 0 4px rgba(35,146,243,.5);
  transition: .2s linear;
}
#feedback-form [type="submit"] {
  padding: 2%;
  border: none;
  border-radius: 3px;
  box-shadow: 0 0 0 1px rgba(0,0,0,.2) inset;
  background: #669acc;
  color: #fff;
}
#feedback-form [type="submit"]:hover {
  background: #5c90c2;
}
#feedback-form [type="submit"]:focus {
  box-shadow: 0 1px 1px #fff, inset 0 1px 2px rgba(0,0,0,.8), inset 0 -1px 0 rgba(0,0,0,.05);
}

#feedback-form [type="submit"]:disabled:hover {
    cursor: not-allowed;
}

</style>
</head>
<body>
<div id="doc4" class="yui-t5">
   <div id="hd">
     <div id="onhd">
       <div id="logo"><a href="//www.meteonova.<%= domain %>"><img src="images/logo.png" width="277" height="96" border="0" ></a></div>
@@include('../menu/<%= tpl_path %>/index.tpl')
     </div>
   </div>
<div id="bd" style="float: none;">
	<div id="yui-main">
	<div class="yui-b">
 		<div class="main_container">
  		  <div class="left_container">
			<div class="block_top ie">
   			<div class="round_left">
	 		  	<img src="/images/block_top_left.png"
	 				width="9" height="31" class="corner" >
   			</div>
   			<div class="block_title left_contener_title_width">
 				  <div class="icon"><img src="/images/icon.png" width="26" height="26" ></div>
 			 		<div class="title"><b>ИНФОРМАЦИЯ</b></div>
   			</div>
   			<div class="round_right">
	 				<img src="/images/block_top_right.png"
	 				width="9" height="31" class="corner" >
   			</div>
			</div>

			<div class="block_content ie">
				<div class="content">
     			<div class="text"><p style="padding-bottom:4px;">Заполните поля в форме</p>
     			<p style="padding-bottom:4px;">Достаточно заполнить поля <b>Вашe имя</b>, <b>Город</b> и <b>Сообщение</b><p>
     																			 <p>Если Вы хотите задать вопрос, то укажите свой <b>E-Mail</b>.<p>
     			</div>
     		</div>
			</div>

			<div class="block_bottom ie">
   			<div class="round_left">
	 		  	<img src="/images/block_bt_left.png"
	 				width="9" height="14" class="corner"  >
   			</div>
   			<div class="block_bt left_contener_title_width"></div>
   			<div class="round_right">
	 				<img src="/images/block_bt_right.png"
	 				width="9" height="14" class="corner" >
   			</div>
			</div>
			<div class="block_top ie">
   			<div class="round_left">
	 		  	<img src="/images/block_top_left.png"
	 				width="9" height="31" class="corner" >
   			</div>
   			<div class="block_title left_contener_title_width">
 				  <div class="icon"><img src="/images/icon.png" width="26" height="26" ></div>
 			 		<div class="title"><b>КОНТАКТЫ</b></div>
   			</div>
   			<div class="round_right">
	 				<img src="/images/block_top_right.png"
	 				width="9" height="31" class="corner" >
   			</div>
			</div>
			<div class="block_content ie">
      	<div class="content">
					<div class="contacts">
						<div class="contact"><div class="apun"><img src="/images/apun.png" width="11" height="11" ></div><div class="apun_link"><a href="about.htm">О проекте</a></div></div>
						<div class="contact"><div class="apun"><img src="/images/apun.png" width="11" height="11" ></div><div class="apun_link"><a href="mailto:korolkow@meteonova.ru">Руководитель</a></div></div>
						<div class="contact"><div class="apun"><img src="/images/apun.png" width="11" height="11" ></div><div class="apun_link"><a href="mailto:korolkow@meteonova.ru">Реклама</a></div></div>
						<div class="contact"><div class="apun"><img src="/images/apun.png" width="11" height="11" ></div><div class="apun_link"><a href="/faq.htm">Частые вопросы</a></div></div>
					</div>
      	</div>
			</div>
			<div class="block_bottom ie">
   			<div class="round_left">
	 		  	<img src="/images/block_bt_left.png"
	 				width="9" height="14" class="corner" >
   			</div>
   			<div class="block_bt left_contener_title_width"></div>
   			<div class="round_right">
	 				<img src="/images/block_bt_right.png"
	 				width="9" height="14" class="corner" >
   			</div>
			</div>
  		</div>
  		<div class="center_container">
			<div class="block_top">
   			<div class="round_left">
	 		  	<img src="/images/block_top_left.png"
	 				width="9" height="31" class="corner" >
   			</div>
   			<div class="block_title center_container_title_width">
 				  <div class="icon"><img src="/images/icon.png" width="26" height="26"  ></div>
 			 		<div class="title"><b>ОБРАТНАЯ СВЯЗЬ</b></div>
   			</div>
   			<div class="round_right">
	 				<img src="/images/block_top_right.png"
	 				width="9" height="31" class="corner" >
   			</div>
			</div>

			<div class="block_content">
				<div class="content">
     			<div class="title2"><b>Форма обратной связи</b></div>
     			<div class="text">
					<form method="POST" id="feedback-form">
						Ваше имя:
						<input type="text" name="name" class="inputF" required placeholder="имя" x-autocompletetype="name">
						Город:
						<input type="city" name="city" class="inputF" required placeholder="город" x-autocompletetype="name">
						Email для связи:
						<input type="email" name="contact" class="inputF" placeholder="адрес электронной почты" x-autocompletetype="email">
						Ваше сообщение:
						<textarea name="message" required rows="5"></textarea>
						<input type="checkbox" id="subscribeAgreement" value="off">
						 <label for="subscribeAgreement">Согласен(-на) с политикой конфиденциальности и обработки персональных данных</label>
						 <br><a href="/agreement.htm">Соглашение</a>
						<br><br><input type="submit" id="submitButton" value="Отправить" disabled>
					</form>
     			</div>
     		</div>
			</div>

			<div class="block_bottom">
   			<div class="round_left">
	 		  	<img src="/images/block_bt_left.png"
	 				width="9" height="14" class="corner" >
   			</div>
   			<div class="block_bt center_container_title_width"></div>
   			<div class="round_right">
	 				<img src="/images/block_bt_right.png"
	 				width="9" height="14" class="corner" >
   			</div>
			</div>
	</div>
  </div>
</div>
</div>
	<div class="yui-b">
				<div class="block_top">
	   			<div class="round_left">
		 		  	<img src="/images/block_top_left.png"
		 				width="9" height="31" class="corner"
		 				 />
	   			</div>
	   			<div class="block_title" style="width:240px;">
	 				  <div class="icon"><img src="/images/icon.png" width="26" height="26"  ></div>
	 			 		<div class="title"><b>РЕКЛАМА</b></div>
	   			</div>
	   			<div class="round_right">
		 				<img src="/images/block_top_right.png"
		 				width="9" height="31" class="corner"
		 				 />
	   			</div>
				</div>


				<div class="block_content">
					<?php if (file_exists("ban240x400.php")) 
						require("ban240x400.php"); 
					?>					
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
@@include('../footer/<%= tpl_path %>/index.tpl')
</div>
</div>
</body>
<script language="JavaScript">
	var checkbox = document.getElementById('subscribeAgreement');
	checkbox.addEventListener('click', updateSubmitButton);
	var submitButton = document.getElementById('submitButton'); 
	function updateSubmitButton(e) {
		if (checkbox.checked) submitButton.disabled = false;
		else submitButton.disabled = true;
	}

	document.getElementById('feedback-form').addEventListener('submit', function(e){
	  var http = new XMLHttpRequest(), f = this;
	  e.preventDefault();
	  http.open("POST", "feedback.php", true);
	  http.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	  http.send("name=" + f.name.value + "&city="+f.city.value+"&contact=" + f.contact.value + "&message=" + f.message.value);
	  http.onreadystatechange = function() {
	    if (http.readyState == 4 && http.status == 200) {
	    	if (http.responseText === 'Done') {
		      alert('Ваше сообщение получено.\nБлагодарим за интерес к нашу проекту!');    
		      f.message.removeAttribute('value');
		      f.message.value='';
		      f.name.removeAttribute('value');
		      f.name.value='';
		      f.contact.removeAttribute('value');
		      f.contact.value='';
		      f.city.removeAttribute('value');
		      f.city.value='';
		  	}
		  	else {
		  		alert('Извините, данные не были переданы');	
		  	}
	    }
	  }
	  http.onerror = function() {
	    alert('Извините, данные не были переданы');
	  }
	}, false);	
</script>
</html>