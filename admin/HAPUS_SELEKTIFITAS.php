<?php 

require 'kode.php'; 
$id = $_GET["id"]; 
if ( hapus_selektifitas($id) > 0) 
	{ 
	 echo " 
		<script> 

		alert('DATA berhasil dihapus');
		document.location.href ='SELEKTIFITAS.php';

		</script> "; 
}
else
	{ 
	 echo " 
		<script> 

		alert('DATA gagal di hapus!');
		document.location.href ='SELEKTIFITAS.php';
		
		</script> ";  
	} 
	
	?> 