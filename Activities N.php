<!DOCTYPE html>
<html>
<head>
	<title>Activities</title>

	<style>



body
{
  font-family: Verdana, sans-serif; margin:50px; background-image:url('ngo.jpeg');
  background-size:cover;
}

 *{
  box-sizing: border-box;
  margin:0px;
 }

 .container{
  max-width: 1170px;
  margin-top: -150px;

 }
 .row{
  display: flex;
  flex-wrap: wrap;
 }
.section-title{
  flex:0 0 100%;
  max-width: 100%;
  margin-bottom: 60px;
}
.section-title h1{
  text-align: center;
  font-size: 36px;
  font-family: serif;
  color:#532770;

}
 .events{
  min-height: 100vh;
  padding:80px 0;
 }

.events .event-items{
  flex:0 0 100%;
  max-width: 100%;
  
}
.events .event-items .item{
  flex:0 0 40%;
  max-width: 40%;
  padding: 15px;
  margin-left:350px;

}
.event-items{
  display:flex;
  justify-content:space-around;
  flex-wrap: wrap;
}

.events .event-items .item-inner{
  border:1px solid #dddddd;
  padding: 30px;
  background-color: floralwhite;
}
.events .event-items .read-more-cont{
  display: none;
}
.events .event-items .item-inner h3{
  font-size: 30px;
  color: darkgoldenrod;
  margin-bottom: 30px;
  position: relative;
}
.events .event-items .item-inner h3::before{
  content: '';
  height: 1px;
  width: 80px;
  background-color: #000000;
  position: absolute;
  left:0;
  bottom:-10px;
}

.events .event-items .item-inner p{
  color:#555555;
  font-size: 16px;
  margin:0 0 30px;
}
.events .event-items .item-inner .btn{
  font-size: 20px;
  background-color:#990099;
  border:1.5px solid #555555;
  color:honeydew;
  padding: 8px 15px;
  cursor: pointer;
  border-radius: 5px;
}

.popup-box{
  position: fixed;
  height: 100%;
  width: 100%;
  left: 0;
  top:0;
  background-color: rgba(0,0,0,0.5);
  z-index: 500;
  visibility: hidden;
  opacity:0;
  transition: all 0.5s ease-in-out;
}
.popup-box.open{
  visibility: visible;
  opacity:1;
}
.popup-box .popup-content{
  background-color: #ffffff;
  width: 600px;
  position: absolute;
  left: 50%;
  top:50%;
  transform: translate(-50%,-50%);
  border-radius: 8px;
}

.popup-box .popup-header{
  padding: 15px 40px 15px 15px;
  border-bottom: 1px solid #dddddd;
}
.popup-box .popup-header h3{
  margin:0;
  color:#E91E63;
  font-size: 20px;
}
.popup-box .popup-header .popup-close-icon{
  position: absolute;
    height: 30px;
    width: 30px;
    text-align: center;
    color: #555555;
    font-size: 28px;
    line-height: 30px;
    right: 5px;
    top: 5px;
    cursor: pointer;
}
.popup-box .popup-body{
  padding: 15px;
  max-height: 300px;
  overflow-y: auto;
}
.popup-box .popup-body img{
  width: 100%;
  display: block;
  margin-top: 15px;
}
.popup-box .popup-body p{
  font-size: 16px;
  color:#555555;
  margin:0 0 15px;
}
.popup-box .popup-footer{
  padding: 15px;
  border-top:1px solid #dddddd;
  text-align: right;
}
.popup-box .popup-footer .btn{
  padding: 8px 15px;
  border:1px solid #555555;
  color:#555555;
  font-size: 16px;
  background-color: transparent;
  cursor: pointer;
  border-radius: 4px;
}
.popup-box .popup-footer .btn:focus{
  outline: none;
}

.row {margin: 0 -5px;}


.row:after {
  content: "";
  display: table;
  clear: both;
}


@media(max-width: 767px){
  .services .service-items .item{
    flex:0 0 100%;
      max-width: 100%;
   }
   .popup-box .popup-content{
     width: calc(100% - 30px);
   }
}
img{
  flex:0 0 100%;
  max-width: 100%;
  
  
  padding: 10px;
}






	</style>
</head>
<body>
   <h1 style="text-align:center;color:purple;padding:20px;font-size:40px;"><u>EVENTS</u></h1>
<section class="events">
    <div class="container">
       <div class="row">
         
           <div class="section-title">
           <?php
                  include('dbconnection.php');
                  $sql = "SELECT * FROM activities ORDER BY date_time desc";
                
 
                  if($result = mysqli_query($con, $sql)){
                      if(mysqli_num_rows($result) > 0){

                        while($row = mysqli_fetch_array($result)){
                        ?>

           </div>
       </div>
       <div class="row event-items" >
      
          <div class="event-items">
              <div class="row">
                 
                 <div class="item">
                    <div class="item-inner">
                   
                       <h3><?php echo $row['eventtitle']?></h3>
                       <p align="center"><img src="ngo.jpeg" alt="img" ></p>
                       <p>ORGANIZED BY:<?php echo $row['organisation']?></p>
                       <p>EVENT DATE:<?php echo $row['date']?></p>
                       <div class="read-more-cont">
                          <p><?php echo $row['eventdesc']?></p>
                         
                       </div>
                       <button class="btn" type="button" >Read More</button>
                    </div>
                 </div>


                 </div>
                


   <div class="popup-box">
      <div class="popup-content">
          <div class="popup-header">
             <h3></h3>
             <span class="popup-close-icon">&times;</span>
          </div>
          <div class="popup-body">

          </div>
          <div class="popup-footer">
            <button class="btn popup-close-btn" >Close</button>
          </div>
          <?php   }


mysqli_free_result($result);
}
} ?>
      </div>
      
   </div>
  




<script>
	const serviceItems=document.querySelector(".event-items");
  const popup=document.querySelector(".popup-box")
  const popupCloseBtn=popup.querySelector(".popup-close-btn");
  const popupCloseIcon=popup.querySelector(".popup-close-icon");

  serviceItems.addEventListener("click",function(event){
    if(event.target.tagName.toLowerCase() == "button"){
       const item=event.target.parentElement;
       const h3=item.querySelector("h3").innerHTML;
       const readMoreCont=item.querySelector(".read-more-cont").innerHTML;
       popup.querySelector("h3").innerHTML=h3;
       popup.querySelector(".popup-body").innerHTML= readMoreCont;
       popupBox();
    }

  })

  popupCloseBtn.addEventListener("click", popupBox);
  popupCloseIcon.addEventListener("click", popupBox);

  popup.addEventListener("click", function(event){
     if(event.target == popup){
        popupBox();
     }
  })

  function popupBox(){
    popup.classList.toggle("open");
  }

  var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
}

</script>
</body>
</html>
