<?php
    $idx=isset($_GET["idx"])? $_GET["idx"]:0;
    $num=isset($_GET["num"])? $_GET["num"]:1;
    $username1=isset($_GET["username"])? $_GET["username"]:"";
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = '1808-26';
    $conn = new mysqli($servername, $username, $password, $dbname);
    $conn->set_charset('utf8');
    $sql = 'select * from shopcar where id='.$idx.'';
    $sql1='select * from usercar';
    $result = $conn->query($sql);
    $result1 = $conn->query($sql1);
    $row = $result->fetch_all(MYSQLI_ASSOC);
    $user = $result1->fetch_all(MYSQLI_ASSOC);
    $len=count($user);
    $result->close();
    $result1->close();
    ;
    $rowdata=$row[0];
    // var_dump($len);
    if( $len == 0){
        $sql1 = 'insert into usercar (user, id, href,title,imgurl,nowprice,oldprice,number) values ("'.$username1.'", "'.$rowdata['id'].'","'.$rowdata['href'].'","'.$rowdata['title'].'","'.$rowdata['imgurl'].'","'.$rowdata['nowprice'].'",'.$rowdata['oldprice'].','.$num.')';
            $conn->query($sql1);
    }else{
        for($x=0;$x<$len;$x++){
            $arr=array_values($user[$x]);
        // var_dump($arr);
            if($idx == $arr[1]){
                $next=($arr[7]+$num);
                // var_dump($next);
                $sql1='update usercar set number='.$next.' where id='.$arr[1].'';
                $conn->query($sql1);
                // break ;
            }else{
                $sql1 = 'insert into usercar (user, id, href,title,imgurl,nowprice,oldprice,number) values ("'.$username1.'", "'.$rowdata['id'].'","'.$rowdata['href'].'","'.$rowdata['title'].'","'.$rowdata['imgurl'].'","'.$rowdata['nowprice'].'",'.$rowdata['oldprice'].','.$num.')';
            $conn->query($sql1);
            // break ;
        }
        }
    }

    

?>