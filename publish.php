<?php
session_start();

include('dbconnection.php');
  $organisation=$_SESSION['login'];
if(isset($_POST['publish'])){

    $advertisement=$_POST['request'];
    $deadline=date('y/m/d',strtotime($_POST['deadline']));
    $eventdate=date('y/m/d',strtotime($_POST['eventdate']));
    $novol=$_POST['noofvol'];
    $query="DELETE from volunteering_advertisement where organisation='$organisation'";

if($del=mysqli_query($con,$query)){
  $que="INSERT into volunteering_advertisement(organisation,volunteering_add,deadline,no,eventdate) VALUES('$organisation','$advertisement','$deadline','$novol','$eventdate')";
  if($exec=mysqli_query($con,$que)){

    echo '<script type="text/JavaScript">
         alert("Your request has been published successfully");
         window.location.href = "volunteering requests.php";
         </script>'  ;



  }
  else {
    echo"there was an errror";
  }
}



}
?>
