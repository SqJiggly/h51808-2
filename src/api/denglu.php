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
    $loginName=isset($_GET["loginName"])? $_GET["loginName"]:0;
    $nowpasswd=isset($_GET["passwd"])? $_GET["passwd"]:0;
            
            // var_dump($row);
            $brr=array();
            for($x=0;$x<$len;$x++){
                $arr=array_values($row[$x]);
                array_push($brr, $arr);
            }
            for($y=0;$y<count($brr);$y++){
                if($loginName==$brr[$y][1]&&$nowpasswd==$brr[$y][2]){
                    echo "yes";
                    break ;
                }else if($y==count($brr)-1){
                    echo "no";
                }
            }
            


?>