-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2024 at 10:19 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scheduling`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosens`
--

CREATE TABLE `dosens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `nama` longtext DEFAULT NULL,
  `kode_dosen` varchar(191) DEFAULT NULL,
  `preferensi` longblob DEFAULT NULL,
  `rumpun_id` bigint(20) UNSIGNED DEFAULT NULL,
  `load` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dosens`
--

INSERT INTO `dosens` (`id`, `created_at`, `updated_at`, `deleted_at`, `nama`, `kode_dosen`, `preferensi`, `rumpun_id`, `load`) VALUES
(2, '2023-09-27 14:01:34.369', '2023-11-18 19:37:47.298', NULL, 'Dr. Yudhi Purwananto, S.Kom, M.Kom.', 'YP', 0x7b2268617269223a5b2253656c617361222c2252616275222c224b616d6973225d2c2273657369223a5b22536573692035222c22536573692036222c22536573692037222c22536573692038222c22536573692039222c2253657369203130225d7d, 1, -8),
(3, '2023-09-27 14:01:34.383', '2023-09-27 14:01:34.383', NULL, 'Dwi Sunaryono, S.Kom., M.Kom.', 'DS', 0x7b2268617269223a5b2253656e696e222c2253656c617361222c2252616275222c224b616d6973225d2c2273657369223a5b22536573692035222c22536573692036222c22536573692037222c22536573692038225d7d, 1, 0),
(4, '2023-09-27 14:01:34.386', '2023-09-27 14:01:34.386', NULL, 'Fajar Baskoro, S.Kom., M.T.', 'FB', 0x7b2268617269223a5b2253656c617361222c2252616275225d2c2273657369223a5b22536573692031222c22536573692032222c22536573692033222c22536573692034222c22536573692035222c22536573692036222c22536573692037222c22536573692038222c22536573692039222c2253657369203130225d7d, 1, 0),
(5, '2023-09-27 14:01:34.389', '2023-09-27 14:01:34.389', NULL, 'Rully Soelaiman, S.Kom., M.Kom.', 'RL', 0x7b2268617269223a5b2252616275225d2c2273657369223a5b22536573692031222c22536573692032222c22536573692033222c22536573692034222c22536573692035222c22536573692036222c22536573692037222c22536573692038225d7d, 1, 0),
(6, '2023-09-27 14:01:34.392', '2023-09-27 14:01:34.392', NULL, 'Misbakhul Munir Irfan Subakti, S.Kom., M.Sc.', 'IS', 0x7b2268617269223a5b2253656e696e222c2253656c617361222c2252616275222c224b616d6973222c224a756d6174225d2c2273657369223a5b22536573692035222c22536573692036222c22536573692037222c22536573692038222c22536573692039222c2253657369203130225d7d, 1, 0),
(7, '2023-09-27 14:01:34.395', '2023-09-27 14:01:34.395', NULL, 'Dr. Diana Purwitasari, S.Kom., M.Sc.', 'DP', 0x7b2268617269223a5b2253656c617361222c2252616275222c224b616d6973225d2c2273657369223a5b22536573692031222c22536573692032222c22536573692033222c22536573692034225d7d, 1, 0),
(8, '2023-09-27 14:01:34.398', '2023-09-27 14:01:34.398', NULL, 'Ir. F.X. Arunanto, M.Sc.', 'AR', 0x7b2268617269223a5b2252616275225d2c2273657369223a5b22536573692031222c22536573692032222c22536573692033222c22536573692034222c22536573692035222c22536573692036222c22536573692037222c22536573692038225d7d, 1, 0),
(9, '2023-09-27 14:01:34.401', '2023-09-27 14:01:34.401', NULL, 'Dr. Agus Budi Raharjo, S. Kom, M. Kom', 'AB', 0x7b2268617269223a5b2253656e696e222c2253656c617361222c2252616275222c224b616d6973222c224a756d6174225d2c2273657369223a5b22536573692035222c22536573692036222c22536573692037222c22536573692038222c22536573692039222c2253657369203130225d7d, 1, 0),
(10, '2023-09-27 14:01:34.403', '2023-09-27 14:01:34.403', NULL, 'Prof. Ir. Supeno Djanali, MSc, Ph.D.', 'SD', 0x7b2268617269223a5b2253656e696e222c2253656c617361222c2252616275222c224b616d6973222c224a756d6174225d2c2273657369223a5b22536573692031222c22536573692032222c22536573692033222c22536573692034225d7d, 2, 0),
(11, '2023-09-27 14:01:34.406', '2023-09-27 14:01:34.406', NULL, 'Dr. Eng. Royyana Muslim I, S.Kom, M.Kom', 'RM', 0x7b2268617269223a5b2253656e696e222c2253656c617361222c2252616275222c224b616d6973222c224a756d6174225d2c2273657369223a5b22536573692031222c22536573692032222c22536573692033222c22536573692034225d7d, 2, 0),
(12, '2023-09-27 14:01:34.408', '2023-09-27 14:01:34.408', NULL, 'Dr. Eng. Radityo Anggoro, S.Kom, M.Eng.Sc', 'RA', 0x7b2268617269223a5b2253656e696e222c2253656c617361222c2252616275222c224b616d6973222c224a756d6174225d2c2273657369223a5b22536573692035222c22536573692036222c22536573692037222c22536573692038222c22536573692039222c2253657369203130225d7d, 2, 0),
(13, '2023-09-27 14:01:34.410', '2023-09-27 14:01:34.410', NULL, 'Dr. Wahyu Suadi, S.Kom, M.Kom.', 'WS', 0x7b2268617269223a5b2253656e696e222c2253656c617361222c2252616275222c224b616d6973222c224a756d6174225d2c2273657369223a5b22536573692035222c22536573692036222c22536573692037222c22536573692038225d7d, 2, 0),
(14, '2023-09-27 14:01:34.414', '2023-09-27 14:01:34.414', NULL, 'Prof. Dr. Ir. Joko Lianto Buliali, M.Sc', 'JL', 0x7b2268617269223a5b2253656e696e222c2253656c617361225d2c2273657369223a5b22536573692031222c22536573692032222c22536573692033222c22536573692034222c22536573692035222c22536573692036222c22536573692037222c22536573692038222c22536573692039222c2253657369203130225d7d, 3, 0),
(15, '2023-09-27 14:01:34.417', '2023-09-27 14:01:34.417', NULL, 'Dr. Ahmad Saikhu, S,Si, MT.', 'AS', 0x7b2268617269223a5b2253656e696e222c2253656c617361222c2252616275222c224b616d6973222c224a756d6174225d2c2273657369223a5b22536573692031222c22536573692032222c22536573692033222c22536573692034222c22536573692035222c22536573692036222c22536573692037222c22536573692038222c22536573692039222c2253657369203130225d7d, 3, 0),
(16, '2023-09-27 14:01:34.419', '2023-09-27 14:01:34.419', NULL, 'Victor Hariadi, S.Si, M.Kom', 'VH', 0x7b2268617269223a5b224b616d6973222c224a756d6174225d2c2273657369223a5b22536573692031222c22536573692032222c22536573692033222c22536573692034222c22536573692035222c22536573692036222c22536573692037222c22536573692038225d7d, 3, 0),
(17, '2023-09-27 14:01:34.422', '2023-09-27 14:01:34.422', NULL, 'Dr. Bilqis Amaliah, S.Kom, M.Kom', 'BA', 0x7b2268617269223a5b2253656e696e222c2253656c617361222c2252616275222c224b616d6973222c224a756d6174225d2c2273657369223a5b22536573692031222c22536573692032222c22536573692033222c22536573692034222c22536573692035222c22536573692036222c22536573692037222c22536573692038225d7d, 3, 0),
(18, '2023-09-27 14:01:34.424', '2023-09-27 14:01:34.424', NULL, 'Arya YudhiWijaya, S.Kom.,M.Kom.', 'AW', 0x7b2268617269223a5b2253656c617361222c2252616275222c224b616d6973222c224a756d6174225d2c2273657369223a5b22536573692031222c22536573692032222c22536573692033222c22536573692034222c22536573692035222c22536573692036222c22536573692037222c22536573692038222c22536573692039222c2253657369203130225d7d, 3, 0),
(19, '2023-09-27 14:01:34.427', '2023-10-21 19:03:50.073', NULL, 'Dr. Darlis Herumurti, S.Kom, M.Kom', 'DH', 0x7b2268617269223a5b2253656e696e222c2252616275222c224a756d6174225d2c2273657369223a5b22536573692035222c22536573692036222c22536573692037222c22536573692038222c22536573692039222c2253657369203130225d7d, 4, 4),
(20, '2023-09-27 14:01:34.432', '2023-11-18 19:47:36.566', NULL, 'Dr. Anny Yuniarti, S.Kom, M.Comp.Sc.', 'AY', 0x7b2268617269223a5b2253656c617361225d2c2273657369223a5b22536573692039222c2253657369203130225d7d, 4, 10),
(21, '2023-09-27 14:01:34.435', '2023-10-21 19:03:47.984', NULL, 'Imam Kuswardayan, S.Kom., M.T.', 'IM', 0x7b2268617269223a5b2253656c617361222c2252616275225d2c2273657369223a5b22536573692031222c22536573692032222c22536573692033222c22536573692034222c22536573692035222c22536573692036222c22536573692037222c22536573692038225d7d, 4, -6),
(22, '2023-09-27 14:01:34.437', '2023-09-27 14:01:34.437', NULL, 'Wijayanti Nurul Khotimah, S.Kom., M.Sc', 'WN', 0x7b2268617269223a5b2253656c617361222c2252616275225d2c2273657369223a5b22536573692031222c22536573692032222c22536573692033222c22536573692034225d7d, 4, 0),
(23, '2023-09-27 14:01:34.439', '2023-11-18 19:47:04.035', NULL, 'Hadziq Fabroyir, S.Kom, PhD', 'HF', 0x7b2268617269223a5b2253656c617361222c2252616275222c224b616d6973225d2c2273657369223a5b22536573692031222c22536573692032222c22536573692033222c22536573692034222c22536573692035222c22536573692036222c22536573692037222c22536573692038222c22536573692039222c2253657369203130225d7d, 4, 3),
(24, '2023-09-27 14:01:34.442', '2023-09-27 14:01:34.442', NULL, 'Siska Arifiani, S.Kom, M.Kom', 'SA', 0x7b2268617269223a5b2253656c617361222c2252616275222c224b616d6973222c224a756d6174225d2c2273657369223a5b22536573692031222c22536573692032222c22536573692033222c22536573692034222c22536573692035222c22536573692036222c22536573692037222c22536573692038222c22536573692039222c2253657369203130225d7d, 4, 0),
(25, '2023-09-27 14:01:34.445', '2023-09-27 14:01:34.445', NULL, 'Waskitho Wibisono, S.Kom, M.Eng.,Ph.D', 'WW', 0x7b2268617269223a5b2253656e696e222c2253656c617361222c2252616275222c224b616d6973225d2c2273657369223a5b22536573692031222c22536573692032222c22536573692033222c22536573692034222c22536573692035222c22536573692036222c22536573692037222c22536573692038222c22536573692039222c2253657369203130225d7d, 5, 0),
(26, '2023-09-27 14:01:34.448', '2023-09-27 14:01:34.448', NULL, 'Tohari Ahmad, S.Kom, M.IT, Ph.D', 'TA', 0x7b2268617269223a5b2253656e696e222c2253656c617361222c2252616275225d2c2273657369223a5b22536573692031222c22536573692032222c22536573692033222c22536573692034222c22536573692035222c22536573692036222c22536573692037222c22536573692038225d7d, 5, 0),
(27, '2023-09-27 14:01:34.450', '2023-09-27 14:01:34.450', NULL, 'Hudan Studiawan, S.Kom, M.Kom, PhD', 'HS', 0x7b2268617269223a5b2252616275222c224b616d6973225d2c2273657369223a5b22536573692031222c22536573692032222c22536573692033222c22536573692034225d7d, 5, 0),
(28, '2023-09-27 14:01:34.453', '2023-09-27 14:01:34.453', NULL, 'Baskoro Adi P., S.Kom.,M.Kom., PhD', 'BS', 0x7b2268617269223a5b2253656e696e222c2252616275222c224b616d6973225d2c2273657369223a5b22536573692035222c22536573692036222c22536573692037222c22536573692038222c22536573692039222c2253657369203130225d7d, 5, 0),
(29, '2023-09-27 14:01:34.455', '2023-09-27 14:01:34.455', NULL, 'Ary Mazharuddin, S.Kom, M.Comp.Sc.,PhD', 'AM', 0x7b2268617269223a5b2253656c617361222c2252616275222c224b616d6973225d2c2273657369223a5b22536573692031222c22536573692032222c22536573692033222c22536573692034222c22536573692035222c22536573692036222c22536573692037222c22536573692038225d7d, 5, 0),
(30, '2023-09-27 14:01:34.457', '2023-09-27 14:01:34.457', NULL, 'Bagus Jati Santoso, S.Kom, PhD', 'BJ', 0x7b2268617269223a5b2253656c617361222c2252616275222c224b616d6973225d2c2273657369223a5b22536573692031222c22536573692032222c22536573692033222c22536573692034222c22536573692035222c22536573692036222c22536573692037222c22536573692038225d7d, 5, 0),
(31, '2023-09-27 14:01:34.459', '2023-09-27 14:01:34.459', NULL, 'Prof.Ir.Handayani Tjandrasa, M.Sc, Ph.D.', 'HT', 0x7b2268617269223a5b2253656c617361222c2252616275225d2c2273657369223a5b22536573692039222c2253657369203130225d7d, 6, 0),
(32, '2023-09-27 14:01:34.462', '2023-09-27 14:01:34.462', NULL, 'Dr. Eng. Nanik Suciati, S.Kom, M.Kom', 'NS', 0x7b2268617269223a5b2252616275222c224b616d6973222c224a756d6174225d2c2273657369223a5b22536573692031222c22536573692032222c22536573692033222c22536573692034222c22536573692035222c22536573692036222c22536573692037222c22536573692038225d7d, 6, 0),
(33, '2023-09-27 14:01:34.465', '2023-09-27 14:01:34.465', NULL, 'Dr. Eng. ChastineFatichah, S.Kom, M.Kom', 'CF', 0x7b2268617269223a5b2253656e696e222c2253656c617361222c2252616275225d2c2273657369223a5b22536573692031222c22536573692032222c22536573692033222c22536573692034222c22536573692035222c22536573692036222c22536573692037222c22536573692038225d7d, 6, 0),
(34, '2023-09-27 14:01:34.467', '2023-09-27 14:01:34.467', NULL, 'Dini Adni Navastara, S.Kom., M.Sc.', 'DA', 0x7b2268617269223a5b2253656c617361222c2252616275222c224b616d6973225d2c2273657369223a5b22536573692035222c22536573692036222c22536573692037222c22536573692038225d7d, 6, 0),
(35, '2023-09-27 14:01:34.470', '2023-09-27 14:01:34.470', NULL, 'Prof. Dr. Eng. Agus Zainal Arifin, S.Kom, M.Kom.', 'AZ', 0x7b2268617269223a5b2253656e696e222c2253656c617361222c2252616275222c224b616d6973225d2c2273657369223a5b22536573692031222c22536573692032222c22536573692033222c22536573692034222c22536573692035222c22536573692036222c22536573692037222c22536573692038225d7d, 6, 0),
(36, '2023-09-27 14:01:34.472', '2023-09-27 14:01:34.472', NULL, 'Prof. Drs.Ec.Ir. Riyanarto Sarno,M.Sc,Ph.D', 'RS', 0x7b2268617269223a5b2253656e696e222c2252616275222c224b616d6973225d2c2273657369223a5b22536573692031222c22536573692032222c22536573692033222c22536573692034225d7d, 7, 0),
(37, '2023-09-27 14:01:34.474', '2023-09-27 14:01:34.474', NULL, 'Nurul Fajrin Ariyani, S.Kom., M.Sc.', 'NF', 0x7b2268617269223a5b2253656e696e222c2252616275222c224b616d6973222c224a756d6174225d2c2273657369223a5b22536573692035222c22536573692036222c22536573692037222c22536573692038225d7d, 7, 0),
(38, '2023-09-27 14:01:34.477', '2023-09-27 14:01:34.477', NULL, 'Adhatus Solichah A., S.Kom., M.Sc.', 'AL', 0x7b2268617269223a5b2253656e696e222c2252616275222c224b616d6973225d2c2273657369223a5b22536573692031222c22536573692032222c22536573692033222c22536573692034222c22536573692035222c22536573692036222c22536573692037222c22536573692038225d7d, 7, 0),
(39, '2023-09-27 14:01:34.480', '2023-09-27 14:01:34.480', NULL, 'Ratih Nur Esti Anggraini, S.Kom, M.Sc., PhD', 'RN', 0x7b2268617269223a5b2253656e696e222c2253656c617361222c2252616275222c224b616d6973225d2c2273657369223a5b22536573692031222c22536573692032222c22536573692033222c22536573692034222c22536573692035222c22536573692036222c22536573692037222c22536573692038222c22536573692039222c2253657369203130225d7d, 7, 0),
(40, '2023-09-27 14:01:34.482', '2023-09-27 14:01:34.482', NULL, 'Abdul Munif, S.Kom., M.Sc.', 'MN', 0x7b2268617269223a5b2253656e696e222c2253656c617361222c2252616275222c224b616d6973222c224a756d6174225d2c2273657369223a5b22536573692031222c22536573692032222c22536573692033222c22536573692034225d7d, 7, 0),
(41, '2023-09-27 14:01:34.484', '2023-09-27 14:01:34.484', NULL, 'Shintami Chusnul Hidayati, S.Kom, PhD', 'SC', 0x7b2268617269223a5b2253656e696e222c2253656c617361222c2252616275222c224b616d6973222c224a756d6174225d2c2273657369223a5b22536573692031222c22536573692032222c22536573692033222c22536573692034222c22536573692035222c22536573692036222c22536573692037222c22536573692038225d7d, 7, 0),
(42, '2023-09-27 14:01:34.487', '2023-09-27 14:01:34.487', NULL, 'Kelly Rosa Sungkono, S.Kom, M. Kom.', 'KR', 0x7b2268617269223a5b2253656e696e222c2253656c617361222c2252616275222c224b616d6973222c224a756d6174225d2c2273657369223a5b22536573692031222c22536573692032222c22536573692033222c22536573692034222c22536573692035222c22536573692036222c22536573692037222c22536573692038225d7d, 7, 0),
(43, '2023-09-27 14:01:34.489', '2023-09-27 14:01:34.489', NULL, 'Dr.Ir. Siti Rochimah, MT', 'ST', 0x7b2268617269223a5b2253656c617361222c2252616275225d2c2273657369223a5b22536573692031222c22536573692032222c22536573692033222c22536573692034222c22536573692035222c22536573692036222c22536573692037222c22536573692038225d7d, 8, 0),
(44, '2023-09-27 14:01:34.491', '2023-09-27 14:01:34.491', NULL, 'Daniel O. Siahaan, S.Kom. M,Sc, PD.Eng.', 'DO', 0x7b2268617269223a5b2253656e696e222c2253656c617361222c2252616275222c224b616d6973222c224a756d6174225d2c2273657369223a5b22536573692031222c22536573692032222c22536573692033222c22536573692034222c22536573692035222c22536573692036222c22536573692037222c22536573692038225d7d, 8, 0),
(45, '2023-09-27 14:01:34.494', '2023-09-27 14:01:34.494', NULL, 'Sarwosri, S.Kom. M.T', 'SR', 0x7b2268617269223a5b2253656c617361222c2252616275225d2c2273657369223a5b22536573692035222c22536573692036222c22536573692037222c22536573692038222c22536573692039222c2253657369203130225d7d, 8, 0),
(46, '2023-09-27 14:01:34.497', '2023-09-27 14:01:34.497', NULL, 'Dr. Umi Laili Yuhana, S.Kom., M.Sc.', 'UY', 0x7b2268617269223a5b2253656c617361222c2252616275222c224b616d6973225d2c2273657369223a5b22536573692039222c2253657369203130225d7d, 8, 0),
(47, '2023-09-27 14:01:34.499', '2023-09-27 14:01:34.499', NULL, 'Rizky Januar Akbar, S.Kom.,M.Eng.', 'RJ', 0x7b2268617269223a5b2253656c617361222c2252616275222c224b616d6973225d2c2273657369223a5b22536573692035222c22536573692036222c22536573692037222c22536573692038222c22536573692039222c2253657369203130225d7d, 8, 0),
(48, '2023-09-27 14:32:08.350', '2023-09-27 14:51:28.788', NULL, 'Calculus', 'CL', 0x7b2268617269223a6e756c6c2c2273657369223a6e756c6c7d, 5, 12),
(49, '2023-09-27 14:33:09.988', '2023-09-27 14:33:09.988', NULL, 'SKPB', 'UG', 0x7b2268617269223a6e756c6c2c2273657369223a6e756c6c7d, 5, 0),
(51, '2023-09-28 17:23:17.796', '2023-09-28 17:23:17.796', NULL, 'Testing', 'TT', 0x7b2268617269223a5b2252616275225d2c2273657369223a5b22536573692035222c22536573692034225d7d, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `matkuls`
--

CREATE TABLE `matkuls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `nama` longtext DEFAULT NULL,
  `kode_mk` varchar(191) DEFAULT NULL,
  `sks` bigint(20) DEFAULT NULL,
  `tipe` longtext DEFAULT NULL,
  `semester` bigint(20) DEFAULT NULL,
  `rumpun_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `matkuls`
--

INSERT INTO `matkuls` (`id`, `created_at`, `updated_at`, `deleted_at`, `nama`, `kode_mk`, `sks`, `tipe`, `semester`, `rumpun_id`) VALUES
(1, '2023-08-22 17:03:13.437', '2023-08-22 17:03:13.437', NULL, 'Kalkulus 1', 'SM4101', 3, 'Jurusan - W', 1, 5),
(2, '2023-08-22 17:03:13.442', '2023-08-22 17:03:13.442', NULL, 'Dasar Pemrograman', 'EF4101', 4, 'Jurusan - W', 1, 1),
(3, '2023-08-22 17:03:13.445', '2023-08-22 17:03:13.445', NULL, 'Sistem Digital', 'EF4102', 3, 'Jurusan - W', 1, 2),
(4, '2023-08-22 17:03:13.448', '2023-08-22 17:03:13.448', NULL, 'Aljabar Linier', 'EF4103', 3, 'Jurusan - W', 1, 3),
(5, '2023-08-22 17:03:13.450', '2023-08-22 17:03:13.450', NULL, 'Sistem Basis Data', 'EF4104', 4, 'Jurusan - W', 1, 4),
(6, '2023-08-22 17:03:13.453', '2023-08-22 17:03:13.453', NULL, 'Struktur Data', 'EF4201', 4, 'Jurusan - W', 2, 1),
(7, '2023-08-22 17:03:13.456', '2023-08-22 17:03:13.456', NULL, 'Sistem Operasi', 'EF4202', 4, 'Jurusan - W', 2, 2),
(8, '2023-08-22 17:03:13.458', '2023-08-22 17:03:13.458', NULL, 'Organisasi Komputer', 'EF4203', 3, 'Jurusan - W', 2, 2),
(9, '2023-08-22 17:03:13.461', '2023-08-22 17:03:13.461', NULL, 'Komputasi Numerik', 'EF4204', 3, 'Jurusan - W', 2, 3),
(10, '2023-08-22 17:03:13.464', '2023-08-22 17:03:13.464', NULL, 'Kalkulus 2', 'SM4201', 3, 'Jurusan - W', 2, 5),
(11, '2023-08-22 17:03:13.466', '2023-08-22 17:03:13.466', NULL, 'Pengenalan Teknologi Elektro dan Informatika Cerdas', 'EW4201', 2, 'Jurusan - W', 2, 5),
(12, '2023-08-22 17:03:13.470', '2023-08-22 17:03:13.470', NULL, 'Pemrograman Web', 'EF4301', 3, 'Jurusan - W', 3, 1),
(13, '2023-08-22 17:03:13.473', '2023-08-22 17:03:13.473', NULL, 'Pemrograman Berorientasi Objek', 'EF4302', 3, 'Jurusan - W', 3, 1),
(14, '2023-08-22 17:03:13.475', '2023-08-22 17:03:13.475', NULL, 'Jaringan Komputer', 'EF4303', 4, 'Jurusan - W', 3, 2),
(15, '2023-08-22 17:03:13.479', '2023-08-22 17:03:13.479', NULL, 'Teori Graf', 'EF4304', 3, 'Jurusan - W', 3, 3),
(16, '2023-08-22 17:03:13.482', '2023-08-22 17:03:13.482', NULL, 'Matematika Diskrit', 'EF4305', 3, 'Jurusan - W', 3, 3),
(17, '2023-08-22 17:03:13.485', '2023-08-22 17:03:13.485', NULL, 'Konsep Kecerdasan Artifisial', 'EK4201', 3, 'Jurusan - W', 3, 7),
(18, '2023-08-22 17:03:13.491', '2023-08-22 17:03:13.491', NULL, 'Konsep Pengembangan Perangkat Lunak', 'EF4307', 2, 'Jurusan - W', 3, 6),
(19, '2023-08-22 17:03:13.495', '2023-08-22 17:03:13.495', NULL, 'Pemrograman Jaringan', 'EF4401', 3, 'Jurusan - W', 4, 2),
(20, '2023-08-22 17:03:13.498', '2023-08-22 17:03:13.498', NULL, 'Probabilitas dan Statistik', 'EF4402', 3, 'Jurusan - W', 4, 3),
(21, '2023-08-22 17:03:13.502', '2023-08-22 17:03:13.502', NULL, 'Otomata', 'EF4403', 2, 'Jurusan - W', 4, 3),
(22, '2023-08-22 17:03:13.507', '2023-08-22 17:03:13.507', NULL, 'Manajemen Basis Data', 'EF4404', 3, 'Jurusan - W', 4, 4),
(23, '2023-08-22 17:03:13.510', '2023-08-22 17:03:13.510', NULL, 'Perancangan dan Analisis Algoritma', 'EF4405', 3, 'Jurusan - W', 4, 1),
(24, '2023-08-22 17:03:13.513', '2023-08-22 17:03:13.513', NULL, 'Pembelajaran Mesin', 'EF4406', 3, 'Jurusan - W', 4, 7),
(25, '2023-08-22 17:03:13.515', '2023-08-22 17:03:13.515', NULL, 'Perancangan Perangkat Lunak', 'ER4301', 3, 'Jurusan - W', 4, 6),
(26, '2023-08-22 17:03:13.519', '2023-08-22 17:03:13.519', NULL, 'Pemrograman Berbasis Kerangka Kerja', 'EF4501', 3, 'Jurusan - W', 5, 1),
(27, '2023-08-22 17:03:13.525', '2023-08-22 17:03:13.525', NULL, 'Keamanan Informasi', 'EF4502', 3, 'Jurusan - W', 5, 2),
(28, '2023-08-22 17:03:13.527', '2023-08-22 17:03:13.527', NULL, 'Pemodelan dan Simulasi', 'EF4503', 3, 'Jurusan - W', 5, 3),
(29, '2023-08-22 17:03:13.530', '2023-08-22 17:03:13.530', NULL, 'Grafika Komputer', 'EF4504', 3, 'Jurusan - W', 5, 8),
(30, '2023-08-22 17:03:13.533', '2023-08-22 17:03:13.533', NULL, 'Rekayasa Sistem Berbasis Pengetahuan', 'EF4505', 3, 'Jurusan - W', 5, 4),
(31, '2023-08-22 17:03:13.537', '2023-08-22 17:03:13.537', NULL, 'Bahasa Inggris', 'UG4914', 2, 'Jurusan - W', 6, 5),
(32, '2023-08-22 17:03:13.540', '2023-08-22 17:03:13.540', NULL, 'Kewirausahaan Berbasis Teknologi', 'UG4915', 2, 'Jurusan - W', 6, 5),
(33, '2023-08-22 17:03:13.542', '2023-08-22 17:03:13.542', NULL, 'Agama', 'UG490X', 2, 'Jurusan - W', 6, 5),
(34, '2023-08-22 17:03:13.544', '2023-08-22 17:03:13.544', NULL, 'Kewarganegaraan', 'UG4913', 2, 'Jurusan - W', 6, 5),
(35, '2023-08-22 17:03:13.547', '2023-08-22 17:03:13.547', NULL, 'Pemrograman Perangkat Bergerak', 'EF4601', 3, 'Jurusan - W', 6, 1),
(36, '2023-08-22 17:03:13.549', '2023-08-22 17:03:13.549', NULL, 'Interaksi Manusia dan Komputer', 'EF4602', 3, 'Jurusan - W', 6, 8),
(37, '2023-08-22 17:03:13.552', '2023-08-22 17:03:13.552', NULL, 'Kerja Praktik', 'EF4603', 4, 'Jurusan - W', 6, 9),
(38, '2023-08-22 17:03:13.555', '2023-08-22 17:03:13.555', NULL, 'Bahasa Indonesia', 'UG4912', 2, 'Jurusan - W', 7, 5),
(39, '2023-08-22 17:03:13.558', '2023-08-22 17:03:13.558', NULL, 'Pancasila', 'UG4911', 2, 'Jurusan - W', 7, 5),
(40, '2023-08-22 17:03:13.560', '2023-08-22 17:03:13.560', NULL, 'Aplikasi Teknologi dan Transformasi Digital', 'UG4916', 3, 'Jurusan - W', 7, 5),
(41, '2023-08-22 17:03:13.563', '2023-08-22 17:03:13.563', NULL, 'Etika Profesi', 'EF4701', 2, 'Jurusan - W', 7, 9),
(42, '2023-08-22 17:03:13.566', '2023-08-22 17:03:13.566', NULL, 'Pra-Tugas Akhir', 'EF4702', 2, 'Jurusan - W', 7, 9),
(43, '2023-08-22 17:03:13.568', '2023-08-22 17:03:13.568', NULL, 'Tugas Akhir', 'EF4801', 5, 'Jurusan - W', 8, 9),
(44, '2023-08-22 17:14:50.611', '2023-08-22 17:14:50.611', NULL, 'Teknologi Antar Jaringan', 'EF4506', 3, 'Jurusan - P', 5, 2),
(45, '2023-08-22 17:14:50.614', '2023-08-22 17:14:50.614', NULL, 'Jaringan Nirkabel', 'EF4507', 3, 'Jurusan - P', 5, 2),
(46, '2023-08-22 17:14:50.616', '2023-08-22 17:14:50.616', NULL, 'Sistem Terdistribusi', 'EF4508', 3, 'Jurusan - P', 5, 2),
(47, '2023-08-22 17:14:50.619', '2023-08-22 17:14:50.619', NULL, 'Pemrograman Kompetitif', 'EF4509', 3, 'Jurusan - P', 5, 1),
(48, '2023-08-22 17:14:50.622', '2023-08-22 17:14:50.622', NULL, 'Riset Operasi', 'EF4510', 3, 'Jurusan - P', 5, 3),
(49, '2023-08-22 17:14:50.624', '2023-08-22 17:14:50.624', NULL, 'Teknik Pengembangan Game', 'EF4511', 3, 'Jurusan - P', 5, 8),
(50, '2023-08-22 17:14:50.629', '2023-08-22 17:14:50.629', NULL, 'Sistem Enterprise', 'EF4513', 3, 'Jurusan - P', 5, 4),
(51, '2023-08-22 17:14:50.631', '2023-08-22 17:14:50.631', NULL, 'Tata Kelola Teknologi Informasi', 'EF4514', 3, 'Jurusan - P', 5, 4),
(52, '2023-08-22 17:14:50.634', '2023-08-22 17:14:50.634', NULL, 'Manajemen Proyek Perangkat Lunak', 'ER4504', 3, 'Jurusan - P', 5, 6),
(53, '2023-08-22 17:14:50.638', '2023-08-22 17:14:50.638', NULL, 'Rekayasa Kebutuhan', 'ER4201', 3, 'Jurusan - P', 5, 6),
(54, '2023-08-22 17:14:50.641', '2023-08-22 17:14:50.641', NULL, 'Pengolahan Citra dan Visi Komputer', 'EF4517', 3, 'Jurusan - P', 5, 7),
(55, '2023-08-22 17:14:50.644', '2023-08-22 17:14:50.644', NULL, 'Data Mining', 'EF4518', 3, 'Jurusan - P', 5, 7),
(56, '2023-08-22 17:14:50.646', '2023-08-22 17:14:50.646', NULL, 'Komputasi Bergerak', 'EF4604', 3, 'Jurusan - P', 6, 2),
(57, '2023-08-22 17:14:50.649', '2023-08-22 17:14:50.649', NULL, 'Komputasi Pervasif dan Jaringan Sensor', 'EF4605', 3, 'Jurusan - P', 6, 2),
(58, '2023-08-22 17:14:50.651', '2023-08-22 17:14:50.651', NULL, 'Keamanan Jaringan', 'EF4606', 3, 'Jurusan - P', 6, 2),
(59, '2023-08-22 17:14:50.653', '2023-08-22 17:14:50.653', NULL, 'Keamanan Aplikasi', 'EF4607', 3, 'Jurusan - P', 6, 2),
(60, '2023-08-22 17:14:50.656', '2023-08-22 17:14:50.656', NULL, 'Pemrograman Berbasis Antarmuka', 'EF4608', 3, 'Jurusan - P', 6, 1),
(61, '2023-08-22 17:14:50.658', '2023-08-22 17:14:50.658', NULL, 'Simulasi Sistem Dinamis', 'EF4609', 3, 'Jurusan - P', 6, 3),
(62, '2023-08-22 17:14:50.660', '2023-08-22 17:14:50.660', NULL, 'Simulasi Berbasis Agen', 'EF4610', 3, 'Jurusan - P', 6, 3),
(63, '2023-08-22 17:14:50.661', '2023-08-22 17:14:50.661', NULL, 'Teknik Peramalan', 'EF4611', 3, 'Jurusan - P', 6, 3),
(64, '2023-08-22 17:14:50.663', '2023-08-22 17:14:50.663', NULL, 'Animasi Komputer dan Pemodelan 3D', 'EF4612', 3, 'Jurusan - P', 6, 8),
(65, '2023-08-22 17:14:50.665', '2023-08-22 17:14:50.665', NULL, 'Game Edukasi dan Simulasi', 'EF4613', 3, 'Jurusan - P', 6, 8),
(66, '2023-08-22 17:14:50.666', '2023-08-22 17:14:50.666', NULL, 'Desain Pengalaman Pengguna', 'EF4614', 3, 'Jurusan - P', 6, 8),
(67, '2023-08-22 17:14:50.668', '2023-08-22 17:14:50.668', NULL, 'Audit Sistem', 'EF4615', 3, 'Jurusan - P', 6, 4),
(68, '2023-08-22 17:14:50.671', '2023-08-22 17:14:50.671', NULL, 'Basis Data Terdistribusi', 'EF4616', 3, 'Jurusan - P', 6, 4),
(69, '2023-08-22 17:14:50.673', '2023-08-22 17:14:50.673', NULL, 'Sistem Informasi Geografis', 'EF4617', 3, 'Jurusan - P', 6, 4),
(70, '2023-08-22 17:14:50.674', '2023-08-22 17:14:50.674', NULL, 'Kualitas Perangkat Lunak', 'ER4503', 3, 'Jurusan - P', 6, 6),
(71, '2023-08-22 17:14:50.676', '2023-08-22 17:14:50.676', NULL, 'Konstruksi Perangkat Lunak', 'ER4402', 3, 'Jurusan - P', 6, 6),
(72, '2023-08-22 17:14:50.677', '2023-08-22 17:14:50.677', NULL, 'Text Mining', 'EK4501', 3, 'Jurusan - P', 6, 7),
(73, '2023-08-22 17:14:50.679', '2023-08-22 17:14:50.679', NULL, 'Deep Learning', 'EF4619', 3, 'Jurusan - P', 6, 7),
(74, '2023-08-22 17:14:50.680', '2023-08-22 17:14:50.680', NULL, 'Game Engine', 'EF4618', 3, 'Jurusan - P', 6, 8),
(75, '2023-08-22 17:14:50.682', '2023-08-22 17:14:50.682', NULL, 'Teknologi IoT', 'EF4703', 3, 'Jurusan - P', 7, 2),
(76, '2023-08-22 17:14:50.684', '2023-08-22 17:14:50.684', NULL, 'Komputasi Awan', 'EF4704', 3, 'Jurusan - P', 7, 2),
(77, '2023-08-22 17:14:50.687', '2023-08-22 17:14:50.687', NULL, 'Forensik Digital', 'EF4705', 3, 'Jurusan - P', 7, 2),
(78, '2023-08-22 17:14:50.690', '2023-08-22 17:14:50.690', NULL, 'Pemrograman Pengolahan Sinyal', 'EF4706', 3, 'Jurusan - P', 7, 1),
(79, '2023-08-22 17:14:50.692', '2023-08-22 17:14:50.692', NULL, 'Pemrograman Data Sains Terapan', 'EF4707', 3, 'Jurusan - P', 7, 1),
(80, '2023-08-22 17:14:50.694', '2023-08-22 17:14:50.694', NULL, 'Analisis Data Multivariat', 'EF4708', 3, 'Jurusan - P', 7, 3),
(81, '2023-08-22 17:14:50.696', '2023-08-22 17:14:50.696', NULL, 'Simulasi Berorientasi Obyek', 'EF4709', 3, 'Jurusan - P', 7, 3),
(82, '2023-08-22 17:14:50.698', '2023-08-22 17:14:50.698', NULL, 'Game Cerdas', 'EF4710', 3, 'Jurusan - P', 7, 8),
(83, '2023-08-22 17:14:50.699', '2023-08-22 17:14:50.699', NULL, 'Realitas X', 'EF4711', 3, 'Jurusan - P', 7, 8),
(84, '2023-08-22 17:14:50.702', '2023-08-22 17:14:50.702', NULL, 'Big Data', 'EF4712', 3, 'Jurusan - P', 7, 4),
(85, '2023-08-22 17:14:50.705', '2023-08-22 17:14:50.705', NULL, 'Komputasi Kuantum', 'EF4713', 3, 'Jurusan - P', 7, 4),
(86, '2023-08-22 17:14:50.707', '2023-08-22 17:14:50.707', NULL, 'Arsitektur Perangkat Lunak', 'ER4403', 3, 'Jurusan - P', 7, 6),
(87, '2023-08-22 17:14:50.709', '2023-08-22 17:14:50.709', NULL, 'Evolusi Perangkat Lunak', 'ER4505', 3, 'Jurusan - P', 7, 6),
(88, '2023-08-22 17:14:50.711', '2023-08-22 17:14:50.711', NULL, 'Robotika', 'EK4601', 3, 'Jurusan - P', 7, 7),
(160, '2023-09-28 16:58:23.066', '2023-09-28 16:58:23.066', '2023-09-28 17:55:02.920', 'TEST', 'EL1231', 3, 'Jurusan - P', 7, 7),
(161, '2023-09-28 17:58:54.897', '2023-09-28 17:58:54.897', '2023-09-28 18:14:05.953', 'Test', 'EF8989', 4, 'Jurusan - P', 1, 1),
(162, '2023-09-28 18:16:07.139', '2023-09-28 18:16:07.139', NULL, 'Dasar Pemrograman II', 'EF9999', 4, 'Jurusan - P', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `perkuliahans`
--

CREATE TABLE `perkuliahans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `kelas` longtext DEFAULT NULL,
  `sesi` longtext DEFAULT NULL,
  `ruangan` longtext DEFAULT NULL,
  `dosen_id` bigint(20) UNSIGNED DEFAULT NULL,
  `rumpun_id` bigint(20) UNSIGNED DEFAULT NULL,
  `matkul_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `perkuliahans`
--

INSERT INTO `perkuliahans` (`id`, `created_at`, `updated_at`, `deleted_at`, `kelas`, `sesi`, `ruangan`, `dosen_id`, `rumpun_id`, `matkul_id`) VALUES
(16, '2023-11-18 19:47:04.038', '2023-11-18 19:47:04.038', NULL, 'A', '', '', 23, 3, 4),
(17, '2023-11-18 19:47:36.569', '2023-11-18 19:47:36.569', NULL, 'C', '', '', 20, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `ruangans`
--

CREATE TABLE `ruangans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `nomor` longtext DEFAULT NULL,
  `kapasitas` bigint(20) DEFAULT NULL,
  `deskripsi` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ruangans`
--

INSERT INTO `ruangans` (`id`, `created_at`, `updated_at`, `deleted_at`, `nomor`, `kapasitas`, `deskripsi`) VALUES
(6, '2023-10-21 22:28:08.749', '2023-10-21 22:28:16.324', NULL, '101', 50, 'TIF Lantai 1'),
(7, '2023-11-11 21:23:25.514', '2023-11-11 21:23:25.514', NULL, '102', 73, 'Lab Komputer'),
(8, '2023-11-11 21:23:25.519', '2023-11-11 21:23:25.519', NULL, '103', 29, 'Ruang Diskusi'),
(9, '2023-11-11 21:23:25.521', '2023-11-11 21:23:25.521', NULL, '104', 88, 'TIF Lantai 2'),
(10, '2023-11-11 21:23:25.523', '2023-11-11 21:23:25.523', NULL, '105', 42, 'Lab Elektronika'),
(11, '2023-11-11 21:23:25.524', '2023-11-11 21:23:25.524', NULL, '501', 60, 'Ruang Rapat'),
(12, '2023-11-11 21:23:25.527', '2023-11-11 21:23:25.527', NULL, '106', 15, 'TIF Lantai 1'),
(13, '2023-11-11 21:23:25.529', '2023-11-11 21:23:25.529', NULL, '107', 81, 'Ruang Diskusi'),
(14, '2023-11-11 21:23:25.530', '2023-11-11 21:23:25.530', NULL, '108', 37, 'Lab Komputer'),
(15, '2023-11-11 21:23:25.531', '2023-11-11 21:23:25.531', NULL, '301', 66, 'TIF Lantai 2'),
(16, '2023-11-11 21:23:25.534', '2023-11-11 21:23:25.534', NULL, '302', 90, 'Lab Elektronika'),
(17, '2023-11-11 21:23:25.537', '2023-11-11 21:23:25.537', NULL, '111', 20, 'Ruang Rapat'),
(18, '2023-11-11 21:23:25.539', '2023-11-11 21:23:25.539', NULL, '112', 55, 'TIF Lantai 1');

-- --------------------------------------------------------

--
-- Table structure for table `rumpuns`
--

CREATE TABLE `rumpuns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `nama` longtext DEFAULT NULL,
  `kode_rmk` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rumpuns`
--

INSERT INTO `rumpuns` (`id`, `created_at`, `updated_at`, `deleted_at`, `nama`, `kode_rmk`) VALUES
(1, '2023-08-22 15:31:24.351', '2023-08-22 15:31:24.351', NULL, 'Algoritma Pemrograman', 'AP'),
(2, '2023-08-22 15:31:29.758', '2023-08-22 15:31:29.758', NULL, 'Arsitektur dan Jaringan Komputer', 'AJK'),
(3, '2023-08-22 15:31:45.988', '2023-08-22 15:31:45.988', NULL, 'Pemodelan dan Komputasi Terapan', 'PKT'),
(4, '2023-08-22 15:31:49.694', '2023-08-22 15:31:49.694', NULL, 'Manajemen Cerdas Informasi', 'MCI'),
(5, '2023-08-22 15:31:54.795', '2023-08-22 15:31:54.795', NULL, 'SKPB', 'SKPB'),
(6, '2023-08-22 15:31:58.460', '2023-08-22 15:31:58.460', NULL, 'Rekayasa Perangkat Lunak', 'RPL'),
(7, '2023-08-22 15:32:04.901', '2023-08-22 15:32:04.901', NULL, 'Komputasi Cerdas Informasi', 'KCV'),
(8, '2023-08-22 15:32:08.976', '2023-08-22 15:32:08.976', NULL, 'Grafika, Interaksi dan Game', 'GIGA'),
(9, '2023-08-22 15:32:12.721', '2023-08-22 15:32:12.721', NULL, 'DEP', 'DEP'),
(10, '2023-08-22 15:32:16.227', '2023-08-22 15:32:16.227', NULL, 'Komputasi Berbasis Jaringan', 'KBJ'),
(11, '2023-08-27 18:00:51.614', '2023-08-27 18:00:51.614', '2023-09-27 13:04:30.572', 'HALO', 'HL');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosens`
--
ALTER TABLE `dosens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_dosen` (`kode_dosen`),
  ADD KEY `idx_dosens_deleted_at` (`deleted_at`),
  ADD KEY `fk_dosens_rumpun` (`rumpun_id`);

--
-- Indexes for table `matkuls`
--
ALTER TABLE `matkuls`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_mk` (`kode_mk`),
  ADD KEY `idx_matkuls_deleted_at` (`deleted_at`),
  ADD KEY `fk_matkuls_rumpun` (`rumpun_id`);

--
-- Indexes for table `perkuliahans`
--
ALTER TABLE `perkuliahans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_perkuliahans_deleted_at` (`deleted_at`),
  ADD KEY `fk_perkuliahans_matkul` (`matkul_id`),
  ADD KEY `fk_perkuliahans_dosen` (`dosen_id`),
  ADD KEY `fk_perkuliahans_rumpun` (`rumpun_id`);

--
-- Indexes for table `ruangans`
--
ALTER TABLE `ruangans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ruangans_deleted_at` (`deleted_at`);

--
-- Indexes for table `rumpuns`
--
ALTER TABLE `rumpuns`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_rmk` (`kode_rmk`),
  ADD KEY `idx_rumpuns_deleted_at` (`deleted_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dosens`
--
ALTER TABLE `dosens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `matkuls`
--
ALTER TABLE `matkuls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `perkuliahans`
--
ALTER TABLE `perkuliahans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `ruangans`
--
ALTER TABLE `ruangans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `rumpuns`
--
ALTER TABLE `rumpuns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dosens`
--
ALTER TABLE `dosens`
  ADD CONSTRAINT `fk_dosens_rumpun` FOREIGN KEY (`rumpun_id`) REFERENCES `rumpuns` (`id`);

--
-- Constraints for table `matkuls`
--
ALTER TABLE `matkuls`
  ADD CONSTRAINT `fk_matkuls_rumpun` FOREIGN KEY (`rumpun_id`) REFERENCES `rumpuns` (`id`);

--
-- Constraints for table `perkuliahans`
--
ALTER TABLE `perkuliahans`
  ADD CONSTRAINT `fk_perkuliahans_dosen` FOREIGN KEY (`dosen_id`) REFERENCES `dosens` (`id`),
  ADD CONSTRAINT `fk_perkuliahans_matkul` FOREIGN KEY (`matkul_id`) REFERENCES `matkuls` (`id`),
  ADD CONSTRAINT `fk_perkuliahans_rumpun` FOREIGN KEY (`rumpun_id`) REFERENCES `rumpuns` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
