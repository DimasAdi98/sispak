<?php
include('koneksi.php');
session_start();
if (empty($_SESSION['role'])){
    "<meta http-equiv='Refresh' Content='1; URL=home.php'>";
}
else{
    $role = $_SESSION['role'];
    $nama_lengkap = $_SESSION['nama'];
?>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
    <title>Sistem Pakar Diagnosa Kerusakan Gigi</title>
    <!-- BOOTSTRAP CORE STYLE  -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT AWESOME ICONS  -->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLE  -->
    <link href="assets/css/style.css" rel="stylesheet" />
     <!-- HTML5 Shiv and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <div class="navbar navbar-inverse set-radius-zero">
        <div class="container">
            <div class="navbar-header">            
                <a class="navbar-brand" href="index.php">
                    <h3><font color="#ffffff">SISTEM PAKAR DIAGNOSA GANGGUAN KEPRIBADIAN DEPENDEN<br/>FORWARD CHAINING & CERTAINTY FACTOR</font></h3>
                    
                </a>
            </div>

            <div class="left-div">
                <div class="user-settings-wrapper">
                    <img src="assets/img/logo.png">
                </div>
            </div>
        </div>
    </div>

    <section class="menu-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="navbar-collapse collapse ">
                        <ul id="menu-top" class="nav navbar-nav navbar-right">
                            <?php
                            if($role == 'admin'){
                            ?>
                                <li><a href="home.php">Beranda</a></li>
                                <li><a href="home.php?page=kerusakan">Gangguan</a></li>
                                <li><a href="home.php?page=gejala">Gejala</a></li>
                                <li><a href="home.php?page=penanganan">Penanganan</a></li>
                                <li><a href="home.php?page=rulepenanganan">Aturan</a></li>
                                <li><a href="home.php?page=nilaimbmd">Pengetahuan</a></li>
                                <li><a href="home.php?page=member">Pasien</a></li>
                                <li><a href="home.php?page=admin">Admin</a></li>
                                <li><a href="logout.php">Logout</a></li>
                            <?php
                            }
                            else if ($role == 'user'){
                            ?>
                                <li><a href="home.php">Beranda</a></li>
                                <li><a href="home.php?page=diagnosa">Konsultasi</a></li>
                                <li><a href="logout.php">Logout</a></li>
                            <?php
                            }
                            ?>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <?php
        if (isset($_GET['page'])){
            $page = $_GET['page'];
            if($page == 'home'){
                include('home.php');
            }
            else if ($page == 'kerusakan'){
                include('admin/kerusakan.php');
            }
            else if ($page == 'tambahkerusakan'){
                include('admin/tambahkerusakan.php');
            }
            else if ($page == 'editkerusakan'){
                include('admin/editkerusakan.php');
            }
            else if ($page == 'deletekerusakan'){
                include('admin/deletekerusakan.php');
            }
            else if ($page == 'gejala'){
                include('admin/gejala.php');
            }
            else if ($page == 'tambahgejala'){
                include('admin/tambahgejala.php');
            }
            else if ($page == 'editgejala'){
                include('admin/editgejala.php');
            }
            else if ($page == 'deletegejala'){
                include('admin/deletegejala.php');
            }
            else if ($page == 'penanganan'){
                include('admin/penanganan.php');
            }
            else if ($page == 'tambahpenanganan'){
                include('admin/tambahpenanganan.php');
            }
            else if ($page == 'editpenanganan'){
                include('admin/editpenanganan.php');
            }
            else if ($page == 'deletepenanganan'){
                include('admin/deletepenanganan.php');
            }
            else if ($page == 'rulepenanganan'){
                include('admin/rulepenanganan.php');
            }
            else if ($page == 'tambahrulepenanganan'){
                include('admin/tambahrulepenanganan.php');
            }
            else if ($page == 'editrulepenanganan'){
                include('admin/editrulepenanganan.php');
            }
            else if ($page == 'deleterulepenanganan'){
                include('admin/deleterulepenanganan.php');
            }
            else if ($page == 'nilaimbmd'){
                include('admin/nilaimbmd.php');
            }
            else if ($page == 'tambahnilaimbmd'){
                include('admin/tambahnilaimbmd.php');
            }
            else if ($page == 'editnilaimbmd'){
                include('admin/editnilaimbmd.php');
            }
            else if ($page == 'deletenilaimbmd'){
                include('admin/deletenilaimbmd.php');
            }
            else if ($page == 'member'){
                include('admin/member.php');
            }
            else if ($page == 'deletemember'){
                include('admin/deletemember.php');
            }
            else if ($page == 'admin'){
                include('admin/admin.php');
            }
            else if ($page == 'tambahadmin'){
                include('admin/tambahadmin.php');
            }
            else if ($page == 'deleteadmin'){
                include('admin/deleteadmin.php');
            }
    
        else if ($page == 'diagnosa'){
                include('diagnosa.php');
            }
        else if ($page == 'konsultasi'){
            include('konsultasi.php');
        }
        else if ($page == 'komentar'){
                include('komentar.php');
            }
        }
        else{
        ?>

    <div class="content-wrapper">
        <div class="container">
            <div class="row">
                <center><h1 style="font-family:Vijaya; font-size: 35pt"><b>SELAMAT DATANG <?php echo strtoupper($nama_lengkap);?></h1>
                <h2 style="font-family:Vijaya;">Sistem Pakar Diagnosa Gangguan Kepribadian Dependen</h2>
                
            </div><br/>
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4>INFORMASI</h4>
                        </div>
                        <div class="panel-body">
                            <p><b>Sistem pakar</b> adalah sistem berbasis komputer yang menggunakan pengetahuan, fakta dan teknik penalaran dalam memecahkan masalah yang biasanya hanya dapat dipecahkan oleh seorang pakar dalam bidang tersebut (<i>Muhammad Silmi, 2013</i>).</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php
        }
    ?>
    <!-- CONTENT-WRAPPER SECTION END-->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    Copyright</i> <b><a href="" target="_blank">Dimas Adi Putra</a></b>
                </div>

            </div>
        </div>
    </footer>
    <!-- FOOTER SECTION END-->
    <!-- JAVASCRIPT AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <!-- CORE JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.11.1.js"></script>
    <!-- BOOTSTRAP SCRIPTS  -->
    <script src="assets/js/bootstrap.js"></script>
</body>
</html>
<?php
}
?>