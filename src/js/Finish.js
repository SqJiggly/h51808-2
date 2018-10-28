jQuery(function($){
    var arr=$.cookie('username');
    Finishcar();
    function Finishcar(){
        $.get("../api/Ssshopcar.php",{user:arr},function(result){
            result=JSON.parse(result);
            var zong=0;
            var zprice=0;
                
                $(".list table tbody")[0].innerHTML=result.map(function(item){
                        zprice+=item.nowprice*item.number;
                        var soloprice=item.nowprice*item.number;
                        zong+=Number(item.number);
                        return `
                            <tr idx="${item.id}">
                                    <td class="td01">
                                        <div class="pic">
                                            <a href="${item.href}" target="_blank">
                                                <img width="58" height="74" alt="" src="../${item.imgurl}">
                                            </a>
                                        </div>
                                        <div class="fr">
                                            <div class="name">
                                                <a title="" href="${item.href}" target="_blank">${item.title}</a>
                                            </div>
                                            <div class="size">规格:均码</div>
                                        </div>   
                                    </td>
                                    <td class="td02">
                                        <span class="m-price">
                                            <span class="u-yen">¥</span>
                                            <strong class="u-price">${item.nowprice}</strong>
                                        </span>
                                        <del class="mar-price">
                                            <span class="u-yen">¥</span>
                                            <span class="u-price">${item.oldprice}</span>
                                        </del>
                                    </td>
                                    <td class="td03">
                                        <div class="quantity">
                                        <span class="l-no">-</span>
                                        <a href="javascript:;" class="l-y" action="minus">-</a>
                                        <input size_id="462498709" buy_num_min="1" buy_num_max="20" name="" value="${item.number}" type="text" class="tip"><span class="r-no">+</span>
                                        <a href="javascript:;" action="add" class="r-y">+</a>
                                        </div>
                                    </td>
                                    <td class="td04">
                                        <span class="m-price">
                                            <span class="u-yen">¥</span>
                                            <strong class="u-price">${soloprice}</strong>
                                        </span>
                                    </td>
                                    <td class="td05">
                                        <a href="javascript:;" class="del" value="462498709">删除</a>
                                        <div class="cart-error"></div>
                                    </td>
                                </tr>
                        `
                    }).join("");
                    $(".cart-j").find(".u-price").html(zprice);
                    $(".cart-b ul li b").html(zong);
            
        });
    }
    $(".list").on("click",".del",function(){
        $nowfa=$(this).closest("tr");
        $nowidx=$nowfa.attr("idx");
        console.log($nowidx);
        $.get("../api/Ssshopcar.php",{user:arr,idx:$nowidx},function(){
            Finishcar();
        });
        $(this).closest("tr").remove();
        // location.reload();

    })
              
})
