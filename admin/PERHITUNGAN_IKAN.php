<?php
	include 'KODE.php';

	$ikan = $_POST['IKAN']; 
	$selektifitas = $_POST['SELEKTIFITAS'];
	$kualitas = $_POST['KUALITAS'];
	$keamanan = $_POST['KEAMANAN'];
	$harga = $_POST['HARGA'];

	$tb_kualitas =query("SELECT * FROM kualitas");
	$tb_keamanan =query("SELECT * FROM keamanan");
	$tb_harga =query("SELECT * FROM harga");

	//membuat array awal
	$hasil[] = array('alat' => 'PANCING ULUR', 'total' => null);
	$hasil[] = array('alat' => 'PANCING TONDA', 'total' => null);
	$hasil[] = array('alat' => 'PAYANG', 'total' => null);
	$hasil[] = array('alat' => 'JARING INSANG', 'total' => null);
	$hasil[] = array('alat' => 'PUKAT CINCIN', 'total' => null);

	$jenenge_iwak = "";

	foreach ($ikan as $key => $value) {
		$jenenge_iwak .= $value . ",";

		$tb_Selektifitas =query("SELECT * FROM selektifitas WHERE NAMA_IKAN = '$value'");

		//menghitung a1
		$k1 = pow($tb_Selektifitas[0]['PANCING_ULUR'], $selektifitas);
		$k2 = pow($tb_kualitas[0]['PANCING_ULUR'], $kualitas);
		$k3 = pow($tb_keamanan[0]['PANCING_ULUR'], $keamanan);
		$k4 = pow($tb_harga[0]['PANCING_ULUR'], $harga);

		$total = $k1 + $k2 + $k3 + $k4;

		$hasil[0]['total'] += $total;

		//menghitung a2
		$k1 = pow($tb_Selektifitas[0]['PANCING_TONDA'], $selektifitas);
		$k2 = pow($tb_kualitas[0]['PANCING_TONDA'], $kualitas);
		$k3 = pow($tb_keamanan[0]['PANCING_TONDA'], $keamanan);
		$k4 = pow($tb_harga[0]['PANCING_TONDA'], $harga);

		$total = $k1 + $k2 + $k3 + $k4;

		$hasil[1]['total'] += $total;

		//menghitung a3
		$k1 = pow($tb_Selektifitas[0]['PAYANG'], $selektifitas);
		$k2 = pow($tb_kualitas[0]['PAYANG'], $kualitas);
		$k3 = pow($tb_keamanan[0]['PAYANG'], $keamanan);
		$k4 = pow($tb_harga[0]['PAYANG'], $harga);

		$total = $k1 + $k2 + $k3 + $k4;

		$hasil[2]['total'] += $total;

		//menghitung a4
		$k1 = pow($tb_Selektifitas[0]['JARING_INSANG'], $selektifitas);
		$k2 = pow($tb_kualitas[0]['JARING_INSANG'], $kualitas);
		$k3 = pow($tb_keamanan[0]['JARING_INSANG'], $keamanan);
		$k4 = pow($tb_harga[0]['JARING_INSANG'], $harga);

		$total = $k1 + $k2 + $k3 + $k4;

		$hasil[3]['total'] += $total;

		//menghitung a5
		$k1 = pow($tb_Selektifitas[0]['PUKAT_CINCIN'], $selektifitas);
		$k2 = pow($tb_kualitas[0]['PUKAT_CINCIN'], $kualitas);
		$k3 = pow($tb_keamanan[0]['PUKAT_CINCIN'], $keamanan);
		$k4 = pow($tb_harga[0]['PUKAT_CINCIN'], $harga);

		$total = $k1 + $k2 + $k3 + $k4;

		$hasil[4]['total'] += $total;
	}

	usort($hasil, "cmp");

	// echo json_encode($hasil);

	function cmp($a, $b)
    {
        $a = $a['total'];
	    $b = $b['total'];

	    if ($a == $b) return 0;
	    return ($a > $b) ? -1 : 1;
    }
?>



<!doctype html>
<html class="no-js" lang="">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Data Tabel 2018 | selamat datang admin</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon
        ============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
    <!-- Google Fonts
        ============================================ -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
    <!-- Bootstrap CSS
        ============================================ -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- font awesome CSS
        ============================================ -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <!-- owl.carousel CSS
        ============================================ -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/owl.theme.css">
    <link rel="stylesheet" href="css/owl.transitions.css">
    <!-- meanmenu CSS
        ============================================ -->
    <link rel="stylesheet" href="css/meanmenu/meanmenu.min.css">
    <!-- animate CSS
        ============================================ -->
    <link rel="stylesheet" href="css/animate.css">
    <!-- normalize CSS
        ============================================ -->
    <link rel="stylesheet" href="css/normalize.css">
    <!-- wave CSS
        ============================================ -->
    <link rel="stylesheet" href="css/wave/waves.min.css">
    <link rel="stylesheet" href="css/wave/button.css">
    <!-- mCustomScrollbar CSS
        ============================================ -->
    <link rel="stylesheet" href="css/scrollbar/jquery.mCustomScrollbar.min.css">
    <!-- jvectormap CSS
        ============================================ -->
    <link rel="stylesheet" href="css/jvectormap/jquery-jvectormap-2.0.3.css">
    <!-- Notika icon CSS
        ============================================ -->
    <link rel="stylesheet" href="css/notika-custom-icon.css">
    <!-- Data Table JS
        ============================================ -->
    <link rel="stylesheet" href="css/jquery.dataTables.min.css">
    <!-- wave CSS
        ============================================ -->
    <link rel="stylesheet" href="css/wave/waves.min.css">
    <!-- main CSS
        ============================================ -->
    <link rel="stylesheet" href="css/main.css">
    <!-- style CSS
        ============================================ -->
    <link rel="stylesheet" href="style.css">
    <!-- responsive CSS
        ============================================ -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- modernizr JS
        ============================================ -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
    <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <!-- Start Header Top Area -->
<div class="header-top-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="logo-area">
                        <a href="#"><img src="images/logo.png" width="55" alt="" /></a>
                    </div>
                </div>
                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                    <div class="header-top-menu">
                        <ul class="nav navbar-nav notika-top-nav">                          
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Header Top Area -->
    <!-- Mobile Menu start -->
     <div class="mobile-menu-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="mobile-menu">
                        <nav id="dropdown">
                            <ul class="mobile-menu-nav">
                                <li><a data-toggle="collapse" data-target="#Charts" href="#">DATA</a>
                                     <ul class="collapse dropdown-header-top">
                                        <li><a href="../halaman1.php">Halaman Utama</a></li>
                                    </ul>
                                    <ul class="collapse dropdown-header-top">
                                        <li><a href="../ikan.php">Jenis Ikan</a></li>
                                    </ul>
                                    <ul class="collapse dropdown-header-top">
                                        <li><a href="../jaring.php">Jenis Alat Tangkap</a></li>
                                    </ul>
                                    <ul class="collapse dropdown-header-top">
                                        <li><a href="PERHITUNGAN.php">Penentuan Alat Tangkap</a></li>
                                    </ul>
                                    <ul class="collapse dropdown-header-top">
                                        <li><a href="login.php">Masuk</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Mobile Menu end -->
    <!-- Main Menu area start-->
    <div class="main-menu-area mg-tb-40">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <ul class="nav nav-tabs notika-menu-wrap menu-it-icon-pro">
                        <li class="active"><a data-toggle="tab" href="#Home"><i class="notika-icon notika-house"></i> HALAMAN</a>
                    </ul>
                    <div class="tab-content custom-menu-content">
                         <div id="Home" class="tab-pane in active notika-tab-menu-bg animated flipInX">
                            <ul class="notika-main-menu-dropdown">
                                <li><a href="../halaman1.php">Halaman Utama</a>
                                </li>
                                <li><a href="../ikan.php">Jenis Ikan</a>
                                </li>
                                <li><a href="../jaring.php">Jenis Alat Tangkap</a>
                                </li>
                                <li><a href="PERHITUNGAN.php">Penentuan Alat Tangkap</a>
                                </li>
                                <li><a href="login.php">Masuk</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcomb area Start-->
    <div class="breadcomb-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="breadcomb-list">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="breadcomb-wp">
                                    <div class="breadcomb-icon">
                                        <i class="notika-icon notika-windows"></i>
                                    </div>
                                    <div class="breadcomb-ctn">
                                        <h2>Hasil Perhitungan</h2>
                                        <p>Ikan<span class="bread-ntd"> <?= substr($jenenge_iwak, 0, strlen($jenenge_iwak)-1) ?></span></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcomb area Start-->
     <!-- Data Table area Start-->
    <div class="data-table-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="data-table-list">
                        <div class="table-responsive">
                            <table id="data-table-basic" class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>JENIS ALAT TANGKAP</th>
                                        <th>SKOR</th>
                                        <th>RANGKING</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $i = 1; ?>
                                        <?php foreach ($hasil as $row) :
                                        ?>
                                        <tr>
                                          <td><?= $row["alat"];?></td>
                                          <td><?= $row["total"];?></td>
                                          <td><?= $i; ?></td>
                                          </tr>
                                        <?php $i++ ?>
                                      <?php endforeach; ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Data Table area End-->

    
    <div class="footer-copyright-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="footer-copy-right">
                        <p>Copyright © 2018. by <a href="https://colorlib.com">SHAFIRA ANGGRIATI</a>.</p>
                    </div>
                </div>
            </div>
        </div>
     </div>
   </div>
</div>
    <!-- End Footer area-->
    <!-- jquery
        ============================================ -->
    <script src="js/vendor/jquery-1.12.4.min.js"></script>
    <!-- bootstrap JS
        ============================================ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- wow JS
        ============================================ -->
    <script src="js/wow.min.js"></script>
    <!-- price-slider JS
        ============================================ -->
    <script src="js/jquery-price-slider.js"></script>
    <!-- owl.carousel JS
        ============================================ -->
    <script src="js/owl.carousel.min.js"></script>
    <!-- scrollUp JS
        ============================================ -->
    <script src="js/jquery.scrollUp.min.js"></script>
    <!-- meanmenu JS
        ============================================ -->
    <script src="js/meanmenu/jquery.meanmenu.js"></script>
    <!-- counterup JS
        ============================================ -->
    <script src="js/counterup/jquery.counterup.min.js"></script>
    <script src="js/counterup/waypoints.min.js"></script>
    <script src="js/counterup/counterup-active.js"></script>
    <!-- mCustomScrollbar JS
        ============================================ -->
    <script src="js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <!-- jvectormap JS
        ============================================ -->
    <script src="js/jvectormap/jquery-jvectormap-2.0.2.min.js"></script>
    <script src="js/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <script src="js/jvectormap/jvectormap-active.js"></script>
    <!-- sparkline JS
        ============================================ -->
    <script src="js/sparkline/jquery.sparkline.min.js"></script>
    <script src="js/sparkline/sparkline-active.js"></script>
    <!-- flot JS
        ============================================ -->
    <script src="js/flot/jquery.flot.js"></script>
    <script src="js/flot/jquery.flot.resize.js"></script>
    <script src="js/flot/curvedLines.js"></script>
    <script src="js/flot/flot-active.js"></script>
    <!-- knob JS
        ============================================ -->
    <script src="js/knob/jquery.knob.js"></script>
    <script src="js/knob/jquery.appear.js"></script>
    <script src="js/knob/knob-active.js"></script>
    <!--  wave JS
        ============================================ -->
    <script src="js/wave/waves.min.js"></script>
    <script src="js/wave/wave-active.js"></script>
    <!--  Chat JS
        ============================================ -->
    <script src="js/chat/moment.min.js"></script>
    <script src="js/chat/jquery.chat.js"></script>
    <!--  todo JS
        ============================================ -->
    <script src="js/todo/jquery.todo.js"></script>
    <!-- plugins JS
        ============================================ -->
    <script src="js/plugins.js"></script>
    <!-- Data Table JS
        ============================================ -->
    <script src="js/data-table/jquery.dataTables.min.js"></script>
    <script src="js/data-table/data-table-act.js"></script>
    <!-- main JS
        ============================================ -->
    <script src="js/main.js"></script>
</body>

</html>