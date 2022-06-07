    <div class="content-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h4 class="page-head-line">REGISTER/LOGIN</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <b>REGISTRASI</b>
                        </div>
                        <div class="panel-body">
                            <form method="post">
                                <div class="form-group">
                                    <label>Username</label>
                                    <input type="text" class="form-control" id="username" name="username" placeholder="Username" />
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input type="password" class="form-control" id="pass" name="pass" placeholder="Password" />
                                </div>
                                <div class="form-group">
                                    <label>Nama Lengkap</label>
                                    <input type="text" class="form-control" id="nama" name="nama" placeholder="Nama Lengkap" />
                                </div>
				<div class="form-group">
                                    <label>Jenis Kelamin</label>
                                    <select name="jk" class="form-control">                
                                        <option value="" selected disabled>Jenis Kelamin</option>
                                        <option value="Laki-laki">Laki-laki</option>
                                        <option value="Perempuan">Perempuan</option>
                                    </select>
                                </div>
 				<div class="form-group">
                                    <label>Usia</label>
                                    <input type="usia" class="form-control" id="usia" name="usia" placeholder="usia" />
                                </div>
				<div class="form-group">
                                    <label>No. HP</label>
                                    <input type="text" class="form-control" id="hp" name="hp" placeholder="NoHP" />
                                </div>
                                <div class="form-group">
                                    <label>Email</label>
                                    <input type="email" class="form-control" id="email" name="email" placeholder="email" />
                                </div>
                                <div class="form-group">
                                    <label>Alamat</label>
                                    <textarea class="form-control" rows="5" name="alamat" placeholder="Alamat"></textarea>
                                </div>
                                <button type="submit" class="btn btn-warning">Reset</button>
                                <button type="submit" value="daftar" name="daftar" class="btn btn-primary">Register</button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <b>LOGIN</b>
                        </div>
                        <div class="panel-body">
                            <p>*Apabila Belum Memilik Username Dan Password Silahkan Regitrasi</p>
                            <form method="post" action="aksi_login.php">
                                <div class="form-group">
                                    <label>Username</label>
                                    <input type="text" class="form-control" id="username" name="username" placeholder="Username" />
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input type="password" class="form-control" id="password" name="password" placeholder="Username" />
                                </div>
                                <button type="submit" value="login" name="login" class="btn btn-primary">Login</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<?php
error_reporting(0);
include"koneksi.php";
if(isset($_POST['daftar'])){
mysqli_query($koneksi, "INSERT INTO pasien VALUES (
'',
'$_POST[username]',
'$_POST[pass]',
'$_POST[nama]',
'$_POST[jk]',
'$_POST[usia]',
'$_POST[hp]',
'$_POST[email]',
'$_POST[alamat]')");

echo"<script>alert('Data Berhasil Disimpan!');window.location.href='?page=login'</script>";
}
?>