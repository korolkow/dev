function checkGbForm()
{
  if (document.getElementById("username").value=="") {
  	document.getElementById("resCheckGbForm").innerHTML="Не заполнено поле с именем";
  	return;
  }

  if (document.getElementById("city").value=="") {
  	document.getElementById("resCheckGbForm").innerHTML="Введите название города";
  	return;
  }

  if (document.getElementById("comment").value=="") {
  	document.getElementById("resCheckGbForm").innerHTML="Отсутствует текст сообщения";
  	return;
  }

  if (document.getElementById("checknum").value=="") {
  	document.getElementById("resCheckGbForm").innerHTML="Введите контрольное число";
  	return;
  }

}

function AddGbComment(obj)
{
  var username=document.getElementById("username").value;
  var email=document.getElementById("email").value;
  var country=document.getElementById("country").value;
  var city=document.getElementById("city").value;
  var comment=document.getElementById("comment").value;
  var checknum=document.getElementById("checknum").value;
  var cryptnum=document.getElementById("cryptnum").value;

  if ((username!="") && (city!="") && (comment!="") && (checknum!="")) {
  	obj.submit();
  }

}