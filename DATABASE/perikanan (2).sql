-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2020 at 09:19 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perikanan`
--

-- --------------------------------------------------------

--
-- Table structure for table `alat_tangkap`
--

CREATE TABLE `alat_tangkap` (
  `id` int(20) NOT NULL,
  `NAMA_ALAT` varchar(100) NOT NULL,
  `GAMBAR_ALAT` varchar(100) NOT NULL,
  `KETERANGAN_ALAT` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alat_tangkap`
--

INSERT INTO `alat_tangkap` (`id`, `NAMA_ALAT`, `GAMBAR_ALAT`, `KETERANGAN_ALAT`) VALUES
(1, 'PUKAT CINCIN', 'ALAT1.jpg', 'Pukat Cincin adalah alat penangkap ikan berbentuk empat persegi panjang(tipe selendang).pembentukan kantong dapat di bagian ujung jaring atau di tengah jaring. bagian atas jaring  dipasang pelampung d'),
(2, 'JARING INSANG', 'ALAT2.JPG', 'jaring insang adalah jenis jaring yang berbentuk persegi panjang. Cara penangkapannya dipasang tegak lurus dan di hanyutkan di dalam perairan selama jangka waktu tertentu'),
(3, 'PAYANG', 'ALAT3.PNG', 'Payang adalah jenis pukat kantong yang terbuka mulut jaring tanpa adanya papan rentang.Kedua bagian sayapnya yang panjang berfungsi menggiring gerombolan ikan supaya masuk kedalam bagian kantong'),
(4, 'PANCING TONDA', 'ALAT4.PNG', 'Pancing tonda adalah jenis alat penangkapan ikan yang terdiri dari seutas tali utama berpancing umpan buatan. Operasinya adalah dengan menggunakan kapal motor yang dilengkapi sepasang batang kayu atau bambu pada kedua sisi lambung kapal. Agar pancing tetap melayang dan tidak terapung maka ujung tali dilengkapi papan peluncur'),
(5, 'PANCING ULUR', 'ALAT5.JPG', 'alat penangkap ikan ini terdiri dari seutas tali dengan pemberat dan sejumlah tali cabang berpancing. pengikatan tali cabang dapat langsung pada tali utama atau dengan menggunakan 1-2 batang kayu atau besi yang diikatkan pada tali utama sedangkan tali cabang diikatkan pada batang atau besi tersebut');

-- --------------------------------------------------------

--
-- Table structure for table `bobot_harga`
--

CREATE TABLE `bobot_harga` (
  `id` int(3) NOT NULL,
  `MIN` int(20) NOT NULL,
  `MAX` int(20) NOT NULL,
  `BOBOT` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bobot_harga`
--

INSERT INTO `bobot_harga` (`id`, `MIN`, `MAX`, `BOBOT`) VALUES
(1, 0, 1500000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bobot_selektifitas`
--

CREATE TABLE `bobot_selektifitas` (
  `id` int(20) NOT NULL,
  `IKAN` varchar(20) NOT NULL,
  `MIN` int(20) NOT NULL,
  `MAX` int(20) NOT NULL,
  `BOBOT` int(20) NOT NULL,
  `KONDISI` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bobot_selektifitas`
--

INSERT INTO `bobot_selektifitas` (`id`, `IKAN`, `MIN`, `MAX`, `BOBOT`, `KONDISI`) VALUES
(1, 'ALU-ALU', 0, 329, 1, 'RENDAH'),
(2, 'ALU-ALU', 330, 659, 2, 'SEDANG'),
(3, 'ALU-ALU', 660, 0, 3, 'TINGGI'),
(4, 'ALBAKORA', 0, 3826, 1, 'RENDAH'),
(5, 'ALBAKORA', 3827, 7654, 2, 'SEDANG'),
(6, 'ALBAKORA', 7655, 0, 3, 'TINGGI'),
(7, 'AYAM-AYAM', 0, 2533, 1, 'RENDAH'),
(8, 'AYAM-AYAM', 2534, 5067, 2, 'SEDANG'),
(9, 'AYAM-AYAM', 5068, 0, 3, 'TINGGI'),
(10, 'BENTONG', 0, 6663, 1, 'RENDAH'),
(11, 'BENTONG', 6664, 13327, 2, 'SEDANG'),
(12, 'BENTONG', 13328, 0, 3, 'TINGGI'),
(13, 'BELOSO', 0, 40, 1, 'RENDAH'),
(14, 'BELOSO', 41, 81, 2, 'SEDANG'),
(15, 'BELOSO', 82, 0, 3, 'TINGGI'),
(16, 'BAWAL', 0, 154, 1, 'RENDAH'),
(17, 'BAWAL', 155, 310, 2, 'SEDANG'),
(18, 'BAWAL', 311, 0, 3, 'TINGGI'),
(19, 'CAKALANG', 0, 326336, 1, 'RENDAH'),
(20, 'CAKALANG', 326337, 652573, 2, 'SEDANG'),
(21, 'CAKALANG', 652574, 0, 3, 'TINGGI'),
(22, 'CUCUT LANYAM', 0, 840, 1, 'RENDAH'),
(23, 'CUCUT LANYAM', 841, 1681, 2, 'SEDANG'),
(24, 'CUCUT LANYAM', 1682, 0, 3, 'TINGGI'),
(25, 'CUCUT TIKUS', 0, 14, 1, 'RENDAH'),
(26, 'CUCUT TIKUS', 15, 29, 2, 'SEDANG'),
(27, 'CUCUT TIKUS', 30, 0, 3, 'TINGGI'),
(28, 'CENDRO', 0, 534, 1, 'RENDAH'),
(29, 'CENDRO', 535, 1069, 2, 'SEDANG'),
(30, 'CENDRO', 1070, 0, 3, 'TINGGI'),
(31, 'CUMI-CUMI', 0, 16955, 1, 'RENDAH'),
(32, 'CUMI-CUMI', 16956, 33911, 2, 'SEDANG'),
(33, 'CUMI-CUMI', 33912, 0, 3, 'TINGGI'),
(34, 'GULAMAH', 0, 910, 1, 'RENDAH'),
(35, 'GULAMAH', 911, 1822, 2, 'SEDANG'),
(36, 'GULAMAH', 1823, 0, 3, 'TINGGI'),
(37, 'JULUNG-JULUNG', 0, 2093, 1, 'RENDAH'),
(38, 'JULUNG-JULUNG', 2094, 4187, 2, 'SEDANG'),
(39, 'JULUNG-JULUNG', 4188, 0, 3, 'TINGGI'),
(40, 'LEMADANG', 0, 21123, 1, 'RENDAH'),
(41, 'LEMADANG', 21124, 42247, 2, 'SEDANG'),
(42, 'LEMADANG', 42248, 0, 3, 'TINGGI'),
(43, 'KEMBUNG', 0, 6293, 1, 'RENDAH'),
(44, 'KEMBUNG', 6294, 12585, 2, 'SEDANG'),
(45, 'KEMBUNG', 12586, 0, 3, 'TINGGI'),
(46, 'KWEE', 0, 1454, 1, 'RENDAH'),
(47, 'KWEE', 1455, 2909, 2, 'SEDANG'),
(48, 'KWEE', 2910, 0, 3, 'TINGGI'),
(49, 'KAKAP MERAH', 0, 146, 1, 'RENDAH'),
(50, 'KAKAP MERAH', 147, 293, 2, 'SEDANG'),
(51, 'KAKAP MERAH', 294, 0, 3, 'TINGGI'),
(52, 'KURISI', 0, 17, 1, 'RENDAH'),
(53, 'KURISI', 18, 36, 2, 'SEDANG'),
(54, 'KURISI', 37, 0, 3, 'TINGGI'),
(55, 'KERAPU', 0, 18, 1, 'RENDAH'),
(56, 'KERAPU', 19, 38, 2, 'SEDANG'),
(57, 'KERAPU', 39, 0, 3, 'TINGGI'),
(58, 'KAKEK JAWA', 0, 6168, 1, 'RENDAH'),
(59, 'KAKEK JAWA', 6169, 12337, 2, 'SEDANG'),
(60, 'KAKEK JAWA', 12338, 0, 3, 'TINGGI'),
(61, 'LAYUR', 0, 149206, 1, 'RENDAH'),
(62, 'LAYUR', 149207, 298414, 2, 'SEDANG'),
(63, 'LAYUR', 298415, 0, 3, 'TINGGI'),
(64, 'LEMURU', 0, 36715, 1, 'RENDAH'),
(65, 'LEMURU', 36716, 73431, 2, 'SEDANG'),
(66, 'LEMURU', 73431, 0, 3, 'TINGGI'),
(67, 'LAYANG DELES', 0, 2000443, 1, 'RENDAH'),
(68, 'LAYANG DELES', 2000444, 4000887, 2, 'SEDANG'),
(69, 'LAYANG DELES', 4000888, 0, 3, 'TINGGI'),
(70, 'LAYANG ANGGUR', 0, 139378, 1, 'RENDAH'),
(71, 'LAYANG ANGGUR', 139379, 278757, 2, 'SEDANG'),
(72, 'LAYANG ANGGUR', 278758, 0, 3, 'TINGGI'),
(73, 'LAYANG BENGOL', 0, 116488, 1, 'RENDAH'),
(74, 'LAYANG BENGOL', 116489, 232977, 2, 'SEDANG'),
(75, 'LAYANG BENGOL', 232977, 0, 3, 'TINGGI'),
(76, 'LAYARAN', 0, 162, 1, 'RENDAH'),
(77, 'LAYARAN', 163, 325, 2, 'SEDANG'),
(78, 'LAYARAN', 326, 0, 3, 'TINGGI'),
(79, 'MANYUNG', 0, 174, 1, 'RENDAH'),
(80, 'MANYUNG', 175, 350, 2, 'SEDANG'),
(81, 'MANYUNG', 351, 0, 3, 'TINGGI'),
(82, 'PARI KEMBANG', 0, 841, 1, 'RENDAH'),
(83, 'PARI KEMBANG', 842, 1683, 2, 'SEDANG'),
(84, 'PARI KEMBANG', 1684, 0, 3, 'TINGGI'),
(85, 'PEPEREK', 0, 33033, 1, 'RENDAH'),
(86, 'PEPEREK', 33034, 66067, 2, 'SEDANG'),
(87, 'PEPEREK', 66068, 0, 3, 'TINGGI'),
(88, 'PARI KELELAWAR', 0, 1626, 1, 'RENDAH'),
(89, 'PARI KELELAWAR', 1627, 3254, 2, 'SEDANG'),
(90, 'PARI KELELAWAR', 3255, 0, 3, 'TINGGI'),
(91, 'SELAR', 0, 3269, 1, 'RENDAH'),
(92, 'SELAR', 3270, 6539, 2, 'SEDANG'),
(93, 'SELAR', 6540, 0, 3, 'TINGGI'),
(94, 'SWANGGI', 0, 399, 1, 'RENDAH'),
(95, 'SWANGGI', 400, 799, 2, 'SEDANG'),
(96, 'SWANGGI', 800, 0, 3, 'TINGGI'),
(97, 'SETUHUK HITAM', 0, 6068, 1, 'RENDAH'),
(98, 'SETUHUK HITAM', 6069, 12137, 2, 'SEDANG'),
(99, 'SETUHUK HITAM', 12138, 0, 3, 'TINGGI'),
(100, 'SLENGSENG', 0, 47691, 1, 'RENDAH'),
(101, 'SLENGSENG', 47692, 95383, 2, 'SEDANG'),
(102, 'SLENGSENG', 95384, 0, 3, 'TINGGI'),
(103, 'SUNGLIR', 0, 5917, 1, 'RENDAH'),
(104, 'SUNGLIR', 5918, 11836, 2, 'SEDANG'),
(105, 'SUNGLIR', 11837, 0, 3, 'TINGGI'),
(106, 'SELAR KOMO', 0, 1258, 1, 'RENDAH'),
(107, 'SELAR KOMO', 1259, 2518, 2, 'SEDANG'),
(108, 'SELAR KOMO', 2519, 0, 3, 'TINGGI'),
(109, 'TUNA MADIDIHANG', 0, 79174, 1, 'RENDAH'),
(110, 'TUNA MADIDIHANG', 79175, 158349, 2, 'SEDANG'),
(111, 'TUNA MADIDIHANG', 158350, 0, 3, 'TINGGI'),
(112, 'TETENGKEK', 0, 258, 1, 'RENDAH'),
(113, 'TETENGKEK', 259, 518, 2, 'SEDANG'),
(114, 'TETENGKEK', 519, 0, 3, 'TINGGI'),
(115, 'TENGIRI', 0, 1396, 1, 'RENDAH'),
(116, 'TENGIRI', 1397, 2793, 2, 'SEDANG'),
(117, 'TENGIRI', 2794, 0, 3, 'TINGGI'),
(118, 'TONGKOL LISONG', 0, 6105871, 1, 'RENDAH'),
(119, 'TONGKOL LISONG', 6105872, 12211743, 2, 'SEDANG'),
(120, 'TONGKOL LISONG', 12211744, 0, 3, 'TINGGI'),
(121, 'TONGKOL COMO', 0, 61539, 1, 'RENDAH'),
(122, 'TONGKOL COMO', 61540, 123079, 2, 'SEDANG'),
(123, 'TONGKOL COMO', 123080, 0, 3, 'TINGGI'),
(124, 'TONGKOL KRAI', 0, 94785, 1, 'RENDAH'),
(125, 'TONGKOL KRAI', 94786, 189571, 2, 'SEDANG'),
(126, 'TONGKOL KRAI', 189572, 0, 3, 'TINGGI'),
(127, 'TUNA MATA BESAR', 0, 524, 1, 'RENDAH'),
(128, 'TUNA MATA BESAR', 525, 1049, 2, 'SEDANG'),
(129, 'TUNA MATA BESAR', 1050, 0, 3, 'TINGGI'),
(130, 'TERI', 0, 20045, 1, 'RENDAH'),
(131, 'TERI', 20046, 40091, 2, 'SEDANG'),
(132, 'TERI', 40092, 0, 3, 'TINGGI'),
(133, 'TEMBANG/TANJANG', 0, 178483, 1, 'RENDAH'),
(134, 'TEMBANG/TANJANG', 178482, 356968, 2, 'SEDANG'),
(135, 'TEMBANG/TANJANG', 356969, 0, 3, 'TINGGI'),
(136, 'TALANG-TALANG', 0, 152, 1, 'RENDAH'),
(137, 'TALANG-TALANG', 153, 306, 2, 'SEDANG'),
(138, 'TALANG-TALANG', 307, 0, 3, 'TINGGI'),
(139, 'TERI PUTIH', 0, 4996, 1, 'RENDAH'),
(140, 'TERI PUTIH', 4997, 9996, 2, 'SEDANG'),
(141, 'TERI PUTIH', 9997, 0, 3, 'TINGGI'),
(142, 'TENGIRI PAPAN', 0, 158, 1, 'RENDAH'),
(143, 'TENGIRI PAPAN', 159, 318, 2, 'SEDANG'),
(144, 'TENGIRI PAPAN', 319, 0, 3, 'TINGGI'),
(145, 'KENYAR', 0, 4202, 1, 'RENDAH'),
(146, 'KENYAR', 4203, 8405, 2, 'SEDANG'),
(147, 'KENYAR', 8406, 0, 3, 'TINGGI'),
(148, 'UDANG REBON', 0, 139, 1, 'RENDAH'),
(149, 'UDANG REBON', 140, 279, 2, 'SEDANG'),
(150, 'UDANG REBON', 280, 0, 3, 'TINGGI');

-- --------------------------------------------------------

--
-- Table structure for table `harga`
--

CREATE TABLE `harga` (
  `id` int(20) NOT NULL,
  `PANCING_ULUR` int(20) NOT NULL,
  `PANCING_TONDA` int(20) NOT NULL,
  `PAYANG` int(20) NOT NULL,
  `JARING_INSANG` int(20) NOT NULL,
  `PUKAT_CINCIN` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `harga`
--

INSERT INTO `harga` (`id`, `PANCING_ULUR`, `PANCING_TONDA`, `PAYANG`, `JARING_INSANG`, `PUKAT_CINCIN`) VALUES
(1, 2, 2, 2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `hasil_tangkapan`
--

CREATE TABLE `hasil_tangkapan` (
  `id` int(20) NOT NULL,
  `IKAN` varchar(100) NOT NULL,
  `PUKAT_CINCIN` int(100) NOT NULL,
  `JARING_INSANG` int(100) NOT NULL,
  `PAYANG` int(100) NOT NULL,
  `PANCING_TONDA` int(100) NOT NULL,
  `PANCING_ULUR` int(100) NOT NULL,
  `JUMLAH` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil_tangkapan`
--

INSERT INTO `hasil_tangkapan` (`id`, `IKAN`, `PUKAT_CINCIN`, `JARING_INSANG`, `PAYANG`, `PANCING_TONDA`, `PANCING_ULUR`, `JUMLAH`) VALUES
(1, 'ALU - ALU', 9, 19, 0, 8, 955, 991),
(2, 'ALBAKORA', 0, 684, 0, 10799, 0, 11483),
(3, 'AYAM-AYAM', 6872, 0, 0, 731, 0, 7603),
(4, 'BENTONG', 0, 689, 669, 111, 18524, 19993),
(5, 'BELOSO', 0, 124, 0, 0, 0, 124),
(6, 'BAWAL', 451, 0, 0, 16, 0, 467),
(7, 'CAKALANG', 222755, 12248, 0, 742721, 1288, 979012),
(8, 'CUCUT LANYAM', 61, 51, 0, 1787, 624, 2523),
(9, 'CUCUT TIKUS', 0, 0, 0, 0, 46, 46),
(10, 'CENDRO', 0, 0, 1560, 0, 45, 1605),
(11, 'CUMI-CUMI', 28469, 96, 1019, 21273, 11, 50),
(12, 'GULAMAH', 1613, 148, 33, 360, 581, 2735),
(13, 'JULUNG-JULUNG', 5016, 352, 914, 0, 0, 6282),
(14, 'LEMADANG', 13949, 1437, 0, 47489, 498, 63373),
(15, 'KEMBUNG', 14779, 1821, 265, 0, 2014, 18879),
(16, 'KWEE', 146, 17, 246, 1235, 2722, 4366),
(17, 'KAKAP MERAH', 0, 0, 0, 0, 441, 441),
(18, 'KURISI', 0, 56, 0, 0, 0, 56),
(19, 'KERAPU', 0, 0, 0, 0, 59, 59),
(20, 'KAKEK JAWA', 16261, 0, 2246, 0, 0, 18507),
(21, 'LAYUR', 292236, 510, 2467, 1027, 151383, 447623),
(22, 'LEMURU', 107542, 558, 2048, 0, 0, 110148),
(23, 'LAYANG DELES', 5911109, 177, 89752, 0, 295, 6001333),
(24, 'LAYANG ANGGUR', 380126, 217, 33916, 0, 3878, 418137),
(25, 'LAYANG BENGOL', 332917, 32, 5713, 8871, 1934, 349467),
(26, 'LAYARAN', 337, 0, 0, 153, 0, 490),
(27, 'MANYUNG', 0, 121, 0, 0, 406, 527),
(28, 'PARI KEMBANG', 602, 988, 0, 650, 287, 2527),
(29, 'PEPEREK', 57458, 1052, 40592, 0, 0, 99102),
(30, 'PARI KELELAWAR', 3792, 875, 125, 51, 40, 4883),
(31, 'SELAR', 6277, 87, 3427, 0, 19, 9810),
(32, 'SWANGGI', 0, 1104, 0, 0, 96, 1200),
(33, 'SETUHUK HITAM', 248, 506, 0, 17453, 0, 18207),
(34, 'SLENGSENG', 134020, 898, 0, 0, 8158, 14076),
(35, 'SUNGLIR', 8657, 303, 4944, 3692, 160, 17756),
(36, 'SELAR KOMO', 3304, 56, 419, 0, 0, 3779),
(37, 'TUNA MADIDIHANG', 50578, 3147, 0, 183042, 759, 237526),
(38, 'TETENGKEK', 0, 0, 784, 0, 15, 779),
(39, 'TENGIRI', 1689, 6, 0, 660, 1837, 4192),
(40, 'TONGKOL LISONG', 18299938, 15561, 226, 1892, 0, 18317617),
(41, 'TONGKOL COMO', 95485, 1863, 1416, 85469, 387, 184620),
(42, 'TONGKOL KRAI', 244073, 3561, 0, 34495, 2229, 284358),
(43, 'TUNA MATA BESAR', 0, 0, 0, 1575, 0, 1575),
(44, 'TERI', 10560, 1817, 47762, 0, 0, 60139),
(45, 'TEMBANG/TANJANG', 482346, 29303, 23805, 0, 0, 535454),
(46, 'TALANG-TALANG', 444, 0, 0, 0, 17, 461),
(47, 'TERI PUTIH', 0, 0, 14996, 0, 0, 14996),
(48, 'TENGIRI PAPAN', 444, 0, 0, 23, 12, 479),
(49, 'KENYAR', 9926, 1240, 0, 82, 1361, 12609),
(50, 'UDANG REBON', 0, 0, 420, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_ikan`
--

CREATE TABLE `jenis_ikan` (
  `id` int(20) NOT NULL,
  `NAMA` varchar(100) NOT NULL,
  `GAMBAR` varchar(100) NOT NULL,
  `MUSIM` varchar(100) NOT NULL,
  `KETERANGAN` varchar(600) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_ikan`
--

INSERT INTO `jenis_ikan` (`id`, `NAMA`, `GAMBAR`, `MUSIM`, `KETERANGAN`) VALUES
(1, 'ALU-ALU', 'GAMBAR1.JPG', 'JANUARI , FEBRUARI', 'Ikan ini dapat ditemukan di samudera tropis dan sub tropis di seluruh dunia. Ikan alu - alu mampu tumbuh hingga panjangnya 6 kaki (kurang lebih 2 meter) dan diameter tubuh hingga 1 kaki'),
(2, 'ALBAKORA', 'GAMBAR2.JPG', 'MEI , JUNI , JULI , AGUSTUS , SEPTEMBER , OKTOBER', 'Ikan Albakora paling banyak di kawasan samudra hindia dan juga wilayah pasifik tegah, untuk indonesia banyak dijumpai di daerah barat sumatera, laut selatan jawa dan wilayah perairan papua. Ukuran ikan ini dapat mencapai panjang 137 cm '),
(3, 'AYAM-AYAM', 'GAMBAR3.JPG', 'MARET , APRIL , NOVEMBER , DESEMBER', 'Ikan ayam - ayam merupakan penghuni dasar laut tropis nama laik ikan ini adalah ikan jepong , ukuran rata - ikan ini adalah 40 cm'),
(4, 'BENTONG', 'GAMBAR4.JPG', 'JANUARI , FEBRUARI , MARET , APRIL , SEPTEMBER , OKTOBER , DESEMBER', 'ikan bentong adalah ikan laut yang hidup bergerombol diperairan pantai sampai kedalaman 80 m.Panjang ikan ini dapat mencapai panjang 30 cm, umumnya 20 cm. Termasuk ikan pelagis kecil, ikan buas, penangkapan dengan pancing, bubu, jaring klotok, payang dan sejenisnya, purse seine, pukat banting, pukat selar'),
(5, 'BELOSO', 'GAMBAR5.JPG', 'JANUARI , NOVEMBER , DESEMBER', 'Ikan beloso dapat di temukan di indo-west pasific, termasuk madagaskar sampai teluk persia, laut arab dan sebelah tenggara asia serta daerah laut india sampai ke cina dan jepang'),
(6, 'BAWAL', 'GAMBAR6.JPG', 'JULI', 'Ikan bawal hidup di perairan pantai, payau bahkan hidup di perairan tawar. Ukuran ikan bawal umumnya memiliki lebar 15-20 cm dan panjangnya 29 cm'),
(7, 'CAKALANG', 'GAMBAR7.JPG', 'JANUARI , FEBRUARI , MARET , APRIL , MEI , JUNI , JULI , AGUSTUS , SEPTEMBER , OKTOBER , NOVEMBER , ', 'Ikan cakalang umumnya di jumpai di laut tropis dan subtropis di samudra hindia, samudra pasifik dan samudra atlantik. Panjang tubuh ikan cakalang mencapai 1 m dengan berat lebih dari 18 kg.'),
(8, 'CUCUT LANYAM', 'GAMBAR8.JPG', 'APRIL , MEI , JUNI , AGUSTUS , SEPTEMBER , OKTOBER , NOVEMBER ,', 'Ikan ini Merupakan cucut terbesar serta dominan di perairan tropis, kadang kadang dalam variasi jenis dan kelimpahanserta biomassanya. Sebagian besar, yang berukuran besar melimpah di perairan lepas pantai tetapi masih tetapdi paparan benua atau disekitar pulau pulau.ikan ini sangat aktif, perenang kuat, menyendiri atau dalam kelompokkawanan kecil. '),
(9, 'CUCUT TIKUS', 'GAMBAR9.JPG', 'MARET', 'Ikan Albakora paling banyak di kawasan samudra hindia dan juga wilayah pasifik tegah, untuk indonesia banyak dijumpai di daerah barat sumatera, laut selatan jawa dan wilayah perairan papua. Ukuran ikan ini dapat mencapai panjang 137 cm '),
(10, 'CENDRO', 'GAMBAR10.JPG', 'OKTOBER', 'Ikan cendro yang termasuk genus tylosurus ini dapat dikenali dari rahangnya yang memanjang sehingga mulutnya berbentuk seperti paruh dimana kedua bagiannya baik atas maupun bawah sama panjang. Ikan ini termasuk ikan predator yang memakan udang dan ikan-ikan kecil. Ia juga termasuk jenis ikan yang hidup menyendiri sehingga sangat jarang berkelompok'),
(11, 'CUMI-CUMI', 'GAMBAR11.JPG', 'MARET , APRIL , MEI , JUNI  , JULI , AGUSTUS , SEPTEMBER , OKTOBER , NOVEMBER , DESEMBER', 'cumi merupakan kelompok hewan yang cephalopoda besar, atau jenis moluska yang hidup di laut.Dalam hal ini seperti semua cephalopoda, cumi-cumi dipisahkan dengan memiliki kepala yang berbeda. Akson besar cumi-cumi ini memiliki diamter 1 mm.'),
(12, 'GULAMAH', 'GAMBAR12.JPG', 'SEPTEMBER , OKTOBER , NOVEMBER', 'Ikan ini terdistribusi di sumatera, kalimantan dan thailand. Habitat ikan Gulamah adalah perairan pantai yang dangkal, estuaria dan sungai'),
(13, 'JULUNG-JULUNG', 'GAMBAR13.JPG', 'JULI , NOVEMBER , DESEMBER', 'Ikan julung - julung merupakan ikan yang permukaan (Zona Epipelagik) yang tersebar luas di perairan hangat seluruh dunia.'),
(14, 'LEMADANG', 'GAMBAR14.JPG', 'JANUARI , FEBRUARI , MARET , APRIL , MEI , JUNI , JULI , AGUSTUS , SEPTEMBER , OKTOBER , NOVEMBER , ', 'Ikan Albakora paling banyak di kawasan samudra hindia dan juga wilayah pasifik tegah, untuk indonesia banyak dijumpai di daerah barat sumatera, laut selatan jawa dan wilayah perairan papua. Ukuran ikan ini dapat mencapai panjang 137 cm '),
(15, 'KEMBUNG', 'GAMBAR15.JPG', 'JANUARI , FEBRUARI , MARET , MEI , AGUSTUS , NOVEMBER , DESEMBER', 'Di indonesia sendiri ikan ini tersebar sangat luas, diantaranya selat malaka,laut jawa, laut selatan,dan perairan timur laut. Ikan kembung suka hidup secara bergerombol daik di perairan maupun lepas pantai kebiasaan makanannya adalah memakan plankton besar, copepoda dan crustacea'),
(16, 'KWEE', 'GAMBAR16.JPG', 'JANUARI , FEBRUARI , MARET , APRIL , JUNI , AGUSTUS , NOVEMBER , DESEMBER', 'Distribusi dan habitat ikan ini adalah sepanjang khatulistiwa dari daerah tropis dan subtropis. Biasanya terdapat di muara - muara sungai dan beberapa di sunyai. Ikan kwee memiliki panjang 90 cm'),
(17, 'KAKAP MERAH', 'GAMBAR17.JPG', 'JANUARI , MARET', 'Ikan Kakap merah merupakan salah satu jenis ikan demersal yang hidupnya menyendiri di daerah pantai sampai kedalaman 60 m. panjang ikan kakap merah bisa mencapai 45-50 cm'),
(18, 'KURISI', 'GAMBAR18.JPG', 'DESEMBER', 'Ikan kurisi memiliki badan agak bulat memanjang,  Memiliki warna badan yang cerah, merah kekuningan. Lebar sekitar 10 - 16 cm dan panjang mencapai 25 cm. Ikan kurisi ditemukan pada kedalaman 100m, habitat daerah karang dan berbatu.'),
(19, 'KERAPU', 'GAMBAR19.JPG', 'JANUARI , FEBRUARI , MARET , DESEMBER', 'Hampir semua jenis ikan kerapu hidup di terumbu karang, namun beberapa spesies dapat bermigrasi ke air payau maupun sungai untuk mencari makan. Ikan kerapu hidup pada kedalaman 450 m. ikan kerapu pernah tercatat memiliki panjang 300 cm dan berat mencapai >200 kg. '),
(20, 'KAKEK JAWA', 'GAMBAR20.JPG', 'MARET , MEI , JUNI', 'Ikan Albakora paling banyak di kawasan samudra hindia dan juga wilayah pasifik tegah, untuk indonesia banyak dijumpai di daerah barat sumatera, laut selatan jawa dan wilayah perairan papua. Ukuran ikan ini dapat mencapai panjang 137 cm '),
(21, 'LAYUR', 'GAMBAR21.JPG', 'JUNI , JULI , AGUSTUS , SEPTEMBER , OKTOBER , NOVEMBER , DESEMBER', 'Ikan Layur terdapat di perairan pantai seluruh indonesia di daerah perairan jepang, philipina, teluk benggala, teluk siam, sepanjang laut cina selatan hingga pantai utara australia juga tersebar luas di perairan dangak afrika selatan'),
(22, 'LEMURU', 'GAMBAR22.JPG', 'MARET , MEI , JULI , AGUSTUS , SEPTEMBER , OKTOBER , NOVEMBER', 'Ikan ini banyak di temukan di timur samudera hindia dan di barat pasifik. Ikan lemuru memiliki panjang 23 cm , makanan utama ikan ini adalah plankton'),
(23, 'LAYANG DELES', 'GAMBAR23.JPG', 'JANUARI , MARET , MEI , JUNI , JULI , AGUSTUS , SEPTEMBER , OKTOBER , NOVEMBER , DESEMBER', 'Ikan layang deles Dapat mencapai panjang 40 cm, umumnya 25 cm. Warna : biru kehijauan bagian atas, putih perak bagian bawah.Sirip siripnya  kuning pucat atau kuning kotor.Suatu totol hitam terdapat pada bagian  atas penutup insang dan pangkal sirip dada'),
(24, 'LAYANG ANGGUR', 'GAMBAR24.JPG', 'FEBRUARI , MARET , MEI , JUNI , JULI , AGUSTUS , SEPTEMBER , OKTOBER', 'Layang  Anggur adalah nama sejenis ikan yang termasuk marga Decapterus, suku Carangidae. Ikan-ikan berukuran kecil hingga sedang ini merupakan ikan konsumsi yang cukup penting, dipasarkan dalam keadaan segar atau diolah sebagai ikan pindang, ikan asin, dan lain-lain. '),
(25, 'LAYANG BENGOL', 'GAMBAR25.JPG', 'FEBRUARI , MARET , APRIL , MEI , JUNI , JULI , AGUSTUS , SEPTEMBER , OKTOBER , NOVEMBER , DESEMBER', 'Layang  Bengiol adalah nama sejenis ikan yang termasuk marga Decapterus, suku Carangidae. Ikan-ikan berukuran kecil hingga sedang ini merupakan ikan konsumsi yang cukup penting, dipasarkan dalam keadaan segar atau diolah sebagai ikan pindang, ikan asin, dan lain-lain. '),
(26, 'LAYARAN', 'GAMBAR26.JPG', 'MARET , APRIL , MEI , JULI', 'Ikan ini berasal dari perairan tropis dan sub tropis di samudera atlantik,pasifik dan hindia. Secara signifikan ikan layaran . Mempunyai panjang  kisaran 11 kaki (3,4 meter) dengan berat 91 -181 kg'),
(27, 'MANYUNG', 'GAMBAR27.JPG', 'AGUSTUS , SEPTEMBER , NOVEMBER , DESEMBER', 'Ikan Manyung termasuk jenis ikan demersal, habitat ikan ini adalah di perairan pantai dengan tipe dasar lunak seperti lumpur. Banyak ditemukan di muara sungai dekat hutan bakau. Ukuran ikan manyung adalah 180 cm'),
(28, 'PARI KEMBANG', 'GAMBAR28.JPG', 'JULI , AGUSTUS , SEPTEMBER , OKTOBER , NOVEMBER , DESEMBER', 'Ikan pari (rays) termasuk dalam ikan bertulang rawan, Ukuran ikan pari dewasa bervariasi dari ukuran yang relatif kecil, yaitu lebar 5 cm dengan panjang 10 cm Jumlah jenis ikan pari yang mendiami perairan di seluruh dunia belum ada informasi yang tepat'),
(29, 'PEPEREK', 'GAMBAR29.JPG', 'JULI , AGUSTUS , SEPTEMBER , OKTOBER , NOVEMBER', 'Ikan Peperek dari keluarga Leiognathidae pada mulutnya tidak terdapat gigi seperti taring, ikan ini hidup pada kedalaman kurang lebih antara 20-40 m dan hidup nerkelompok pada kedalaman 40-60 m'),
(30, 'PARI KELELAWAR', 'GAMBAR30.JPG', 'MEI , JUNI , SEPTEMBER , OKTOBER', 'meski belum bisa mengalahkan hiu atau paus,  ikan pari kelelawar adalah raksasa di “kelasnya”. Bayangkan saja, jika direntangkan lebar tubuhnya bisa mencapai 7,6 meter, sedangkan bobotnya mencapai 2,3 ton. Bentuk badannya yang pipih lebar dan bersayap menyerupai kelelawar, menjadikan mamalia tersebut mirip kelelawar raksasa dari dasar lautan.'),
(31, 'SELAR', 'GAMBAR31.JPG', 'MARET , MEI , DESEMBER', 'Ikan selar hidup di perairan karang, persebarangnya di seluruh indonesia, teluk belanda, teluk siam, sepanjang laut cina selatan, philipinna sampai australia daerah persebaran lain  yaitu di indo-pasifik dari afrika timur ke amerika, ujung baja dan mulut teluk california'),
(32, 'SWANGGI', 'GAMBAR32.JPG', 'AGUSTUS , SEPTEMBER , OKTOBER , NOVEMBER , DESEMBER', 'Ikan Swanggi merupakan ikan karang demersal yang memiliki sisik kasar dan bersifat diurnal. Ikan Swanggi memiliki badan memanjang dan tipis secara lateral, memiliki gigi kecil dan rata - rata panjang ikan Swanggi adalah 35 cm'),
(33, 'SETUHUK HITAM', 'GAMBAR33.JPG', 'MARET , APRIL , MEI , JUNI , JULI , AGUSTUS , SEPTEMBER ', 'Ikan Albakora paling banyak di kawasan samudra hindia dan juga wilayah pasifik tegah, untuk indonesia banyak dijumpai di daerah barat sumatera, laut selatan jawa dan wilayah perairan papua. Ukuran ikan ini dapat mencapai panjang 137 cm '),
(34, 'SLENGSENG', 'GAMBAR34.JPG', 'FEBRUARI , MARET , APRIL , MEI , JUNI , JULI , AGUSTUS , SEPTEMBER , OKTOBER , NOVEMBER', 'Ikan Albakora paling banyak di kawasan samudra hindia dan juga wilayah pasifik tegah, untuk indonesia banyak dijumpai di daerah barat sumatera, laut selatan jawa dan wilayah perairan papua. Ukuran ikan ini dapat mencapai panjang 137 cm '),
(35, 'SUNGLIR', 'GAMBAR35.JPG', 'FEBRUARI , MARET , APRIL , MEI , JUNI , JULI , DESEMBER', 'Ikan sunglir termasuk dalam ikan pelagis . Persebarannya hampir di seluruh wilayah indonesia, terutama padang,jawa,sulawesi,ambon'),
(36, 'SELAR KOMO', 'GAMBAR36.JPG', 'FEBRUARI , MARET , APRIL , MEI , JUNI , JULI , AGUSTUS , SEPTEMBER , OKTOBER', 'Ikan Albakora paling banyak di kawasan samudra hindia dan juga wilayah pasifik tegah, untuk indonesia banyak dijumpai di daerah barat sumatera, laut selatan jawa dan wilayah perairan papua. Ukuran ikan ini dapat mencapai panjang 137 cm '),
(37, 'TUNA MADIDIHANG', 'GAMBAR37.JPG', 'JANUARI , FEBRUARI , MARET , APRIL , MEI , JUNI , JULI , AGUSTUS , SEPTEMBER , OKTOBER , NOVEMBER , ', 'Umumnya ikan tuna madidihang tertangkap pada kedalaman 0-400 meter, salinitas berkisar 32-35 ppt, suhu berkisar 17-31 derajat tersebar di selurh perairan indonesia. Ikan ini memiliki panjang lebih dari 2 meter dan biasanya suka hidup bergerombol sesuai ukuran baik bersama spesies sejenis maupun spesies lain'),
(38, 'TETENGKEK', 'GAMBAR38.JPG', 'OKTOBER', 'Ikan ini hidup di perairan pantai, daerah persebarannya daerah pantai seluruh indonesia, teluk benggala, teluk siam, sepanjang laut cina selatan, philipina, sampai ke perairan tropis australia. Ikan tetengkek memiliki panjang 40 cm, dan berat mencapai 4 kg.'),
(39, 'TENGIRI', 'GAMBAR39.JPG', 'JANUARI , FEBRUARI , MARET , APRIL , AGUSTUS', 'Ikan Tengiri biasanya ditemukan di sekitar pulau katang yang kedalamannya hanya beberapa meter. Sedangkan yang lebih besar, biasanya terdapat di daerah sekitar tebing karang serta di bukit bawah laut yang kedalamannya 50-70m'),
(40, 'TONGKOL LISONG', 'GAMBAR40.JPG', 'FEBRUARI , MARET , APRIL , MEI , JUNI , JULI , AGUSTUS , SEPTEMBER , OKTOBER , NOVEMBER', 'Ikan Albakora paling banyak di kawasan samudra hindia dan juga wilayah pasifik tegah, untuk indonesia banyak dijumpai di daerah barat sumatera, laut selatan jawa dan wilayah perairan papua. Ukuran ikan ini dapat mencapai panjang 137 cm '),
(41, 'TONGKOL COMO', 'GAMBAR41.JPG', 'FEBRUARI , MARET , APRIL , MEI , JUNI , JULI , AGUSTUS , SEPTEMBER , OKTOBER', 'Ikan Albakora paling banyak di kawasan samudra hindia dan juga wilayah pasifik tegah, untuk indonesia banyak dijumpai di daerah barat sumatera, laut selatan jawa dan wilayah perairan papua. Ukuran ikan ini dapat mencapai panjang 137 cm '),
(42, 'TONGKOL KRAI', 'GAMBAR42.JPG', 'JUNI , JULI , AGUSTUS , SEPTEMBER , OKTOBER , NOVEMBER', 'Ikan Albakora paling banyak di kawasan samudra hindia dan juga wilayah pasifik tegah, untuk indonesia banyak dijumpai di daerah barat sumatera, laut selatan jawa dan wilayah perairan papua. Ukuran ikan ini dapat mencapai panjang 137 cm '),
(43, 'TUNA MATA BESAR', 'GAMBAR43.JPG', 'APRIL , MEI , JUNI , DESEMBER', 'Ikan ini dapat ditemukan di seluruh wilayah perairan indonesia . Ikan teri memiliki ukuran yang kecil, dengan panjang 145 mm bahkan bisa mencapai 2-23cm. Mangsa utama ikan teri adalah plankton'),
(44, 'TERI', 'GAMBAR44.JPG', 'MEI , JUNI , JULI , AGUSTUS , SEPTEMBER , OKTOBER , NOVEMBER', 'Ikan ini dapat ditemukan di samudera tropis dan sub tropis di seluruh dunia. Ikan alu - alu mampu tumbuh hingga panjangnya 6 kaki (kurang lebih 2 meter) dan diameter tubuh hingga 1 kaki'),
(45, 'TEMBANG/TANJANG', 'GAMBAR45.JPG', 'JANUARI , FEBRUARI , MARET , MEI , JUNI , JULI , AGUSTUS , SEPTEMBER , OKTOBER , NOVEMBER , DESEMBER', 'Ikan Tembang sendiri sebagai salah satu ikan pelagis kecil, memiliki daerah persebaran di seluruh perairan indonesia, ke utara sampai taiwan ke selatan sampai ujung utara australia dan ke barat sampai laut merah, umumnya ditangkap di perairan - perairan pantai'),
(46, 'TALANG-TALANG', 'GAMBAR46.JPG', 'MARET', 'Ikan Albakora paling banyak di kawasan samudra hindia dan juga wilayah pasifik tegah, untuk indonesia banyak dijumpai di daerah barat sumatera, laut selatan jawa dan wilayah perairan papua. Ukuran ikan ini dapat mencapai panjang 137 cm '),
(47, 'TERI PUTIH', 'GAMBAR47.JPG', 'JUNI , SEPTEMBER , OKTOBER', 'Ikan Albakora paling banyak di kawasan samudra hindia dan juga wilayah pasifik tegah, untuk indonesia banyak dijumpai di daerah barat sumatera, laut selatan jawa dan wilayah perairan papua. Ukuran ikan ini dapat mencapai panjang 137 cm '),
(48, 'TENGIRI PAPAN', 'GAMBAR48.JPG', 'MEI', 'Ikan Albakora paling banyak di kawasan samudra hindia dan juga wilayah pasifik tegah, untuk indonesia banyak dijumpai di daerah barat sumatera, laut selatan jawa dan wilayah perairan papua. Ukuran ikan ini dapat mencapai panjang 137 cm '),
(49, 'KENYAR', 'GAMBAR49.JPG', 'MARET , JUNI , JULI , AGUSTUS , SEPTEMBER , OKTOBER', 'Ikan Albakora paling banyak di kawasan samudra hindia dan juga wilayah pasifik tegah, untuk indonesia banyak dijumpai di daerah barat sumatera, laut selatan jawa dan wilayah perairan papua. Ukuran ikan ini dapat mencapai panjang 137 cm '),
(50, 'UDANG REBON', 'GAMBAR50.JPG', 'JUNI', 'Ikan Albakora paling banyak di kawasan samudra hindia dan juga wilayah pasifik tegah, untuk indonesia banyak dijumpai di daerah barat sumatera, laut selatan jawa dan wilayah perairan papua. Ukuran ikan ini dapat mencapai panjang 137 cm ');

-- --------------------------------------------------------

--
-- Table structure for table `keamanan`
--

CREATE TABLE `keamanan` (
  `id` int(20) NOT NULL,
  `PANCING_ULUR` int(20) NOT NULL,
  `PANCING_TONDA` int(20) NOT NULL,
  `PAYANG` int(20) NOT NULL,
  `JARING_INSANG` int(20) NOT NULL,
  `PUKAT_CINCIN` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keamanan`
--

INSERT INTO `keamanan` (`id`, `PANCING_ULUR`, `PANCING_TONDA`, `PAYANG`, `JARING_INSANG`, `PUKAT_CINCIN`) VALUES
(1, 2, 2, 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kualitas`
--

CREATE TABLE `kualitas` (
  `id` int(20) NOT NULL,
  `PANCING_ULUR` int(20) NOT NULL,
  `PANCING_TONDA` int(20) NOT NULL,
  `PAYANG` int(20) NOT NULL,
  `JARING_INSANG` int(20) NOT NULL,
  `PUKAT_CINCIN` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kualitas`
--

INSERT INTO `kualitas` (`id`, `PANCING_ULUR`, `PANCING_TONDA`, `PAYANG`, `JARING_INSANG`, `PUKAT_CINCIN`) VALUES
(1, 1, 1, 2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(20) NOT NULL,
  `USERNAME` varchar(50) NOT NULL,
  `PASSWORD` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `USERNAME`, `PASSWORD`) VALUES
(1, 'SHAFIRA', '123');

-- --------------------------------------------------------

--
-- Table structure for table `selektifitas`
--

CREATE TABLE `selektifitas` (
  `id` int(20) NOT NULL,
  `NAMA_IKAN` varchar(100) NOT NULL,
  `PANCING_ULUR` int(50) NOT NULL,
  `PANCING_TONDA` int(50) NOT NULL,
  `PAYANG` int(50) NOT NULL,
  `JARING_INSANG` int(50) NOT NULL,
  `PUKAT_CINCIN` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `selektifitas`
--

INSERT INTO `selektifitas` (`id`, `NAMA_IKAN`, `PANCING_ULUR`, `PANCING_TONDA`, `PAYANG`, `JARING_INSANG`, `PUKAT_CINCIN`) VALUES
(1, 'ALU-ALU', 3, 1, 1, 1, 1),
(2, 'ALBAKORA', 1, 3, 1, 1, 1),
(3, 'AYAM-AYAM', 1, 1, 1, 1, 3),
(4, 'BENTONG', 3, 1, 1, 1, 1),
(5, 'BELOSO', 1, 1, 1, 3, 1),
(6, 'BAWAL', 1, 1, 1, 1, 3),
(7, 'CAKALANG', 1, 3, 1, 1, 1),
(8, 'CUCUT LANYAM', 1, 3, 1, 1, 1),
(9, 'CUCUT TIKUS', 3, 1, 1, 1, 1),
(10, 'CENDRO', 1, 1, 3, 1, 1),
(11, 'CUMI-CUMI', 1, 2, 1, 1, 2),
(12, 'GULAMAH', 1, 1, 1, 1, 3),
(13, 'JULUNG-JULUNG', 1, 1, 1, 1, 3),
(14, 'LEMADANG', 1, 3, 1, 1, 1),
(15, 'KEMBUNG', 1, 1, 1, 1, 3),
(16, 'KWEE', 2, 1, 1, 1, 1),
(17, 'KAKAP MERAH', 3, 1, 1, 1, 1),
(18, 'KURISI', 1, 1, 1, 3, 1),
(19, 'KERAPU', 3, 1, 1, 1, 1),
(20, 'KAKEK JAWA', 1, 1, 1, 1, 3),
(21, 'LAYUR', 1, 1, 1, 1, 3),
(22, 'LEMURU', 1, 1, 1, 1, 3),
(23, 'LAYANG DELES', 1, 1, 1, 1, 3),
(24, 'LAYANG ANGGUR', 1, 1, 1, 1, 3),
(25, 'LAYANG BENGOL', 1, 1, 1, 1, 3),
(26, 'LAYARAN', 1, 1, 1, 1, 3),
(27, 'MANYUNG', 3, 1, 1, 1, 1),
(28, 'PARI KEMBANG', 1, 1, 1, 2, 1),
(29, 'PEPEREK', 1, 1, 2, 1, 2),
(30, 'PARI KELELAWAR', 1, 1, 1, 1, 3),
(31, 'SELAR', 1, 1, 2, 1, 3),
(32, 'SWANGGI', 1, 1, 1, 3, 1),
(33, 'SETUHUK HITAM', 1, 3, 1, 1, 1),
(34, 'SLENGSENG', 1, 1, 1, 1, 3),
(35, 'SUNGLIR', 1, 1, 1, 1, 2),
(36, 'SELAR KOMO', 1, 1, 1, 1, 3),
(37, 'TUNA MADIDIHANG', 1, 3, 1, 1, 1),
(38, 'TETENGKEK', 1, 1, 3, 1, 1),
(39, 'TENGIRI', 2, 1, 1, 1, 2),
(40, 'TONGKOL LISONG', 1, 1, 1, 1, 3),
(41, 'TONGKOL COMO', 1, 2, 1, 1, 2),
(42, 'TONGKOL KRAI', 1, 1, 1, 1, 3),
(43, 'TUNA MATA BESAR', 1, 3, 1, 1, 1),
(44, 'TERI', 1, 1, 3, 1, 1),
(45, 'TEMBANG', 1, 1, 1, 1, 3),
(46, 'TALANG-TALANG', 1, 1, 1, 1, 3),
(47, 'TERI PUTIH', 1, 1, 3, 1, 1),
(48, 'TENGIRI PAPAN', 1, 1, 1, 1, 3),
(49, 'KENYAR', 1, 1, 1, 1, 3),
(50, 'UDANG REBON', 1, 1, 3, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alat_tangkap`
--
ALTER TABLE `alat_tangkap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bobot_harga`
--
ALTER TABLE `bobot_harga`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bobot_selektifitas`
--
ALTER TABLE `bobot_selektifitas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `harga`
--
ALTER TABLE `harga`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hasil_tangkapan`
--
ALTER TABLE `hasil_tangkapan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_ikan`
--
ALTER TABLE `jenis_ikan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keamanan`
--
ALTER TABLE `keamanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kualitas`
--
ALTER TABLE `kualitas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `selektifitas`
--
ALTER TABLE `selektifitas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alat_tangkap`
--
ALTER TABLE `alat_tangkap`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bobot_harga`
--
ALTER TABLE `bobot_harga`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bobot_selektifitas`
--
ALTER TABLE `bobot_selektifitas`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `harga`
--
ALTER TABLE `harga`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hasil_tangkapan`
--
ALTER TABLE `hasil_tangkapan`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jenis_ikan`
--
ALTER TABLE `jenis_ikan`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `keamanan`
--
ALTER TABLE `keamanan`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kualitas`
--
ALTER TABLE `kualitas`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `selektifitas`
--
ALTER TABLE `selektifitas`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
