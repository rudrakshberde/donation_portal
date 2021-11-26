<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>home page</title>
<link rel="stylesheet" href="style.css">
<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,600,700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
  #card{
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  margin:10px;
  padding:5px;
  width:35vw;
  height:15vh:
  }
  button#volunteer:hover {
      background-color: #ffff;
      color:Black;
      border: 1px solid #111;

    }
    .log{
    width:100px;
    height:40px;
    background-color:black;
    border:none;
    color:white;
    border-radius: 13px;
  align: center;
    }


</style> 
</head>
<body>
    <section class="header">
        <div class="heads">
       
            <ul>
                <li><a href="donation form.php"><button class="button">DONATE</button></a></li>
                <li><a href="volunteering form.php"><button class="button">VOLUNTEER</button></a></li>
            </ul>
        </div>
        <nav>
            <a href="index.html"><img src="images/nss2-removebg-preview-removebg-preview.jpg"></a>
            <div class="nav-links" id="navLinks">  
                <i class="fa fa-close" onclick="hideMenu()"></i>
                <ul>
                    <li><a href="index.php">HOME</a></li>
                    <li><a href="about.html">ABOUT US</a></li>
                    <li><a href="activities.php">ACTIVITIES</a></li>
                    <li><a href="contact.html">CONTACT</a></li>
                </ul>
            </div>
            <i class="fa fa-bars" onclick="showMenu()"></i>
        </nav>
        
        <div class="text-box">
            <h1>NSS WEBSITE VIDYALANKAR</h1>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Officiis, aperiam!<br> THIS WEBSITE IS FOR NSS.</p>
            <a href="about.html" class="hero-btn">Visit Us to Know More</a>
        </div>
    </section>
    
<!---------- course ----------->
    
    <section class="course">
        <h1>OTHER THINGS WE DO</h1>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
        <div class="row">
            <div class="course-col">
                <h3>DONATE</h3>
                <p>Donate clothes,food,etc to the ones in need via various NGOS.</p>
            </div>
            <div class="course-col">
                <h3>VOLUNTEER</h3>
                <p>Volunteer for various drives and events for different NGOS working in different fields.</p>
            </div>
            <div class="course-col">
                <h3>EXPLORE</h3>
                <p>explore and get to know more about different NGOS and the events that they organize.</p>
            </div>
        </div>
    </section>
    
<!---------- campus ---------->
    
    <h1 align="center">ACTIVITIES</h1>
        <p align="center">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
    
    
    

    
    <section class="facility"  style="display:flex;
  flex-wrap: wrap;">
   <?php
                include('dbconnection.php');
            $sql = "SELECT * FROM activities  ORDER BY date_time desc  LIMIT 3";
          ?>
  <div class="row">
 
<?php
            if($result = mysqli_query($con, $sql)){
                if(mysqli_num_rows($result) > 0){
                    

                  while($row = mysqli_fetch_array($result)){
                    
                  ?>
                <div class="facility-col">
                    <img src="images/library.png">
                    <h3><?php echo $row['eventtitle']?></h3>
                    <p><?php echo $row['eventdesc']?></p>
                    <h5>ORGANIZED BY:<?php echo $row['organisation']?></h5>
                       <h5>EVENT DATE:<?php echo $row['date']?></h5>

                </div>
                <?php   }


mysqli_free_result($result);
}
} ?>

               
 </div>
           
    </section>

    <section class="cta">
    
        <h1>BECOME A PART OF US , TO HELP THE NEEDY</h1>
         <a href="volunteering form.php" class="hero-btn">VOLUNTEER HERE</a>
     
 </section>   
    
<!---------- Facilities ---------->
    
    <section class="facility">
        <h1>OTHER ORGANISATIONS</h1>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            <div class="row">
                <div class="facility-col">
                    <img src="images/library.png">
                    <h3>World Class Library</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque aliquet turpis nulla.</p>
                </div>
                <div class="facility-col">
                    <img src="images/basketball.png">
                    <h3>Largest Play Ground</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque aliquet turpis nulla.</p>
                </div>
                <div class="facility-col">
                    <img src="images/cafeteria.png">
                    <h3>Tasty and Healthy Food</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque aliquet turpis nulla.</p>
                </div>
            </div>
    </section>
    <h1 align="center">LATEST VOLUNTEERING REQUESTS</h1>
        <p align="center">Checkout the latest volunteering opportunities posted by NGOS</p>
    
    <section class="facility"  style="  display:flex;
  flex-wrap: wrap;" >
    <?php


$sql = "SELECT * FROM volunteering_advertisement ORDER BY date_time desc";
?>
        
        <?php
                  if($result = mysqli_query($con, $sql)){
                      if(mysqli_num_rows($result) > 0){

                        while($row = mysqli_fetch_array($result)){
                        ?>
       
            <div id="card">
                 
           
                <div class="facility-col">
                <p>Request posted on:<?php echo $row['date_time']; ?></p>
                    
                    <h3>organisation:<ins><?php $org=explode(".",$row['organisation']);
                               echo $org[0]; ?></ins></h3>
                    <p style="width:25vw;"><?php  echo $row['volunteering_add'];  ?></p>
                    <h5>No of volunteers re5quired:<?php  echo $row['no'];  ?></h5>
                    <h4>Event Date:<?php  echo $row['eventdate'];  ?></h4>
                    <h4>Apply Before:<?php  echo $row['deadline'];  ?></h4>
                    <br>
                    <br>
                    <p  align="center"><a href="volunteering form.php" ><button class="log" id="volunteer" >Volunteer</button></a></p>
                </div>
               
            </div>
            <?php   }


mysqli_free_result($result);
}
} ?>

    </section>

<section class="cta">
    
       <h1>THIS PROTAL IS ONLY FOR THE REGISTERED NGOS AND STAFF MEMBERS OF NSS</h1>
        <a href="login R.php" class="hero-btn">NGO LOGIN</a>
    
</section>    
 
<!-------- footer ---------->

<section class="footer">
        <h4>About Us</h4>
        <p>We provide a user friendly interface for both donors/volunteers and NGOs to publish donation and volunteering requests online.</p>
        <div class="icons">
            <a href="https://www.youtube.com/c/EasyTutorialsVideo?sub_confirmation=1"><i class="fa fa-facebook"></i></a>
            <a href="https://www.youtube.com/c/EasyTutorialsVideo?sub_confirmation=1"><i class="fa fa-twitter"></i></a>
            <a href="https://www.youtube.com/c/EasyTutorialsVideo?sub_confirmation=1"><i class="fa fa-instagram"></i></a>
            <a href="https://www.youtube.com/c/EasyTutorialsVideo?sub_confirmation=1"><i class="fa fa-linkedin"></i></a>
            
        </div>
        
</section>    
  
  
<!----JavaScript for toggle menu---->
<script>
    var navLinks = document.getElementById("navLinks");

    function showMenu() {
        navLinks.style.right = "0";
    }

    function hideMenu() {
        navLinks.style.right = "-200px";
    }
</script> 
    
</body>
</html>







