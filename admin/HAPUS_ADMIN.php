<?php 

require 'kode.php'; 
$id = $_GET["id"]; 
if ( hapus_admin($id) > 0) 
	{ 
	 echo " 
		<script> 

		alert('DATA berhasil dihapus');
		document.location.href ='REGISTRASI.php';

		</script> "; 
}
else
	{ 
	 echo " 
		<script> 

		alert('DATA gagal di hapus!');
		document.location.href ='REGISTRASI.php';
		
		</script> ";  
	} 
	
	?> 