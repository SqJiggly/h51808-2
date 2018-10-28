<?php
    $user=isset($_GET["user"])? $_GET["user"]:"";
    $curtdel=isset($_GET["idx"])? $_GET["idx"]:0;

    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = '1808-26';
    $conn = new mysqli($servername, $username, $password, $dbname);
    $conn->set_charset('utf8');
    $sql = 'select * from usercar where user="'.$user.'"';
    $result = $conn->query($sql);
    $row = $result->fetch_all(MYSQLI_ASSOC);
    $result->close();
    if($curtdel!=0){
        $sql='delete from usercar where (user="'.$user.'" and id="'.$curtdel.'")';
        $conn->query($sql);
    }
     echo json_encode($row,JSON_UNESCAPED_UNICODE);

?>