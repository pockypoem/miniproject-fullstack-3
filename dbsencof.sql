-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2022 at 06:08 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbsencof`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pesanan`
--

CREATE TABLE `tbl_pesanan` (
  `idorder` int(30) NOT NULL,
  `iduser` int(11) NOT NULL,
  `nama_pemesan` varchar(255) NOT NULL,
  `telp` varchar(100) NOT NULL,
  `jenis_pembayaran` varchar(120) NOT NULL,
  `no_rekening` varchar(100) NOT NULL,
  `jasa_pengiriman` varchar(200) NOT NULL,
  `jenis_paket` varchar(200) NOT NULL,
  `total_produk` int(50) NOT NULL,
  `total_bayar` int(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pesanan`
--

INSERT INTO `tbl_pesanan` (`idorder`, `iduser`, `nama_pemesan`, `telp`, `jenis_pembayaran`, `no_rekening`, `jasa_pengiriman`, `jenis_paket`, `total_produk`, `total_bayar`) VALUES
(1, 1, 'Pocky Suhadi', '089234567801', 'bri', '9876543212', 'tiki', 'ECO', 1, 148000),
(2, 1, 'Pocky Suhadi', '089234567801', 'bca', '987765431423', 'tiki', 'REG', 2, 78500),
(3, 2, 'Nopal', '08947294321', 'bca', '12345678465', 'jne', 'OKE', 2, 204000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_produk`
--

CREATE TABLE `tbl_produk` (
  `idproduk` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `stok` int(11) NOT NULL,
  `harga` int(50) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_produk`
--

INSERT INTO `tbl_produk` (`idproduk`, `nama_produk`, `stok`, `harga`, `deskripsi`, `gambar`) VALUES
(1, 'Kece Kopi Robusta Lampung', 50, 70000, 'Biji kopi robusta yang berasal dari Kampung kalirejo yang merupakan salah satu kampung penghasil produk-produk Kece di Lampung Tengah (Lamteng)', 'robusta-kececoffee.jpg'),
(2, 'Robusta Lapang ', 65, 40000, 'Produk ini merupakan asli kopi Robusta dari Pakpak Bharat siap dikonsumsi produksi UMKM Pakpak Bharat', 'robusta-lapang.jpg'),
(3, 'Kopi Robusta LamBa ', 45, 30000, 'Kopi Robusta 200 gram bubuk dari Lampung Barat. Produk original dari brand Suxmaco Coffee dengan kualitas ekspor premium.', 'robusta-lampungbarat.png'),
(4, 'Robusta Gesing Temanggung', 45, 28000, 'Robusta Temanggung Green Bean Coffee 200 gram yang merupakan produk olahan khas temanggung.', 'robusta-gesing.png'),
(5, 'Kupu Kupu Bola Dunia Bali Kintamani', 50, 60000, 'Kopi terbaik di Bali ditanam di dataran tertinggi di utara Pulau Bali Kintamani dengan system tradisional Subak Abian', 'kupukupu-bali.jpg'),
(6, 'Kopi Arabika Bali Kintamani', 55, 45000, 'Kopi arabika 100 gram dengan flavor chocolate, kacang dan medium roast', 'arabika-bali.png'),
(7, 'Sentra Kopi Robusta Lampung', 30, 170000, 'Biji kopi asli dari Lampung yang telah disangrai dengan mesin roaster terbaik dan dikemas dalam kemasan per 1 kg.', 'robusta-lampung.png'),
(8, 'Arabika Bin Oemar', 55, 40000, 'Biji Kopi Arabika Gunung Ijen Bin Oemar 150gr yang berasal dari Sumbermuluo pesanggaran Banyuwangi', 'arabika-gunungijen.png'),
(9, 'JJ Royal Coffee Aceh Gayo Arabica', 35, 52000, 'Kopi produksi JJ Royal 200 gram ini terbuat dari biji kopi terbaik yang berasal dari Dataran Tinggi Gayo, di wilayah pegunungan Aceh Tengah, Sumatera. ', 'arabika-aceh.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `iduser` int(11) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `notelp` varchar(200) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `distrik` varchar(100) NOT NULL,
  `id_distrik` int(11) NOT NULL,
  `kodepos` int(25) NOT NULL,
  `provinsi` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`iduser`, `nama_user`, `alamat`, `notelp`, `gender`, `distrik`, `id_distrik`, `kodepos`, `provinsi`, `username`, `password`) VALUES
(1, 'Pocky Suhadi', 'Jl Tlogosari Raya 20', '089234567801', 'Laki-Laki', 'Kendal', 181, 51314, 'Jawa Tengah', 'pockypoem', 'pocky20'),
(2, 'Nopal', 'Tlogosari Pekalongan', '08947294321', 'Laki-Laki', 'Bogor', 79, 46511, 'Jawa Barat', 'bobacup', 'ganteng24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_pesanan`
--
ALTER TABLE `tbl_pesanan`
  ADD PRIMARY KEY (`idorder`),
  ADD KEY `iduser` (`iduser`);

--
-- Indexes for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  ADD PRIMARY KEY (`idproduk`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`iduser`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_pesanan`
--
ALTER TABLE `tbl_pesanan`
  ADD CONSTRAINT `tbl_pesanan_ibfk_1` FOREIGN KEY (`iduser`) REFERENCES `tbl_user` (`iduser`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
