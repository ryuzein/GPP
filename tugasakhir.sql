-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 10, 2024 at 01:41 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugasakhir`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_08_19_000000_create_failed_jobs_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2022_10_31_061811_create_menu_table', 1),
(4, '2022_11_01_041110_create_table_role', 1),
(5, '2022_11_01_083314_create_table_user', 1),
(6, '2022_11_03_023905_create_table_submenu', 1),
(7, '2022_11_03_064417_create_tbl_akses', 1),
(8, '2022_11_08_024215_create_tbl_web', 1),
(9, '2022_11_15_131148_create_tbl_jenisbarang', 1),
(10, '2022_11_15_173700_create_tbl_satuan', 1),
(11, '2022_11_15_180434_create_tbl_merk', 1),
(12, '2022_11_16_120018_create_tbl_appreance', 1),
(13, '2022_11_25_141731_create_tbl_barang', 1),
(14, '2022_11_26_011349_create_tbl_customer', 1),
(15, '2022_11_28_151108_create_tbl_barangmasuk', 1),
(16, '2022_11_30_115904_create_tbl_barangkeluar', 1),
(17, '2022_12_02_115904_create_tbl_pengajuan', 1),
(18, '2024_06_07_075617_create_tbl_cabang', 2),
(19, '2022_12_01_115904_create_tbl_teknisi', 3),
(20, '2024_06_08_091723_create_kendaraan_pengirimen_table', 3),
(21, '2024_06_09_032942_create_tbl_sopir', 4),
(22, '2024_06_09_092008_create_tbl_pengajuan', 5),
(23, '2024_06_07_075618_create_tbl_cabang', 6),
(24, '2024_06_09_134145_create_tbl_kendaraaan', 7);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_akses`
--

CREATE TABLE `tbl_akses` (
  `akses_id` int UNSIGNED NOT NULL,
  `menu_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submenu_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `othermenu_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akses_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_akses`
--

INSERT INTO `tbl_akses` (`akses_id`, `menu_id`, `submenu_id`, `othermenu_id`, `role_id`, `akses_type`, `created_at`, `updated_at`) VALUES
(5, '1667444041', NULL, NULL, '2', 'view', '2024-06-06 20:08:47', '2024-06-06 20:08:47'),
(6, '1667444041', NULL, NULL, '2', 'create', '2024-06-06 20:08:47', '2024-06-06 20:08:47'),
(7, '1667444041', NULL, NULL, '2', 'update', '2024-06-06 20:08:47', '2024-06-06 20:08:47'),
(8, '1667444041', NULL, NULL, '2', 'delete', '2024-06-06 20:08:47', '2024-06-06 20:08:47'),
(9, '1667444041', NULL, NULL, '3', 'view', '2024-06-06 20:08:47', '2024-06-06 20:08:47'),
(10, '1667444041', NULL, NULL, '3', 'create', '2024-06-06 20:08:47', '2024-06-06 20:08:47'),
(11, '1667444041', NULL, NULL, '3', 'update', '2024-06-06 20:08:47', '2024-06-06 20:08:47'),
(12, '1667444041', NULL, NULL, '3', 'delete', '2024-06-06 20:08:47', '2024-06-06 20:08:47'),
(14, NULL, NULL, '1', '2', 'view', '2024-06-06 20:08:47', '2024-06-06 20:08:47'),
(19, NULL, NULL, '2', '2', 'view', '2024-06-06 20:08:47', '2024-06-06 20:08:47'),
(20, NULL, NULL, '2', '2', 'create', '2024-06-06 20:08:47', '2024-06-06 20:08:47'),
(21, NULL, NULL, '2', '2', 'update', '2024-06-06 20:08:47', '2024-06-06 20:08:47'),
(22, NULL, NULL, '2', '2', 'delete', '2024-06-06 20:08:47', '2024-06-06 20:08:47'),
(27, NULL, NULL, '3', '2', 'view', '2024-06-06 20:08:47', '2024-06-06 20:08:47'),
(28, NULL, NULL, '3', '2', 'create', '2024-06-06 20:08:47', '2024-06-06 20:08:47'),
(29, NULL, NULL, '3', '2', 'update', '2024-06-06 20:08:47', '2024-06-06 20:08:47'),
(30, NULL, NULL, '3', '2', 'delete', '2024-06-06 20:08:47', '2024-06-06 20:08:47'),
(35, NULL, NULL, '4', '2', 'view', '2024-06-06 20:08:47', '2024-06-06 20:08:47'),
(36, NULL, NULL, '4', '2', 'create', '2024-06-06 20:08:47', '2024-06-06 20:08:47'),
(37, NULL, NULL, '4', '2', 'update', '2024-06-06 20:08:47', '2024-06-06 20:08:47'),
(38, NULL, NULL, '4', '2', 'delete', '2024-06-06 20:08:47', '2024-06-06 20:08:47'),
(47, NULL, NULL, '6', '2', 'view', '2024-06-06 20:08:47', '2024-06-06 20:08:47'),
(48, NULL, NULL, '6', '2', 'create', '2024-06-06 20:08:47', '2024-06-06 20:08:47'),
(49, NULL, NULL, '6', '2', 'update', '2024-06-06 20:08:47', '2024-06-06 20:08:47'),
(50, NULL, NULL, '6', '2', 'delete', '2024-06-06 20:08:47', '2024-06-06 20:08:47'),
(1426, '1667444041', NULL, NULL, '1', 'view', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1427, '1667444041', NULL, NULL, '1', 'create', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1428, '1667444041', NULL, NULL, '1', 'update', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1429, '1667444041', NULL, NULL, '1', 'delete', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1430, '1717925402', NULL, NULL, '1', 'view', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1431, '1717925402', NULL, NULL, '1', 'create', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1432, '1717925402', NULL, NULL, '1', 'update', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1433, '1717925402', NULL, NULL, '1', 'delete', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1434, '1717732172', NULL, NULL, '1', 'view', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1435, '1717732172', NULL, NULL, '1', 'create', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1436, '1717732172', NULL, NULL, '1', 'update', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1437, '1717732172', NULL, NULL, '1', 'delete', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1438, '1717901633', NULL, NULL, '1', 'view', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1439, '1717901633', NULL, NULL, '1', 'create', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1440, '1717901633', NULL, NULL, '1', 'update', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1441, '1717901633', NULL, NULL, '1', 'delete', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1442, '1717925639', NULL, NULL, '1', 'view', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1443, '1717925639', NULL, NULL, '1', 'create', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1444, '1717925639', NULL, NULL, '1', 'update', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1445, '1717925639', NULL, NULL, '1', 'delete', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1446, '1717928150', NULL, NULL, '1', 'view', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1447, '1717928150', NULL, NULL, '1', 'create', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1448, '1717928150', NULL, NULL, '1', 'update', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1449, '1717928150', NULL, NULL, '1', 'delete', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1450, '1717942740', NULL, NULL, '1', 'view', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1451, '1717942740', NULL, NULL, '1', 'create', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1452, '1717942740', NULL, NULL, '1', 'update', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1453, '1717942740', NULL, NULL, '1', 'delete', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1454, NULL, '14', NULL, '1', 'view', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1455, NULL, '14', NULL, '1', 'create', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1456, NULL, '14', NULL, '1', 'update', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1457, NULL, '14', NULL, '1', 'delete', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1458, NULL, '47', NULL, '1', 'view', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1459, NULL, '47', NULL, '1', 'create', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1460, NULL, '47', NULL, '1', 'update', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1461, NULL, '47', NULL, '1', 'delete', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1462, NULL, '55', NULL, '1', 'view', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1463, NULL, '55', NULL, '1', 'create', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1464, NULL, '55', NULL, '1', 'update', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1465, NULL, '55', NULL, '1', 'delete', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1466, NULL, '15', NULL, '1', 'view', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1467, NULL, '15', NULL, '1', 'create', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1468, NULL, '15', NULL, '1', 'update', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1469, NULL, '15', NULL, '1', 'delete', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1470, NULL, '48', NULL, '1', 'view', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1471, NULL, '48', NULL, '1', 'create', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1472, NULL, '48', NULL, '1', 'update', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1473, NULL, '48', NULL, '1', 'delete', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1474, NULL, '56', NULL, '1', 'view', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1475, NULL, '56', NULL, '1', 'create', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1476, NULL, '56', NULL, '1', 'update', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1477, NULL, '56', NULL, '1', 'delete', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1478, NULL, '16', NULL, '1', 'view', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1479, NULL, '16', NULL, '1', 'create', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1480, NULL, '16', NULL, '1', 'update', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1481, NULL, '16', NULL, '1', 'delete', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1482, NULL, '49', NULL, '1', 'view', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1483, NULL, '49', NULL, '1', 'create', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1484, NULL, '49', NULL, '1', 'update', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1485, NULL, '49', NULL, '1', 'delete', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1486, NULL, '17', NULL, '1', 'view', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1487, NULL, '17', NULL, '1', 'create', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1488, NULL, '17', NULL, '1', 'update', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1489, NULL, '17', NULL, '1', 'delete', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1490, NULL, '50', NULL, '1', 'view', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1491, NULL, '50', NULL, '1', 'create', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1492, NULL, '50', NULL, '1', 'update', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1493, NULL, '50', NULL, '1', 'delete', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1494, NULL, '51', NULL, '1', 'view', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1495, NULL, '51', NULL, '1', 'create', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1496, NULL, '51', NULL, '1', 'update', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1497, NULL, '51', NULL, '1', 'delete', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1498, NULL, NULL, '1', '1', 'view', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1499, NULL, NULL, '2', '1', 'view', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1500, NULL, NULL, '3', '1', 'view', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1501, NULL, NULL, '4', '1', 'view', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1502, NULL, NULL, '5', '1', 'view', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1503, NULL, NULL, '6', '1', 'view', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1504, NULL, NULL, '1', '1', 'create', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1505, NULL, NULL, '2', '1', 'create', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1506, NULL, NULL, '3', '1', 'create', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1507, NULL, NULL, '4', '1', 'create', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1508, NULL, NULL, '5', '1', 'create', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1509, NULL, NULL, '6', '1', 'create', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1510, NULL, NULL, '1', '1', 'update', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1511, NULL, NULL, '2', '1', 'update', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1512, NULL, NULL, '3', '1', 'update', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1513, NULL, NULL, '4', '1', 'update', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1514, NULL, NULL, '5', '1', 'update', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1515, NULL, NULL, '6', '1', 'update', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1516, NULL, NULL, '1', '1', 'delete', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1517, NULL, NULL, '2', '1', 'delete', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1518, NULL, NULL, '3', '1', 'delete', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1519, NULL, NULL, '4', '1', 'delete', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1520, NULL, NULL, '5', '1', 'delete', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1521, NULL, NULL, '6', '1', 'delete', '2024-06-09 07:19:20', '2024-06-09 07:19:20'),
(1522, '1717732172', NULL, NULL, '2', 'view', '2024-06-09 07:22:39', '2024-06-09 07:22:39'),
(1523, NULL, '16', NULL, '2', 'view', '2024-06-09 07:22:46', '2024-06-09 07:22:46'),
(1524, NULL, '17', NULL, '2', 'view', '2024-06-09 07:22:54', '2024-06-09 07:22:54');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appreance`
--

CREATE TABLE `tbl_appreance` (
  `appreance_id` int UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `appreance_layout` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appreance_theme` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appreance_menu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appreance_header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appreance_sidestyle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `barang_id` int UNSIGNED NOT NULL,
  `jenisbarang_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `satuan_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merk_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barang_kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang_harga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang_stok` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang_gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`barang_id`, `jenisbarang_id`, `satuan_id`, `merk_id`, `barang_kode`, `barang_nama`, `barang_slug`, `barang_harga`, `barang_stok`, `barang_gambar`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '1', 'BRG-1717902270081', 'AQUA 1500 ML', 'aqua-1500-ml', '30000', '0', 'r9GpqTsB2IxGsmaDYlbEiyIcRkR85hsdi3srtSH6.png', '2024-06-08 20:05:03', '2024-06-08 20:05:03'),
(2, '1', '3', '3', 'BRG-1717902593572', 'YANTO', 'yanto', '100', '0', 'image.png', '2024-06-08 20:10:13', '2024-06-08 20:10:13'),
(3, '2', '1', '2', 'KND-1717956633128', 'YANTO', 'yanto', '1000', '0', 'image.png', '2024-06-09 11:11:01', '2024-06-09 11:11:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barangkeluar`
--

CREATE TABLE `tbl_barangkeluar` (
  `bk_id` int UNSIGNED NOT NULL,
  `bk_kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang_kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bk_tanggal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bk_tujuan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bk_jumlah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barangmasuk`
--

CREATE TABLE `tbl_barangmasuk` (
  `bm_id` int UNSIGNED NOT NULL,
  `bm_kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang_kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bm_tanggal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bm_jumlah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_barangmasuk`
--

INSERT INTO `tbl_barangmasuk` (`bm_id`, `bm_kode`, `barang_kode`, `customer_id`, `bm_tanggal`, `bm_jumlah`, `created_at`, `updated_at`) VALUES
(1, 'BM-1717902313037', 'BRG-1717902270081', '1', '2024-06-09', '1', '2024-06-08 20:05:47', '2024-06-08 20:05:47'),
(2, 'BM-1717956678664', 'KND-1717956633128', '1', '2024-06-08', '100', '2024-06-09 11:12:23', '2024-06-09 11:12:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cabang`
--

CREATE TABLE `tbl_cabang` (
  `cabang_id` int UNSIGNED NOT NULL,
  `cabang_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cabang_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cabang_alamat` text COLLATE utf8mb4_unicode_ci,
  `cabang_kode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_cabang`
--

INSERT INTO `tbl_cabang` (`cabang_id`, `cabang_nama`, `cabang_slug`, `cabang_alamat`, `cabang_kode`, `created_at`, `updated_at`) VALUES
(1, 'Madiun', 'madiun', 'JL NASIONAL BAGI', '078', '2024-06-09 03:21:45', '2024-06-09 03:21:45');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int UNSIGNED NOT NULL,
  `customer_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_alamat` text COLLATE utf8mb4_unicode_ci,
  `customer_notelp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_nama`, `customer_slug`, `customer_alamat`, `customer_notelp`, `created_at`, `updated_at`) VALUES
(1, 'PONO', 'pono', 'SADAS', 'DSAOK', '2024-06-06 20:45:00', '2024-06-06 20:45:00'),
(2, 'asda', 'asda', 'sad', 'asd', '2024-06-08 19:33:49', '2024-06-08 19:33:49');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jenisbarang`
--

CREATE TABLE `tbl_jenisbarang` (
  `jenisbarang_id` int UNSIGNED NOT NULL,
  `jenisbarang_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenisbarang_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenisbarang_keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_jenisbarang`
--

INSERT INTO `tbl_jenisbarang` (`jenisbarang_id`, `jenisbarang_nama`, `jenisbarang_slug`, `jenisbarang_keterangan`, `created_at`, `updated_at`) VALUES
(2, 'L 300', 'l300', NULL, '2024-06-09 18:06:34', '2024-06-09 18:06:34');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kendaraan`
--

CREATE TABLE `tbl_kendaraan` (
  `kendaraan_id` int UNSIGNED NOT NULL,
  `kendaraan_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kendaraan_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kendaraan_plat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `menu_id` int UNSIGNED NOT NULL,
  `menu_judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_redirect` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_sort` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`menu_id`, `menu_judul`, `menu_slug`, `menu_icon`, `menu_redirect`, `menu_sort`, `menu_type`, `created_at`, `updated_at`) VALUES
(1667444041, 'Dashboard', 'dashboard', 'home', '/dashboard', '1', '1', '2024-06-06 20:08:47', '2024-06-09 02:30:17'),
(1717732172, 'Transaksi', 'transaksi', 'cpu', '-', '3', '2', '2024-06-06 20:49:32', '2024-06-09 02:30:25'),
(1717901633, 'Teknisi', 'teknisi', 'home', '/teknisi', '4', '1', '2024-06-08 19:53:53', '2024-06-09 02:30:17'),
(1717925402, 'Master Data', 'master-data', 'database', '-', '2', '2', '2024-06-09 02:30:02', '2024-06-09 02:30:25'),
(1717925639, 'Master Kendaraan', 'master-kendaraan', 'car', '-', '5', '2', '2024-06-09 02:33:59', '2024-06-09 02:33:59'),
(1717928150, 'Cabang', 'cabang', 'map-pin', '/cabang', '6', '1', '2024-06-09 03:15:50', '2024-06-09 03:15:50'),
(1717942740, 'Customer', 'customer', 'user', '/customer', '7', '1', '2024-06-09 07:19:00', '2024-06-09 07:19:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_merk`
--

CREATE TABLE `tbl_merk` (
  `merk_id` int UNSIGNED NOT NULL,
  `merk_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk_keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_merk`
--

INSERT INTO `tbl_merk` (`merk_id`, `merk_nama`, `merk_slug`, `merk_keterangan`, `created_at`, `updated_at`) VALUES
(1, 'AQUA', 'aqua', NULL, '2024-06-06 20:46:20', '2024-06-06 20:46:20'),
(2, 'ABC', 'abc', NULL, '2024-06-06 20:46:26', '2024-06-06 20:46:26'),
(3, 'MIZONE', 'mizone', NULL, '2024-06-06 20:46:41', '2024-06-06 20:46:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengajuan`
--

CREATE TABLE `tbl_pengajuan` (
  `pengajuan_id` int UNSIGNED NOT NULL,
  `pengajuan_nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengajuan_jenis_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengajuan_tujuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role`
--

CREATE TABLE `tbl_role` (
  `role_id` int UNSIGNED NOT NULL,
  `role_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_desc` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_role`
--

INSERT INTO `tbl_role` (`role_id`, `role_title`, `role_slug`, `role_desc`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'super-admin', '-', '2024-06-06 20:08:47', '2024-06-06 20:08:47'),
(2, 'Admin', 'admin', '-', '2024-06-06 20:08:47', '2024-06-06 20:08:47'),
(3, 'Operator', 'operator', '-', '2024-06-06 20:08:47', '2024-06-06 20:08:47');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_satuan`
--

CREATE TABLE `tbl_satuan` (
  `satuan_id` int UNSIGNED NOT NULL,
  `satuan_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `satuan_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `satuan_keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_satuan`
--

INSERT INTO `tbl_satuan` (`satuan_id`, `satuan_nama`, `satuan_slug`, `satuan_keterangan`, `created_at`, `updated_at`) VALUES
(1, 'AE 1992 SH', 'ae1992sh', NULL, '2024-06-06 20:45:57', '2024-06-06 20:45:57');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sopir`
--

CREATE TABLE `tbl_sopir` (
  `sopir_id` int UNSIGNED NOT NULL,
  `sopir_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sopir_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sopir_keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_sopir`
--

INSERT INTO `tbl_sopir` (`sopir_id`, `sopir_nama`, `sopir_slug`, `sopir_keterangan`, `created_at`, `updated_at`) VALUES
(1, 'pono', 'pono', 'asd', '2024-06-09 02:26:38', '2024-06-09 02:26:38'),
(2, 'Yanto', 'yanto', NULL, '2024-06-09 02:34:40', '2024-06-09 02:34:40'),
(3, 'tanto', 'tanto', NULL, '2024-06-09 07:11:42', '2024-06-09 07:11:42');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_submenu`
--

CREATE TABLE `tbl_submenu` (
  `submenu_id` int UNSIGNED NOT NULL,
  `menu_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submenu_judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submenu_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submenu_redirect` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `submenu_sort` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_submenu`
--

INSERT INTO `tbl_submenu` (`submenu_id`, `menu_id`, `submenu_judul`, `submenu_slug`, `submenu_redirect`, `submenu_sort`, `created_at`, `updated_at`) VALUES
(14, '1717732172', 'Barang Masuk', 'barang-masuk', '/barang-masuk', '1', '2024-06-06 20:53:18', '2024-06-06 20:53:18'),
(15, '1717732172', 'Barang Keluar', 'barang-keluar', '/barang-keluar', '2', '2024-06-06 20:53:18', '2024-06-06 20:53:18'),
(16, '1717732172', 'Laporan Barang Masuk', 'laporan-barang-masuk', '/lap-barang-masuk', '3', '2024-06-06 20:53:18', '2024-06-06 20:53:18'),
(17, '1717732172', 'Laporan Barang Keluar', 'laporan-barang-keluar', '/lap-barang-keluar', '4', '2024-06-06 20:53:18', '2024-06-06 20:53:18'),
(47, '1717925402', 'Jenis Barang', 'jenis-barang', '/jenisbarang', '1', '2024-06-09 02:31:57', '2024-06-09 02:31:57'),
(48, '1717925402', 'Satuan', 'satuan', '/satuan', '2', '2024-06-09 02:31:57', '2024-06-09 02:31:57'),
(49, '1717925402', 'Merk', 'merk', '/merk', '3', '2024-06-09 02:31:57', '2024-06-09 02:31:57'),
(50, '1717925402', 'Barang', 'barang', '/barang', '4', '2024-06-09 02:31:57', '2024-06-09 02:31:57'),
(51, '1717925402', 'Sopir', 'sopir', '/sopir', '5', '2024-06-09 02:31:57', '2024-06-09 02:31:57'),
(55, '1717925639', 'Sopir', 'sopir', '/sopir', '1', '2024-06-09 07:10:00', '2024-06-09 07:10:00'),
(56, '1717925639', 'Kendaraan', 'kendaraan', '/kendaraan', '2', '2024-06-09 07:10:00', '2024-06-09 07:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teknisi`
--

CREATE TABLE `tbl_teknisi` (
  `teknisi_id` int UNSIGNED NOT NULL,
  `teknisi_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teknisi_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teknisi_alamat` text COLLATE utf8mb4_unicode_ci,
  `teknisi_notelp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_teknisi`
--

INSERT INTO `tbl_teknisi` (`teknisi_id`, `teknisi_nama`, `teknisi_slug`, `teknisi_alamat`, `teknisi_notelp`, `created_at`, `updated_at`) VALUES
(1, 'asd', 'asd', 'jl. mataram madiun', '082245502988', '2024-06-08 19:55:36', '2024-06-08 19:55:36');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int UNSIGNED NOT NULL,
  `role_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_nmlengkap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `role_id`, `user_nmlengkap`, `user_nama`, `user_email`, `user_foto`, `user_password`, `created_at`, `updated_at`) VALUES
(1, '1', 'Super Administrator', 'superadmin', 'superadmin@gmail.com', 'undraw_profile.svg', '25d55ad283aa400af464c76d713c07ad', '2024-06-06 20:08:47', '2024-06-06 20:08:47'),
(2, '2', 'Administrator', 'admin', 'admin@gmail.com', 'undraw_profile.svg', '25d55ad283aa400af464c76d713c07ad', '2024-06-06 20:08:47', '2024-06-06 20:08:47'),
(3, '3', 'Operator', 'operator', 'operator@gmail.com', 'undraw_profile.svg', '25d55ad283aa400af464c76d713c07ad', '2024-06-06 20:08:47', '2024-06-06 20:08:47');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_web`
--

CREATE TABLE `tbl_web` (
  `web_id` int UNSIGNED NOT NULL,
  `web_nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `web_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `web_deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_web`
--

INSERT INTO `tbl_web` (`web_id`, `web_nama`, `web_logo`, `web_deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'Aplikasi Gudang', 'jhor1prN3t0da6EUB95BuL2OafNrwhHuQKkdG7mB.png', NULL, '2024-06-06 20:08:47', '2024-06-08 01:48:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tbl_akses`
--
ALTER TABLE `tbl_akses`
  ADD PRIMARY KEY (`akses_id`);

--
-- Indexes for table `tbl_appreance`
--
ALTER TABLE `tbl_appreance`
  ADD PRIMARY KEY (`appreance_id`);

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`barang_id`);

--
-- Indexes for table `tbl_barangkeluar`
--
ALTER TABLE `tbl_barangkeluar`
  ADD PRIMARY KEY (`bk_id`);

--
-- Indexes for table `tbl_barangmasuk`
--
ALTER TABLE `tbl_barangmasuk`
  ADD PRIMARY KEY (`bm_id`);

--
-- Indexes for table `tbl_cabang`
--
ALTER TABLE `tbl_cabang`
  ADD PRIMARY KEY (`cabang_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_jenisbarang`
--
ALTER TABLE `tbl_jenisbarang`
  ADD PRIMARY KEY (`jenisbarang_id`);

--
-- Indexes for table `tbl_kendaraan`
--
ALTER TABLE `tbl_kendaraan`
  ADD PRIMARY KEY (`kendaraan_id`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `tbl_merk`
--
ALTER TABLE `tbl_merk`
  ADD PRIMARY KEY (`merk_id`);

--
-- Indexes for table `tbl_pengajuan`
--
ALTER TABLE `tbl_pengajuan`
  ADD PRIMARY KEY (`pengajuan_id`);

--
-- Indexes for table `tbl_role`
--
ALTER TABLE `tbl_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `tbl_satuan`
--
ALTER TABLE `tbl_satuan`
  ADD PRIMARY KEY (`satuan_id`);

--
-- Indexes for table `tbl_sopir`
--
ALTER TABLE `tbl_sopir`
  ADD PRIMARY KEY (`sopir_id`);

--
-- Indexes for table `tbl_submenu`
--
ALTER TABLE `tbl_submenu`
  ADD PRIMARY KEY (`submenu_id`);

--
-- Indexes for table `tbl_teknisi`
--
ALTER TABLE `tbl_teknisi`
  ADD PRIMARY KEY (`teknisi_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_web`
--
ALTER TABLE `tbl_web`
  ADD PRIMARY KEY (`web_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_akses`
--
ALTER TABLE `tbl_akses`
  MODIFY `akses_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1525;

--
-- AUTO_INCREMENT for table `tbl_appreance`
--
ALTER TABLE `tbl_appreance`
  MODIFY `appreance_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  MODIFY `barang_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_barangkeluar`
--
ALTER TABLE `tbl_barangkeluar`
  MODIFY `bk_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_barangmasuk`
--
ALTER TABLE `tbl_barangmasuk`
  MODIFY `bm_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_cabang`
--
ALTER TABLE `tbl_cabang`
  MODIFY `cabang_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_jenisbarang`
--
ALTER TABLE `tbl_jenisbarang`
  MODIFY `jenisbarang_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_kendaraan`
--
ALTER TABLE `tbl_kendaraan`
  MODIFY `kendaraan_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `menu_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1717942741;

--
-- AUTO_INCREMENT for table `tbl_merk`
--
ALTER TABLE `tbl_merk`
  MODIFY `merk_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_pengajuan`
--
ALTER TABLE `tbl_pengajuan`
  MODIFY `pengajuan_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_role`
--
ALTER TABLE `tbl_role`
  MODIFY `role_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_satuan`
--
ALTER TABLE `tbl_satuan`
  MODIFY `satuan_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_sopir`
--
ALTER TABLE `tbl_sopir`
  MODIFY `sopir_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_submenu`
--
ALTER TABLE `tbl_submenu`
  MODIFY `submenu_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tbl_teknisi`
--
ALTER TABLE `tbl_teknisi`
  MODIFY `teknisi_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_web`
--
ALTER TABLE `tbl_web`
  MODIFY `web_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
