<?php
	include('koneksi.php');
	session_start();
	session_destroy();
	echo "<META HTTP-EQUIV='Refresh' Content='1; URL=index.php'>";
?>