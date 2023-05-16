<?php
//Include file koneksi ke database
include "koneksi.php";

//menerima nilai dari kiriman form pendaftaran
$username=$_POST["username"];
$password=$_POST["password"]; //untuk password digunakan enskripsi
$nama_lengkap=$_POST["nama_lengkap"];
$jenis_kelamin=$_POST["jenis_kelamin"];
$tanggal_lahir=$_POST["tanggal_lahir"];
$alamat=$_POST["alamat"];
$hp=$_POST["hp"];
$status=$_POST["status"];



//Menginput data ke tabel
  $hasil=mysqli_query($koneksi, "INSERT INTO akun (username,password,status) VALUES('$username','$password','user')");
  $hasil2=mysqli_query($koneksi, "INSERT INTO pembeli (nama_lengkap,jenis_kelamin,tanggal_lahir,alamat,hp) VALUES('$username','$password','$nama_lengkap','$jenis_kelamin','$tanggal_lahir','$alamat','$hp')");

//Kondisi apakah berhasil atau tidak
	if ($hasil && hasil2) 
	{
		echo "<script>
					alert('Anda Berhasil Registrasi !');
					document.location='login.php';
			</script>";
	}
	else 
	{
		echo "<script>
					alert('Registrasi Anda Gagal !');
					document.location='register.php';
			</script>";
	}

?>