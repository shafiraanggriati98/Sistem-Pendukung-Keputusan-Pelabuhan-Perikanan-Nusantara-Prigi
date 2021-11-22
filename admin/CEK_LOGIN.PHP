<?php 
// mengaktifkan session php
session_start();
 
// menghubungkan dengan koneksi
include 'KODE.php';
 
// menangkap data yang dikirim dari form
$USERNAME = $_POST['USERNAME'];
$PASSWORD = $_POST['PASSWORD'];
 
// menyeleksi data admin dengan username dan password yang sesuai
$data = mysqli_query($conn,"select * from login where USERNAME='$USERNAME' and PASSWORD='$PASSWORD'");
 
// menghitung jumlah data yang ditemukan
$cek = mysqli_num_rows($data);
 
if($cek > 0){
	$_SESSION['USERNAME'] = $USERNAME;
	$$_SESSION['PASSWORD'] = $PASSWORD;
	header("location:ADMIN.php");
}else{
	header("location:LOGIN.php?pesan=gagal");
}
?>