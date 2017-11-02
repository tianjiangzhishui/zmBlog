<?php
//后台结合
header('Content-Type:application/json;charset=utf-8');
require('../init.php');
//限定加载前5个数据
$sql="SELECT * FROM backing";
$result = mysqli_query($conn,$sql);
$rows=mysqli_fetch_all($result,MYSQLI_ASSOC);
if($rows==null){
    echo '获取失败！';
}else
    echo json_encode($rows);
?>