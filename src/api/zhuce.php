<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = '1808-26';
    $conn = new mysqli($servername, $username, $password, $dbname);
    $conn->set_charset('utf8');
    $sql = 'select * from zhuce';
    $result = $conn->query($sql);
    $row = $result->fetch_all(MYSQLI_ASSOC);
    $len = count($row);
    $result->close();
    $nowtel=isset($_GET["tel"])? $_GET["tel"]:0;
    $nowpasswd=isset($_GET["passwd"])? $_GET["passwd"]:0;
        if($len==0){
            $sql = 'insert into zhuce (phone, password) values ("'.$nowtel.'","'.$nowpasswd.'")';
            $conn->query($sql);
        }else{
            $brr=array();
            for($x=0;$x<$len;$x++){
                $arr=array_values($row[$x]);
                array_push($brr, $arr[1]);
            }
            // var_dump($brr);
            if(!in_array($nowtel,$brr)){
                $sql = 'insert into zhuce (phone, password) values ("'.$nowtel.'","'.$nowpasswd.'")';
                $conn->query($sql);
            }
    }


?>