<?php
    header("Content-Type:text/plain;charset=utf-8");
    @$number = $_REQUEST['number'] or die('-1');
    @$uname = $_REQUEST['name'] or die('-2');
    @$upwd = $_REQUEST['pwd'] or die('-3');
    $conn = mysqli_connect('127.0.0.1','root','','home');
    $sql = "SET NAMES UTF8";
    mysqli_query($conn,$sql);
    $sql = "INSERT INTO login VALUES(null,'$number','$uname','$upwd')";
    $result = mysqli_query($conn,$sql);
    if($result===true){
        echo "1";
    }else{
        echo "-4";
    }
?>