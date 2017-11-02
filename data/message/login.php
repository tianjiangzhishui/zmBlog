<?php
header('Content-Type:application/json');
$email=$_REQUEST['email'];
$pwd=$_REQUEST['pwd'];
require('../init.php');
$sql="SELECT user_nickname,user_email FROM user WHERE user_email='$email' and user_pwd='$pwd'";
$result=mysqli_query($conn,$sql);
$rows=mysqli_fetch_assoc($result);
$count=mysqli_affected_rows($conn);
if($count>0){
    echo json_encode($rows);
}else
    echo "用户名或密码错误";
?>