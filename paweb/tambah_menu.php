<?php 
include 'koneksi.php';
?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags --> 
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/tambah_menu.css">
    <!-- <link rel="stylesheet" type="text/css" href="fontawesome/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"> -->

    <title>Tambah Menu</title>
  </head>
  <body>
 
 <!-- Form Registrasi -->
  <div class="container">
    <h3 class="text-center mt-3 mb-5">TAMBAHKAN MENU BARU</h3>
    <div class="card p-5 mb-5">
      <form method="POST" action="tambah.php" enctype="multipart/form-data">
        <div class="form-group">
          <label for="menu1">Nama Menu</label>
          <input type="text" class="form-control" id="menu1" name="nama_menu" required>
        </div>
        <div class="form-group">
          <label for="#">Jenis Menu</label>
          <div class="form-check">
            <label class="form-check-label">
              <input type="radio" class="form-check-input" value="Makanan" name="jenis_menu" required>Makanan 
            </label>
          </div>
          <div class="form-check">
            <label class="form-check-label">
              <input type="radio" class="form-check-input" value="Minuman" name="jenis_menu" required>Minuman
            </label>
          </div>
         </div>
        <div class="form-group">
          <label for="stok1">Stok</label>
          <input type="number" class="form-control" id="stok1" name="stok" required>
        </div>
        <div class="form-group">
          <label for="harga1">Harga Menu</label>
          <input type="number" class="form-control" id="harga1" name="harga" required>
        </div>
        <div class="form-group">
          <label for="gambar">Foto Menu</label>
          <input type="file" class="form-control-file border" id="gambar" name="gambar" required>
        </div><br>
        <button type="submit" class="btn btn-primary" name="tambah">Tambah</button>
        <a href="daftar_menu.php" style="text-decoration:none"><button type="button" class="btn btn-danger">Cancel</button></a>
      </form>

  </div>
  </div>
  <!-- Akhir Form Registrasi -->


  

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/jquery.js"></script>
  </body>
</html>