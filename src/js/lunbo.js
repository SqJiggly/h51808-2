document.addEventListener("DOMContentLoaded", function(){
    var li=document.createElement("li");
                li.innerHTML='<img src="img/banner.jpg" alt="" />';
                var show=document.querySelector(".first-show");
                var lunbo=document.querySelector(".first-showul");
                //生成原点
                for(var i=0;i<3;i++){
                    var span=document.createElement("span");
                    span.innerHTML=i+1;
                    show.appendChild(span);
                }
                lunbo.appendChild(li);
                var img=lunbo.children[0].children[0];
                var len=lunbo.children.length;
                var timer;
                var idx=1;
                var curten=0;
                img.onload=function(){
                    lunbo.style.width=(img.offsetWidth)*lunbo.children.length+"px";
                    lunbo.style.height=img.offsetHeight+"px";
                    show.style.width=img.offsetWidth+"px";
                    show.style.height=img.offsetHeight+"px";
                }
                play();
                show.children[idx].classList.add("span");
                function play(){
                    setTimeout(function(){
                        clearInterval(timer);
                        timer=setInterval(function(){
                        if(idx==len){
                            idx=1;
                            curten=0;
                            lunbo.style.left=0;
                        }
                        if(idx==3){
                            show.children[idx].classList.remove("span");
                            show.children[idx-2].classList.add("span");
                        }else{
                            show.children[idx].classList.remove("span");
                            show.children[idx+1].classList.add("span");}
                        var target=img.offsetWidth*idx;   
                        var speed=Math.ceil((target-curten)/10);
                        curten+=speed;
                        lunbo.style.left=-curten+"px";
                        if(target==curten){   
                            idx++;
                        }
                    },50)
                    }, 1000)
                     
                }
                show.onmouseover=function(){
                    clearInterval(timer);
                }
                show.onmouseout=function(){
                    play();
                }

})