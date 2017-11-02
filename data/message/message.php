<?php
header("Content-Type:text/html;charset=utf-8");

$msgContent=$_REQUEST['msgContent'] or die('请输入内容');
$msgUserEmail=$_REQUEST['msgUserEmail'] or die('请登录');
//访问数据库
require ('../init.php');
//首先验证用户名是否存在
$sql="INSERT INTO message VALUES (null,'$msgUserEmail','$msgContent',0,0,0,now())";
$result=mysqli_query($conn,$sql);
$sql="SELECT max(msg_id) FROM message WHERE msg_user_email='$msgUserEmail'";
$result=mysqli_query($conn,$sql);
$rows=mysqli_fetch_array($result,MYSQLI_ASSOC);
$msg_id=$rows["max(msg_id)"];
$sql="SELECT * FROM message WHERE msg_id=$msg_id";
$result=mysqli_query($conn,$sql);
$rows=mysqli_fetch_array($result,MYSQLI_ASSOC);
if($rows===null){    //如果查寻到结果
    //echo '评论失败！';
}else{
    echo json_encode($rows);
}
?>