<?php
include "koneksi.php";
mysqli_query($koneksi, "DELETE FROM member where id_member='$_GET[id_member]'");
echo "<script type='text/javascript'>
alert('Data berhasil dihapus..!');
</script>";
echo "<script>document.location='home.php?page=member';</script>";
?>