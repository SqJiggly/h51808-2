jQuery(function($){
    $(".Cnav-menu-btn").on("mouseover",function(){
        $(this).addClass("active");
        $(this).find(".float-list").css("display","block");
    }).on("mouseout",function(){
        $(this).removeClass("active");
        $(this).find(".float-list").css("display","none");
    });
    var params=decodeURI(location.search);
    params=params.slice(1);
    params=params.split("=");
    $id=params[1];     
    // console.log(params[0]);     
    $.get("../api/shop.php",{id:$id},function(result){
            var result=JSON.parse(result);
            console.log(result);
                 
            console.log(result[0].title);
            $(".path").html(result[0].title);
            $(".bigProduct-c dd h1").html(result[0].title);
            $(".dity-pic img").attr({src:"../"+result[0].imgurl});
            $(".dity-price-c strong").html(result[0].nowprice);
            $(".dity-countdown").html(result[0].zhe+"折");
            $(".marketPrice-s").html(result[0].oldprice);
    });
    $("#dity-m").on("click",function(){
        if($(".dity-input")[0].value>1){
            $(".dity-input")[0].value--;
        }
    });
    $("#dity-p").on("click",function(){
        $(".dity-input")[0].value++;
    });
    $(".add-to-cart-pro").on("click",function(){
        var arr=$.cookie('username')||'';
                if(arr==""){
                    alert("请先登录");
                }else{
                    $val=$(".dity-input")[0].value;
                    $x=$id;
                    $.get("../api/shopcar.php",{idx:$x,username:arr,num:$val},function(result){
                        // result=JSON.parse(result);
                        // console.log(result);  
                        showcar();   
                    });
                    
                         
                }
    })
    showcar();
})