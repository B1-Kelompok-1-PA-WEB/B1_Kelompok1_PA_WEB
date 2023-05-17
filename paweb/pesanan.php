<?php 
    include('koneksi.php');
    session_start();
      if(!isset($_SESSION['login_user'])) {
        header("location: login.php");
      }else{
?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/pesanan.css">
    <link rel="stylesheet" type="text/css" href="fontawesome/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css">

    <title>Order List</title>
  </head>
  <body>
  <!-- Jumbotron -->
      <!-- <div class="jumbotron jumbotron-fluid text-center">
        <div class="container">
          <h1 class="display-4"><span class="font-weight-bold">WIRIJI RESTO</span></h1>
          <hr>
          <p class="lead font-weight-bold"><br> 
          Enjoy Your Meal :)</p>
        </div>
      </div> -->
  <!-- Akhir Jumbotron -->

  <!-- Navbar -->
      <nav class="navbar navbar-expand-lg">
        <div class="container">
        <a class="navbar-brand text-white" href="admin.php"><strong>Wiriji</strong> Resto</a>

        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link mr-5" href="employee.php">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link mr-5 activated" href="pesanan.php">Orders</a>
            </li>
            <li class="nav-item">
              <a class="nav-link mr-5" href="logout.php">LogOut</a>
            </li>
          </ul>
        </div>
       </div> 
      </nav>
  <!-- Akhir Navbar -->

  <!-- Menu -->
    <div class="container">
      <div class="judul-pesanan mt-5">
        <h3 class="text-center font-weight-bold">DAFTAR PESANAN PELANGGAN</h3>
      </div>
      <table class="table table-bordered" id="example">
        <thead class="thead-light">
          <tr>
            <th scope="col">No.</th>
            <th scope="col">ID Pesanan</th>
            <th scope="col">ID Pelanggan</th>
            <th scope="col">Tanggal Pemesanan</th>
            <th scope="col">Total Pembayaran</th>
            <th scope="col">Status</th>
            <th scope="col">Opsi</th>
          </tr>
        </thead>
        <tbody>
          <?php $nomor=1; ?>
          <?php

            $ambil = mysqli_query($koneksi, 'SELECT * FROM pesanan');
            $result = mysqli_fetch_all($ambil, MYSQLI_ASSOC);
          ?>
          <?php foreach($result as $result) : ?>
          <tr>
            <th scope="row"><?php echo $nomor; ?></th>
            <td><?php echo $result["id_pesanan"]; ?></td>
            <td><?php echo $result["id_user"]; ?></td>
            <td><?php echo $result["tanggal_pemesanan"]; ?></td>
            <td>Rp. <?php echo number_format($result["total_belanja"]); ?></td>
            <td><?php echo $result["status"]; ?></td>
            <td>
              <a href="detail_pesanan.php?id=<?php echo $result['id_pesanan'] ?>" class="badge badge-primary">Detail</a>
              <a href="clear_pesanan.php?id=<?php echo $result['id_pesanan'] ?>" class="badge badge-danger">Hapus Data</a>
            </td>
          </tr>
          <?php $nomor++; ?>
          <?php endforeach; ?>
        </tbody>
      </table>
    </div>
  <!-- Akhir Menu -->

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>
    <script>
      $(document).ready(function() {
          $('#example').DataTable();
      } );
    </script>
  </body>
</html>
<?php } ?>