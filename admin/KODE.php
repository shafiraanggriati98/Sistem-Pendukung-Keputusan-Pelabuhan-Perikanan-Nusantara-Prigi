<?php 
//koneksi ke database
$conn = mysqli_connect("localhost","root","","perikanan");

function query($query)
{
	global $conn;

$result = mysqli_query($conn, $query);
$rows = [];
while ( $row = mysqli_fetch_assoc($result)) 
{
	$rows [] = $row;
}
return $rows;
}


function tambah_tangkapan($data)
{
	global $conn;
//ambil data dari tiap elemen form
	$IKAN = htmlspecialchars($data["IKAN"]);
	$PUKAT_CINCIN = htmlspecialchars($data["PUKAT_CINCIN"]);
	$JARING_INSANG = htmlspecialchars($data["JARING_INSANG"]);
	$PAYANG = htmlspecialchars($data["PAYANG"]);
	$PANCING_TONDA = htmlspecialchars($data["PANCING_TONDA"]);
	$PANCING_ULUR = htmlspecialchars($data["PANCING_ULUR"]);
	$JUMLAH = htmlspecialchars($data["JUMLAH"]);
	//query insert data
	$query = "INSERT INTO hasil_tangkapan
				VALUES 
				('','$IKAN','$PUKAT_CINCIN','$JARING_INSANG','$PAYANG','$PANCING_TONDA','$PANCING_ULUR','$JUMLAH')
				";
	mysqli_query($conn, $query);

	return mysqli_affected_rows($conn);
}

function tambah_registrasi($data)
{
	global $conn;
//ambil data dari tiap elemen form
	$USERNAME = htmlspecialchars($data["USERNAME"]);
	$PASSWORD = htmlspecialchars($data["PASSWORD"]);
	//query insert data
	$query = "INSERT INTO login
				VALUES 
				('','$USERNAME','$PASSWORD')
				";
	mysqli_query($conn, $query);

	return mysqli_affected_rows($conn);
}

function tambah_alat($data)
{
	global $conn;
//ambil data dari tiap elemen form
	$NAMA_ALAT = htmlspecialchars($data["NAMA_ALAT"]);
	$GAMBAR_ALAT = htmlspecialchars($data["GAMBAR_ALAT"]);
	$KETERANGAN_ALAT = htmlspecialchars($data["KETERANGAN_ALAT"]);
	//query insert data
	$query = "INSERT INTO alat_tangkap
				VALUES 
				('','$NAMA_ALAT','$GAMBAR_ALAT','$KETERANGAN_ALAT')
				";
	mysqli_query($conn, $query);

	return mysqli_affected_rows($conn);
}

function tambah_ikan($data)
{
	global $conn;
//ambil data dari tiap elemen form
	$NAMA = htmlspecialchars($data["NAMA"]);
	$GAMBAR = htmlspecialchars($data["GAMBAR"]);
	$MUSIM = htmlspecialchars($data["MUSIM"]);
	$KETERANGAN = htmlspecialchars($data["KETERANGAN"]);
	//query insert data
	$query = "INSERT INTO jenis_ikan
				VALUES 
				('','$NAMA','$GAMBAR','$MUSIM','$KETERANGAN')
				";
	mysqli_query($conn, $query);

	return mysqli_affected_rows($conn);
}	

function tambah_kualitas($data)
{
	global $conn;
//ambil data dari tiap elemen form
	$PUKAT_CINCIN = htmlspecialchars($data["PUKAT_CINCIN"]);
	$JARING_INSANG = htmlspecialchars($data["JARING_INSANG"]);
	$PAYANG = htmlspecialchars($data["PAYANG"]);
	$PANCING_TONDA = htmlspecialchars($data["PANCING_TONDA"]);
	$PANCING_ULUR = htmlspecialchars($data["PANCING_ULUR"]);
	//query insert data
	$query = "INSERT INTO kualitas
				VALUES 
				('','$PUKAT_CINCIN','$JARING_INSANG','$PAYANG','$PANCING_TONDA','$PANCING_ULUR')
				";
	mysqli_query($conn, $query);

	return mysqli_affected_rows($conn);
}
function tambah_selektifitas($data)
{
	global $conn;
//ambil data dari tiap elemen form
	$NAMA_IKAN = htmlspecialchars($data["NAMA_IKAN"]);
	$PUKAT_CINCIN = htmlspecialchars($data["PUKAT_CINCIN"]);
	$JARING_INSANG = htmlspecialchars($data["JARING_INSANG"]);
	$PAYANG = htmlspecialchars($data["PAYANG"]);
	$PANCING_TONDA = htmlspecialchars($data["PANCING_TONDA"]);
	$PANCING_ULUR = htmlspecialchars($data["PANCING_ULUR"]);
	//query insert data
	$query = "INSERT INTO selektifitas
				VALUES 
				('','$PUKAT_CINCIN','$NAMA_IKAN','$JARING_INSANG','$PAYANG','$PANCING_TONDA','$PANCING_ULUR')
				";
	mysqli_query($conn, $query);

	return mysqli_affected_rows($conn);
}


function hapus_tangkapan($id)
{
	global $conn;
	mysqli_query($conn, "DELETE FROM hasil_tangkapan WHERE id = $id");
	return mysqli_affected_rows($conn);
}

function hapus_ikan($id)
{
	global $conn;
	mysqli_query($conn, "DELETE FROM jenis_ikan WHERE id = $id");
	return mysqli_affected_rows($conn);
}

function hapus_alat($id)
{
	global $conn;
	mysqli_query($conn, "DELETE FROM alat_tangkap WHERE id = $id");
	return mysqli_affected_rows($conn);
}


function hapus_admin($id)
{
	global $conn;
	mysqli_query($conn, "DELETE FROM login WHERE id = $id");
	return mysqli_affected_rows($conn);
}

function hapus_kualitas($id)
{
	global $conn;
	mysqli_query($conn, "DELETE FROM kualitas WHERE id = $id");
	return mysqli_affected_rows($conn);
}
function hapus_selektifitas($id)
{
	global $conn;
	mysqli_query($conn, "DELETE FROM selektifitas WHERE id = $id");
	return mysqli_affected_rows($conn);
}

function ubah_tangkapan($data)
{
	global $conn;
//ambil data dari tiap elemen form
	$id = $data["id"];
	$IKAN = htmlspecialchars($data["IKAN"]);
	$PUKAT_CINCIN = htmlspecialchars($data["PUKAT_CINCIN"]);
	$JARING_INSANG = htmlspecialchars($data["JARING_INSANG"]);
	$PAYANG = htmlspecialchars($data["PAYANG"]);
	$PANCING_TONDA = htmlspecialchars($data["PANCING_TONDA"]);
	$PANCING_ULUR = htmlspecialchars($data["PANCING_ULUR"]);
	$JUMLAH = htmlspecialchars($data["JUMLAH"]);
	//query insert data
	$query = "UPDATE hasil_tangkapan SET
					IKAN = '$IKAN',
					PUKAT_CINCIN = '$PUKAT_CINCIN',
					JARING_INSANG = '$JARING_INSANG',
					PAYANG = '$PAYANG',
					PANCING_TONDA = '$PANCING_TONDA',
					PANCING_ULUR = '$PANCING_ULUR',
					JUMLAH = '$JUMLAH'
					WHERE id = $id
					";
	mysqli_query($conn, $query);

	return mysqli_affected_rows($conn);
}

function ubah_ikan($data)
{
	global $conn;
//ambil data dari tiap elemen form
	$id = $data["id"];
	$NAMA = htmlspecialchars($data["NAMA"]);
	$MUSIM = htmlspecialchars($data["MUSIM"]);
	$KETERANGAN = htmlspecialchars($data["KETERANGAN"]);
	//query insert data
	$query = "UPDATE jenis_ikan SET
					NAMA = '$NAMA',
					MUSIM = '$MUSIM',
					KETERANGAN = '$KETERANGAN'
					WHERE id = $id
					";
	mysqli_query($conn, $query);

	return mysqli_affected_rows($conn);
}

function ubah_alat($data)
{
	global $conn;
//ambil data dari tiap elemen form
	$id = $data["id"];
	$NAMA_ALAT = htmlspecialchars($data["NAMA_ALAT"]);
	$KETERANGAN_ALAT = htmlspecialchars($data["KETERANGAN_ALAT"]);
	//query insert data
	$query = "UPDATE alat_tangkap SET
					NAMA_ALAT = '$NAMA_ALAT',
					KETERANGAN_ALAT = '$KETERANGAN_ALAT'
					WHERE id = $id
					";
	mysqli_query($conn, $query);

	return mysqli_affected_rows($conn);
}

function ubah_admin($data)
{
	global $conn;
//ambil data dari tiap elemen form
	$id = $data["id"];
	$USERNAME = htmlspecialchars($data["USERNAME"]);
	$PASSWORD = htmlspecialchars($data["PASSWORD"]);
	//query insert data
	$query = "UPDATE login SET
					USERNAME = '$USERNAME',
					PASSWORD = '$PASSWORD'
					WHERE id = $id
					";
	mysqli_query($conn, $query);

	return mysqli_affected_rows($conn);
}

function ubah_kualitas($data)
{
	global $conn;
//ambil data dari tiap elemen form
	$id = $data["id"];
	$PUKAT_CINCIN = htmlspecialchars($data["PUKAT_CINCIN"]);
	$JARING_INSANG = htmlspecialchars($data["JARING_INSANG"]);
	$PAYANG = htmlspecialchars($data["PAYANG"]);
	$PANCING_TONDA = htmlspecialchars($data["PANCING_TONDA"]);
	$PANCING_ULUR = htmlspecialchars($data["PANCING_ULUR"]);
	//query insert data
	$query = "UPDATE kualitas SET
					PUKAT_CINCIN = '$PUKAT_CINCIN',
					JARING_INSANG = '$JARING_INSANG',
					PAYANG = '$PAYANG',
					PANCING_TONDA = '$PANCING_TONDA',
					PANCING_ULUR = '$PANCING_ULUR'
					WHERE id = $id
					";
	mysqli_query($conn, $query);

	return mysqli_affected_rows($conn);
}


function ubah_harga($data)
{
    global $conn;
    $id = $data["id"];
    $tonda = $_POST['PANCING_TONDA']; 
    $cincin = $_POST['PUKAT_CINCIN'];
    $insang = $_POST['JARING_INSANG'];
    $payang = $_POST['PAYANG'];
    $ulur = $_POST['PANCING_ULUR'];

    $tb_pembobotan =query("SELECT * FROM bobot_harga");

        if ($tonda>=$tb_pembobotan[0]['MIN'] && $tonda<=$tb_pembobotan[0]['MAX']) 
            {
                $tampil_tonda = $tb_pembobotan[0]['BOBOT'] ;
            }
        else
            {
                $tampil_tonda = 1 ;
            }
        
        if ($cincin>=$tb_pembobotan[0]['MIN'] && $cincin<=$tb_pembobotan[0]['MAX']) 
            {
                $tampil_cincin = $tb_pembobotan[0]['BOBOT'];
            }
        else
            {
                $tampil_cincin = 1 ;
            }
        
        if ($insang>=$tb_pembobotan[0]['MIN'] && $insang<=$tb_pembobotan[0]['MAX']) 
            {
                $tampil_insang = $tb_pembobotan[0]['BOBOT'];
            }
        else
            {
                $tampil_insang = 1 ;
            }
        if ($payang>=$tb_pembobotan[0]['MIN'] && $payang<=$tb_pembobotan[0]['MAX']) 
            {
                $tampil_payang = $tb_pembobotan[0]['BOBOT'] ;
            }
        else
            {
                $tampil_payang = 1 ;
            }
        if ($ulur>=$tb_pembobotan[0]['MIN'] && $ulur<=$tb_pembobotan[0]['MAX']) 
            {
                $tampil_ulur = $tb_pembobotan[0]['BOBOT'] ;
            }
         else
            {
                $tampil_ulur = 1 ;
            }

    $query = "UPDATE harga SET
                    PUKAT_CINCIN = '$tampil_cincin',
                    JARING_INSANG = '$tampil_insang',
                    PAYANG = '$tampil_payang',
                    PANCING_TONDA = '$tampil_tonda',
                    PANCING_ULUR = '$tampil_ulur'
                    WHERE id = $id
                    ";
    mysqli_query($conn, $query);

    return mysqli_affected_rows($conn);
}



function ubah_keamanan($data)
{
	global $conn;
//ambil data dari tiap elemen form
	$id = $data["id"];
	$PUKAT_CINCIN = htmlspecialchars($data["PUKAT_CINCIN"]);
	$JARING_INSANG = htmlspecialchars($data["JARING_INSANG"]);
	$PAYANG = htmlspecialchars($data["PAYANG"]);
	$PANCING_TONDA = htmlspecialchars($data["PANCING_TONDA"]);
	$PANCING_ULUR = htmlspecialchars($data["PANCING_ULUR"]);
	//query insert data
	$query = "UPDATE keamanan SET
					PUKAT_CINCIN = '$PUKAT_CINCIN',
					JARING_INSANG = '$JARING_INSANG',
					PAYANG = '$PAYANG',
					PANCING_TONDA = '$PANCING_TONDA',
					PANCING_ULUR = '$PANCING_ULUR'
					WHERE id = $id
					";
	mysqli_query($conn, $query);

	return mysqli_affected_rows($conn);
}


function ubah_selektifitas($data)
{
	global $conn;
//ambil data dari tiap elemen form
	$id = $data["id"];
	$NAMA_IKAN = htmlspecialchars($data["NAMA_IKAN"]);
	$PUKAT_CINCIN = htmlspecialchars($data["PUKAT_CINCIN"]);
	$JARING_INSANG = htmlspecialchars($data["JARING_INSANG"]);
	$PAYANG = htmlspecialchars($data["PAYANG"]);
	$PANCING_TONDA = htmlspecialchars($data["PANCING_TONDA"]);
	$PANCING_ULUR = htmlspecialchars($data["PANCING_ULUR"]);
	//query insert data
	$query = "UPDATE selektifitas SET
					NAMA_IKAN = '$NAMA_IKAN',
					PUKAT_CINCIN = '$PUKAT_CINCIN',
					JARING_INSANG = '$JARING_INSANG',
					PAYANG = '$PAYANG',
					PANCING_TONDA = '$PANCING_TONDA',
					PANCING_ULUR = '$PANCING_ULUR'
					WHERE id = $id
					";
	mysqli_query($conn, $query);

	return mysqli_affected_rows($conn);
}

function ubah_bobotharga($data)
{
	global $conn;
//ambil data dari tiap elemen form
	$id = $data["id"];
	$MIN = htmlspecialchars($data["MIN"]);
	$MAX = htmlspecialchars($data["MAX"]);
	$BOBOT = htmlspecialchars($data["BOBOT"]);
	//query insert data
	$query = "UPDATE bobot_harga SET
					MIN = '$MIN',
					MAX = '$MAX',
					BOBOT = '$BOBOT'
					WHERE id = $id
					";
	mysqli_query($conn, $query);

	return mysqli_affected_rows($conn);
}

function ubah_bobotselektifitas($data)
{
	global $conn;
//ambil data dari tiap elemen form
	$id = $data["id"];
	$MIN = htmlspecialchars($data["MIN"]);
	$MAX = htmlspecialchars($data["MAX"]);
	$BOBOT = htmlspecialchars($data["BOBOT"]);
	$KONDISI = htmlspecialchars($data["KONDISI"]);
	//query insert data
	$query = "UPDATE bobot_harga SET
					MIN = '$MIN',
					MAX = '$MAX',
					BOBOT = '$BOBOT',
					KONDISI = '$KONDISI'
					WHERE id = $id
					";
	mysqli_query($conn, $query);

	return mysqli_affected_rows($conn);
}

?>