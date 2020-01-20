function GraphObj(townindex,geosuffix) {

	var graph = this;
	graph._townindex=townindex;
	graph._arrGraphName=new Array("P","T","R","W");
	graph._n=graph._arrGraphName.length;
	graph._arrGraphPic=new Array();
	graph._lastShowGraphic=0;
	graph._graphicTimer=null;

	graph.preloadGraph=function() {
		var k=0;
		for (var i=numFRC*graph._n; i<(numFRC+1)*graph._n; i++){
			if (graph._arrGraphPic[i]==null) {
				graph._arrGraphPic[i]=new Image();
				graph._arrGraphPic[i].src="http://www.meteonova.ru/images/graphics/"+graph._arrGraphName[k]+"G"+graph._townindex+"_1"+numFRC+".png"+geosuffix;
				graph._arrGraphPic[i].onLoad=graph.initGraphic(i);
		  }
		  k++;
		}
	}

	graph.preloadGraphic=function(k) {
		var i=numFRC*graph._n+k;
		if (graph._arrGraphPic[i]==null) {
			graph._arrGraphPic[i]=new Image();
			graph._arrGraphPic[i].src="http://www.meteonova.ru/images/graphics/"+graph._arrGraphName[k]+"G"+graph._townindex+"_1"+numFRC+".png"+geosuffix;
			graph._arrGraphPic[i].onLoad=graph.initGraphic(i);
		  }
	}

	graph.initGraphic=function(i) {
		if (!document.getElementById("graph"+i)) {
	  		var img= document.createElement("img");
				img.setAttribute("id", "graph"+i);
	  		img.src=graph._arrGraphPic[i].src;
				var s = img.style;
				s.top=0;
	  		s.left=0;
	  		s.visibility = "hidden";
	  		s.position = "absolute";
	  		s.zIndex=12;
			document.getElementById('graphic').appendChild(img);
	  }
	}

	graph.showGraphic=function(el,graph_num) {
		clearTimeout(graph._graphicTimer);
 		var obj=document.getElementById("graphic");
   		if (obj) {
//    		obj.style.left = getPos(document.getElementById("td2"),"Left");
//     		obj.style.top =  getPos(el,"Top")+el.offsetHeight+"px";
		obj.style.left = getOffset(document.getElementById("frc_cont")).left+"px";
		obj.style.top =  getOffset(el).top+el.offsetHeight+"px";
     		obj.style.visibility = "visible";
    	}

    var div=document.getElementById("graph"+graph._lastShowGraphic);
    if (div) div.style.visibility="hidden";

    div=document.getElementById("graph"+graph_num);
   	if (div) {
   		div.style.visibility="visible";
   		graph._lastShowGraphic=graph_num;
   	}
  }

  graph.hideGraphic=function(){
	clearTimeout(graph._graphicTimer);
    var div=document.getElementById("graph"+graph._lastShowGraphic);
    if (div) div.style.visibility="hidden";
    div=document.getElementById("graphic");
    if (div) div.style.visibility = "hidden";
  }

  graph.timerHideGraphic=function() {
  	graph._graphicTimer=setTimeout(function(){graph.hideGraphic();},1000);
  }

}

