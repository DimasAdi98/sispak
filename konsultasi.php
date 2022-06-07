  <div class="content-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h4 class="page-head-line">HASIL KONSULTASI</h4>
                </div>
            </div>
<?php


if (!isset($_SESSION['GEJALA'])) {
  exit("<script>location.href='home.php?page=diagnosa';</script>");
}
$koneksi = mysqli_connect("localhost","root","","spforwardcf1") or die ("Database Tidak Terkoneksi") .mysqli_connect_error();
$gejala = $_SESSION['GEJALA'];
$md_user = $_SESSION['MD_USER'];
$kerusakan = array();
$cf = array();

    $selSto = mysqli_query($koneksi, "SELECT * FROM gejala WHERE GEJALA='$gejala'");
	
	$stok = $selSto['mb'];
	
    var_dump($stok);

echo "<br>";

var_dump($gejala);
$nilai_total = count($md_user);
var_dump($nilai_total);

echo "<br>";
var_dump($md_user);
$gejala1 = array_sum($md_user);

$total_gejala= count($gejala);
echo "<br>";
var_dump($total_gejala);


# PROSES PERHITUNGAN CF

if($total_gejala < 3){

    echo "anda mengalami gangguan kepribadian dependen ringan";
    echo " ".$gejala1;
    echo "<br>";
   
}
else if($total_gejala > 3){

    echo "anda mengalami gangguan kepribadian dependen berat";
    
}


 