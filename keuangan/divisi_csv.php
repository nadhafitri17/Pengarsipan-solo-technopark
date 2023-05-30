<?php
include '../koneksi.php';
$data = mysqli_query($koneksi,"SELECT * FROM master_divisi order by Id_divisi desc");

// header kolom pada file CSV
$csv_header = array("NO","ID DIVISI","NAMA DIVISI");

// membuka file CSV untuk ditulis
$fp = fopen('data_divisi.csv', 'w');

// menulis header kolom pada file CSV
fputcsv($fp, $csv_header);

// variabel untuk nomor urut
$i = 1;

// menulis data baris demi baris pada file CSV
while($row = mysqli_fetch_assoc($data)) {
    // menambahkan nomor urut pada kolom pertama
    array_unshift($row, $i);

    // menulis baris pada file CSV
    fputcsv($fp, $row);

    // increment nomor urut
    $i++;
}

// menutup file CSV
fclose($fp);

// memberikan respon untuk mengunduh file CSV
header('Content-Type: text/csv');
header('Content-Disposition: attachment; filename="data_divisi.csv"');
readfile('data_divisi.csv');
exit;
?>