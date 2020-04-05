-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2020 at 06:18 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sisfopoltek`
--

-- --------------------------------------------------------

--
-- Table structure for table `datadosen`
--

CREATE TABLE `datadosen` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `nim` text NOT NULL,
  `mk` text NOT NULL,
  `tahun` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `evaluasidosen`
--

CREATE TABLE `evaluasidosen` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `mk` text NOT NULL,
  `tahun` text NOT NULL,
  `nim` text NOT NULL,
  `a1` int(11) NOT NULL,
  `a2` int(11) NOT NULL,
  `a3` int(11) NOT NULL,
  `a4` int(11) NOT NULL,
  `a5` int(11) NOT NULL,
  `a6` int(11) NOT NULL,
  `a7` int(11) NOT NULL,
  `a8` int(11) NOT NULL,
  `a9` int(11) NOT NULL,
  `a10` int(11) NOT NULL,
  `a11` int(11) NOT NULL,
  `b1` int(11) NOT NULL,
  `b2` int(11) NOT NULL,
  `b3` int(11) NOT NULL,
  `b4` int(11) NOT NULL,
  `b5` int(11) NOT NULL,
  `b6` int(11) NOT NULL,
  `b7` int(11) NOT NULL,
  `b8` int(11) NOT NULL,
  `b9` int(11) NOT NULL,
  `c1` int(11) NOT NULL,
  `c2` int(11) NOT NULL,
  `c3` int(11) NOT NULL,
  `c4` int(11) NOT NULL,
  `d1` int(11) NOT NULL,
  `d2` int(11) NOT NULL,
  `d3` int(11) NOT NULL,
  `d4` int(11) NOT NULL,
  `d5` int(11) NOT NULL,
  `d6` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `logkondite`
--

CREATE TABLE `logkondite` (
  `id` int(11) NOT NULL,
  `nim` int(11) NOT NULL,
  `nama` text NOT NULL,
  `jenispoin` text NOT NULL,
  `poin` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `tahun` int(11) NOT NULL,
  `prodi` text NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logkondite`
--

INSERT INTO `logkondite` (`id`, `nim`, `nama`, `jenispoin`, `poin`, `keterangan`, `tahun`, `prodi`, `tanggal`) VALUES
(1, 1702038, 'Mokhamad Fauzi', 'PLUS', 10, 'Padus', 20171, 'Teknik Elektronika', '2020-03-20'),
(2, 1702038, 'Mokhamad Fauzi', 'MINUS', -5, 'Outstanding', 20171, 'Teknik elektronika', '2020-03-20'),
(3, 1702042, 'Muhammad Ilham Mahendra', 'PLUS', 10, 'Drum Band', 20171, 'Teknik Elektronika', '2020-03-21'),
(4, 1702042, 'Muhammad Ilham Mahendra', 'MINUS', -3, 'Outstanding', 20171, 'Teknik Elektronika', '2020-03-21'),
(5, 1702039, 'Moni Della Putri S', 'PLUS', 10, 'Pataka', 20171, 'Teknik Elektronika', '2020-03-21'),
(6, 1702039, 'Moni Della Putri S', 'MINUS', -10, 'Tidak Ikut Apel', 20171, 'Teknik Elektronika', '2020-03-21'),
(7, 1702039, 'Moni Della Putri S', 'PLUS', 10, 'Bantu Pak Roy', 20171, 'Teknik Elektronika', '2020-03-21');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` int(11) NOT NULL,
  `nama` text NOT NULL,
  `jeniskelamin` text NOT NULL,
  `programstudi` text NOT NULL,
  `tempatlahir` text NOT NULL,
  `tanggallahir` date NOT NULL,
  `tahunmasuk` int(11) NOT NULL,
  `status` text NOT NULL,
  `kelas` text NOT NULL,
  `password` text NOT NULL,
  `pembimbing` text NOT NULL,
  `session` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `jeniskelamin`, `programstudi`, `tempatlahir`, `tanggallahir`, `tahunmasuk`, `status`, `kelas`, `password`, `pembimbing`, `session`) VALUES
(1702026, 'ilham Assegaf', '', '', '', '0000-00-00', 0, '', '', '1234', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `nilaiakademik`
--

CREATE TABLE `nilaiakademik` (
  `id` int(11) NOT NULL,
  `nim` int(11) NOT NULL,
  `nama` text NOT NULL,
  `uts` text NOT NULL,
  `uas` text NOT NULL,
  `tugas` text NOT NULL,
  `kuis` text NOT NULL,
  `akhir` text NOT NULL,
  `huruf` text NOT NULL,
  `angka` double NOT NULL,
  `kodemk` text NOT NULL,
  `namamk` text NOT NULL,
  `sks` int(11) NOT NULL,
  `tahunakademik` int(11) NOT NULL,
  `prodi` text NOT NULL,
  `dosen` text NOT NULL,
  `kelas` text NOT NULL,
  `status` text NOT NULL,
  `statusmk` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nilaiakademik`
--

INSERT INTO `nilaiakademik` (`id`, `nim`, `nama`, `uts`, `uas`, `tugas`, `kuis`, `akhir`, `huruf`, `angka`, `kodemk`, `namamk`, `sks`, `tahunakademik`, `prodi`, `dosen`, `kelas`, `status`, `statusmk`) VALUES
(1, 1702038, 'Mokhamad Fauzi', '80', '80', '80', '80', '4', 'A', 1, 'MK001', 'Matematika Terapan', 2, 20171, 'Teknik Elektronika', 'Ihsan A.A', '3 Elektronika B', 'aktif', 'aktif'),
(2, 1702038, 'Mokhamad Fauzi', '90', '90', '90', '90', '8', 'A', 2, 'MK002', 'Kimia', 2, 20172, 'Teknik Elektronika', 'Ihsan A.A', '3 Elektronika B', 'aktif', 'aktif'),
(3, 1702042, 'Muhamad Ilham M', '80', '80', '80', '80', '8', 'A', 1, 'MK001', 'Matematika Terapan', 2, 20171, 'Teknik Elektronika', 'Ihsan A.A', '3 Elektronika B', 'aktif', 'aktif'),
(4, 1702042, 'Muhamad Ilham M', '100', '90', '90', '90', '8', 'A', 2, 'MK002', 'Kimia', 2, 20172, 'Teknik Elektronika', 'Ihsan A.A', '3 Elektronika B', 'aktif', 'aktif'),
(5, 1702038, 'Mokhamad Fauzi', '90', '90', '90', '90', '8', 'A', 1, 'MK002', 'Kimia', 2, 20171, 'Teknik Elektronika', 'Ihsan A.A', '3 Elektronika B', 'aktif', ''),
(6, 1702036, 'Malsi Nur Adwinda Robani', '80', '80', '80', '80', '8', 'A', 1, 'MK001', 'Matematika Terapan', 2, 20171, 'Teknik Elektronka', 'Ihsan A.a', '3 Elektronika B', 'aktif', 'aktif'),
(7, 1702038, 'Mokhamad Fauzi', '100', '100', '100', '100', '8', 'A', 3, 'MK003', 'Elektro Digital', 2, 20181, 'Teknik Elektronika', 'Ihsan A.A', '3 Elektronika B', 'aktif', 'aktif'),
(8, 1702038, 'Mokhamad Fauzi', '100', '100', '100', '100', '8', 'A', 4, 'MK003', 'Elektro Digital', 2, 20182, 'Teknik Elektronika', 'Ihsan A.A', '3 Elektronika B', 'aktif', 'aktif'),
(9, 1702038, 'Mokhamad Fauzi', '100', '100', '100', '100', '8', 'A', 5, 'MK003', 'Elektro Digital', 2, 20191, 'Teknik Elektronika', 'Ihsan A.A', '3 Elektronika B', 'aktif', 'aktif'),
(10, 1702038, 'Mokhamad Fauzi', '100', '100', '100', '100', '8', 'A', 6, 'MK003', 'Elektro Digital', 2, 20192, 'Teknik Elektronika', 'Ihsan A.A', '3 Elektronika B', 'aktif', 'aktif'),
(11, 1702042, 'Muhammad Ilham Mahendra', '100', '100', '100', '100', '8', 'A', 3, 'MK003', 'Elektro Digital', 2, 20172, 'Teknik Elektronika', 'Ihsan A.A', '3 Elektronika B', 'aktif', 'aktif'),
(12, 1702042, 'Muhammad Ilham Mahendra', '100', '100', '100', '100', '8', 'A', 4, 'MK003', 'Elektro Digital', 2, 20181, 'Teknik Elektronika', 'Ihsan A.A', '3 Elektronika B', 'aktif', 'aktif'),
(13, 1702042, 'Muhammad Ilham Mahendra', '100', '100', '100', '100', '8', 'A', 5, 'MK003', 'Elektro Digital', 2, 20182, 'Teknik Elektronika', 'Ihsan A.A', '3 Elektronika B', 'aktif', 'aktif'),
(14, 1702042, 'Muhammad Ilham Mahendra', '100', '100', '100', '100', '8', 'A', 6, 'MK003', 'Elektro Digital', 2, 20191, 'Teknik Elektronika', 'Ihsan A.A', '3 Elektronika B', 'aktif', 'aktif'),
(15, 1702042, 'Muhammad Ilham Mahendra', '100', '100', '100', '100', '8', 'A', 2, 'MK003', 'Elektro Digital', 2, 20192, 'Teknik Elektronika', 'Ihsan A.A', '3 Elektronika B', 'aktif', 'aktif'),
(16, 1702039, 'Moni Della Putri S', '100', '100', '100', '100', '8', 'A', 1, 'MK003', 'Elektro Digital', 2, 20171, 'Teknik Elektronika', 'Ihsan A.A', '3 Elektronika B', 'aktif', 'aktif'),
(17, 1702039, 'Moni Della Putri S', '100', '100', '100', '100', '8', 'A', 2, 'MK003', 'Elektro Digital', 2, 20172, 'Teknik Elektronika', 'Ihsan A.A', '3 Elektronika B', 'aktif', 'aktif'),
(18, 1702039, 'Moni Della Putri S', '100', '100', '100', '100', '8', 'A', 3, 'MK003', 'Elektro Digital', 2, 20181, 'Teknik Elektronika', 'Ihsan A.A', '3 Elektronika B', 'aktif', 'aktif'),
(19, 1702039, 'Moni Della Putri S', '100', '100', '100', '100', '8', 'A', 4, 'MK003', 'Elektro Digital', 2, 20182, 'Teknik Elektronika', 'Ihsan A.A', '3 Elektronika B', 'aktif', 'aktif'),
(20, 1702039, 'Moni Della Putri S', '100', '100', '100', '100', '8', 'A', 5, 'MK003', 'Elektro Digital', 2, 20191, 'Teknik Elektronika', 'Ihsan A.A', '3 Elektronika B', 'aktif', 'aktif'),
(21, 1702039, 'Moni Della Putri S', '100', '100', '100', '100', '8', 'A', 6, 'MK003', 'Elektro Digital', 2, 20192, 'Teknik Elektronika', 'Ihsan A.A', '3 Elektronika B', 'aktif', 'aktif');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
