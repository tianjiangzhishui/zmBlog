<?php
header("Content-Type:text/html;charset=utf-8");

$nickname=$_REQUEST['nickname'] or die('请输入昵称');
$email=$_REQUEST['email'] or die('请输入邮箱');
$pwd=$_REQUEST['pwd'] or die('请输入密码');
$website=$_REQUEST['website'];
$isRemember=$_REQUEST['isRemember'];
//访问数据库
require ('../init.php');
//首先验证用户名是否存在
$sql="SELECT * FROM user WHERE user_email='$email'";
$result=mysqli_query($conn,$sql);
$count=mysqli_affected_rows($conn);
if($count>0){    //如果查寻到结果
    echo "用户名已存在！";
}else{
    $sql="INSERT INTO user VALUES (NULL ,'$nickname','$email','$pwd','$website','$isRemember')";
    $result=mysqli_query($conn,$sql);
    $sql="SELECT * FROM user WHERE user_email='$email'";
    $result=mysqli_query($conn,$sql);
    $count=mysqli_affected_rows($conn);
    //insert语句执行成功
    if($count>0){
        //$str[0].msg="注册成功，让我们一起分享经验吧 ^_^";
        $rows=mysqli_fetch_all($result,MYSQLI_ASSOC);
        echo json_encode($rows);
    }else
        echo "注册失败,请检查必填信息是否正确。";
}
?>