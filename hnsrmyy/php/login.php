<?php
	header("Content-Type:text/plain;charset=utf-8");
    @$uname = $_REQUEST['n'] or die('-1');
    @$upwd = $_REQUEST['p'] or die('-2');
    $conn = mysqli_connect("127.0.0.1","root","","home");
    $sql = "SET NAMES UTF8";
    mysqli_query($conn,$sql);
    $sql = "SELECT * FROM login WHERE uname='$uname' AND upwd='$upwd'";
    $result = mysqli_query($conn,$sql);  //结果集对象
    $row = mysqli_fetch_assoc($result);
    //var_dump($row);
    if($row===NULL){
    echo "-3";
    }else{
    echo "1";
    }
?>