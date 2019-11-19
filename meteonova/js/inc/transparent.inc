var bIE6=agent.indexOf("msie 6")>-1;

function transparent(im) {
   setTimeout(function(){
   if (bIE6 && (!im.transparented)) {
      im.transparented = 1;
      var picture = im.src;
      var w = im.width;
      var h = im.height;
      im.src = "/images/clear.gif";
      im.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true, sizingMethod='scale', src='" + picture + "');";
      im.width = w;
      im.height = h;
      }
   return "transparent";
   }, Math.floor(Math.random()*400));

}

