<?php
session_start();
include 'koneksi.php';

$cek = mysqli_query($koneksi, 'SELECT * FROM pesanan');

$status = $hasil['status'];
$id_pesanan = $_SESSION["idpesanan"];

$update= mysqli_query($koneksi, "UPDATE pesanan SET status='Paid' WHERE id_pesanan='$id_pesanan'");

if($update)
	header('location: pesanan.php');
else
	echo "transaksi gagal :(";
?>