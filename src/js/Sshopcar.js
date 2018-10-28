
    function showcar(){
        jQuery(function($){
        var arr=$.cookie('username')||'';
        if(arr!=""){
            $.get("../api/Ssshopcar.php",{user:arr},function(result){
                result=JSON.parse(result);
                var zong=0;
                var zprice=0;
                result.map(function(item){
                    zprice+=item.nowprice*item.number;
                    zong+=Number(item.number);
                }); 
                $(".shopping-btn strong")[0].innerHTML=zong;
                if(result==''){
                    $(".Chead-shopping").on("mouseover",function(){
                        $(this).find(".shopping-list").css("display","block");
                    }).on("mouseout",".shopping-list",function(){
                        $(this).css("display","none");
                    })
                }else{
                    $(".shopping-list-bar")[0].innerHTML=result.map(function(item){
                            return `<dl><dt><a href="${item.href}" target="_blank"><img src="../${item.imgurl}"></a></dt><dd class="shopping-pro"><a href="${item.href}" target="_blank">${item.title}</a></dd><dd class="shopping-price"><em>￥${item.nowprice}</em>×${item.number}</dd></dl> `
                        }).join("");
                    $(".Chead-shopping").on("mouseover",function(){   
                        $(".shopping-list-title strong")[0].innerHTML=zong;
                        $("#totalProduct")[0].innerHTML=zong;
                        $("#totalMoney")[0].innerHTML=zprice;

                        $(this).find(".shopping-list").css("display","block");
                        $(this).find(".noshop").css("display","none");
                        $(this).find(".haveshop").css("display","block");
                        $(this).find("dt a").on("click",function(){console.log(666)
                             })
                }).on("mouseout",".shopping-list",function(){$(this).css("display","none");})
                }
                
            })
                
        
    }else{
        $(".Chead-shopping").on("mouseover",function(){

            $(".shopping-list").css("display","block");
        }).on("mouseout",".shopping-list",function(){$(this).css("display","none");})
    };
    })
}
         

