<html>
<head>
    <meta charset="UTF-8">
    <title>Barangay Information System</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- bootstrap 3.0.2 -->
    <link href="../css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <link href="../js/morris/morris-0.4.3.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="../css/AdminLTE.css" rel="stylesheet" type="text/css" />
    <link href="../css/style1.css" rel="stylesheet" type="text/css" />
    <link href="../css/style.css" rel="stylesheet" type="text/css" />
    <link href="../css/menu.css" rel="stylesheet" type="text/css" />
    <link href="../css/slideshow.css" rel="stylesheet" type="text/css" />
    <link href="../css/datatables/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../css/select2.css" rel="stylesheet" type="text/css" />
    <script src="../js/jquery-1.12.3.js" type="text/javascript"></script>
    <script src="../js/jquery.bxslider.js" type="text/javascript"></script>
    
    <script>
    $(document).ready(function(){
    $('.slider').bxSlider();
     });
    </script>
    <style>
    .no-print{
        display:none;
    }
    .dataTables_filter input { 
    padding-top: 20px;
    padding-bottom: 20px;}
    </style>
</head>
<body>
<div id="container">
  <div id="top">
    <header>
    <img src="../images/header_logo.png" >
  </header>
  </div>
  <div id="menuh-container">
    <div id="menuh">
     <ul>
        <li class="active" ><a href="index.php" class="top_parent" >&nbsp; Home</a>
          <ul>
            <!--Home is single page only-->
          </ul>
        </li>
      </ul>
      <ul>
        <li><a href="about.php" class="top_parent">&nbsp; About</a>
         
        </li>
      </ul>
      
      <ul>
        <li><a href="../login.php" class="top_parent">&nbsp; Admin</a> 
       
    </li>
      </ul>
      
      <!--/start of others-->
    <ul>
        <li><a href="../pages/resident/login.php" class="top_parent">&nbsp; User Login</a> 
          
     </ul>
    <ul>        
<li><a href="../pages/zone/login.php" class="top_parent"> &nbsp; Zone Log in</a></li>
          
    
      </ul>
      <div class="bg-white">



    </div>
    </div><!--menuh-->
  </div>
  
  
  <div id="content">
      <!--/next is the slideshow-->
  
<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1/6</div>
  <img src="../images/Barangay_officials.png" style="width:100%; height:400px;border: 1px solid green; ">
  <div style="
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  bottom: -100px;
  text-align: justify;
"><center><p>The Barangay Official of Barangay Tugas<br>Barangay Captain: Alen G.Chavez, Honorable: Alicia M. Marfa, Honorable: Gina C. Fernandez, Honorable: Evelyn S. Chavez,<br> Honorable: Marissa C. Tayactac, Honorable:Brendo Batasin-in, Honorable:Gomer Rebusit</p></center></div>
</div>
<!--/end of 1st pic-->
<div class="mySlides fade">
  <div class="numbertext">2/9</div>
  <img src="../images/activities.png" style="width:100%; height: 400px;border: 1px solid green;">
  <div style="
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: -50px;
  text-align: center;"> The every Activities Schedule of Barangay Tugas in every year!</div>
</div>
<!--/end of 2ndpic-->
<div class="mySlides fade">
  <div class="numbertext">3/9</div>
  <img src="../images/3.png" style="width:100%; height: 400px;border: 1px solid green;">
  <div style="
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: -50px;
  text-align: center;">The General assemly of Barangay Tugas 2 times in a Year</div>
</div>
<!--/ end of 3rd-->
<div class="mySlides fade">
  <div class="numbertext">4/9</div>
  <img src="../images/14.png" style="width:100%; height: 400px; border: 1px solid green;">
  <div style="
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: -50px;
  text-align: center;">The Orientation for the Barangay Drug Clearing Program.</div>
</div>
<!--/end of 4thpic-->
<div class="mySlides fade">
  <div class="numbertext">5/9</div>
  <img src="../images/1.png" style="width:100%; height: 400px; border: 1px solid green;">
  <div style="
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: -50px;
  text-align: center;">The Mass Ceremony for the Fiesta of Senior Santo Niño in Barangay Tugas that happen every January  </div>
</div>
<!--/end of 5thpic-->
<div class="mySlides fade">
  <div class="numbertext">6/9</div>
  <img src="../images/9.png" style="width:100%; height: 400px; border: 1px solid green;">
  <div style="
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: -50px;
  text-align: center;">The Pasko sa Tugas LIghs On Ceremony on November 15, 2021</div>
</div>
<!--/end of 6thpic-->
<div class="mySlides fade">
  <div class="numbertext">7/9</div>
  <img src="../images/13.png" style="width:100%; height: 400px; border: 1px solid green;">
  <div style="
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: -50px;
  text-align: center;">The Rosary Crusade Sponsored By: Handmaid of the Lord,Pantawid and MCCT parent leader,Tugas Elementary School Teachers.</div>
</div>
<!--/end of 7thpic-->
<div class="mySlides fade">
  <div class="numbertext">8/9</div>
  <img src="../images/10.png" style="width:100%; height: 400px; border: 1px solid green;">
  <div style="
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: -50px;
  text-align: center;">The Monthly Clean up Drive of Barangay Tugas </div>
</div>
<!--/end of 8thpic-->
<div class="mySlides fade">
  <div class="numbertext">9/9</div>
  <img src="../images/11.png" style="width:100%; height: 400px; border: 1px solid green;">
  <div style="
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: -50px;
  text-align: center;">The Feeding Program sponsored By: Mrs. Melisa Rife and the second Feeding Program was sponsored by: The Bantayanon Group</div>
</div>
<!--/end of 7thpic-->

</div> <!--slideshow container-->
</br>

<div style="text-align: center; margin-top: 5px; ">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
  <span class="dot" onclick="currentSlide(4)"></span> 
  <span class="dot" onclick="currentSlide(5)"></span> 
  <span class="dot" onclick="currentSlide(6)"></span>
  <span class="dot" onclick="currentSlide(7)"></span>
  <span class="dot" onclick="currentSlide(8)"></span>
  <span class="dot" onclick="currentSlide(9)"></span>
</div>

<!--/end of the slide show-->
<br><br><br><br><br><br><br><br><br>
            

  
</div> <!--/content--> 
</div><!--/container-->

</body>


<script src="../js/alert.js" type="text/javascript"></script>
<script src="../js/bootstrap.min.js" type="text/javascript"></script>


<script src="../js/morris/raphael-2.1.0.min.js" type="text/javascript"></script>
<script src="../js/morris/morris.js" type="text/javascript"></script>
<script src="../js/select2.full.js" type="text/javascript"></script>

<script src="../js/jquery.dataTables.min.js" type="text/javascript"></script>
<script src="../js/dataTables.buttons.min.js" type="text/javascript"></script>
<script src="../js/buttons.print.min.js" type="text/javascript"></script>

<script src="../js/plugins/datatables/dataTables.bootstrap.js" type="text/javascript"></script>
<!-- AdminLTE App -->
<script src="../js/AdminLTE/app.js" type="text/javascript"></script>
<script src="../js/slideshow.js" type="text/javascript"></script>
<script type="text/javascript">
  $(function() {
      $("#table").dataTable({
         "aoColumnDefs": [ { "bSortable": false, "aTargets": [ 0,5 ] } ],"aaSorting": [],
         "dom":' <"search"f><"top"l>rt<"bottom"ip><"clear">'
      });
  });

  $(document).ready(function () {             
  $('.dataTables_filterinput[type="search"]').css(
     {'width':'350px','display':'inline-block'}
  );
});
</script>


</html>