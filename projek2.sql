-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 03, 2024 at 02:37 AM
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
-- Database: `projek2`
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
(16, '2022_11_30_115904_create_tbl_barangkeluar', 1);

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
(205, '1717329359', NULL, NULL, '2', 'view', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(206, '1717329359', NULL, NULL, '2', 'create', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(207, '1717329359', NULL, NULL, '2', 'update', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(208, '1717329359', NULL, NULL, '2', 'delete', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(209, '1717329497', NULL, NULL, '2', 'view', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(210, '1717329497', NULL, NULL, '2', 'create', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(211, '1717329497', NULL, NULL, '2', 'update', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(212, '1717329497', NULL, NULL, '2', 'delete', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(213, '1717330039', NULL, NULL, '2', 'view', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(214, '1717330039', NULL, NULL, '2', 'create', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(215, '1717330039', NULL, NULL, '2', 'update', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(216, '1717330039', NULL, NULL, '2', 'delete', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(217, '1717330306', NULL, NULL, '2', 'view', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(218, '1717330306', NULL, NULL, '2', 'create', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(219, '1717330306', NULL, NULL, '2', 'update', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(220, '1717330306', NULL, NULL, '2', 'delete', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(221, NULL, '2', NULL, '2', 'view', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(222, NULL, '2', NULL, '2', 'create', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(223, NULL, '2', NULL, '2', 'update', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(224, NULL, '2', NULL, '2', 'delete', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(225, NULL, '6', NULL, '2', 'view', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(226, NULL, '6', NULL, '2', 'create', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(227, NULL, '6', NULL, '2', 'update', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(228, NULL, '6', NULL, '2', 'delete', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(229, NULL, '3', NULL, '2', 'view', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(230, NULL, '3', NULL, '2', 'create', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(231, NULL, '3', NULL, '2', 'update', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(232, NULL, '3', NULL, '2', 'delete', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(233, NULL, '7', NULL, '2', 'view', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(234, NULL, '7', NULL, '2', 'create', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(235, NULL, '7', NULL, '2', 'update', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(236, NULL, '7', NULL, '2', 'delete', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(237, NULL, '4', NULL, '2', 'view', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(238, NULL, '4', NULL, '2', 'create', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(239, NULL, '4', NULL, '2', 'update', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(240, NULL, '4', NULL, '2', 'delete', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(241, NULL, '8', NULL, '2', 'view', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(242, NULL, '8', NULL, '2', 'create', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(243, NULL, '8', NULL, '2', 'update', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(244, NULL, '8', NULL, '2', 'delete', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(245, NULL, '5', NULL, '2', 'view', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(246, NULL, '5', NULL, '2', 'create', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(247, NULL, '5', NULL, '2', 'update', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(248, NULL, '5', NULL, '2', 'delete', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(249, NULL, '9', NULL, '2', 'view', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(250, NULL, '9', NULL, '2', 'create', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(251, NULL, '9', NULL, '2', 'update', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(252, NULL, '9', NULL, '2', 'delete', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(253, NULL, '10', NULL, '2', 'view', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(254, NULL, '10', NULL, '2', 'create', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(255, NULL, '10', NULL, '2', 'update', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(256, NULL, '10', NULL, '2', 'delete', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(257, NULL, NULL, '1', '2', 'view', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(258, NULL, NULL, '2', '2', 'view', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(259, NULL, NULL, '3', '2', 'view', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(260, NULL, NULL, '4', '2', 'view', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(261, NULL, NULL, '5', '2', 'view', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(262, NULL, NULL, '6', '2', 'view', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(263, NULL, NULL, '1', '2', 'create', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(264, NULL, NULL, '2', '2', 'create', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(265, NULL, NULL, '3', '2', 'create', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(266, NULL, NULL, '4', '2', 'create', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(267, NULL, NULL, '5', '2', 'create', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(268, NULL, NULL, '6', '2', 'create', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(269, NULL, NULL, '1', '2', 'update', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(270, NULL, NULL, '2', '2', 'update', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(271, NULL, NULL, '3', '2', 'update', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(272, NULL, NULL, '4', '2', 'update', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(273, NULL, NULL, '5', '2', 'update', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(274, NULL, NULL, '6', '2', 'update', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(275, NULL, NULL, '1', '2', 'delete', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(276, NULL, NULL, '2', '2', 'delete', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(277, NULL, NULL, '3', '2', 'delete', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(278, NULL, NULL, '4', '2', 'delete', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(279, NULL, NULL, '5', '2', 'delete', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(280, NULL, NULL, '6', '2', 'delete', '2024-06-02 05:13:17', '2024-06-02 05:13:17'),
(281, '1717329359', NULL, NULL, '1', 'view', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(282, '1717329359', NULL, NULL, '1', 'create', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(283, '1717329359', NULL, NULL, '1', 'update', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(284, '1717329359', NULL, NULL, '1', 'delete', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(285, '1717329497', NULL, NULL, '1', 'view', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(286, '1717329497', NULL, NULL, '1', 'create', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(287, '1717329497', NULL, NULL, '1', 'update', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(288, '1717329497', NULL, NULL, '1', 'delete', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(289, '1717330039', NULL, NULL, '1', 'view', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(290, '1717330039', NULL, NULL, '1', 'create', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(291, '1717330039', NULL, NULL, '1', 'update', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(292, '1717330039', NULL, NULL, '1', 'delete', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(293, '1717330306', NULL, NULL, '1', 'view', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(294, '1717330306', NULL, NULL, '1', 'create', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(295, '1717330306', NULL, NULL, '1', 'update', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(296, '1717330306', NULL, NULL, '1', 'delete', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(297, NULL, '2', NULL, '1', 'view', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(298, NULL, '2', NULL, '1', 'create', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(299, NULL, '2', NULL, '1', 'update', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(300, NULL, '2', NULL, '1', 'delete', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(301, NULL, '6', NULL, '1', 'view', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(302, NULL, '6', NULL, '1', 'create', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(303, NULL, '6', NULL, '1', 'update', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(304, NULL, '6', NULL, '1', 'delete', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(305, NULL, '3', NULL, '1', 'view', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(307, NULL, '3', NULL, '1', 'update', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(308, NULL, '3', NULL, '1', 'delete', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(309, NULL, '7', NULL, '1', 'view', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(310, NULL, '7', NULL, '1', 'create', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(311, NULL, '7', NULL, '1', 'update', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(312, NULL, '7', NULL, '1', 'delete', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(313, NULL, '4', NULL, '1', 'view', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(314, NULL, '4', NULL, '1', 'create', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(315, NULL, '4', NULL, '1', 'update', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(316, NULL, '4', NULL, '1', 'delete', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(317, NULL, '8', NULL, '1', 'view', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(318, NULL, '8', NULL, '1', 'create', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(319, NULL, '8', NULL, '1', 'update', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(320, NULL, '8', NULL, '1', 'delete', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(321, NULL, '5', NULL, '1', 'view', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(322, NULL, '5', NULL, '1', 'create', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(323, NULL, '5', NULL, '1', 'update', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(324, NULL, '5', NULL, '1', 'delete', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(325, NULL, '9', NULL, '1', 'view', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(326, NULL, '9', NULL, '1', 'create', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(327, NULL, '9', NULL, '1', 'update', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(328, NULL, '9', NULL, '1', 'delete', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(329, NULL, '10', NULL, '1', 'view', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(330, NULL, '10', NULL, '1', 'create', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(331, NULL, '10', NULL, '1', 'update', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(332, NULL, '10', NULL, '1', 'delete', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(333, NULL, NULL, '1', '1', 'view', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(334, NULL, NULL, '2', '1', 'view', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(335, NULL, NULL, '3', '1', 'view', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(336, NULL, NULL, '4', '1', 'view', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(337, NULL, NULL, '5', '1', 'view', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(338, NULL, NULL, '6', '1', 'view', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(339, NULL, NULL, '1', '1', 'create', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(340, NULL, NULL, '2', '1', 'create', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(341, NULL, NULL, '3', '1', 'create', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(342, NULL, NULL, '4', '1', 'create', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(343, NULL, NULL, '5', '1', 'create', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(344, NULL, NULL, '6', '1', 'create', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(345, NULL, NULL, '1', '1', 'update', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(346, NULL, NULL, '2', '1', 'update', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(347, NULL, NULL, '3', '1', 'update', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(348, NULL, NULL, '4', '1', 'update', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(349, NULL, NULL, '5', '1', 'update', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(350, NULL, NULL, '6', '1', 'update', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(351, NULL, NULL, '1', '1', 'delete', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(352, NULL, NULL, '2', '1', 'delete', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(353, NULL, NULL, '3', '1', 'delete', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(354, NULL, NULL, '4', '1', 'delete', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(355, NULL, NULL, '5', '1', 'delete', '2024-06-02 08:36:53', '2024-06-02 08:36:53'),
(356, NULL, NULL, '6', '1', 'delete', '2024-06-02 08:36:53', '2024-06-02 08:36:53');

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

--
-- Dumping data for table `tbl_appreance`
--

INSERT INTO `tbl_appreance` (`appreance_id`, `user_id`, `appreance_layout`, `appreance_theme`, `appreance_menu`, `appreance_header`, `appreance_sidestyle`, `created_at`, `updated_at`) VALUES
(1, '1', 'sidebar-mini', 'dark-mode', 'dark-menu', 'header-dark', 'default-menu', '2024-06-02 04:27:47', '2024-06-02 04:27:47');

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
(1, NULL, '1', '1', 'BRG-1717329928620', 'A', 'a', '30000', '0', 'image.png', '2024-06-02 05:06:08', '2024-06-02 05:06:08');

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
(1717329359, 'Dashboard', 'dashboard', 'home', '/dashboard', '1', '1', '2024-06-02 04:55:59', '2024-06-02 04:59:46'),
(1717329497, 'Master Data', 'master-data', 'database', '-', '2', '2', '2024-06-02 04:58:17', '2024-06-02 05:03:02'),
(1717330039, 'Customers', 'customers', 'customer', '/customer', '3', '1', '2024-06-02 05:07:19', '2024-06-02 08:44:57'),
(1717330306, 'Laporan', 'laporan', 'grid', '-', '4', '2', '2024-06-02 05:11:46', '2024-06-02 05:11:46');

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
(1, 'LX300', 'lx300', NULL, '2024-06-02 05:05:11', '2024-06-02 05:05:11');

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
(1, 'Super Admin', 'super-admin', '-', '2024-06-02 04:20:16', '2024-06-02 04:20:16'),
(2, 'Admin', 'admin', '-', '2024-06-02 04:20:16', '2024-06-02 04:20:16'),
(3, 'Operator', 'operator', '-', '2024-06-02 04:20:16', '2024-06-02 04:20:16'),
(5, '078', '078', NULL, '2024-06-02 08:25:19', '2024-06-02 08:25:19'),
(6, '089', '089', NULL, '2024-06-02 08:25:33', '2024-06-02 08:25:33');

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
(1, 'Unit', 'unit', NULL, '2024-06-02 05:04:50', '2024-06-02 05:04:50');

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
(2, '1717329497', 'Jenis Barang', 'jenis-barang', '/jenisbarang', '1', '2024-06-02 05:03:02', '2024-06-02 05:03:02'),
(3, '1717329497', 'Satuan', 'satuan', '/satuan', '2', '2024-06-02 05:03:02', '2024-06-02 05:03:02'),
(4, '1717329497', 'Merk', 'merk', '/merk', '3', '2024-06-02 05:03:02', '2024-06-02 05:03:02'),
(5, '1717329497', 'Barang', 'barang', '/barang', '4', '2024-06-02 05:03:02', '2024-06-02 05:03:02'),
(6, '1717330306', 'Kendaraan Keluar', 'kendaraan-keluar', '/barang-keluar', '1', '2024-06-02 05:11:46', '2024-06-02 05:11:46'),
(7, '1717330306', 'Kendaraan Masuk', 'kendaraan-masuk', '/barang-masuk', '2', '2024-06-02 05:11:46', '2024-06-02 05:11:46'),
(8, '1717330306', 'Laporan Kendaraan Keluar', 'laporan-kendaraan-keluar', '/lap-barang-keluar', '3', '2024-06-02 05:11:46', '2024-06-02 05:11:46'),
(9, '1717330306', 'Laporan Kendaraan Masuk', 'laporan-kendaraan-masuk', '/lap-barang-masuk', '4', '2024-06-02 05:11:46', '2024-06-02 05:11:46'),
(10, '1717330306', 'Laporan Stok', 'laporan-stok', '/lap-stok-barang', '5', '2024-06-02 05:11:46', '2024-06-02 05:11:46');

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
(1, '1', 'Super Administrator', 'superadmin', 'superadmin@gmail.com', 'undraw_profile.svg', '25d55ad283aa400af464c76d713c07ad', '2024-06-02 04:20:16', '2024-06-02 04:20:16'),
(2, '2', 'Administrator', 'admin', 'admin@gmail.com', 'undraw_profile.svg', '25d55ad283aa400af464c76d713c07ad', '2024-06-02 04:20:16', '2024-06-02 04:20:16'),
(3, '3', 'Operator', 'operator', 'operator@gmail.com', 'undraw_profile.svg', '25d55ad283aa400af464c76d713c07ad', '2024-06-02 04:20:16', '2024-06-02 04:20:16');

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
(1, 'Laravel 9', 'laravel.svg', NULL, '2024-06-02 04:20:16', '2024-06-02 04:20:16');

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
-- Indexes for table `tbl_submenu`
--
ALTER TABLE `tbl_submenu`
  ADD PRIMARY KEY (`submenu_id`);

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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_akses`
--
ALTER TABLE `tbl_akses`
  MODIFY `akses_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=357;

--
-- AUTO_INCREMENT for table `tbl_appreance`
--
ALTER TABLE `tbl_appreance`
  MODIFY `appreance_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  MODIFY `barang_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_barangkeluar`
--
ALTER TABLE `tbl_barangkeluar`
  MODIFY `bk_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_barangmasuk`
--
ALTER TABLE `tbl_barangmasuk`
  MODIFY `bm_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_jenisbarang`
--
ALTER TABLE `tbl_jenisbarang`
  MODIFY `jenisbarang_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `menu_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1717330307;

--
-- AUTO_INCREMENT for table `tbl_merk`
--
ALTER TABLE `tbl_merk`
  MODIFY `merk_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_role`
--
ALTER TABLE `tbl_role`
  MODIFY `role_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_satuan`
--
ALTER TABLE `tbl_satuan`
  MODIFY `satuan_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_submenu`
--
ALTER TABLE `tbl_submenu`
  MODIFY `submenu_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
