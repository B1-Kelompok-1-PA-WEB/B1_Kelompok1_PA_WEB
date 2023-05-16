<?php 
include('koneksi.php');

$id_menu = $_POST['id_menu'];
$nama_menu = $_POST['nama_menu'];
$jenis_menu = $_POST['jenis_menu'];
$stok = $_POST['stok'];
$harga = $_POST['harga'];
$nama_file = $_FILES['gambar']['name'];
$source = $_FILES['gambar']['tmp_name'];
$folder = './upload/';

$ekspresi_reguler = '/^[0-9\s]*$/';
if (preg_match($ekspresi_reguler, $stok)) {
	if (preg_match($ekspresi_reguler, $harga)) {
		move_uploaded_file($source, $folder.$nama_file);
		$edit = mysqli_query($koneksi, "UPDATE produk SET nama_menu='$nama_menu', jenis_menu='$jenis_menu', stok='$stok', harga='$harga', gambar='$nama_file' WHERE id_menu='$id_menu' ");
		if($edit)
			header('location: daftar_menu.php');
		else
			echo "Edit Menu Gagal";
		} 
	else {
		echo "	<script>
			alert('Input tidak valid. Stok dan harga hanya diperbolehkan angka!');
			document.location='daftar_menu.php';
				</script>";
	}
}
else {
    echo "	<script>
        alert('Input tidak valid. Stok dan harga hanya diperbolehkan angka!');
        document.location='daftar_menu.php';
        </script>";}
?>

