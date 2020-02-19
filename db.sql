-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2020 at 08:37 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rpi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tp_arsip_surat_keluar`
--

CREATE TABLE `tp_arsip_surat_keluar` (
  `id_arsip_surat_keluar` int(10) NOT NULL,
  `nomor_urut` varchar(50) DEFAULT NULL,
  `nomor_berkas` varchar(50) DEFAULT NULL,
  `nomor_surat_keluar` varchar(50) DEFAULT NULL,
  `tanggal_keluar` date DEFAULT NULL,
  `penerima` varchar(100) DEFAULT NULL,
  `perihal` varchar(255) DEFAULT NULL,
  `path_berkas` varchar(255) DEFAULT NULL,
  `id_rekam` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tp_arsip_surat_keluar`
--

INSERT INTO `tp_arsip_surat_keluar` (`id_arsip_surat_keluar`, `nomor_urut`, `nomor_berkas`, `nomor_surat_keluar`, `tanggal_keluar`, `penerima`, `perihal`, `path_berkas`, `id_rekam`) VALUES
(2, '001', 'B002', 'BEM/2019', '2019-12-11', 'Ketua RPI', 'Undangan', 'uploads/surat_keluar/Abu_URL.txt', NULL),
(3, '0129', '022', 'CC/2019', '2019-12-18', 'Aldini', 'izin', 'uploads/surat_keluar/Laporan PBO.docx', NULL),
(4, '002', 'Aa', 'ABC11', '2019-12-24', 'Pran', 'Izin', 'uploads/surat_keluar/laporan msbd.docx', NULL),
(5, '002', 'A002', 'P0', '2019-12-24', 'Aldini', 'Anjay', 'uploads/surat_keluar/form.PNG', NULL),
(6, '1201', '8908', 'RPI/2019', '2019-12-25', 'Oim kun', 'Ajakan', 'uploads/surat_keluar/Fikri join (3).docx', NULL),
(7, '2', 'B1', 'RPI/2019', '2019-12-27', 'Ibrahim', 'Undangan', 'uploads/surat_keluar/dfdadminkelolauser.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tp_arsip_surat_masuk`
--

CREATE TABLE `tp_arsip_surat_masuk` (
  `id_arsip_surat_masuk` int(10) NOT NULL,
  `nomor_urut` varchar(50) DEFAULT NULL,
  `nomor_berkas` varchar(50) DEFAULT NULL,
  `nomor_surat_masuk` varchar(50) DEFAULT NULL,
  `tanggal_masuk` date DEFAULT NULL,
  `pengirim` varchar(100) DEFAULT NULL,
  `perihal` varchar(255) DEFAULT NULL,
  `path_berkas` varchar(255) DEFAULT NULL,
  `id_rekam` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tp_arsip_surat_masuk`
--

INSERT INTO `tp_arsip_surat_masuk` (`id_arsip_surat_masuk`, `nomor_urut`, `nomor_berkas`, `nomor_surat_masuk`, `tanggal_masuk`, `pengirim`, `perihal`, `path_berkas`, `id_rekam`) VALUES
(5, '001', 'A002', 'A22/RPIxx/2019', '2019-12-11', 'HMM', 'Penurunan UKT', 'uploads/surat_masuk/usecase elearning - fikri alfan f.pdf', 'admin'),
(6, '002', 'A003', '01A/RPI//VI', '2019-12-09', 'HIMRA', 'Undangan', 'uploads/surat_masuk/Fikri join.docx', 'admin'),
(7, '003', 'A004', '02/Emin/2019', '2019-12-11', 'Wadir 3', 'Pengunduran Diri', 'uploads/surat_masuk/Tugas 2_Fikri.txt', 'admin'),
(8, '005', 'A004', 'BEM/2019', '2019-12-10', 'BEM', 'Undangan', 'uploads/surat_masuk/laporan msbd.docx', 'admin'),
(9, '091', 'C011', 'A22/RPIxx/2019', '2019-12-24', 'BEM', 'Undangan', 'uploads/surat_masuk/Fikri join.docx', 'admin'),
(10, '1', '1', 'HMM/2019', '2019-12-24', 'HMM', 'Undangan', 'uploads/surat_masuk/Fikri join.docx', 'admin'),
(11, '12', '1', 'HMM/2019', '2019-12-24', 'HMM', 'Undangan', 'uploads/surat_masuk/Fikri join.docx', 'admin'),
(12, '120', 'Ac12', '002/HMTF/2019', '2019-12-25', 'Himatif', 'Undangan', 'uploads/surat_masuk/info.PNG', 'admin'),
(13, '1', 'A1', 'BEM/A/2019', '2019-12-27', 'BEM', 'Undangan', 'uploads/surat_masuk/ERDFIX.png', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tp_user`
--

CREATE TABLE `tp_user` (
  `id_user` int(5) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `bidang_pekerjaan` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` char(1) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `nomor_hp` varchar(15) DEFAULT NULL,
  `level` int(1) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `login_terakhir` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `id_rekam` varchar(15) NOT NULL,
  `wk_rekam` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id_ubah` varchar(15) DEFAULT NULL,
  `wk_ubah` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tp_user`
--

INSERT INTO `tp_user` (`id_user`, `nama`, `username`, `password`, `bidang_pekerjaan`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `email`, `nomor_hp`, `level`, `avatar`, `login_terakhir`, `status`, `id_rekam`, `wk_rekam`, `id_ubah`, `wk_ubah`) VALUES
(1, 'Fikri Cheng', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Masasihwa', '2000-05-11', 'L', 'Majalengka', 'fikri@gmail.com', '+628123456789', 1, 'uploads/avatar/admin.jpg', '2019-12-27 10:45:06', 1, 'admin', '2017-07-23 18:20:54', 'admin', '2017-08-30 22:24:39'),
(0, 'Pranata No Limit', 'pran', 'bc684cf88a7caa45ac5e2ed199682b92', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, 1, 'admin', '2019-12-27 02:14:11', NULL, '2019-12-27 02:14:11'),
(0, 'Aldini NimoTV', 'aldini', '462aa83e3a96c71f82fbc844ad455552', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, 1, 'admin', '2019-12-27 02:44:14', NULL, '2019-12-27 02:44:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tp_arsip_surat_keluar`
--
ALTER TABLE `tp_arsip_surat_keluar`
  ADD PRIMARY KEY (`id_arsip_surat_keluar`),
  ADD KEY `FK_tp_arsip_surat_keluar_tp_user` (`id_rekam`);

--
-- Indexes for table `tp_arsip_surat_masuk`
--
ALTER TABLE `tp_arsip_surat_masuk`
  ADD PRIMARY KEY (`id_arsip_surat_masuk`),
  ADD KEY `FK_tp_arsip_surat_masuk_tp_user` (`id_rekam`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tp_arsip_surat_keluar`
--
ALTER TABLE `tp_arsip_surat_keluar`
  MODIFY `id_arsip_surat_keluar` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tp_arsip_surat_masuk`
--
ALTER TABLE `tp_arsip_surat_masuk`
  MODIFY `id_arsip_surat_masuk` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
