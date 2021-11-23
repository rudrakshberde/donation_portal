<?php
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Document</title>
</head>
<style>
    body{
        background-color: whitesmoke;
    }
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;

}
th, td {
  padding: 10px;
  text-align: center;
}

</style>
<body>
  <div class="container">
    <h1>DASHBOARD

    </h1>
    <hr>
  </div>
<h2 style="text-align: center;">Number of Volunteer's:</h2>

<table style="width:100%">
  <tr>
    <th>ID</th>
    <th>FirstName</th>
    <th>LastName</th>
    <th>Gender</th>
    <th>Email</th>
    <th>Phone</th>
    <th>Address</th>
    <th>NSS member:</th>

  </tr>
  <?php
  include'dbconnection.php';

  $selectquery ="SELECT `id`, `firstname`, `lastname`, `gender`, `email`, `phone`, `address`, `nss` FROM `volunteer`";
  $query = mysqli_query($con,$selectquery);

while($result = mysqli_fetch_assoc($query)){
    ?>
     <tr>
      <td><?php echo $result['id'] ?></td>
      <td><?php echo $result['firstname'] ?></td>
      <td><?php echo $result['lastname'] ?></td>
      <td><?php echo $result['gender'] ?></td>
      <td><?php echo $result['email'] ?></td>
      <td><?php echo $result['phone'] ?></td>
      <td><?php echo $result['address'] ?></td>
      <td><?php echo $result['nss'] ?></td>


  </tr>
  <?php
}




  ?>

</table>
</body>
</html>
