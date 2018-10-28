// document.addEventListener("DOMContentLoaded", function(){
//     var onea=document.querySelector(".one_aa");
//     var city=document.querySelector(".city");
//     onea.onmouseover=function(){
//         city.style.display="block";     
//     };
//     var fnav=document.querySelector(".fast-nav");
//     var fmenu=document.querySelector(".Chead-floatmenu");
//     fnav.onmouseover=function(){
//         fmenu.style.display="block";     
//     };
//     var web=document.querySelectorAll("dl");
//     var webb=document.querySelectorAll("dd");
//     for(let i=0;i<web.length;i++){
//         web[i].onmouseover=function(){
//             webb[i].style.display="block";
//             webb[i].style.top=(i*109)+"px";
//         }
//     }

// })
jQuery(function($){
    
// //     // var params = decodeURI(location.search);
// //     // params = params.slice(1);
// //     // $span=$(".Chead-welcome")[0];
// //     // // console.log(params);
// //     // if(params!=""){
// //     //     for($i=3;$i<=6;$i++){
// //     //         params = params.replace(params[$i],"*");
// //     //     }
// //     //     // console.log(params);
// //     //     $span.innerHTML=`嗡，欢迎来乐蜂，<a mars_sead="lpc_top_name" href="http://order.lefeng.com">${params}</a>&nbsp; | &nbsp;<a mars_sead="lpc_top_el" href="#" id="exit">退出登录</a>`;
// //     // }
// //     // $("#exit").on("click",function(){
// //     //     location.href="../index.html";
// //     //     // console.log(666);
             
// //     //     // $span.innerHTML=`欢迎来到乐蜂，请&nbsp;<a href="http://passport.lefeng.com/toLogin">登录</a>&nbsp; | &nbsp;<a href="http://passport.lefeng.com/toRegister">免费注册</a>`;
        
// //     // })
    showcar();
    

    var onea=document.querySelector(".one_aa");
    var city=document.querySelector(".city");
    onea.onmouseover=function(){
        city.style.display="block";     
    };
    $(".city").on("mouseover","ul li a",function(){
        $(".city a").css("color","#666");
        $(this).css("color","red");       
    })
    $(".city").on("click","a",function(){
        $val=$(this).html();
        console.log($val);
        $(".city span a").html($val);
        $(".one_aa").html($val);     
    })
    city.onmouseover=function(){
        city.style.display="block";
    }
    city.onmouseout=function(){
        city.style.display="none";
    };
    $(".Chead_myh")[0].onmouseover=function(){
        $(".Chead-myhome")[0].style.display="block";
    }
    $(".Chead-myhome")[0].onmouseout=function(){
        this.style.display="none";
    }
    $(".fast-nav")[0].onmouseover=function(){
        $(".Chead-floatmenu").css("display","block");
    };
    $(".Chead-floatmenu")[0].onmouseover=function(){
        this.style.display="block";       
    }
    $(".Chead-floatmenu")[0].onmouseout=function(){
        this.style.display="none";       
    }
    $(".orderDivId").on("mouseover",'dl',function(){
        $(".orderDivId").find("dd").css("display","none");
        $(this).find("dd").css("display","block");
    }).on("mouseout","dd",function(){
        $(this).css("display","none");     
    });
    $(".scroll-to-top").on("mouseover",function(){
        $(this).css("background","#666");
    }).on("click",function(){
        $('html, body').animate({scrollTop:0}, 'slow');
    }).on("mouseout",function(){
        $(this).css("background","#fff");
    })
    // $(".city").on("mouseover","span",function(){
    //     city.style.display="block";
    // })
    // $(".city").on("mouseout","span",function(){
    //     city.style.display="none";
    // })


    //数据库拿商品数据
    $content2=$(".content-2")[0];
         
    $.get("../api/index.php",function(result){
            var result=JSON.parse(result);
            console.log(result.row);
                 
            $content2.innerHTML=result.row.map(function(items){
                return `<div class="brand-item">
                            <a href="../html/lebiaoye.html" title="小迷糊" target="_blank">
                                <img original="http://b.appsimg.com/upload/hhcapps/2018/09/28/120/hhc1538104456590s7ko.png" src="${items.imgurl}" height="546" width="1242" style="display: inline;">
                            </a>
                            <p class="brand-info">${items.name}</p>
                        </div>`
            }).join("");     
        })
        // $addcar=$(".add-to-cart")[0];
        // $img=$(".pro-pic a img")[0];

        $content8=$(".content-8")[0];
        $.get("../api/index.php",function(result){
            var result=JSON.parse(result);
            $content8.innerHTML=result.row1.map(function(item){
                return ` <div class="pro-list pro-list-" idx="${item.id}">
                            <dl>
                                <dt class="pro-pic">
                                    <a href="${item.href}" target="_blank" title="${item.title}">
                                        <img alt="" title="${item.title}" src="${item.imgurl}" height="531" width="420"> 
                                    </a>
                                </dt> 
                                <dd class="pro-nam"> 
                                    <b> ${item.zhe}折/ </b> 
                                    <a href="${item.href}" target="_blank" title="${item.title}">${item.title}
                                    </a> 
                                    <i></i> 
                                </dd>
                                <dd class="pro-pri"> 
                                    <span>¥${item.nowprice}</span> <b> ¥${item.oldprice}</b> <a class="joinCar add-to-cart hide" href="javascript:;"> 加入购物车 </a> 
                                </dd> 
                                <div class="wrap"></div> 
                            </dl>
                        </div> `
            }).join("");
        })


            $(".content-8").on("mouseover",".pro-list",function(){     
                $(this).find(".joinCar").css("opacity","1");
                $(this).find(".pro-pic a img").css("opacity",0.3);       
            }).on("mouseout",function(){
                // console.log(this);
                // console.log(this);
                $(".add-to-cart").css("opacity",0);
                $(".pro-pic a img").css("opacity",1);
            });


            $(".content-8").on("click",".add-to-cart",function(){
                var arr=$.cookie('username')||'';
                if(arr==""){
                    alert("请先登录");
                }else{
                    $x=$(this).parents(".pro-list").attr("idx");
                    $.get("../api/shopcar.php",{idx:$x,username:arr},function(result){
                        showcar();     
                    });
                    // location.reload();
                          
                }                                                     
            })
            // function showcar(){
            //     var arr=$.cookie('username')||'';
            //         if(arr!=""){
            //             $.get("../api/Ssshopcar.php",{user:arr},function(result){
            //                 result=JSON.parse(result);
            //                 var zong=0;
            //                 var zprice=0;
            //                 result.map(function(item){
            //                     zprice+=item.nowprice*item.number;
            //                     zong+=Number(item.number);
            //                 }); 
            //                 $(".shopping-btn strong")[0].innerHTML=zong;
            //                 if(result==''){
            //                     $(".Chead-shopping").on("mouseover",function(){
            //                         $(this).find(".shopping-list").css("display","block");
            //                     }).on("mouseout",".shopping-list",function(){
            //                         $(this).css("display","none");
            //                     })
            //                 }else{
            //                     $(".shopping-list-bar")[0].innerHTML=result.map(function(item){
            //                             return `<dl><dt><a href="${item.href}" target="_blank"><img src="../${item.imgurl}"></a></dt><dd class="shopping-pro"><a href="${item.href}" target="_blank">${item.title}</a></dd><dd class="shopping-price"><em>￥${item.nowprice}</em>×${item.number}</dd></dl> `
            //                         }).join("");
            //                     $(".Chead-shopping").on("mouseover",function(){   
            //                         $(".shopping-list-title strong")[0].innerHTML=zong;
            //                         $("#totalProduct")[0].innerHTML=zong;
            //                         $("#totalMoney")[0].innerHTML=zprice;

            //                         $(this).find(".shopping-list").css("display","block");
            //                         $(this).find(".noshop").css("display","none");
            //                         $(this).find(".haveshop").css("display","block");
            //                         $(this).find("dt a").on("click",function(){console.log(666)
            //                              })
            //                 }).on("mouseout",".shopping-list",function(){$(this).css("display","none");})
            //                 }
                            
            //             })
                            
            //         // $(".Chead-shopping").on("mouseover",function(){

            //         //     $(".shopping-list").css("display","block");
            //         // }).on("mouseout",".shopping-list",function(){$(this).css("display","none");})
            //     };
            // }
                 

                 
    })
