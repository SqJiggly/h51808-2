jQuery(function($){
    $("#formSubmit").on("click",function(){
        $loginName=$("#loginName")[0].value;
        $passwd=$("#passwd")[0].value;
        // console.log($loginName,$passwd);
         $.get("../api/denglu.php",{loginName:$loginName,passwd:$passwd},function(result){
                // console.log(result);
                if(result=="yes"){
                    location.href="../index.html";
                    $.cookie('username',$loginName,{expires:1,path:'/'});

                }else{
                    alert("请检查密码，或前去注册");
                }
         });
             
    })
})

