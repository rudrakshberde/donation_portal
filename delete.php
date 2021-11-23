
  <?php



session_start();

$link=mysqli_connect('localhost','root','','donations');
$filters=$_SESSION['nume'];

$sql="DELETE from completed where id='$filters'";
if($del=mysqli_query($link,$sql)){
header("location:history.php");


}
 ?>
