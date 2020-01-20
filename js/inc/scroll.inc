/////////////////////// прокрутка прогноза///////////////////////////////////////

var tm=null;
var spd=10;
var tleft=-999;
D_IDLE=0;
D_SCROLLLEFT=1;
D_SCROLLRIGHT=2;
D_ALIGNLEFT=3;
D_ALIGNRIGHT=4;
D_SETPOS=5;
D_SCROLLTOP=6;
D_SCROLLBOTTOM=7;
D_ALIGNTOP=8;
D_ALIGNBOTTOM=9;
var mode=D_IDLE;
var fco=null;

function scrollH(i){
  with(fco){
    var pos = scrollLeft+i;
    if(pos<0) { pos=0; mode=D_IDLE;} else if(pos>=scrollWidth){ pos=scrollWidth-1; mode=D_IDLE;} else scrollLeft=pos;
    }
  }
function scrollV(i){
  with(fco){
    var posv = scrollTop+i;
    if(posv<0) { posv=0; mode=D_IDLE;} else if(posv>=scrollHeight){ posv=scrollHeight-1; mode=D_IDLE;} else scrollTop=posv;
    }
  }
function stopAutoScroll(){ if(mode==D_SCROLLLEFT) mode=D_ALIGNLEFT; else if(mode==D_SCROLLRIGHT) mode=D_ALIGNRIGHT;}
function goLeft(){ mode=D_SCROLLLEFT; }
function goRight(){ mode=D_SCROLLRIGHT; }
function goTop(){ mode=D_SCROLLTOP; }
function goBottom(){ mode=D_SCROLLBOTTOM; }
function goToFRC(){ mode=D_SETPOS; } 

function tmDispatch(){
switch(mode) {
 case D_IDLE:        spd=10; break;
 case D_SCROLLLEFT:  scrollH(-spd/10); spd++; if(spd>60) spd=60; updateForecastBg(Math.round(fco.scrollLeft/fco.scrollWidth*6)); break;
 case D_SCROLLRIGHT: scrollH(spd/10); spd++; if(spd>60) spd=60; updateForecastBg(Math.round(fco.scrollLeft/fco.scrollWidth*6)); break;
 case D_ALIGNLEFT:   d=fco.scrollLeft % 51; if(d>1) scrollH(-1); else mode=D_IDLE; break;
 case D_ALIGNRIGHT:  d=fco.scrollLeft % 51; if(d>1) scrollH(1); else mode=D_IDLE; break;
 case D_SETPOS:      pos=numFRC*510+1; d=pos-fco.scrollLeft; if(Math.abs(d)>600) sp=80; else if(Math.abs(d)>200) sp=40; else if(Math.abs(d)>40) sp=20; else sp=1; if(d>=1) scrollH(sp); else  if(d<=-1) scrollH(-sp); else mode=D_IDLE; break;
 case D_SCROLLTOP:   scrollV(-spd/10); spd++; if(spd>60) spd=60; break;
 case D_SCROLLBOTTOM: scrollV(spd/10); spd++; if(spd>60) spd=60; break;
 case D_ALIGNTOP:    d=fco.scrollTop % 15; if(d>1) scrollV(-1); else mode=D_IDLE; break;
 case D_ALIGNBOTTOM:  d=fco.scrollTop % 15; if(d>1) scrollV(1); else mode=D_IDLE; break;
 }
}