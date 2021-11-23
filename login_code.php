<!--
Here, we write code for login.
-->
<?php
 $conn = mysqli_connect("localhost","root","","Registrationdb");

require_once('./connection.php');
$email = $password = $pwd = '';

$email = $_POST['email'];
$pwd = $_POST['password'];
$password = MD5($pwd);
// $sql = "SELECT * FROM tbluser WHERE Email='$email' AND Password='$password'";
$sql = "SELECT * FROM `tbluser` WHERE email='$email' AND password='$pwd'";
$result = mysqli_query($conn, $sql);
if(mysqli_num_rows($result) > 0)
{
	while($row = mysqli_fetch_assoc($result))
	{
		$id = $row["id"];
		$email = $row["email"];
		session_start();
		$_SESSION['id'] = $id;
		$_SESSION['email'] = $email;
	}
	header("Location: welcome.php");
}
else
{
	echo "Invalid email or password";
}
// $conn = mysqli_connect("localhost","root","","Registrationdb");
// $email = $_POST['email'];
//  $pwd = $_POST['password'];
//  $sql = "SELECT * FROM tbluser WHERE email='$email' AND password='$pwd'";
//  $result = mysqli_query($conn,$sql);
//  $count=mysqli_num_rows($result);
//  if($count>0){
// 	 echo'sucesss';
//  }
// else{
// 	echo'fail';
// }









?>