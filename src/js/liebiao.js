jQuery(function($){
    showcar();
    $(".Cnav-menu-btn").on("mouseover",function(){
        $(this).addClass("active");
        $(this).find(".float-list").css("display","block");
    }).on("mouseout",function(){
        $(this).removeClass("active");
        $(this).find(".float-list").css("display","none");
    });
    
        $.get("../api/index.php",function(result){
            result=JSON.parse(result);
            result=result.row1;
                $(".makeup")[0].innerHTML=result.map(function(item){
                    return `
                                <div class="pruwrap" idx="${item.id}">
                                <dl>
                                <dt>
                                    <a href="../${item.href}" title="${item.title}" target="_blank"><img src="../${item.imgurl}" alt="${item.title}"></a>
                                    <ul class="pro-tags">
                                    </ul>
                                </dt>

                                <dd class="nam">
                                    <a title="${item.title}" target="_blank" href="../${item.href}">
                                        <span>${item.title}</span>
                                    </a>
                                </dd>
                                <dd class="pri">
                                    <span class="price-tag">￥</span>
                                    <span class="price">${item.nowprice}</span>
                                    <b> (${item.zhe}折) </b>
                                    <del class="spri">￥${item.oldprice}</del>
                                    <a class="to joinCar add-to-cart " href="javascript:void(0)">加入购物车</a>
                                </dd>
                                </dl>
                                </div> `
                }).join("");
        })    
        
    $(".makeup").on("click",".add-to-cart",function(){
                var arr=$.cookie('username')||'';
                if(arr==""){
                    alert("请先登录");
                }else{
                    $x=$(this).parents(".pruwrap").attr("idx");
                    $.get("../api/shopcar.php",{idx:$x,username:arr},function(result){
                        showcar();     
                    });
                    // location.reload();
                          
                }                                                     
            });
    $(".pristate1").on("click",function(){
        $(this).toggleClass('active');
        if($(this).hasClass('active')){
                $.get("../api/index.php",function(result){
                    var result=JSON.parse(result);
                    result=result.row2;
                    $(".makeup")[0].innerHTML=result.map(function(item){
                        return `
                                <div class="pruwrap" idx="${item.id}">
                                <dl>
                                <dt>
                                    <a href="../${item.href}" title="${item.title}" target="_blank"><img src="../${item.imgurl}" alt="${item.title}"></a>
                                    <ul class="pro-tags">
                                    </ul>
                                </dt>

                                <dd class="nam">
                                    <a title="${item.title}" target="_blank" href="../${item.href}">
                                        <span>${item.title}</span>
                                    </a>
                                </dd>
                                <dd class="pri">
                                    <span class="price-tag">￥</span>
                                    <span class="price">${item.nowprice}</span>
                                    <b> (${item.zhe}折) </b>
                                    <del class="spri">￥${item.oldprice}</del>
                                    <a class="to joinCar add-to-cart " href="javascript:void(0)">加入购物车</a>
                                </dd>
                                </dl>
                                </div> `
                }).join("");
                });
        }else{
            $.get("../api/index.php",function(result){
                    var result=JSON.parse(result);
                    result=result.row3;
                    $(".makeup")[0].innerHTML=result.map(function(item){
                        return `
                                <div class="pruwrap" idx="${item.id}">
                                <dl>
                                <dt>
                                    <a href="../${item.href}" title="${item.title}" target="_blank"><img src="../${item.imgurl}" alt="${item.title}"></a>
                                    <ul class="pro-tags">
                                    </ul>
                                </dt>

                                <dd class="nam">
                                    <a title="${item.title}" target="_blank" href="../${item.href}">
                                        <span>${item.title}</span>
                                    </a>
                                </dd>
                                <dd class="pri">
                                    <span class="price-tag">￥</span>
                                    <span class="price">${item.nowprice}</span>
                                    <b> (${item.zhe}折) </b>
                                    <del class="spri">￥${item.oldprice}</del>
                                    <a class="to joinCar add-to-cart " href="javascript:void(0)">加入购物车</a>
                                </dd>
                                </dl>
                                </div> `
                }).join("");
                });
        }
    });
    $(".pristate2").on("click",function(){
        $(this).toggleClass('active');
        if($(this).hasClass('active')){
                $.get("../api/index.php",function(result){
                    var result=JSON.parse(result);
                    result=result.row4;
                    $(".makeup")[0].innerHTML=result.map(function(item){
                        return `
                                <div class="pruwrap" idx="${item.id}">
                                <dl>
                                <dt>
                                    <a href="../${item.href}" title="${item.title}" target="_blank"><img src="../${item.imgurl}" alt="${item.title}"></a>
                                    <ul class="pro-tags">
                                    </ul>
                                </dt>

                                <dd class="nam">
                                    <a title="${item.title}" target="_blank" href="../${item.href}">
                                        <span>${item.title}</span>
                                    </a>
                                </dd>
                                <dd class="pri">
                                    <span class="price-tag">￥</span>
                                    <span class="price">${item.nowprice}</span>
                                    <b> (${item.zhe}折) </b>
                                    <del class="spri">￥${item.oldprice}</del>
                                    <a class="to joinCar add-to-cart " href="javascript:void(0)">加入购物车</a>
                                </dd>
                                </dl>
                                </div> `
                }).join("");
                });
        }else{
            $.get("../api/index.php",function(result){
                    var result=JSON.parse(result);
                    result=result.row5;
                    $(".makeup")[0].innerHTML=result.map(function(item){
                        return `
                                <div class="pruwrap" idx="${item.id}">
                                <dl>
                                <dt>
                                    <a href="../${item.href}" title="${item.title}" target="_blank"><img src="../${item.imgurl}" alt="${item.title}"></a>
                                    <ul class="pro-tags">
                                    </ul>
                                </dt>

                                <dd class="nam">
                                    <a title="${item.title}" target="_blank" href="../${item.href}">
                                        <span>${item.title}</span>
                                    </a>
                                </dd>
                                <dd class="pri">
                                    <span class="price-tag">￥</span>
                                    <span class="price">${item.nowprice}</span>
                                    <b> (${item.zhe}折) </b>
                                    <del class="spri">￥${item.oldprice}</del>
                                    <a class="to joinCar add-to-cart " href="javascript:void(0)">加入购物车</a>
                                </dd>
                                </dl>
                                </div> `
                }).join("");
                });
        }
    });
    
})