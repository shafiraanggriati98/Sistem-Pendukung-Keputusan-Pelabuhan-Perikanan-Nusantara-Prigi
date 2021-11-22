<?php 

require 'kode.php'; 
$id = $_GET["id"]; 
if ( hapus_ikan($id) > 0) 
	{ 
	 echo " 
		<script> 

		alert('DATA berhasil dihapus');
		document.location.href ='DATA_IKAN.php';

		</script> "; 
}
else
	{ 
	 echo " 
		<script> 

		alert('DATA gagal di hapus!');
		document.location.href ='DATA_IKAN.php';
		
		</script> ";  
	} 
	
	?> 