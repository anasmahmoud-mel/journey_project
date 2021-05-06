-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2021 at 11:56 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `master_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `accepts`
--

CREATE TABLE `accepts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `break` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arrival_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accepts`
--

INSERT INTO `accepts` (`id`, `from`, `to`, `date`, `break`, `arrival_time`, `driver_name`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Amman', 'Amman', '2021-01-10', '15:24', '21:46', 'Ethan', 806, '2021-04-27 05:38:01', '2021-04-27 05:38:01'),
(2, 'Amman', 'Amman', '21-May-1989', 'Exercitation', 'Dolores', 'Bethany', 433, '2021-04-27 07:07:15', '2021-04-27 07:07:15'),
(3, 'Amman', 'Amman', '19-Mar-1972', 'Occaecat', 'Aut', 'Petra', 194, '2021-04-29 12:48:22', '2021-04-29 12:48:22'),
(4, 'madaba', 'Al-Salt', '1983-04-05', '22:48', '13:53', 'Brody', 273, '2021-04-29 19:50:05', '2021-04-29 19:50:05'),
(5, 'Amman', 'Amman', '1983-08-23', '13:51', '01:58', 'Lavinia', 397, '2021-05-03 06:47:27', '2021-05-03 06:47:27');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `booking_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `booking_mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `booking_passenger` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `jurny_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `booking_name`, `booking_email`, `booking_mobile`, `booking_passenger`, `user_id`, `jurny_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, 'anas', 'anasmahmoud.mel@gmail.com', '0777189620', '2', 2, 9, '2021-04-27 15:16:16', '2021-04-27 10:50:29', '2021-04-27 15:16:16'),
(5, 'sara', 'sara@sara.com', '0777189620', '3', 2, 8, '2021-04-29 19:19:44', '2021-04-27 10:52:27', '2021-04-29 19:19:44'),
(6, 'sara', 'sara@sara.com', '0777189620', '2', 4, 8, '2021-04-29 19:34:12', '2021-04-27 10:53:01', '2021-04-29 19:34:12'),
(7, 'anas', 'anasmahmoud.mel@gmail.com', '0777189620', '2', 2, 9, '2021-04-27 15:16:13', '2021-04-27 12:44:30', '2021-04-27 15:16:13'),
(8, 'anas', 'anasmahmoud.mel@gmail.com', '0777189620', '2', 2, 9, '2021-04-27 15:16:10', '2021-04-27 12:44:40', '2021-04-27 15:16:10'),
(9, 'anas', 'anasmahmoud.mel@gmail.com', '0777189620', '2', 2, 9, '2021-04-29 19:15:15', '2021-04-27 15:19:47', '2021-04-29 19:15:15'),
(10, 'Tobias Howe', 'zyxibe@mailinator.com', '+1 (251) 494-8998', '7', 2, 12, '2021-04-29 19:45:15', '2021-04-29 19:34:38', '2021-04-29 19:45:15'),
(11, 'Rebecca Petty', 'ginusevezy@mailinator.com', '+1 (888) 471-3283', '5', 2, 12, '2021-05-02 09:42:18', '2021-04-29 19:34:44', '2021-05-02 09:42:18'),
(12, 'Alma', 'ryxem@mailinator.com', '+1014748510164916', '8', 2, 12, '2021-05-02 11:35:00', '2021-04-29 19:34:53', '2021-05-02 11:35:00'),
(13, 'anas', 'anasmahmoud.mel@gmail.com', '0777189620', '1', 2, 12, '2021-05-02 14:23:16', '2021-04-30 10:19:23', '2021-05-02 14:23:16'),
(14, 'anas', 'anasmahmoud.mel@gmail.com', 'Praesentium labore u', '2', 2, 12, '2021-05-02 07:46:02', '2021-04-30 10:20:00', '2021-05-02 07:46:02'),
(15, 'anas', 'anasmahmoud.mel@gmail.com', '0777189620', '1', 2, 14, '2021-05-02 07:27:29', '2021-04-30 10:22:16', '2021-05-02 07:27:29'),
(16, 'sara', 'sara@sara.com', '+1 (582) 889-9706', '6', 4, 12, NULL, '2021-04-30 20:29:36', '2021-04-30 20:29:36'),
(17, 'anas', 'anasmahmoud.mel@gmail.com', '077718962', '1', 2, 12, '2021-05-02 08:01:32', '2021-04-30 20:59:16', '2021-05-02 08:01:32'),
(18, 'anas', 'anasmahmoud.mel@gmail.com', '0777189620', '2', 2, 12, '2021-05-02 07:29:04', '2021-04-30 21:00:54', '2021-05-02 07:29:04'),
(19, 'anas', 'anasmahmoud.mel@gmail.com', '0777189620', '2', 2, 12, '2021-05-02 14:21:42', '2021-04-30 21:02:12', '2021-05-02 14:21:42'),
(20, 'anas', 'anasmahmoud.mel@gmail.com', '+1 (885) 715-5527', '6', 2, 12, '2021-05-02 10:15:33', '2021-05-01 07:32:15', '2021-05-02 10:15:33'),
(21, 'aseel', 'aseel@gmail.com', '0777189620', '2', 6, 12, NULL, '2021-05-01 08:38:45', '2021-05-01 08:38:45'),
(22, 'aseel', 'aseel@gmail.com', '+1 (584) 613-9838', '2', 6, 12, NULL, '2021-05-01 08:50:25', '2021-05-01 08:50:25'),
(23, 'aseel', 'aseel@gmail.com', '+1 (431) 348-9682', '4', 6, 12, NULL, '2021-05-01 08:51:34', '2021-05-01 08:51:34'),
(24, 'aseel', 'aseel@gmail.com', '+1 (505) 676-6421', '8', 6, 12, NULL, '2021-05-01 08:54:10', '2021-05-01 08:54:10'),
(25, 'aseel', 'aseel@gmail.com', '0777189620', '2', 6, 12, NULL, '2021-05-01 08:54:34', '2021-05-01 08:54:34'),
(26, 'sara', 'sara@sara.com', '0777189620', '2', 4, 12, NULL, '2021-05-01 08:56:00', '2021-05-01 08:56:00'),
(27, 'sara', 'sara@sara.com', '0777189620', '2', 4, 17, '2021-05-02 09:42:44', '2021-05-01 08:56:50', '2021-05-02 09:42:44'),
(28, 'ali', 'ali@gmail.com', '0777189620', '2', 8, 17, '2021-05-02 09:42:57', '2021-05-01 11:50:40', '2021-05-02 09:42:57'),
(29, 'ali', 'ali@gmail.com', '0777189620', '2', 8, 12, NULL, '2021-05-01 11:51:22', '2021-05-01 11:51:22'),
(30, 'sara', 'sara@sara.com', '0777189620', '2', 4, 17, '2021-05-02 09:47:58', '2021-05-01 11:52:19', '2021-05-02 09:47:58'),
(31, 'sara', 'sara@sara.com', '0777189620', '2', 4, 17, '2021-05-02 14:23:06', '2021-05-01 15:28:50', '2021-05-02 14:23:06'),
(32, 'sara', 'sara@sara.com', '0777189620', '1', 4, 17, '2021-05-02 14:24:07', '2021-05-01 19:00:44', '2021-05-02 14:24:07'),
(33, 'anas', 'anasmahmoud.mel@gmail.com', '07771896', '2', 2, 12, NULL, '2021-05-02 06:46:43', '2021-05-02 06:46:43'),
(34, 'anas', 'anasmahmoud.mel@gmail.com', '077718962', '2', 2, 12, NULL, '2021-05-02 06:48:32', '2021-05-02 06:48:32'),
(35, 'anas', 'anasmahmoud.mel@gmail.com', '0777189620', '2', 2, 12, NULL, '2021-05-02 06:48:57', '2021-05-02 06:48:57'),
(36, 'anas', 'anasmahmoud.mel@gmail.com', '0777189621', '2', 2, 17, '2021-05-04 07:20:15', '2021-05-02 06:49:36', '2021-05-04 07:20:15'),
(37, 'anas', 'anasmahmoud.mel@gmail.com', '07771896201', '2', 2, 17, NULL, '2021-05-02 06:50:08', '2021-05-02 06:50:08'),
(38, 'anas', 'anasmahmoud.mel@gmail.com', '0777189620010', '1', 2, 17, NULL, '2021-05-02 06:52:26', '2021-05-02 11:34:48'),
(39, 'anas', 'anasmahmoud.mel@gmail.com', '0777189620', '2', 2, 17, NULL, '2021-05-02 06:54:47', '2021-05-02 06:54:47'),
(40, 'sleem', 'sleem@gmail.com', '0777189620', '2', 2, 12, NULL, '2021-05-02 19:07:22', '2021-05-02 20:29:46'),
(41, 'sleem', 'sleem@gmail.com', '0777189620', '100', 2, 12, '2021-05-02 20:29:41', '2021-05-02 19:09:09', '2021-05-02 20:29:41'),
(42, 'sleem', 'sleem@gmail.com', '0777189620', '2', 10, 31, '2021-05-02 20:24:13', '2021-05-02 19:10:58', '2021-05-02 20:24:13'),
(43, 'anas', 'anasmahmoud.mel@gmail.com', '0777189620', '2', 2, 33, NULL, '2021-05-02 21:04:58', '2021-05-02 21:04:58'),
(44, 'anas', 'anasmahmoud.mel@gmail.com', '0777189620', '1', 2, 33, NULL, '2021-05-02 21:05:36', '2021-05-02 21:05:36'),
(45, 'sara', 'sara@sara.com', '0777189620', '2', 4, 33, NULL, '2021-05-02 21:16:45', '2021-05-02 21:16:45'),
(46, 'aseel', 'aseeeel@gmailcom', '0777189620', '2', 20, 35, NULL, '2021-05-03 06:57:19', '2021-05-03 06:57:19'),
(47, 'aseel', 'aseeeel@gmailcom', '0777189620', '2', 20, 35, NULL, '2021-05-03 06:58:03', '2021-05-03 06:58:03');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contact_fname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_lname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `contact_fname`, `contact_lname`, `contact_email`, `contact_subject`, `contact_message`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Laura Garrett', 'Alana Wilder', 'myvibacygi@mailinator.com', 'Sunt itaque explicab', 'Consequatur minim a', '2021-04-27 12:31:36', '2021-04-27 05:26:54', '2021-04-27 12:31:36'),
(2, 'Nero Fuentes', 'Frances Tillman', 'zuwyq@mailinator.com', 'Recusandae Ipsam ad', 'Ut dolor quod suscip', '2021-04-27 05:31:32', '2021-04-27 05:26:59', '2021-04-27 05:31:32'),
(3, 'Vanna Reyes', 'Dustin Chan', 'qeja@mailinator.com', 'Eius sit sit odit d', 'Eos aut quia velit', '2021-04-27 05:27:26', '2021-04-27 05:27:06', '2021-04-27 05:27:26'),
(4, 'Jorden Battle', 'Kristen Burt', 'bodojecaz@mailinator.com', 'Non eveniet volupta', 'oots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem', '2021-04-27 12:31:35', '2021-04-27 12:29:52', '2021-04-27 12:31:35'),
(5, 'salam', 'melhem', 'salam@gmail.com', 'test for test', 'oots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem', NULL, '2021-04-27 12:31:12', '2021-04-27 12:31:12'),
(6, 'Fuller Fox', 'Jonah Mcdowell', 'pufoluvix@mailinator.com', 'Consequatur Exercit', 'Officia qui neque eo', NULL, '2021-05-01 07:43:03', '2021-05-01 07:43:03'),
(7, 'anas', 'Kristen Burt', 'sleem@gmail.com', 'Non eveniet volupta', 'Non eveniet voluptaNon eveniet voluptaNon eveniet voluptaNon eveniet voluptaNon eveniet voluptaNon eveniet voluptaNon eveniet voluptaNon eveniet voluptaNon eveniet voluptaNon eveniet voluptaNon eveniet volupta', NULL, '2021-05-02 19:59:12', '2021-05-02 19:59:12'),
(8, 'Jorden Battle', 'Kristen Burt', 'anasmahmoud.mel@gmail.com', 'Non eveniet volupta', 'Non eveniet voluptaNon eveniet voluptaNon eveniet voluptaNon eveniet voluptaNon eveniet voluptaNon eveniet voluptaNon eveniet voluptaNon eveniet voluptaNon eveniet voluptaNon eveniet voluptaNon eveniet voluptaNon eveniet voluptaNon eveniet voluptaNon eveniet voluptaNon eveniet voluptaNon eveniet voluptaNon eveniet voluptaNon eveniet voluptaNon eveniet voluptaNon eveniet voluptaNon eveniet voluptaNon eveniet voluptaNon eveniet voluptaNon eveniet voluptaNon eveniet volupta', '2021-05-02 20:36:58', '2021-05-02 20:01:26', '2021-05-02 20:36:58');

-- --------------------------------------------------------

--
-- Table structure for table `jurnys`
--

CREATE TABLE `jurnys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `break` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arrival_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jurnys`
--

INSERT INTO `jurnys` (`id`, `from`, `to`, `date`, `break`, `arrival_time`, `driver_name`, `price`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(8, 'Ma\'an', 'Tafila', '1977-02-01', '08:49', '14:36', 'Malcolm Atkinson', 257, 2, '2021-04-29 12:37:38', NULL, NULL),
(9, 'Mafraq', 'Jerash', '1989-11-05', '11:20', '07:48', 'Thor Case', 118, 2, '2021-04-29 12:38:31', NULL, NULL),
(10, 'Amman', 'Ajlon', '2006-07-25', '02:51', '13:14', 'Yasir Levy', 733, 2, '2021-04-29 12:47:33', NULL, NULL),
(11, 'Aqaba', 'Al-Karak', '19-Mar-1972', 'Occaecat labore aute', 'Aut sunt omnis minim', 'Petra Goodwin', 194, 2, '2021-04-29 12:48:22', NULL, NULL),
(12, 'Irbid', 'madaba', '1983-04-05', '22:48', '13:53', 'Brody Mcgee', 273, 2, '2021-04-29 19:50:05', NULL, NULL),
(13, 'Amman', 'Al-Karak', '1979-10-14', '06:27', '04:41', 'Serena Carr', 110, 2, '2021-05-02 06:34:12', NULL, NULL),
(14, 'Amman', 'Amman', '2021-05-30', '12:08', '16:31', 'Carl', 902, 2, '2021-05-02 20:35:54', NULL, NULL),
(15, 'Tafila', 'madaba', '1983-08-23', '13:51', '01:58', 'Lavinia Silva', 397, 4, '2021-05-03 06:47:27', NULL, NULL),
(17, 'Tafila', 'Al-Karak', '2021-05-05', '07:29', '18:19', 'Ella Sanchez', 845, 2, NULL, NULL, NULL),
(18, 'AL-Zarqa', 'Jerash', '2021-05-31', '11:55', '01:18', 'Lacy Erickson', 505, 4, '2021-05-02 11:36:53', NULL, NULL),
(19, 'Jerash', 'AL-Zarqa', '2021-05-22', '13:53', '22:45', 'Tara Baird', 50, 4, NULL, NULL, NULL),
(20, 'Jerash', 'Jerash', '2021-05-18', '04:18', '06:09', 'Keegan Norton', 822, 4, NULL, NULL, NULL),
(21, 'Jerash', 'Al-Karak', '2021-10-06', '05:31', '01:49', 'Scott Johnson', 10, 10, NULL, NULL, NULL),
(22, 'Aqaba', 'madaba', '2021-07-07', '06:11', '13:28', 'Lee Holden', 9, 10, NULL, NULL, NULL),
(23, 'AL-Zarqa', 'madaba', '2021-08-09', '22:10', '10:11', 'Noelani Estes', 921, 10, NULL, NULL, NULL),
(24, 'Al-Salt', 'Aqaba', '2021-05-24', '03:03', '12:00', 'Ocean Pugh', 206, 10, NULL, NULL, NULL),
(25, 'Al-Karak', 'Tafila', '2021-11-08', '05:47', '23:34', 'Grace Hendrix', 2, 10, NULL, NULL, NULL),
(26, 'Mafraq', 'Mafraq', '2021-05-13', '22:13', '19:16', 'Addison Small', 2, 10, NULL, NULL, NULL),
(27, 'Ajlon', 'Al-Karak', '2021-06-17', '11:08', '23:32', 'Shad Wilkins', 849, 10, NULL, NULL, NULL),
(28, 'madaba', 'Aqaba', '2021-05-25', '04:57', '04:41', 'Alyssa Nelson', 815, 10, NULL, NULL, NULL),
(29, 'Ajlon', 'Tafila', '2021-06-18', '21:04', '06:48', 'Iona Weiss', 464, 10, NULL, NULL, NULL),
(30, 'Jerash', 'Ma\'an', '2021-05-06', '22:32', '04:01', 'Yardley Moon', 947, 10, NULL, NULL, NULL),
(31, 'madaba', 'Aqaba', '2021-05-14', '22:42', '10:28', 'Phyllis Copeland', 457, 10, NULL, NULL, NULL),
(32, 'Al-Salt', 'AL-Zarqa', '2021-09-12', '08:17', '16:16', 'Wilma Castro', 1, 2, NULL, NULL, NULL),
(33, 'Amman', 'Amman', '2021-09-24', '18:18', '06:16', 'Daria', 1, 2, NULL, NULL, NULL),
(34, 'Amman', 'Amman', '2021-05-24', '09:10', '12:47', 'Fuller', 9, 2, NULL, NULL, NULL),
(35, 'Al-Karak', 'Ma\'an', '2021-11-26', '18:41', '03:28', 'Macey Atkinson', 1, 18, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2021_01_15_211409_create_visitors_table', 1),
(4, '2021_01_16_155446_create_partners_table', 1),
(5, '2021_01_20_205333_create_jurnys_table', 1),
(6, '2021_01_20_205356_create_bookings_table', 1),
(7, '2021_01_22_120530_create_contacts_table', 1),
(8, '2021_04_19_204729_create_accepts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `partner_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partner_password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `partner_email`, `partner_password`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'sykihimin@mailinator.com', '1134567891', '2021-05-03 06:46:33', '2021-04-25 08:14:21', '2021-05-03 06:46:33'),
(2, 'admin@admin.com', '123456789', '2021-04-27 08:23:01', '2021-04-27 07:02:03', '2021-04-27 08:23:01'),
(3, 'siqeg@mailinator.com', 'Pa$$w0rd!', NULL, '2021-04-30 20:30:11', '2021-05-03 06:46:38'),
(4, 'kysiwa@mailinator.com', 'Pa$$w0rd!', NULL, '2021-04-30 20:32:02', '2021-04-30 20:32:02'),
(5, 'sykihimin@mailinator.com', '12548', NULL, '2021-04-30 22:13:28', '2021-04-30 22:13:28'),
(6, 'nevoqutalo@mailinator.com', 'Pa$$w0rd!', NULL, '2021-05-02 18:02:48', '2021-05-02 18:02:48'),
(7, 'sasasasas@gmail.com', '1234567852', NULL, '2021-05-02 18:03:02', '2021-05-02 18:03:02'),
(8, 'sleem@gmail.com', '123456789', NULL, '2021-05-02 18:38:48', '2021-05-02 18:38:48'),
(9, 'sleem@gmail.com', '123456789', NULL, '2021-05-02 18:39:42', '2021-05-02 18:39:42'),
(10, 'sleem1@gmail.com', '123456789', '2021-05-02 20:11:24', '2021-05-02 18:43:46', '2021-05-02 20:11:24'),
(11, 'rawiryz@mailinator.com', 'Pa$$w0rd!', '2021-05-02 20:23:11', '2021-05-02 20:14:35', '2021-05-02 20:23:11'),
(12, 'salam@gmail.com', '1234566789', NULL, '2021-05-03 06:39:31', '2021-05-03 06:39:31'),
(13, 'ibrahem@gmail.com', '123456789', NULL, '2021-05-03 06:41:43', '2021-05-03 06:41:43');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `booking_id` int(10) UNSIGNED DEFAULT NULL,
  `jurny_id` int(10) UNSIGNED DEFAULT NULL,
  `usertype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `booking_id`, `jurny_id`, `usertype`, `email`, `email_verified_at`, `password`, `deleted_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'anas', NULL, NULL, 'admin', 'anasmahmoud.mel@gmail.com', NULL, '$2y$10$T1puUDae2ds6ulEWVf49oOueEu/urZHma1.z0vOKp5N0NM8SSx8by', NULL, NULL, '2021-04-27 10:23:11', '2021-04-27 10:23:11'),
(4, 'sara', NULL, NULL, 'partner', 'sara@sara.com', NULL, '$2y$10$suiYUSFRmg.4ZOdP.0JKtOK6Urv.0Ic9IMOxUntKdVg3cOIfl2wku', '2021-05-03 06:46:21', NULL, '2021-04-27 10:51:49', '2021-05-03 06:46:21'),
(5, 'admin', NULL, NULL, NULL, 'admin@gmail.com', NULL, '123456789', '2021-04-29 06:49:26', NULL, '2021-04-29 06:46:21', '2021-04-29 06:49:26'),
(6, 'aseel', NULL, NULL, 'admin', 'aseel@gmail.com', NULL, '123456789', NULL, NULL, '2021-04-30 19:46:29', '2021-05-02 20:07:41'),
(7, 'anas', NULL, NULL, NULL, 'anas@gmail.com', NULL, '$2y$10$H4Wskb5rCkkof42sc7TxL.pS99cqHViIDeRciRfOtr76uyPsyP7Sq', '2021-05-02 20:07:20', NULL, '2021-04-30 20:39:43', '2021-05-02 20:07:20'),
(8, 'ali', NULL, NULL, NULL, 'ali@gmail.com', NULL, '$2y$10$HNKAsa2lcNQGJCDsXEBK8eoKt90gnW5I9tpQW06rmSZs7ZPujSFea', '2021-05-02 20:06:01', NULL, '2021-05-01 11:46:10', '2021-05-02 20:06:01'),
(9, 'holix@mailinator.com', NULL, NULL, NULL, 'docifeqoz@mailinator.com', NULL, 'Pa$$w0rd!', '2021-05-02 06:34:02', NULL, '2021-05-02 06:33:53', '2021-05-02 06:34:02'),
(10, 'sleem', NULL, NULL, 'partner', 'sleem@gmail.com', NULL, '$2y$10$4x9Kj2.HXqfRDHWFT.dn2eFn4IVTIFcxTeMrB/nfZT9vneA/2XFQS', NULL, NULL, '2021-05-02 18:37:52', '2021-05-02 18:37:52'),
(11, 'goqur@mailinator.com', NULL, NULL, 'user', 'vehabidujo@mailinator.com', NULL, '123456789', NULL, NULL, '2021-05-02 20:09:37', '2021-05-02 20:09:54'),
(12, 'cexyg@mailinator.com', NULL, NULL, NULL, 'xyhevax@mailinator.com', NULL, 'Pa$$w0rd!', '2021-05-02 20:15:40', NULL, '2021-05-02 20:15:36', '2021-05-02 20:15:40'),
(13, 'havuwam@mailinator.com', NULL, NULL, NULL, 'nehugipo@mailinator.com', NULL, 'Pa$$w0rd!', '2021-05-02 20:21:48', NULL, '2021-05-02 20:21:28', '2021-05-02 20:21:48'),
(14, 'wuzub@mailinator.com', NULL, NULL, NULL, 'waqakejana@mailinator.com', NULL, 'Pa$$w0rd!', '2021-05-02 20:21:43', NULL, '2021-05-02 20:21:35', '2021-05-02 20:21:43'),
(15, 'seviniwyhu@mailinator.com', NULL, NULL, NULL, 'teqiqyna@mailinator.com', NULL, 'Pa$$w0rd!', '2021-05-02 20:21:46', NULL, '2021-05-02 20:21:40', '2021-05-02 20:21:46'),
(16, 'Nelle Cash', NULL, NULL, NULL, 'gugid@mailinator.com', NULL, '$2y$10$INOjW2Dip81Dmlo7uxVPH.zELoZXpRQ4vUZ/m3xiLImCXruXclC26', NULL, NULL, '2021-05-02 20:22:10', '2021-05-02 20:22:10'),
(17, 'salam', NULL, NULL, 'partner', 'salam@gmail.com', NULL, '$2y$10$K2rGIJ7Fc.pQhkYnEsc9ROAc4Xyt7mhv0WEw/AGaXGLLMwDKdAIjy', NULL, NULL, '2021-05-03 06:38:30', '2021-05-03 06:38:30'),
(18, 'ibrahem', NULL, NULL, 'partner', 'ibrahem@gmail.com', NULL, '$2y$10$dIS3X2v7FzIPJvs2USPKceMGk5ALbm5SwnedtSv89WnqicuIARrQO', NULL, NULL, '2021-05-03 06:41:26', '2021-05-03 06:41:26'),
(19, 'cudakyjoxa@mailinator.com', NULL, NULL, NULL, 'kahequmap@mailinator.com', NULL, 'Pa$$w0rd!', NULL, NULL, '2021-05-03 06:46:16', '2021-05-03 06:46:16'),
(20, 'aseel', NULL, NULL, NULL, 'aseeeel@gmailcom', NULL, '$2y$10$Jx1GOXSTBZXdQU55mMw.c.g3QDCzOowmQvApvqJtFnGpNqIJy0kfy', NULL, NULL, '2021-05-03 06:56:29', '2021-05-03 06:56:29'),
(21, 'kyky@mailinator.com', NULL, NULL, NULL, 'gegoc@mailinator.com', NULL, 'Pa$$w0rd!', NULL, NULL, '2021-05-03 07:02:29', '2021-05-03 07:02:29'),
(22, 'anas', NULL, NULL, 'admin', 'anas@sadsfgdhfjail.com', NULL, 'wqerteyr', NULL, NULL, '2021-05-03 07:06:11', '2021-05-03 07:08:36'),
(23, 'Hilary Hancock', NULL, NULL, NULL, 'sara@sara45.com', NULL, '$2y$10$82IwgfJo3XC6OS3REkOty.QhojxCNrLoNuc.9b9ZTy8iv6mP32Z4G', NULL, NULL, '2021-05-05 06:52:42', '2021-05-05 06:52:42');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `login_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accepts`
--
ALTER TABLE `accepts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_user_id_foreign` (`user_id`),
  ADD KEY `bookings_jurny_id_foreign` (`jurny_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jurnys`
--
ALTER TABLE `jurnys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jurnys_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_booking_id_index` (`booking_id`),
  ADD KEY `users_jurny_id_index` (`jurny_id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accepts`
--
ALTER TABLE `accepts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jurnys`
--
ALTER TABLE `jurnys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_jurny_id_foreign` FOREIGN KEY (`jurny_id`) REFERENCES `jurnys` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `jurnys`
--
ALTER TABLE `jurnys`
  ADD CONSTRAINT `jurnys_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
