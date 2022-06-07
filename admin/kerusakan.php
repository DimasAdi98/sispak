	<div class="content-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h4 class="page-head-line">DATA KERUSAKAN</h4>
                </div>                
            </div>
            <div class="col-md-8 col-md-offset-2">

            	<button type="button" onclick=window.location.href='?page=tambahkerusakan' class='btn btn-primary' style="float:right">Tambah Data</button><br><br>

                <div class="table-responsive">
                    <table class="table table-striped table-bordered table-hover">
                        <thead>
                            <tr>
                                <th width="5%">No</th>
                                <th>Kode Kerusakan</th>
                                <th>Nama Kerusakan</th>
                                <th width="19%">Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                        	<?php
							include "koneksi.php";
							$sql= mysqli_query($koneksi, "SELECT * FROM kerusakan");
							$no=1;
							while($row = mysqli_fetch_array($sql)){
							?>
                            <tr>
                                <td><?php echo $no; ?></td>
                                <td><?php echo $row['kode']; ?></td>
                                <td><?php echo $row['nama']; ?></td>
                                <td>
                                <a href="?page=editkerusakan&kode=<?php echo $row['kode'];?>" class='btn btn-primary'>Edit</a> 
					  			<a onclick="return confirm ('Yakin Data ini Dihapus..?')" href="?page=deletekerusakan&id_kerusakan=<?php echo $row['id_kerusakan'];?>" class='btn btn-warning'>Hapus</a>
                                </td>
                            </tr>
                            <?php
							$no++;
							}
							?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>