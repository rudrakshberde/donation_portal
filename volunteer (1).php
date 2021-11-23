<?php
$server ="localhost";
$user ="root";
$password ="";
$db="Volunteer";

$con = mysqli_connect($server,$user,$password,$db);
if($con){
    ?>
    <script>
        alert('lol ');
    </script>
    <?php
    }else {
        ?>
        <script>
        alert('connection not sucessful');
    </script>
    <?php
    }
    
    
    ?>