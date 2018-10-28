<?php
    $id=isset($_GET["id"])? $_GET["id"]:1;
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = '1808-26';
    $conn = new mysqli($servername, $username, $password, $dbname);
    $conn->set_charset('utf8');
    $sql = 'select * from shopcar where id='.$id.'';
    $result = $conn->query($sql);
    $row = $result->fetch_all(MYSQLI_ASSOC);
    $result->close();
    ;
     echo json_encode($row,JSON_UNESCAPED_UNICODE);

?>