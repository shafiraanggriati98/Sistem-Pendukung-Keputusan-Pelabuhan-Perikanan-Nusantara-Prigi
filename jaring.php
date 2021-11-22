<?php 

require'admin/kode.php';
$alat_tangkap = query("SELECT * FROM alat_tangkap");

?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Informasi - Alat Tangkap Ikan</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
      <div class="container">
        <div class="collapse navbar-collapse" id="ftco-nav">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item"><a href="halaman1.php" class="nav-link">Halaman Utama</a></li>
            <li class="nav-item"><a href="ikan.php" class="nav-link">Informasi Ikan</a></li>
            <li class="nav-item active"><a href="jaring.php" class="nav-link">Informasi Alat tangkap</a></li>
            <li class="nav-item"><a href="admin/perhitungan.php" class="nav-link">Penentuan Alat Tangkap</a></li>
            <li class="nav-item"><a href="kontak.php" class="nav-link">Kontak</a></li>
            <li class="nav-item cta"><a href="admin/login.php" class="nav-link">Masuk</a></li>
          </ul>
        </div>
      </div>
    </nav>
    </nav>
    <!-- END nav -->
    
    <div class="hero-wrap js-fullheight" style="background-image: url('images/jaring.jpg');" data-stellar-background-ratio="0.2">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center" data-scrollax-parent="true">
          <div class="col-md-9 text text-center ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
            <h1 data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Informasi Alat Tangkap Ikan</h1>
          </div>
        </div>
      </div>
    </div>

<section class="ftco-section">
  <div class="col-md-12 heading-section text-center ftco-animate">
            <h2 class="mb-4">Jenis Alat Tangkap Ikan Di PPN Prigi Trenggalek </h2>
          </div>
      <div class="container">
        <div class="row d-flex">
          <?php $i = 1; ?>
           <?php foreach ($alat_tangkap as $row) :
           ?>
          <div class="col-md-4 d-flex ftco-animate">
            <div class="blog-entry justify-content-end">
              <a  class="block-20" style="background-image: url('gambar_alat/<?= $row["GAMBAR_ALAT"];?>');">
              </a>
              <div class="text mt-3 float-right d-block">
                <div class="d-flex align-items-center mb-4 topp">
                  <div class="one">
                    <span class="day"><?= $i; ?></span>
                  </div>
                  <div class="two">
                    <span class="yr">Alat Tangkap</span>
                    <span class="mos"><?= $row["NAMA_ALAT"];?></span>
                  </div>
                </div>
                <p><?= $row["KETERANGAN_ALAT"];?></p>
              </div>
            </div>
          </div>
          <?php $i++ ?>
           <?php endforeach; ?>
        </div>
        </div>
      </div>
    </section>


    <footer class="ftco-footer bg-bottom" style="background-image: url(images/footer-bg.jpg);">
      <div class="container">
        
        <div class="row">
          <div class="col-md-12 text-center">
          
            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> Design | <i class="icon-heart color-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Shafira Anggriati</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    
  </body>
</html>