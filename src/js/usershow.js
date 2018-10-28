jQuery(function($){
    console.log(111);
    var arr=$.cookie('username')||'';
    if(arr!=''){
        $span=$(".Chead-welcome")[0];
        for($i=3;$i<=6;$i++){
            arr=arr.replace(arr[$i],"*");
        }
        // console.log(params);
        $span.innerHTML=`嗡，欢迎来乐蜂，<a mars_sead="lpc_top_name" href="../html/shopcar.html">${arr}</a>&nbsp; | &nbsp;<a mars_sead="lpc_top_el" href="#" id="exit">退出登录</a>`;
    }
    $("#exit").on("click",function(){
        $.removeCookie('username',{path:'/'});
        location.reload(); 

    })
    
})