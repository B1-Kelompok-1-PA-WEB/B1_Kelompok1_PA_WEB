<?php
include('koneksi.php');

$nama = $_POST['nama_menu'];
$jenis = $_POST['jenis_menu'];
$stok = $_POST['stok'];
$harga = $_POST['harga'];
$nama_file = $_FILES['gambar']['name'];
$source = $_FILES['gambar']['tmp_name'];
$folder = './upload/';


$ekspresi_reguler_name = '/^[a-zA-Z\s]*$/';
$ekspresi_reguler = '/^[0-9\s]*$/';
$input = trim($nama);
if(!empty($nama)){
    if (preg_match($ekspresi_reguler_name, $nama)) {
        if (preg_match($ekspresi_reguler, $stok)) {
            if (preg_match($ekspresi_reguler, $harga)) {
                move_uploaded_file($source, $folder.$nama_file);
                $insert = mysqli_query($koneksi, "INSERT INTO menu VALUES (NULL, '$nama', '$jenis', '$stok', '$harga', '$nama_file')");
                if($insert)
                    header('location: daftar_menu.php');
                else
                    echo "	<script>
                    alert('Input tidak valid. Stok dan harga hanya diperbolehkan angka!');
                    document.location='daftar_menu.php';
                    </script>";
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
                </script>";}}
    else {
        echo "	<script>
            alert('Input tidak valid. Stok dan harga hanya diperbolehkan angka!');
            document.location='daftar_menu.php';
            </script>";}
}
else {
    echo "	<script>
        alert('Input tidak valid. Stok dan harga hanya diperbolehkan angka!');
        document.location='daftar_menu.php';
        </script>";}
?>
