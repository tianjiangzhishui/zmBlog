<?php
header("Content-Type:application/json;charset=utf-8");
require('init.php');
//获取参数:页面   17:35---17:37
@$pageNo = $_REQUEST['pageNo'];
$offset = ($pageNo-1)*8;
//  select * from jd_product limit m,n;指的是从index=0开始，n截至；

$sql = "SELECT * FROM jd_product LIMIT $offset,8";
$result = mysqli_query($conn,$sql);
$row = mysqli_fetch_all($result,MYSQLI_ASSOC);
echo $row;
$str = json_encode($row);
echo $str;
?>