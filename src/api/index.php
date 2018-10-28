<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = '1808-26';
    $conn = new mysqli($servername, $username, $password, $dbname);
    $conn->set_charset('utf8');
    $sql = 'select * from pinpai';
    $sql1='select * from shopcar';
    $sql2='select * from shopcar order by zhe asc';
    $sql3='select * from shopcar order by zhe desc';
    $sql4='select * from shopcar order by nowprice asc';
    $sql5='select * from shopcar order by nowprice desc';
    $result = $conn->query($sql);
    $result1 = $conn->query($sql1);
    $result2 = $conn->query($sql2);
    $result3 = $conn->query($sql3);
    $result4 = $conn->query($sql4);
    $result5 = $conn->query($sql5);
    $row = $result->fetch_all(MYSQLI_ASSOC);
    $row1 = $result1->fetch_all(MYSQLI_ASSOC);
    $row2 = $result2->fetch_all(MYSQLI_ASSOC);
    $row3 = $result3->fetch_all(MYSQLI_ASSOC);
    $row4 = $result4->fetch_all(MYSQLI_ASSOC);
    $row5 = $result5->fetch_all(MYSQLI_ASSOC);

    $len = count($row);
    $result->close();
    $result1->close();
    $result2->close();
    $result3->close();
    $result4->close();
    $result5->close();
    // for($i=0;$i<count($row);$i++){
    //     $brr=$row[$i][4];
    //     $crr=$row[$i][5];
    // }
    $array=array (
            "row"=>$row,
            "row1"=>$row1,
            "row2"=>$row2,
            "row3"=>$row3,
            "row4"=>$row4,
            "row5"=>$row5
        );
    echo json_encode($array,JSON_UNESCAPED_UNICODE);


?>