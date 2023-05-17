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



//Menginput data ke tabel
$hasil=mysqli_query($koneksi, "INSERT INTO akun (username,password,status) VALUES('$username','$password','member')");
$iduser=mysqli_query($koneksi, "SELECT id_user FROM akun WHERE username='$username'");
$row = mysqli_fetch_assoc($iduser);
$id_user = $row['id_user'];
$hasil2=mysqli_query($koneksi, "INSERT INTO pembeli (nama,gender,ttl,alamat,hp,id_user) VALUES('$nama_lengkap','$jenis_kelamin','$tanggal_lahir','$alamat','$hp','$id_user')");

//Kondisi apakah berhasil atau tidak
	if ($hasil && $hasil2) 
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