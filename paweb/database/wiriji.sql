-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Bulan Mei 2023 pada 19.32
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wiriji`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `id_user` int(5) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `status` enum('admin','user','staf') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`id_user`, `username`, `password`, `email`, `status`) VALUES
(1, 'yandi', 'yandi123', 'yandi@gmail.com', 'admin'),
(10001, 'Budi1', 'budiwan', 'budi1@example.com', 'user'),
(10002, 'Yulia2', 'breg345', 'yulia2@example.com', 'user'),
(10003, 'Denny3', 't3gsg4', 'denny3@example.com', 'user'),
(10004, 'Wulan4', '3rg3y', 'wulan4@example.com', 'user'),
(10005, 'Ardi5', 'gergeage', 'ardi5@example.com', 'user'),
(10006, 'Rita6', 'gerg5h', 'rita6@example.com', 'user'),
(10007, 'Eko7', 'hwth', 'eko7@example.com', 'user'),
(10008, 'Sri8', 'passd8', 'sri8@example.com', 'user'),
(10009, 'Joko9', 'wage343', 'joko9@example.com', 'user'),
(10010, 'Dian10', 'passw0', 'dian10@example.com', 'user'),
(10011, 'Henny11', 'passwgresgord11', 'henny11@example.com', 'user'),
(10012, 'Fikri12', 'paw5osed12', 'fikri12@example.com', 'user'),
(10013, 'Nina13', 'pagerge', 'nina13@example.com', 'user'),
(10014, 'Doni14', 'etery57986', 'doni14@example.com', 'user'),
(10015, 'Intan15', 'ge457', 'intan15@example.com', 'user'),
(10016, 'Adi16', '34rte', 'adi16@example.com', 'user'),
(10017, 'Mila17', 'hrw56', 'mila17@example.com', 'user'),
(10018, 'Teguh18', 'h45643', 'teguh18@example.com', 'user'),
(10019, 'Dewi19', 'hrh4fdew', 'dewi19@example.com', 'user'),
(10020, 'Dedy20', 'dedyyyy12345', 'dedy20@example.com', 'user'),
(11011, 'andi123', 'andi1234', 'andi@yahoo.com', 'staf'),
(11012, 'sari456', 'sari5678', 'sari@yahoo.com', 'staf'),
(11013, 'budi789', 'budi8901', 'budi@yahoo.com', 'staf'),
(11014, 'dewi234', 'dewi3456', 'dewi@yahoo.com', 'staf'),
(11015, 'eko567', 'eko6789', 'eko@yahoo.com', 'staf'),
(11016, 'fitri012', 'fitri123', 'fitri@yahoo.com', 'staf'),
(11017, 'gita345', 'gita4567', 'gita@yahoo.com', 'staf'),
(11018, 'hadi678', 'hadi7890', 'hadi@yahoo.com', 'staf'),
(11019, 'indra901', 'indra012', 'indra@yahoo.com', 'staf'),
(11020, 'joni234', 'joni3456', 'joni@yahoo.com', 'staf'),
(11021, 'kartika567', 'kartika6789', 'kartika@yahoo.com', 'staf'),
(11022, 'lia890', 'lia9012', 'lia@yahoo.com', 'staf'),
(11023, 'maman123', 'maman2345', 'maman@yahoo.com', 'staf'),
(11024, 'nina456', 'nina5678', 'nina@yahoo.com', 'staf'),
(11025, 'oky789', 'oky8901', 'oky@yahoo.com', 'staf'),
(11026, 'putri012', 'putri123', 'putri@yahoo.com', 'staf'),
(11027, 'rizki345', 'rizki4567', 'rizki@yahoo.com', 'staf'),
(11028, 'sinta678', 'sinta7890', 'sinta@yahoo.com', 'staf'),
(11029, 'teguh901', 'teguh012', 'teguh@yahoo.com', 'staf'),
(11030, 'umi234', 'umi3456', 'umi@yahoo.com', 'staf'),
(12345, 'aji', 'aji123', 'aji@gmail.com', 'staf'),
(99999, 'wibi', 'wibi123', 'wibi@gmail.com', 'staf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id_menu` varchar(4) NOT NULL,
  `nama_menu` varchar(30) DEFAULT NULL,
  `toping` varchar(15) DEFAULT NULL,
  `harga` int(6) DEFAULT NULL,
  `gambar` varchar(30) DEFAULT NULL,
  `stok` int(10) DEFAULT NULL,
  `jenis_menu` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id_menu`, `nama_menu`, `toping`, `harga`, `gambar`, `stok`, `jenis_menu`) VALUES
('M001', 'Ramen Ayam', 'Bawang Goreng', 45000, 'ramen.jpg', 100, 'Makanan'),
('M002', 'Sushi Salmon', 'Kremes', 35000, 'sushi.jpg', 125, 'Makanan'),
('M003', 'Udon Kuah', 'Tahu Goreng', 50000, 'udon.jpg', 80, 'Makanan'),
('M004', 'Tempura Udang', 'Mayonaise', 35000, 'tempura.jpg', 50, 'Makanan'),
('M005', 'Teriyaki', 'Telur Dadar', 65000, 'teriyaki.jpg', 60, 'Makanan'),
('M006', 'Okonomiyaki', 'Katsuobushi', 50000, 'okonomiyaki.jpg', 30, 'Makanan'),
('M007', 'Yakiniku Don', 'Kucai', 65000, 'yakiniku don.jpg', 70, 'Makanan'),
('M008', 'Mochi Ice Cream', 'Green Tea', 25000, 'mochi ice cream.jpg', 50, 'Makanan'),
('M009', 'Gyoza', 'Kacang Tanah', 35000, 'gyoza.jpg', 60, 'Makanan'),
('M010', 'Yaki Udon', 'Kucai', 50000, 'yaki udon.jpg', 78, 'Makanan'),
('M011', 'Yakitori', 'Bawang Merah', 40000, 'yakitori.jpg', 50, 'Makanan'),
('M012', 'Takoyaki', 'Mayonaise', 25000, 'takoyaki.jpg', 200, 'Makanan'),
('M013', 'Sashimi', 'Wasabi', 40000, 'sashimi.jpg', 43, 'Makanan'),
('M014', 'Lemon Tea', NULL, 25000, 'lemontea.jpg', 500, 'Minuman'),
('M015', 'Ocha Tea', NULL, 15000, 'ocha tea.jpg', 700, 'Minuman'),
('M016', 'Nasi', NULL, 7000, 'nasi.jpeg', 1000, 'Makanan'),
('M017', 'Green Tea', NULL, 20000, 'green tea.jpg', 40, 'Minuman'),
('M018', 'Air Mineral', NULL, 5000, 'airmineral.jpg', 1000, 'Minuman');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` varchar(5) NOT NULL,
  `nama` varchar(15) DEFAULT NULL,
  `gender` varchar(2) DEFAULT NULL,
  `gaji` int(8) DEFAULT NULL,
  `id_user` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama`, `gender`, `gaji`, `id_user`) VALUES
('S101', 'Andi', 'L', 5000000, 11011),
('S102', 'Sari', 'P', 4500000, 11012),
('S103', 'Budi', 'L', 5500000, 11013),
('S104', 'Dewi', 'P', 4800000, 11014),
('S105', 'Eko', 'L', 5200000, 11012),
('S106', 'Fitri', 'P', 4600000, 11016),
('S107', 'Gita', 'P', 5800000, 11017),
('S108', 'Hadi', 'L', 5300000, 11018),
('S109', 'Indra', 'L', 5700000, 11019),
('S110', 'Joni', 'L', 5100000, 11020),
('S111', 'Kartika', 'P', 4900000, 11021),
('S112', 'Lia', 'P', 4300000, 11022),
('S113', 'Maman', 'L', 5400000, 11023),
('S114', 'Nina', 'P', 4600000, 11024),
('S115', 'Oky', 'L', 5000000, 11025),
('S116', 'Putri', 'P', 4700000, 11026),
('S117', 'Rizki', 'L', 5600000, 11027),
('S118', 'Sinta', 'P', 4800000, 11028),
('S119', 'Teguh', 'L', 5900000, 11029),
('S120', 'Umi', 'P', 5000000, 11030);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembeli`
--

CREATE TABLE `pembeli` (
  `id_pembeli` varchar(4) NOT NULL,
  `nama` varchar(15) DEFAULT NULL,
  `gender` varchar(2) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `id_user` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembeli`
--

INSERT INTO `pembeli` (`id_pembeli`, `nama`, `gender`, `alamat`, `id_user`) VALUES
('P001', 'Budi Setiawan', 'L', 'Jl. Mawar No. 12', 10001),
('P002', 'Yulia Anggraini', 'P', 'Jl. Hasanuddin No. 27', 10002),
('P003', 'Denny Kusuma', 'L', 'Jl. Sudirman No. 57', 10003),
('P004', 'Wulan Sari', 'P', 'Jl. Pahlawan No. 2', 10004),
('P005', 'Ardi Prasetyo', 'L', 'Jl. Brawijaya No. 40', 10005),
('P006', 'Rita Septiani', 'P', 'Jl. Panglima Sudirman No. 5', 10006),
('P007', 'Eko Cahyono', 'L', 'Jl. Merdeka No. 77', 10007),
('P008', 'Sri Mulyani', 'P', 'Jl. Veteran No. 30', 10008),
('P009', 'Joko Santoso', 'L', 'Jl. Kusuma Bangsa No. 14', 10009),
('P010', 'Dian Nugraha', 'L', 'Jl. Imam Bonjol No. 33', 10010),
('P011', 'Henny Setiawan', 'P', 'Jl. Dr. Sutomo No. 4', 10011),
('P012', 'Fikri Ramadhan', 'L', 'Jl. Jendral Ahmad Yani No. 22', 10012),
('P013', 'Nina Puspita', 'P', 'Jl. Panglima Polim No. 11', 10013),
('P014', 'Doni Priyanto', 'L', 'Jl. Pahlawan No. 44', 10014),
('P015', 'Intan Susanti', 'P', 'Jl. Gatot Subroto No. 88', 10015),
('P016', 'Adi Nugroho', 'L', 'Jl. MT Haryono No. 63', 10016),
('P017', 'Mila Kumala', 'P', 'Jl. Gatot Subroto No. 18', 10017),
('P018', 'Teguh Wibowo', 'L', 'Jl. Jendral Sudirman No. 33', 10018),
('P019', 'Dewi Lestari', 'P', 'Jl. Diponegoro No. 15', 10019),
('P020', 'Dedy Saputra', 'L', 'Jl. MT Haryono No. 22', 10020);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pemesanan` int(50) NOT NULL,
  `tanggal_pemesanan` date NOT NULL,
  `total_belanja` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pemesanan`
--

INSERT INTO `pemesanan` (`id_pemesanan`, `tanggal_pemesanan`, `total_belanja`) VALUES
(45, '2023-04-30', 24000),
(46, '2023-04-30', 33000),
(47, '2023-04-30', 22000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan_produk`
--

CREATE TABLE `pemesanan_produk` (
  `id_pemesanan_produk` int(50) NOT NULL,
  `id_pemesanan` int(50) NOT NULL,
  `id_menu` varchar(50) NOT NULL,
  `jumlah` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pemesanan_produk`
--

INSERT INTO `pemesanan_produk` (`id_pemesanan_produk`, `id_pemesanan`, `id_menu`, `jumlah`) VALUES
(7, 32, '9', 1),
(8, 32, '11', 1),
(9, 33, '16', 1),
(10, 33, '6', 1),
(11, 34, '13', 1),
(12, 34, '8', 1),
(13, 34, '9', 1),
(14, 34, '17', 1),
(15, 35, '9', 2),
(16, 35, '14', 1),
(17, 36, '8', 1),
(18, 37, '13', 1),
(19, 37, '16', 1),
(20, 38, '8', 1),
(21, 39, '9', 1),
(22, 39, '16', 1),
(23, 40, '10', 1),
(24, 40, '14', 1),
(25, 41, '17', 1),
(26, 41, '10', 1),
(27, 41, '9', 2),
(28, 42, '9', 1),
(29, 42, '14', 1),
(30, 42, '7', 1),
(31, 42, '17', 1),
(32, 43, '7', 1),
(33, 43, '13', 1),
(34, 44, '1', 1),
(35, 44, '16', 1),
(36, 45, '1', 1),
(37, 45, '17', 1),
(38, 46, '3', 1),
(39, 46, '15', 1),
(40, 47, '2', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `no_pesanan` int(5) NOT NULL,
  `id_menu` varchar(4) NOT NULL,
  `id_pembeli` varchar(5) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`no_pesanan`, `id_menu`, `id_pembeli`, `tanggal`) VALUES
(1, 'M005', 'P008', '2023-04-30'),
(2, 'M014', 'P012', '2023-05-01'),
(3, 'M002', 'P019', '2023-05-02'),
(4, 'M012', 'P005', '2023-05-03'),
(5, 'M009', 'P018', '2023-05-04'),
(6, 'M003', 'P007', '2023-05-05'),
(7, 'M016', 'P013', '2023-05-06'),
(8, 'M011', 'P009', '2023-05-07'),
(9, 'M004', 'P017', '2023-05-08'),
(10, 'M013', 'P015', '2023-05-09'),
(11, 'M007', 'P002', '2023-05-10'),
(12, 'M017', 'P010', '2023-05-11'),
(13, 'M008', 'P004', '2023-05-12'),
(14, 'M001', 'P011', '2023-05-13'),
(15, 'M015', 'P003', '2023-05-14'),
(16, 'M006', 'P020', '2023-05-15'),
(17, 'M010', 'P014', '2023-05-16'),
(18, 'M018', 'P001', '2023-05-17'),
(19, 'M003', 'P006', '2023-05-18'),
(20, 'M012', 'P016', '2023-05-19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_menu` int(50) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `jenis_menu` varchar(50) NOT NULL,
  `stok` int(50) NOT NULL,
  `harga` int(50) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_menu`, `nama_menu`, `jenis_menu`, `stok`, `harga`, `gambar`) VALUES
(1, 'Wiriji Ramen', '', 80, 20000, 'ramen.jpg'),
(2, 'Kayaku Udon', '', 50, 22000, 'udon.jpg'),
(3, 'Japanese Sushi', 'Makanan', 50, 23000, 'sushi.jpg'),
(4, 'Salmon Sashimi', 'Makanan', 45, 28000, 'sashimi.jpg'),
(5, 'Miso Soup', 'Makanan', 50, 18000, 'miso.jpg'),
(6, 'Chicken Yakitori', 'Makanan', 78, 20000, 'yakitori.jpg'),
(7, 'Beef Teriyaki', 'Makanan', 20, 30000, 'teriyaki.jpg'),
(8, 'Onigiri Tuna', 'Makanan', 55, 19000, 'onigiri.jpg'),
(16, 'Wiriji Tea', 'Minuman', 60, 5000, 'tea.jpg'),
(17, 'Lemon Tea', 'Minuman', 100, 6000, 'lemontea.jpg'),
(21, 'Air Mineral', 'Minuman', 50, 3000, 'airmineral.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(5) NOT NULL,
  `id_menu` varchar(5) NOT NULL,
  `id_guest` varchar(5) NOT NULL,
  `id_pegawai` varchar(5) NOT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_menu`, `id_guest`, `id_pegawai`, `tanggal`) VALUES
(1, 'M002', 'G001', 'S101', '2023-05-01'),
(2, 'M013', 'G001', 'S101', '2023-05-01'),
(3, 'M006', 'G001', 'S101', '2023-05-01'),
(4, 'M017', 'G002', 'S102', '2023-05-01'),
(5, 'M007', 'G002', 'S102', '2023-05-01'),
(6, 'M016', 'G002', 'S102', '2023-05-01'),
(7, 'M001', 'G003', 'S103', '2023-05-01'),
(8, 'M014', 'G003', 'S103', '2023-05-01'),
(9, 'M010', 'G003', 'S103', '2023-05-01'),
(10, 'M012', 'G003', 'S103', '2023-05-01'),
(11, 'M018', 'G004', 'S104', '2023-05-02'),
(12, 'M005', 'G004', 'S104', '2023-05-02'),
(13, 'M011', 'G004', 'S104', '2023-05-02'),
(14, 'M008', 'G005', 'S105', '2023-05-02'),
(15, 'M015', 'G005', 'S105', '2023-05-02'),
(16, 'M004', 'G005', 'S105', '2023-05-02'),
(17, 'M003', 'G006', 'S103', '2023-05-02'),
(18, 'M018', 'G006', 'S103', '2023-05-02'),
(19, 'M007', 'G006', 'S103', '2023-05-02'),
(20, 'M012', 'G006', 'S103', '2023-05-02'),
(21, 'M015', 'G007', 'S106', '2023-05-03'),
(22, 'M008', 'G007', 'S106', '2023-05-03'),
(23, 'M011', 'G007', 'S106', '2023-05-04'),
(24, 'M004', 'G008', 'S106', '2023-05-04'),
(25, 'M003', 'G008', 'S106', '2023-05-04'),
(26, 'M018', 'G008', 'S106', '2023-05-26'),
(27, 'M007', 'G009', 'S107', '2023-05-27'),
(28, 'M012', 'G009', 'S107', '2023-05-28'),
(29, 'M015', 'G009', 'S107', '2023-05-29'),
(30, 'M008', 'G010', 'S110', '2023-05-30'),
(31, 'M011', 'G010', 'S110', '2023-05-31'),
(32, 'M004', 'G010', 'S111', '2023-06-01'),
(33, 'M003', 'G010', 'S111', '2023-06-02'),
(34, 'M018', 'G010', 'S111', '2023-06-03'),
(35, 'M007', 'G011', 'S112', '2023-06-04'),
(36, 'M012', 'G011', 'S112', '2023-06-05'),
(37, 'M015', 'G011', 'S112', '2023-06-06'),
(38, 'M008', 'G012', 'S113', '2023-06-07'),
(39, 'M011', 'G012', 'S113', '2023-06-08'),
(40, 'M004', 'G012', 'S113', '2023-06-09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `nama_lengkap` varchar(25) NOT NULL,
  `jenis_kelamin` varchar(25) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(25) NOT NULL,
  `hp` varchar(25) NOT NULL,
  `status` enum('admin','user','employee','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama_lengkap`, `jenis_kelamin`, `tanggal_lahir`, `alamat`, `hp`, `status`) VALUES
(7, 'riyandi', '064', 'Selamat Riyandi', 'Laki-Laki', '2003-06-26', 'Jl. Mangkurawang, Kec. Te', '085251170086', 'admin'),
(8, 'wibi', '045', 'Putra Wibisono', 'Laki-Laki', '2003-09-09', 'Gg. H. Kunci, Kel. Sempaj', '085251170086', 'user'),
(9, 'aji', '043', 'Aji Wira', 'Laki-Laki', '2023-02-01', 'Jl. M. Yamin, Kost Berima', '085251679745', 'employee');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id_pembeli`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`);

--
-- Indeks untuk tabel `pemesanan_produk`
--
ALTER TABLE `pemesanan_produk`
  ADD PRIMARY KEY (`id_pemesanan_produk`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`no_pesanan`),
  ADD KEY `id_menu` (`id_menu`),
  ADD KEY `id_pembeli` (`id_pembeli`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_pegawai` (`id_pegawai`),
  ADD KEY `id_menu` (`id_menu`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pemesanan` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `pemesanan_produk`
--
ALTER TABLE `pemesanan_produk`
  MODIFY `id_pemesanan_produk` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `no_pesanan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_menu` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `pegawai_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `akun` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  ADD CONSTRAINT `pembeli_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `akun` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`),
  ADD CONSTRAINT `pesanan_ibfk_2` FOREIGN KEY (`id_pembeli`) REFERENCES `pembeli` (`id_pembeli`);

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
