jQuery(function($){
    $("#registerBtn").on("click",function(){
             $tel=$("#mobileNo")[0].value;
             $passwd=$("#passwd")[0].value;
             $.get("../api/zhuce.php",{tel:$tel,passwd:$passwd});                      
    })
})

