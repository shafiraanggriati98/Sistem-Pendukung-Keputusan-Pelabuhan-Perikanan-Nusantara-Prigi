<?php
//ALTERNATIF A1
$A1_K1     = 9;
$PANGKAT_A1K1= 5;

$A1_K2     = 160;
$PANGKAT_A1K2= 2;

$A1_K3     = 347;
$PANGKAT_A1K3= 1;

//ALTERNATIF A2
$A2_K1     = 19;
$PANGKAT_A2K1= 5;

$A2_K2     = 91;
$PANGKAT_A2K2= 2;

$A2_K3     = 16;
$PANGKAT_A2K3= 1;

//ALTERNATIF A3
$A3_K1     = 0;
$PANGKAT_A3K1= 5;

$A3_K2     = 18;
$PANGKAT_A3K2= 2;

$A3_K3     = 108;
$PANGKAT_A3K3= 1;

//ALTERNATIF A4
$A4_K1     = 8;
$PANGKAT_A4K1= 5;

$A4_K2     = 15;
$PANGKAT_A4K2= 2;

$A4_K3     = 155;
$PANGKAT_A4K3= 1;

//ALTERNATIF A5
$A5_K1     = 955;
$PANGKAT_A5K1= 5;

$A5_K2     = 694;
$PANGKAT_A5K2= 2;

$A5_K3     = 160;
$PANGKAT_A5K3= 1;

//cara perpangkatan alternatif A1
$HASIL_A1_K1 = pow($A1_K1, $PANGKAT_A1K1);
$HASIL_A1_K2 = pow($A1_K2, $PANGKAT_A1K2);
$HASIL_A1_K3 = pow($A1_K3, $PANGKAT_A1K3);

//cara perpangkatan alternatif A2
$HASIL_A2_K1 = pow($A2_K1, $PANGKAT_A2K1);
$HASIL_A2_K2 = pow($A2_K2, $PANGKAT_A2K2);
$HASIL_A2_K3 = pow($A2_K3, $PANGKAT_A2K3);

//cara perpangkatan alternatif A3
$HASIL_A3_K1 = pow($A3_K1, $PANGKAT_A3K1);
$HASIL_A3_K2 = pow($A3_K2, $PANGKAT_A3K2);
$HASIL_A3_K3 = pow($A3_K3, $PANGKAT_A3K3);

//cara perpangkatan alternatif A4
$HASIL_A4_K1 = pow($A4_K1, $PANGKAT_A4K1);
$HASIL_A4_K2 = pow($A4_K2, $PANGKAT_A4K2);
$HASIL_A4_K3 = pow($A4_K3, $PANGKAT_A4K3);

//cara perpangkatan alternatif A5
$HASIL_A5_K1 = pow($A5_K1, $PANGKAT_A5K1);
$HASIL_A5_K2 = pow($A5_K2, $PANGKAT_A5K2);
$HASIL_A5_K3 = pow($A5_K3, $PANGKAT_A5K3);

//TAMBAH A1
$A1 = $HASIL_A1_K1 + $HASIL_A1_K2 + $HASIL_A1_K3;
$A2 = $HASIL_A2_K1 + $HASIL_A2_K2 + $HASIL_A2_K3;
$A3 = $HASIL_A3_K1 + $HASIL_A3_K2 + $HASIL_A3_K3;
$A4 = $HASIL_A4_K1 + $HASIL_A4_K2 + $HASIL_A4_K3;
$A5 = $HASIL_A5_K1 + $HASIL_A5_K2 + $HASIL_A5_K3;


$data = array($A1,$A2,$A3,$A4,$A5);
$alat = array("PUKAT CINCIN","JARING INGSAN","PAYANG","PANCING TONDA","PANCING ULUR");
$jumlah = count($data);

//coba

echo "HASIL PERHITUNGAN NILAI KEPUTUSAN : <br/>\n";
for ($c = 0; $c <$jumlah; $c++)
{
echo "{$alat[$c]} = {$data[$c]}<br/>\n";
}

echo "<br/> PERANGKINGAN DATA : <br/>\n";

rsort($data);
foreach ($data as $k => $v) 
print "{$alat[$k]} = $v<br/>";

//PERANGKINGAN BESAR KE KECIL = RSORT , KECIL KE BESAR = ASORT
?>