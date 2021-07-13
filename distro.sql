-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2021 at 09:48 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `distro`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user_id`, `username`, `password`, `fullname`) VALUES
(3, 'anggito', 'admin1', 'anggito budhi');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `br_id` int(6) NOT NULL,
  `br_nm` varchar(50) NOT NULL,
  `br_item` int(4) NOT NULL,
  `br_harga` int(10) NOT NULL,
  `br_stok` int(9) NOT NULL,
  `br_satuan` varchar(20) NOT NULL,
  `br_gbr` varchar(100) NOT NULL,
  `ket` varchar(250) NOT NULL,
  `br_status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`br_id`, `br_nm`, `br_item`, `br_harga`, `br_stok`, `br_satuan`, `br_gbr`, `ket`, `br_status`) VALUES
(1, 'Jaket Blessher', 1, 125000, 12, 'Pcs', 'gambar/14.png', 'Tampil trendy dengan produk 100% Real ORIGINAL bukan KW, nyaman digunakan, bahan awet, kualitas dan desain keren.', 'Y'),
(2, 'Jaket Rangers', 1, 125000, 24, 'Pcs', 'gambar/11.png', 'Tampil trendy dengan produk 100% Real ORIGINAL bukan KW, nyaman digunakan, bahan awet, kualitas dan desain keren.', 'Y'),
(3, 'Jaket Origen Kulit', 1, 150000, 30, 'Pcs', 'gambar/13.png', 'Tampil trendy dengan produk 100% Real ORIGINAL bukan KW, nyaman digunakan, bahan awet, kualitas dan desain keren.', 'Y'),
(4, 'Kaos Sultan Mah Bebas', 1, 50000, 20, 'Pcs', 'gambar/10.png', 'Kaos dengan harga Termurah dengan Kualitas Distro Original. Dengan menggunakan bahan Cotton Combed 30\"s Premium. Serta Sablon berkualitas terbaik, tidak Mudah Retak/mengelupas.', 'Y'),
(5, 'Kaos Man City', 1, 60000, 30, 'Pcs', 'gambar/2.jpg', 'Bahan Cotton Combed 20s Jahitan samping', 'Y'),
(6, 'Kaos Scooter Rider', 1, 80000, 20, 'Pcs', 'gambar/12.png', 'Bahan Cotton Combed 30s built up', 'Y'),
(7, 'Kaos Cool Blue', 1, 70000, 20, 'Pcs', 'gambar/4.jpg', 'Bahan kardet jakarta', 'Y'),
(8, 'Kaos Feed Me', 1, 65000, 12, 'Pcs', 'gambar/3.jpg', 'Bahan Cotton Combed 24s built up', 'Y'),
(9, 'Kaos Art Hitam', 1, 55000, 20, 'Pcs', 'gambar/1.jpg', 'Bahan cvc bandung build up tanpa jahitan samping', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `no_pem`
--

CREATE TABLE `no_pem` (
  `no_pem` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `no_pem`
--

INSERT INTO `no_pem` (`no_pem`) VALUES
('T100'),
('BQ41'),
('YB90'),
('IU77'),
('XZC9');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `no_hdpem` varchar(10) NOT NULL,
  `tgl_hdpem` date NOT NULL,
  `usr_hdpem` int(11) NOT NULL,
  `crkir_hdpem` tinyint(4) NOT NULL,
  `crpem_hdpem` tinyint(4) NOT NULL,
  `penerima_hdpem` varchar(50) NOT NULL,
  `almt_pem` text NOT NULL,
  `kp_pem` varchar(6) NOT NULL,
  `kota_pem` varchar(30) NOT NULL,
  `tlp` varchar(16) NOT NULL,
  `rek_pem` varchar(50) NOT NULL,
  `nmrek_pem` varchar(20) NOT NULL,
  `bank_pem` varchar(25) NOT NULL,
  `ct_pem` text NOT NULL,
  `tot_pem` int(11) NOT NULL,
  `sts_pem` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`no_hdpem`, `tgl_hdpem`, `usr_hdpem`, `crkir_hdpem`, `crpem_hdpem`, `penerima_hdpem`, `almt_pem`, `kp_pem`, `kota_pem`, `tlp`, `rek_pem`, `nmrek_pem`, `bank_pem`, `ct_pem`, `tot_pem`, `sts_pem`) VALUES
('BQ412P123', '2021-07-01', 16, 0, 0, 'sandi ajah', 'Ds. Randumukti No. 19, Kec. Bojong, Kab. Pekalongan', '24757', 'Pekalongan', '085144578921', '5452147854231', 'Sandi Ibrahim', 'BNI', '', 210000, 'Y'),
('IU7772X92', '2021-07-01', 17, 0, 0, 'Wendi Sutrisna', 'Jl. Lille Blok 12', '12321', 'Malang', '082147857785', '6325458455542	', 'Wendi Sutrisna', 'BRI', '', 125000, 'Y'),
('T10090078', '2021-06-28', 14, 0, 0, 'Puri Ratna', 'Jl. Semangka Raya Blok 14', '18255', 'Jakarta Utara', '082554532875', '6526442188722', 'Puri Ratna', 'Mandiri', '', 125000, 'Y'),
('XZC91203T', '2021-07-07', 18, 0, 0, 'Dwi Cahyono', 'Jl. Paris Blok Barat no. 17', '87454', 'Pemalang', '082154785412', '2124454872545', 'Dwi Cahyono', 'BCA', '', 100000, 'Y'),
('YB9007842', '2021-06-30', 15, 0, 0, 'David Rumakik', 'Ds. Sembungjambu No. 25, Kec. Sragi, Kab. Pekalongan', '25475', 'Pekalongan', '082147852142', '8217485412116', 'David Rumakik', 'BCA', '', 80000, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `hd_trpem` varchar(11) NOT NULL,
  `br_trpem` varchar(6) NOT NULL,
  `qty_trpem` int(11) NOT NULL,
  `hrg_trpem` int(11) NOT NULL,
  `sts_trpem` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`hd_trpem`, `br_trpem`, `qty_trpem`, `hrg_trpem`, `sts_trpem`) VALUES
('T10090078', 'jkt08', 1, 125000, 'Y'),
('YB9007842', 'bj04', 1, 80000, 'Y'),
('BQ412P123', 'bj03', 3, 210000, 'Y'),
('IU7772X92', 'jkt09', 1, 125000, 'Y'),
('XZC91203T', 'bj06', 2, 100000, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_usr` int(11) NOT NULL,
  `nm_usr` varchar(50) NOT NULL,
  `log_usr` varchar(20) NOT NULL,
  `pas_usr` varchar(100) NOT NULL,
  `email_usr` varchar(50) NOT NULL,
  `almt_usr` text NOT NULL,
  `kp_usr` varchar(6) NOT NULL,
  `kota_usr` varchar(25) NOT NULL,
  `tlp` varchar(20) NOT NULL,
  `rek` varchar(30) NOT NULL,
  `nmrek` varchar(30) NOT NULL,
  `bank` varchar(30) NOT NULL,
  `sts_usr` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`br_id`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`no_hdpem`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_usr`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `br_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_usr` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
