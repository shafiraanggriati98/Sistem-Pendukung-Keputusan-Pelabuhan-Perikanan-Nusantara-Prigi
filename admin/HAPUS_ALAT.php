<?php 

require 'kode.php'; 
$id = $_GET["id"]; 
if ( hapus_alat($id) > 0) 
	{ 
	 echo " 
		<script> 

		alert('DATA berhasil dihapus');
		document.location.href ='ALAT_TANGKAP.php';

		</script> "; 
}
else
	{ 
	 echo " 
		<script> 

		alert('DATA gagal di hapus!');
		document.location.href ='ALAT_TANGKAP.php';
		
		</script> ";  
	} 
	
	?> 