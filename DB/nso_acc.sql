-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2024 at 06:32 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nso_acc`
--

-- --------------------------------------------------------

--
-- Table structure for table `alert`
--

CREATE TABLE `alert` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` varchar(5000) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `alert`
--

INSERT INTO `alert` (`id`, `content`) VALUES
(1, 'NSO yaskawa  ( open )\r\n- Website : nsoyaskawa.com\r\ngifcode: Gifcode ( nsoyaskawa, openyaskawa, tanthu, denbubaotri, xinloiaevibatcap, gianghatay, 110tv, 150tv)\r\n- Báo Lỗi Liên Hệ Hỗ Trợ Zalo Admin : ( mr busin )');

-- --------------------------------------------------------

--
-- Table structure for table `atm_bank`
--

CREATE TABLE `atm_bank` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `tranid` varchar(255) NOT NULL,
  `stk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `received` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `finish_time` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bankName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `clan`
--

CREATE TABLE `clan` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `coin` int(11) NOT NULL DEFAULT 1000000,
  `exp` int(11) NOT NULL DEFAULT 0,
  `level` int(11) NOT NULL DEFAULT 1,
  `itemLevel` int(11) NOT NULL DEFAULT 0,
  `reg_date` varchar(100) NOT NULL DEFAULT '28/05/2003 16:05:22',
  `log` varchar(5000) NOT NULL,
  `alert` varchar(200) NOT NULL DEFAULT '',
  `use_card` tinyint(4) NOT NULL DEFAULT 4,
  `openDun` tinyint(4) NOT NULL DEFAULT 3,
  `debt` tinyint(4) NOT NULL DEFAULT 0,
  `members` longtext NOT NULL,
  `items` varchar(5000) NOT NULL DEFAULT '[]',
  `week` varchar(100) NOT NULL DEFAULT '2003-05-28 22:22:1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `clone_ninja`
--

CREATE TABLE `clone_ninja` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `speed` tinyint(4) NOT NULL DEFAULT 4,
  `level` smallint(6) NOT NULL DEFAULT 1,
  `exp` bigint(20) NOT NULL DEFAULT 0,
  `expdown` bigint(20) NOT NULL DEFAULT 0,
  `pk` tinyint(4) NOT NULL DEFAULT 0,
  `ppoint` int(11) NOT NULL DEFAULT 0,
  `potential0` int(11) NOT NULL DEFAULT 15,
  `potential1` int(11) NOT NULL DEFAULT 5,
  `potential2` int(11) NOT NULL DEFAULT 5,
  `potential3` int(11) NOT NULL DEFAULT 5,
  `spoint` int(11) NOT NULL DEFAULT 0,
  `class` tinyint(4) NOT NULL DEFAULT 1,
  `skill` varchar(5000) NOT NULL DEFAULT '[]',
  `KSkill` varchar(100) NOT NULL DEFAULT '[-1,-1,-1]',
  `OSkill` varchar(100) NOT NULL DEFAULT '[-1,-1,-1,-1,-1]',
  `CSkill` smallint(6) NOT NULL DEFAULT -1,
  `ItemBody` longtext NOT NULL,
  `ItemMounts` longtext NOT NULL,
  `effect` varchar(1000) NOT NULL DEFAULT '[]',
  `info` varchar(1000) NOT NULL DEFAULT '[8,8,10,10,1,1]',
  `ID_HORSE` int(11) NOT NULL DEFAULT -1,
  `thoi-trang` varchar(500) DEFAULT '[-1,-1,-1,-1,-1,-1,-1,-1,-1,-1]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  `file_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `gift_code`
--

CREATE TABLE `gift_code` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` longtext DEFAULT NULL,
  `item_id` longtext DEFAULT NULL,
  `item_quantity` longtext DEFAULT NULL,
  `item_isLock` longtext DEFAULT NULL,
  `item_expires` longtext DEFAULT NULL,
  `isPlayer` tinyint(4) DEFAULT 0,
  `player` longtext DEFAULT NULL,
  `isTime` tinyint(4) DEFAULT 0,
  `time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Mã quà tặng' ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `gift_code`
--

INSERT INTO `gift_code` (`id`, `code`, `item_id`, `item_quantity`, `item_isLock`, `item_expires`, `isPlayer`, `player`, `isTime`, `time`, `created_at`, `updated_at`) VALUES
(1, 'nsoyaskawa', '[-1,-2,-3]', '[100000,500000,200000000]', '[1,1,1]', '[-1,-1,-1]', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'tanthu', '[-1,-2,-3,775]', '[100000,200000,200000000,1000]', '[1,1,1,1]', '[-1,-1,-1,-1]', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'denbubaotri', '[-1,-2,-3]', '[50000,200000,200000000]', '[1,1,1]', '[-1,-1,-1]', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'gianghatay1', '[-1,-2,-3,385]', '[50000,200000,200000000,3]', '[1,1,1,1]', '[-1,-1,-1,-1]', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'gianghatay', '[-1,-2,-3,385]', '[10000,500000,200000000,5]', '[1,1,1,1]', '[-1,-1,-1,-1]', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'openyaskawa', '[-1,-2,-3]', '[50000,200000,200000000]', '[1,1,1]', '[-1,-1,-1]', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'snadmin', '[695,696,697,698,699,700,701,702,703,704,840,837,-2]', '[100,100,100,100,100,100,100,100,100,100,100,100,5000000]', '[1,1,1,1,1,1,1,1,1,1,1,1,1]', '[-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1]', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, '150tv', '[941,942,943,866]', '[1000,1000,1000,1]', '[1,1,1,1,1]', '[-1,-1,-1,-1,-1]', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, '110tv', '[-1,-2,-3,788,901]', '[100000,500000,200000000,10000,1]', '[1,1,1,1,1]', '[-1,-1,-1,-1,-1]', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'donglivesever', '[-2]', '[5000000]', '[1]', '[-1,]', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'cocainit', '[695,696,697,698,699,700,701,702,703,704,840,837,-2]', '[500,500,500,500,500,500,500,500,500,500,1000,1000,2000000]', '[1,1,1,1,1,1,1,1,1,1,1,1,1]', '[-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1]', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, '200tv', '[-1,-2,-3,594]', '[100000,2000000,200000000,1]', '[1,1,1,1]', '[-1,-1,-1,-1]', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `history_gift`
--

CREATE TABLE `history_gift` (
  `id` int(10) UNSIGNED NOT NULL,
  `player_id` int(11) DEFAULT 0,
  `code` varchar(50) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Lịch sử nhận gift code' ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `type` smallint(6) NOT NULL,
  `class` smallint(6) NOT NULL DEFAULT 0,
  `skill` smallint(6) NOT NULL DEFAULT 0,
  `gender` tinyint(4) NOT NULL,
  `name` varchar(500) NOT NULL,
  `description` varchar(5000) NOT NULL,
  `level` smallint(6) NOT NULL,
  `iconID` int(11) NOT NULL,
  `part` int(11) NOT NULL,
  `uptoup` tinyint(1) NOT NULL,
  `isExpires` tinyint(4) NOT NULL DEFAULT 0,
  `secondsExpires` bigint(11) NOT NULL DEFAULT 0,
  `saleCoinLock` int(11) NOT NULL DEFAULT 0,
  `ItemOption` varchar(5000) NOT NULL DEFAULT '[]',
  `Option1` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]',
  `Option2` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]',
  `Option3` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `type`, `class`, `skill`, `gender`, `name`, `description`, `level`, `iconID`, `part`, `uptoup`, `isExpires`, `secondsExpires`, `saleCoinLock`, `ItemOption`, `Option1`, `Option2`, `Option3`) VALUES
(0, 26, 0, 0, 2, 'Đá cấp 1', 'Đá vụn, dùng nâng cấp trang bị', 1, 188, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(1, 26, 0, 0, 2, 'Đá cấp 2', 'Đá thường, dùng nâng cấp trang bị', 1, 189, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(2, 26, 0, 0, 2, 'Đá cấp 3', 'Đá tì vết, dùng nâng cấp trang bị', 1, 190, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(3, 26, 0, 0, 2, 'Đá cấp 4', 'Đá hoàn thiện, trông rất đẹp', 1, 191, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(4, 26, 0, 0, 2, 'Đá cấp 5', 'Đá tự nhiên, ở sâu trong lòng đất', 1, 192, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(5, 26, 0, 0, 2, 'Đá cấp 6', 'Đá tinh khiết, không bị lẫn tạp chất', 1, 193, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(6, 26, 0, 0, 2, 'Đá cấp 7', 'Đá lâu năm, cực kỳ rắn chắc', 1, 194, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(7, 26, 0, 0, 2, 'Đá cấp 8', 'Đá óng ánh, có thể phát sáng', 1, 195, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(8, 26, 0, 0, 2, 'Đá cấp 9', 'Đá tinh xảo, giá trị không rẻ', 1, 196, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(9, 26, 0, 0, 2, 'Đá cấp 10', 'Đá ngũ sắc, phát quang nhiều màu', 1, 197, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(10, 26, 0, 0, 2, 'Đá cấp 11', 'Đá toàn mỹ, thế gian khó tìm', 1, 496, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(11, 26, 0, 0, 2, 'Đá cấp 12', 'Đá thiên thạch, không rõ nguồn gốc', 1, 497, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(12, 19, 0, 0, 2, 'Yên', '', 1, 493, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(13, 16, 0, 0, 2, 'Bình HP cực tiểu', 'Nữa giây phục hồi 25 HP, duy trì 3 giây', 1, 959, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(14, 16, 0, 0, 2, 'Bình HP tiểu', 'Nữa giây phục hồi 90 HP, duy trì 3 giây', 10, 213, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(15, 16, 0, 0, 2, 'Bình HP vừa', 'Nữa giây phục hồi 230 HP, duy trì 3 giây', 30, 214, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(16, 16, 0, 0, 2, 'Bình HP lớn', 'Nữa giây phục hồi 400 HP, duy trì 3 giây', 50, 215, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(17, 16, 0, 0, 2, 'Bình HP cực lớn', 'Nữa giây phục hồi 650 HP, duy trì 3 giây', 70, 961, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(18, 17, 0, 0, 2, 'Bình MP cực tiểu', 'Phục hồi 150 MP', 1, 958, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(19, 17, 0, 0, 2, 'Bình MP tiểu', 'Phục hồi 500 MP', 10, 216, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(20, 17, 0, 0, 2, 'Bình MP vừa', 'Phục hồi 1000 MP', 30, 217, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(21, 17, 0, 0, 2, 'Bình MP lớn', 'Phục hồi 2000 MP', 50, 218, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(22, 17, 0, 0, 2, 'Bình MP cực lớn', 'Phục hồi 3500 MP', 70, 960, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(23, 18, 0, 0, 2, 'Cơm nắm', 'Nữa giây phục hồi 3 HP, MP duy trì 30 phút', 1, 953, 12, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(24, 18, 0, 0, 2, 'Tempura', 'Nữa giây phục hồi 20 HP, MP duy trì 30 phút', 10, 954, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(25, 18, 0, 0, 2, 'Katsudon', 'Nữa giây phục hồi 30 HP, MP duy trì 30 phút', 20, 955, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(26, 18, 0, 0, 2, 'Sashimi', 'Nữa giây phục hồi 40 HP, MP duy trì 30 phút', 30, 956, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(27, 18, 0, 0, 2, 'Gà quay', 'Nữa giây phục hồi 50 HP, MP duy trì 30 phút', 40, 957, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(28, 27, 0, 0, 2, 'Nhân sâm ngàn năm', 'Tăng 10% kinh nghiệm của level hiện tại', 1, 1002, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(29, 18, 0, 0, 2, 'Đùi heo sữa', 'Nữa giây phục hồi 60 HP, MP duy trì 30 phút', 50, 1249, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(30, 18, 0, 0, 2, 'Đùi heo sữa cao cấp', 'Nữa giây phục hồi 60 HP, MP duy trì 3 ngày', 50, 1249, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(31, 6, 0, 0, 1, 'Quần xanh nam', '', 1, 187, 8, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(32, 6, 0, 0, 1, 'Quần đỏ nam', '', 1, 184, 4, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(33, 6, 0, 0, 1, 'Quần vàng nam', '', 1, 185, 6, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(34, 27, 0, 0, 2, 'Bách biến lệnh', 'Di chuyển nhanh về tọa độ mặc định', 1, 491, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(35, 27, 0, 0, 2, 'Khả di lệnh', 'Di chuyển nhanh qua các làng, trường', 1, 494, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(36, 27, 0, 0, 2, 'Vô hạn bách biến lệnh', 'Di chuyển nhanh về tọa độ mặc định', 1, 492, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(37, 27, 0, 0, 2, 'Vô hạn khả di lệnh', 'Di chuyển nhanh qua các làng, trường', 1, 490, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(38, 27, 0, 0, 2, 'Phúc nang nhẫn giả', 'Sẽ có bất ngờ khi mở ra', 1, 495, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(39, 8, 0, 0, 1, 'Giầy cấp 1 nam', '', 1, 198, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(40, 27, 1, 1, 2, 'Sách võ công Hiyoko', '', 10, 819, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(41, 27, 1, 2, 2, 'Sách võ công Amagedon', '', 15, 819, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(42, 27, 1, 3, 2, 'Sách võ công Jizokuzan', '', 20, 819, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(43, 27, 1, 4, 2, 'Sách võ công Kakyuu', '', 25, 819, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(44, 27, 1, 5, 2, 'Sách võ công X Zangeki', '', 30, 819, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(45, 27, 1, 6, 2, 'Sách võ công Raikou', '', 35, 819, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(46, 27, 1, 7, 2, 'Sách võ công Hihebun', '', 40, 819, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(47, 27, 1, 8, 2, 'Sách võ công Shuurai', '', 45, 819, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(48, 27, 1, 9, 2, 'Sách võ công Choukouhirenzo', '', 50, 819, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(49, 27, 2, 10, 2, 'Sách võ công Otama', '', 10, 821, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(50, 27, 2, 11, 2, 'Sách võ công Itotama', '', 15, 821, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(51, 27, 2, 12, 2, 'Sách võ công Kasoushuriken', '', 20, 821, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(52, 27, 2, 13, 2, 'Sách võ công Taiyoutama', '', 25, 821, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(53, 27, 2, 14, 2, 'Sách võ công Bikoushuriken', '', 30, 821, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(54, 27, 2, 15, 2, 'Sách võ công Hoshitama', '', 35, 821, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(55, 27, 2, 16, 2, 'Sách võ công Hinotama', '', 40, 821, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(56, 27, 2, 17, 2, 'Sách võ công Hijoukai', '', 45, 821, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(57, 27, 2, 18, 2, 'Sách võ công Choukou shuriken', '', 50, 821, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(58, 27, 3, 19, 2, 'Sách võ công Yokobatan', '', 10, 816, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(59, 27, 3, 20, 2, 'Sách võ công Akaiame', '', 15, 816, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(60, 27, 3, 21, 2, 'Sách võ công Mizuibatan', '', 20, 816, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(61, 27, 3, 22, 2, 'Sách võ công Aoiame', '', 25, 816, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(62, 27, 3, 23, 2, 'Sách võ công Uzubatan', '', 30, 816, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(63, 27, 3, 24, 2, 'Sách võ công Hibikou', '', 35, 816, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(64, 27, 3, 25, 2, 'Sách võ công Kogoeru', '', 40, 816, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(65, 27, 3, 26, 2, 'Sách võ công Jotente', '', 45, 816, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(66, 27, 3, 27, 2, 'Sách võ công Choukoukogo', '', 50, 816, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(67, 27, 4, 28, 2, 'Sách võ công Uzusa', '', 10, 820, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(68, 27, 4, 29, 2, 'Sách võ công Washihitomi', '', 15, 820, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(69, 27, 4, 30, 2, 'Sách võ công Kinkinsa', '', 20, 820, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(70, 27, 4, 31, 2, 'Sách võ công Sogekihei', '', 25, 820, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(71, 27, 4, 32, 2, 'Sách võ công Nikinkinsa', '', 30, 820, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(72, 27, 4, 33, 2, 'Sách võ công Joutenhitomi', '', 35, 820, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(73, 27, 4, 34, 2, 'Sách võ công Kogosa', '', 40, 820, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(74, 27, 4, 35, 2, 'Sách võ công Kyshouma', '', 45, 820, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(75, 27, 4, 36, 2, 'Sách võ công Chousoukinkinsa', '', 50, 820, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(76, 27, 5, 37, 2, 'Sách võ công Enchokuto', '', 10, 817, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(77, 27, 5, 38, 2, 'Sách võ công Konoitoame', '', 15, 817, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(78, 27, 5, 39, 2, 'Sách võ công Maroyakato', '', 20, 817, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(79, 27, 5, 40, 2, 'Sách võ công Magumandari', '', 25, 817, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(80, 27, 5, 41, 2, 'Sách võ công Chousouto', '', 30, 817, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(81, 27, 5, 42, 2, 'Sách võ công Aisubaagu', '', 35, 817, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(82, 27, 5, 43, 2, 'Sách võ công Hayateto', '', 40, 817, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(83, 27, 5, 44, 2, 'Sách võ công Zenpanteki', '', 45, 817, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(84, 27, 5, 45, 2, 'Sách võ công Raikouto', '', 50, 817, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(85, 27, 6, 46, 2, 'Sách võ công Ouchia', '', 10, 818, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(86, 27, 6, 47, 2, 'Sách võ công Suishou', '', 15, 818, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(87, 27, 6, 48, 2, 'Sách võ công Oouchia', '', 20, 818, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(88, 27, 6, 49, 2, 'Sách võ công Kusenmono', '', 25, 818, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(89, 27, 6, 50, 2, 'Sách võ công Bakkuuchiha', '', 30, 818, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(90, 27, 6, 51, 2, 'Sách võ công Hayatemi', '', 35, 818, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(91, 27, 6, 52, 2, 'Sách võ công Bousouhayate', '', 40, 818, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(92, 27, 6, 53, 2, 'Sách võ công Toruneedo', '', 45, 818, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(93, 27, 6, 54, 2, 'Sách võ công Tatsumaki', '', 50, 818, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(94, 1, 1, 0, 2, 'Bạch Hạc Kiếm', '', 10, 155, 12, 0, 0, 0, 0, '[{\"param\":100,\"id\":0},{\"param\":100,\"id\":1},{\"param\":10,\"id\":8},{\"param\":5,\"id\":10},{\"param\":100,\"id\":21},{\"param\":10,\"id\":19},{\"param\":5,\"id\":30}]', '[]', '[]', '[]'),
(95, 1, 1, 0, 2, 'Đả Lôi Kiếm', '', 20, 156, 12, 0, 0, 0, 0, '[{\"param\":120,\"id\":0} ,{\"param\":120,\"id\":1} ,{\"param\":20,\"id\":8}, {\"param\":10,\"id\":10} ,{\"param\":200,\"id\":21} ,{\"param\":20,\"id\":19} ,{\"param\":6,\"id\":27} ,{\"param\":20,\"id\":37}]', '[]', '[]', '[]'),
(96, 1, 1, 0, 2, 'Trấn Ma Kiếm', '', 30, 157, 12, 0, 0, 0, 0, '[{\"param\":140,\"id\":0} ,{\"param\":140,\"id\":1} ,{\"param\":30,\"id\":8}, {\"param\":15,\"id\":10} ,{\"param\":300,\"id\":21} ,{\"param\":30,\"id\":19} ,{\"param\":7,\"id\":27} ,{\"param\":30,\"id\":37}]', '[]', '[]', '[]'),
(97, 1, 1, 0, 2, 'Sinh Tử Kiếm', '', 40, 158, 12, 0, 0, 0, 0, '[{\"param\":160,\"id\":0} ,{\"param\":160,\"id\":1} ,{\"param\":40,\"id\":8}, {\"param\":20,\"id\":10} ,{\"param\":400,\"id\":21} ,{\"param\":40,\"id\":19} ,{\"param\":8,\"id\":27} ,{\"param\":40,\"id\":37},{\"param\":400,\"id\":38}]', '[]', '[]', '[]'),
(98, 1, 1, 0, 2, 'Mộ Danh Kiếm', '', 50, 159, 12, 0, 0, 0, 0, '[{\"param\":180,\"id\":0} ,{\"param\":180,\"id\":1} ,{\"param\":50,\"id\":8}, {\"param\":25,\"id\":10} ,{\"param\":500,\"id\":21} ,{\"param\":50,\"id\":19} ,{\"param\":9,\"id\":27} ,{\"param\":50,\"id\":37},{\"param\":500,\"id\":38},{\"param\":70,\"id\":39}]', '[]', '[]', '[]'),
(99, 1, 3, 0, 2, 'Hắc Nanh Dao', '', 10, 160, 41, 0, 0, 0, 0, '[{\"param\":100,\"id\":0},{\"param\":100,\"id\":1},{\"param\":10,\"id\":8},{\"param\":5,\"id\":10},{\"param\":100,\"id\":23},{\"param\":10,\"id\":19},{\"param\":5,\"id\":27}]', '[]', '[]', '[]'),
(100, 1, 3, 0, 2, 'Xà Nhãn Dao', '', 20, 161, 41, 0, 0, 0, 0, '[{\"param\":120,\"id\":0},{\"param\":120,\"id\":1},{\"param\":20,\"id\":8},{\"param\":10,\"id\":10},{\"param\":200,\"id\":23},{\"param\":20,\"id\":19},{\"param\":6,\"id\":30},{\"param\":20,\"id\":37}]', '[]', '[]', '[]'),
(101, 1, 3, 0, 2, 'Hộ Công Dao', '', 30, 162, 41, 0, 0, 0, 0, '[{\"param\":140,\"id\":0},{\"param\":140,\"id\":1},{\"param\":30,\"id\":8},{\"param\":15,\"id\":10},{\"param\":300,\"id\":23},{\"param\":30,\"id\":19},{\"param\":7,\"id\":30},{\"param\":30,\"id\":37}]', '[]', '[]', '[]'),
(102, 1, 3, 0, 2, 'Vô Ảnh Dao', '', 40, 163, 41, 0, 0, 0, 0, '[{\"param\":160,\"id\":0},{\"param\":160,\"id\":1},{\"param\":40,\"id\":8},{\"param\":20,\"id\":10},{\"param\":400,\"id\":23},{\"param\":40,\"id\":19},{\"param\":8,\"id\":30},{\"param\":40,\"id\":37},{\"param\":400,\"id\":38}]', '[]', '[]', '[]'),
(103, 1, 3, 0, 2, 'Phượng Hoàng Dao', '', 50, 164, 41, 0, 0, 0, 0, '[{\"param\":180,\"id\":0},{\"param\":180,\"id\":1},{\"param\":50,\"id\":8},{\"param\":25,\"id\":10},{\"param\":500,\"id\":23},{\"param\":50,\"id\":19},{\"param\":9,\"id\":30},{\"param\":50,\"id\":37},{\"param\":500,\"id\":38},{\"param\":70,\"id\":39}]', '[]', '[]', '[]'),
(104, 1, 5, 0, 2, 'Trãm Mã Đao', '', 10, 165, 13, 0, 0, 0, 0, '[{\"param\":100,\"id\":0},{\"param\":100,\"id\":1},{\"param\":10,\"id\":8},{\"param\":5,\"id\":10},{\"param\":100,\"id\":25},{\"param\":10,\"id\":19},{\"param\":5,\"id\":27}]', '[]', '[]', '[]'),
(105, 1, 5, 0, 2, 'Trãm Hổ Đao', '', 20, 166, 13, 0, 0, 0, 0, '[{\"param\":120,\"id\":0},{\"param\":120,\"id\":1},{\"param\":20,\"id\":8},{\"param\":10,\"id\":10},{\"param\":200,\"id\":25},{\"param\":20,\"id\":19},{\"param\":6,\"id\":30},{\"param\":20,\"id\":37}]', '[]', '[]', '[]'),
(106, 1, 5, 0, 2, 'Khổng Đao', '', 30, 167, 13, 0, 0, 0, 0, '[{\"param\":140,\"id\":0},{\"param\":140,\"id\":1},{\"param\":30,\"id\":8},{\"param\":15,\"id\":10},{\"param\":300,\"id\":25},{\"param\":30,\"id\":19},{\"param\":7,\"id\":30},{\"param\":30,\"id\":37}]', '[]', '[]', '[]'),
(107, 1, 5, 0, 2, 'Nộ Thiên Đao', '', 40, 168, 13, 0, 0, 0, 0, '[{\"param\":160,\"id\":0},{\"param\":160,\"id\":1},{\"param\":40,\"id\":8},{\"param\":20,\"id\":10},{\"param\":400,\"id\":25},{\"param\":40,\"id\":19},{\"param\":8,\"id\":30},{\"param\":40,\"id\":37},{\"param\":400,\"id\":38}]', '[]', '[]', '[]'),
(108, 1, 5, 0, 2, 'Thanh Long Đao', '', 50, 169, 13, 0, 0, 0, 0, '[{\"param\":180,\"id\":0},{\"param\":180,\"id\":1},{\"param\":50,\"id\":8},{\"param\":25,\"id\":10},{\"param\":500,\"id\":25},{\"param\":50,\"id\":19},{\"param\":9,\"id\":30},{\"param\":50,\"id\":37},{\"param\":500,\"id\":38},{\"param\":70,\"id\":39}]', '[]', '[]', '[]'),
(109, 1, 4, 0, 2, 'Minh Nguyệt Cung', '', 10, 170, 14, 0, 0, 0, 0, '[{\"param\":100,\"id\":0},{\"param\":100,\"id\":1},{\"param\":10,\"id\":9},{\"param\":5,\"id\":10},{\"param\":100,\"id\":24},{\"param\":10,\"id\":19},{\"param\":5,\"id\":27}]', '[]', '[]', '[]'),
(110, 1, 4, 0, 2, 'Đằng Vân Cung', '', 20, 171, 14, 0, 0, 0, 0, '[{\"param\":120,\"id\":0},{\"param\":120,\"id\":1},{\"param\":20,\"id\":9},{\"param\":10,\"id\":10},{\"param\":200,\"id\":24},{\"param\":20,\"id\":19},{\"param\":6,\"id\":30},{\"param\":20,\"id\":37}]', '[]', '[]', '[]'),
(111, 1, 4, 0, 2, 'Phụng Tiễn Cung', '', 30, 172, 14, 0, 0, 0, 0, '[{\"param\":140,\"id\":0},{\"param\":140,\"id\":1},{\"param\":30,\"id\":9},{\"param\":15,\"id\":10},{\"param\":300,\"id\":24},{\"param\":30,\"id\":19},{\"param\":7,\"id\":30},{\"param\":30,\"id\":37}]', '[]', '[]', '[]'),
(112, 1, 4, 0, 2, 'Trác Tâm Cung', '', 40, 173, 14, 0, 0, 0, 0, '[{\"param\":160,\"id\":0},{\"param\":160,\"id\":1},{\"param\":40,\"id\":9},{\"param\":20,\"id\":10},{\"param\":400,\"id\":24},{\"param\":40,\"id\":19},{\"param\":8,\"id\":30},{\"param\":40,\"id\":37},{\"param\":400,\"id\":38}]', '[]', '[]', '[]'),
(113, 1, 4, 0, 2, 'Thiên Ý Cung', '', 50, 174, 14, 0, 0, 0, 0, '[{\"param\":180,\"id\":0},{\"param\":180,\"id\":1},{\"param\":50,\"id\":9},{\"param\":25,\"id\":10},{\"param\":500,\"id\":24},{\"param\":50,\"id\":19},{\"param\":9,\"id\":30},{\"param\":50,\"id\":37},{\"param\":500,\"id\":38},{\"param\":70,\"id\":39}]', '[]', '[]', '[]'),
(114, 1, 2, 0, 2, 'Phàm Ý Tiêu', '', 10, 175, 15, 0, 0, 0, 0, '[{\"param\":100,\"id\":0},{\"param\":100,\"id\":1},{\"param\":10,\"id\":9},{\"param\":5,\"id\":10},{\"param\":100,\"id\":22},{\"param\":10,\"id\":19},{\"param\":5,\"id\":30}]', '[]', '[]', '[]'),
(115, 1, 2, 0, 2, 'Ưng nhãn Tiêu', '', 20, 176, 15, 0, 0, 0, 0, '[{\"param\":120,\"id\":0} ,{\"param\":120,\"id\":1} ,{\"param\":20,\"id\":9}, {\"param\":10,\"id\":10} ,{\"param\":200,\"id\":25} ,{\"param\":20,\"id\":19} ,{\"param\":6,\"id\":27} ,{\"param\":20,\"id\":37} ]', '[]', '[]', '[]'),
(116, 1, 2, 0, 2, 'Mạc Sầu Tiêu', '', 30, 177, 15, 0, 0, 0, 0, '[{\"param\":140,\"id\":0} ,{\"param\":140,\"id\":1} ,{\"param\":30,\"id\":9}, {\"param\":15,\"id\":10} ,{\"param\":300,\"id\":22} ,{\"param\":30,\"id\":19} ,{\"param\":7,\"id\":27} ,{\"param\":30,\"id\":37}]', '[]', '[]', '[]'),
(117, 1, 2, 0, 2, 'Triệt Tà Tiêu', '', 40, 178, 15, 0, 0, 0, 0, '[{\"param\":160,\"id\":0} ,{\"param\":160,\"id\":1} ,{\"param\":40,\"id\":9}, {\"param\":20,\"id\":10} ,{\"param\":400,\"id\":22} ,{\"param\":40,\"id\":19} ,{\"param\":8,\"id\":27} ,{\"param\":40,\"id\":37},{\"param\":400,\"id\":38}]', '[]', '[]', '[]'),
(118, 1, 2, 0, 2, 'Nhất Dương Tiêu', '', 50, 179, 15, 0, 0, 0, 0, '[{\"param\":180,\"id\":0} ,{\"param\":180,\"id\":1} ,{\"param\":50,\"id\":9}, {\"param\":25,\"id\":10} ,{\"param\":500,\"id\":22} ,{\"param\":50,\"id\":19} ,{\"param\":9,\"id\":27} ,{\"param\":50,\"id\":37},{\"param\":500,\"id\":38},{\"param\":70,\"id\":39}]', '[]', '[]', '[]'),
(119, 1, 6, 0, 2, 'Phong Ý Quạt', '', 10, 203, 16, 0, 0, 0, 0, '[{\"param\":100,\"id\":0},{\"param\":100,\"id\":1},{\"param\":10,\"id\":9},{\"param\":5,\"id\":10},{\"param\":100,\"id\":26},{\"param\":10,\"id\":19},{\"param\":5,\"id\":27}]', '[]', '[]', '[]'),
(120, 1, 6, 0, 2, 'Vũ Đan Quạt', '', 20, 204, 16, 0, 0, 0, 0, '[{\"param\":120,\"id\":0},{\"param\":120,\"id\":1},{\"param\":20,\"id\":9},{\"param\":10,\"id\":10},{\"param\":200,\"id\":26},{\"param\":20,\"id\":19},{\"param\":6,\"id\":30},{\"param\":20,\"id\":37}]', '[]', '[]', '[]'),
(121, 1, 6, 0, 2, 'Phong Linh Quạt', '', 30, 205, 16, 0, 0, 0, 0, '[{\"param\":140,\"id\":0},{\"param\":140,\"id\":1},{\"param\":30,\"id\":9},{\"param\":15,\"id\":10},{\"param\":300,\"id\":26},{\"param\":30,\"id\":19},{\"param\":7,\"id\":30},{\"param\":30,\"id\":37}]', '[]', '[]', '[]'),
(122, 1, 6, 0, 2, 'Vấn Thiên Quạt', '', 40, 206, 16, 0, 0, 0, 0, '[{\"param\":160,\"id\":0},{\"param\":160,\"id\":1},{\"param\":40,\"id\":9},{\"param\":20,\"id\":10},{\"param\":400,\"id\":26},{\"param\":40,\"id\":19},{\"param\":8,\"id\":30},{\"param\":40,\"id\":37}{\"param\":400,\"id\":38}]', '[]', '[]', '[]'),
(123, 1, 6, 0, 2, 'Phong Vũ Lôi Quạt', '', 50, 207, 16, 0, 0, 0, 0, '[{\"param\":180,\"id\":0},{\"param\":180,\"id\":1},{\"param\":50,\"id\":9},{\"param\":25,\"id\":10},{\"param\":500,\"id\":26},{\"param\":50,\"id\":19},{\"param\":9,\"id\":30},{\"param\":50,\"id\":37},{\"param\":500,\"id\":38},{\"param\":70,\"id\":39}]', '[]', '[]', '[]'),
(124, 8, 0, 0, 1, 'Giày Thô Bố', '', 11, 896, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(125, 8, 0, 0, 0, 'Giày Thô Bố', '', 11, 892, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(126, 8, 0, 0, 1, 'Giày Thô Ma', '', 21, 897, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(127, 8, 0, 0, 0, 'Giày Thô Ma', '', 21, 893, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(128, 8, 0, 0, 1, 'Giày Thiên Tằm', '', 31, 898, -1, 0, 0, 0, 0, '[]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":2} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":11} ,{\"param\":15,\"id\":16} ,{\"param\":7,\"id\":27} ,{\"param\":3,\"id\":28}]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":3} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":12} ,{\"param\":15,\"id\":16} ,{\"param\":7,\"id\":27} ,{\"param\":3,\"id\":28}]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":4} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":13} ,{\"param\":15,\"id\":16} ,{\"param\":7,\"id\":27} ,{\"param\":3,\"id\":28}]'),
(129, 8, 0, 0, 0, 'Giày Thiên Tằm', '', 31, 894, -1, 0, 0, 0, 0, '[]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":2} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":11} ,{\"param\":15,\"id\":16} ,{\"param\":7,\"id\":27} ,{\"param\":3,\"id\":28}]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":3} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":12} ,{\"param\":15,\"id\":16} ,{\"param\":7,\"id\":27} ,{\"param\":3,\"id\":28}]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":4} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":13} ,{\"param\":15,\"id\":16} ,{\"param\":7,\"id\":27} ,{\"param\":3,\"id\":28}]'),
(130, 8, 0, 0, 1, 'Hoắc Giáp Ngoa', '', 41, 902, -1, 0, 0, 0, 0, '[]', '[{\"param\":8,\"id\":47} ,{\"param\":20,\"id\":4} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":13} ,{\"param\":20,\"id\":16} ,{\"param\":8,\"id\":27} ,{\"param\":4,\"id\":28},{\"param\":300,\"id\":29}]', '[{\"param\":8,\"id\":47} ,{\"param\":20,\"id\":2} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":13} ,{\"param\":20,\"id\":16} ,{\"param\":8,\"id\":27} ,{\"param\":4,\"id\":28},{\"param\":300,\"id\":29}]', '[{\"param\":8,\"id\":47} ,{\"param\":20,\"id\":3} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":13} ,{\"param\":20,\"id\":16} ,{\"param\":8,\"id\":27} ,{\"param\":4,\"id\":28},{\"param\":300,\"id\":29}]'),
(131, 8, 0, 0, 0, 'Hoắc Giáp Ngoa', '', 41, 904, -1, 0, 0, 0, 0, '[]', '[{\"param\":8,\"id\":47} ,{\"param\":20,\"id\":4} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":13} ,{\"param\":20,\"id\":16} ,{\"param\":8,\"id\":27} ,{\"param\":4,\"id\":28},{\"param\":300,\"id\":29}]', '[{\"param\":8,\"id\":47} ,{\"param\":20,\"id\":2} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":13} ,{\"param\":20,\"id\":16} ,{\"param\":8,\"id\":27} ,{\"param\":4,\"id\":28},{\"param\":300,\"id\":29}]', '[{\"param\":8,\"id\":47} ,{\"param\":20,\"id\":3} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":13} ,{\"param\":20,\"id\":16} ,{\"param\":8,\"id\":27} ,{\"param\":4,\"id\":28},{\"param\":300,\"id\":29}]'),
(132, 8, 0, 0, 1, 'Kim Giáp Ngoa', '', 51, 903, -1, 0, 0, 0, 0, '[]', '[{\"param\":10,\"id\":47} ,{\"param\":25,\"id\":4} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":13} ,{\"param\":20,\"id\":16} ,{\"param\":9,\"id\":27} ,{\"param\":5,\"id\":28},{\"param\":350,\"id\":29},{\"param\":100,\"id\":33}]', '[{\"param\":10,\"id\":47} ,{\"param\":25,\"id\":2} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":11} ,{\"param\":20,\"id\":16} ,{\"param\":9,\"id\":27} ,{\"param\":5,\"id\":28},{\"param\":350,\"id\":29},{\"param\":100,\"id\":34}]', '[{\"param\":10,\"id\":47} ,{\"param\":25,\"id\":3} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":12} ,{\"param\":25,\"id\":16} ,{\"param\":9,\"id\":27} ,{\"param\":5,\"id\":28},{\"param\":350,\"id\":29},{\"param\":100,\"id\":35}]'),
(133, 8, 0, 0, 0, 'Kim Giáp Ngoa', '', 51, 951, -1, 0, 0, 0, 0, '[]', '[{\"param\":10,\"id\":47} ,{\"param\":25,\"id\":4} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":13} ,{\"param\":20,\"id\":16} ,{\"param\":9,\"id\":27} ,{\"param\":5,\"id\":28},{\"param\":350,\"id\":29},{\"param\":100,\"id\":33}]', '[{\"param\":10,\"id\":47} ,{\"param\":25,\"id\":2} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":11} ,{\"param\":20,\"id\":16} ,{\"param\":9,\"id\":27} ,{\"param\":5,\"id\":28},{\"param\":350,\"id\":29},{\"param\":100,\"id\":34}]', '[{\"param\":10,\"id\":47} ,{\"param\":25,\"id\":3} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":12} ,{\"param\":25,\"id\":16} ,{\"param\":9,\"id\":27} ,{\"param\":5,\"id\":28},{\"param\":350,\"id\":29},{\"param\":100,\"id\":35}]'),
(134, 6, 0, 0, 1, 'Quần Thố', '', 13, 187, 8, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(135, 6, 0, 0, 0, 'Quần Thố', '', 13, 888, 21, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(136, 6, 0, 0, 1, 'Quần Vải Bông', '', 23, 184, 4, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(137, 6, 0, 0, 0, 'Quần Vải Bông', '', 23, 889, 19, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(138, 6, 0, 0, 1, 'Quần Tơ Tằm', '', 33, 185, 6, 0, 0, 0, 0, '[]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":2} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":11} ,{\"param\":15,\"id\":15} ,{\"param\":7,\"id\":27} ,{\"param\":3,\"id\":28}]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":3} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":12} ,{\"param\":15,\"id\":15} ,{\"param\":7,\"id\":27} ,{\"param\":3,\"id\":28}]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":4} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":13} ,{\"param\":15,\"id\":15} ,{\"param\":7,\"id\":27} ,{\"param\":3,\"id\":28}]'),
(139, 6, 0, 0, 0, 'Quần Tơ Tằm', '', 33, 890, 17, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(140, 6, 0, 0, 1, 'Hoắc Giáp', '', 43, 933, 37, 0, 0, 0, 0, '[]', '[{\"param\":16,\"id\":47} ,{\"param\":20,\"id\":2} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":11} ,{\"param\":20,\"id\":15} ,{\"param\":8,\"id\":27} ,{\"param\":4,\"id\":28},{\"param\":300,\"id\":29}]', '[{\"param\":16,\"id\":47} ,{\"param\":20,\"id\":3} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":12} ,{\"param\":20,\"id\":15} ,{\"param\":8,\"id\":27} ,{\"param\":4,\"id\":28},{\"param\":300,\"id\":29}]', '[{\"param\":16,\"id\":47} ,{\"param\":20,\"id\":4} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":13} ,{\"param\":20,\"id\":15} ,{\"param\":8,\"id\":27} ,{\"param\":4,\"id\":28},{\"param\":300,\"id\":29}]'),
(141, 6, 0, 0, 0, 'Hoắc Giáp', '', 43, 935, 39, 0, 0, 0, 0, '[]', '[{\"param\":16,\"id\":47} ,{\"param\":20,\"id\":2} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":11} ,{\"param\":20,\"id\":15} ,{\"param\":8,\"id\":27} ,{\"param\":4,\"id\":28},{\"param\":300,\"id\":29}]', '[{\"param\":16,\"id\":47} ,{\"param\":20,\"id\":3} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":12} ,{\"param\":20,\"id\":15} ,{\"param\":8,\"id\":27} ,{\"param\":4,\"id\":28},{\"param\":300,\"id\":29}]', '[{\"param\":16,\"id\":47} ,{\"param\":20,\"id\":4} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":13} ,{\"param\":20,\"id\":15} ,{\"param\":8,\"id\":27} ,{\"param\":4,\"id\":28},{\"param\":300,\"id\":29}]'),
(142, 6, 0, 0, 1, 'Kim Giáp', '', 53, 934, 33, 0, 0, 0, 0, '[]', '[{\"param\":24,\"id\":47} ,{\"param\":25,\"id\":2} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":11} ,{\"param\":25,\"id\":15} ,{\"param\":9,\"id\":27} ,{\"param\":5,\"id\":28},{\"param\":350,\"id\":29},{\"param\":100,\"id\":35}]', '[{\"param\":24,\"id\":47} ,{\"param\":25,\"id\":3} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":12} ,{\"param\":25,\"id\":15} ,{\"param\":9,\"id\":27} ,{\"param\":5,\"id\":28},{\"param\":350,\"id\":29},{\"param\":100,\"id\":33}]', '[{\"param\":24,\"id\":47} ,{\"param\":25,\"id\":4} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":13} ,{\"param\":25,\"id\":15} ,{\"param\":9,\"id\":27} ,{\"param\":5,\"id\":28},{\"param\":350,\"id\":29},{\"param\":100,\"id\":34}]'),
(143, 6, 0, 0, 0, 'Kim Giáp', '', 53, 936, 43, 0, 0, 0, 0, '[]', '[{\"param\":24,\"id\":47} ,{\"param\":25,\"id\":2} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":11} ,{\"param\":25,\"id\":15} ,{\"param\":9,\"id\":27} ,{\"param\":5,\"id\":28},{\"param\":350,\"id\":29},{\"param\":100,\"id\":35}]', '[{\"param\":24,\"id\":47} ,{\"param\":25,\"id\":3} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":12} ,{\"param\":25,\"id\":15} ,{\"param\":9,\"id\":27} ,{\"param\":5,\"id\":28},{\"param\":350,\"id\":29},{\"param\":100,\"id\":33}]', '[{\"param\":24,\"id\":47} ,{\"param\":25,\"id\":4} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":13} ,{\"param\":25,\"id\":15} ,{\"param\":9,\"id\":27} ,{\"param\":5,\"id\":28},{\"param\":350,\"id\":29},{\"param\":100,\"id\":34}]'),
(144, 4, 0, 0, 1, 'Thanh Mã Thủ', '', 15, 948, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(145, 4, 0, 0, 0, 'Thanh Mã Thủ', '', 15, 944, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(146, 4, 0, 0, 1, 'Huyết Hổ Thủ', '', 25, 949, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(147, 4, 0, 0, 0, 'Huyết Hổ Thủ', '', 25, 945, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(148, 4, 0, 0, 1, 'Kim Long Thủ', '', 35, 950, -1, 0, 0, 0, 0, '[]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":2} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":11} ,{\"param\":15,\"id\":17} ,{\"param\":7,\"id\":27} ,{\"param\":3,\"id\":28}]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":2} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":12} ,{\"param\":15,\"id\":17} ,{\"param\":7,\"id\":27} ,{\"param\":3,\"id\":28}]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":2} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":13} ,{\"param\":15,\"id\":17} ,{\"param\":7,\"id\":27} ,{\"param\":3,\"id\":28}]'),
(149, 4, 0, 0, 0, 'Kim Long Thủ', '', 35, 946, -1, 0, 0, 0, 0, '[]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":2} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":11} ,{\"param\":15,\"id\":17} ,{\"param\":7,\"id\":27} ,{\"param\":3,\"id\":28}]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":3} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":12} ,{\"param\":15,\"id\":17} ,{\"param\":7,\"id\":27} ,{\"param\":3,\"id\":28}]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":4} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":13} ,{\"param\":15,\"id\":17} ,{\"param\":7,\"id\":27} ,{\"param\":3,\"id\":28}]'),
(150, 4, 0, 0, 1, 'Hoắc Thiết Thủ', '', 45, 939, -1, 0, 0, 0, 0, '[]', '[{\"param\":8,\"id\":47} ,{\"param\":20,\"id\":3} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":12} ,{\"param\":20,\"id\":18} ,{\"param\":8,\"id\":27} ,{\"param\":4,\"id\":28},{\"param\":300,\"id\":29}]', '[{\"param\":8,\"id\":47} ,{\"param\":20,\"id\":4} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":13} ,{\"param\":20,\"id\":18} ,{\"param\":8,\"id\":27} ,{\"param\":4,\"id\":28},{\"param\":300,\"id\":29}]', '[{\"param\":8,\"id\":47} ,{\"param\":20,\"id\":2} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":13} ,{\"param\":20,\"id\":18} ,{\"param\":8,\"id\":27} ,{\"param\":4,\"id\":28},{\"param\":300,\"id\":29}]'),
(151, 4, 0, 0, 0, 'Hoắc Thiết Thủ', '', 45, 937, -1, 0, 0, 0, 0, '[]', '[{\"param\":8,\"id\":47} ,{\"param\":20,\"id\":3} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":12} ,{\"param\":20,\"id\":18} ,{\"param\":8,\"id\":27} ,{\"param\":4,\"id\":28},{\"param\":300,\"id\":29}]', '[{\"param\":8,\"id\":47} ,{\"param\":20,\"id\":4} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":13} ,{\"param\":20,\"id\":18} ,{\"param\":8,\"id\":27} ,{\"param\":4,\"id\":28},{\"param\":300,\"id\":29}]', '[{\"param\":8,\"id\":47} ,{\"param\":20,\"id\":2} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":13} ,{\"param\":20,\"id\":18} ,{\"param\":8,\"id\":27} ,{\"param\":4,\"id\":28},{\"param\":300,\"id\":29}]'),
(152, 4, 0, 0, 1, 'Kim Triền Thủ', '', 55, 940, -1, 0, 0, 0, 0, '[]', '[{\"param\":10,\"id\":47} ,{\"param\":25,\"id\":3} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":12} ,{\"param\":25,\"id\":18} ,{\"param\":9,\"id\":27} ,{\"param\":5,\"id\":28},{\"param\":350,\"id\":29},{\"param\":100,\"id\":34}]', '[{\"param\":10,\"id\":47} ,{\"param\":25,\"id\":4} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":13} ,{\"param\":25,\"id\":18} ,{\"param\":9,\"id\":27} ,{\"param\":5,\"id\":28},{\"param\":350,\"id\":29},{\"param\":100,\"id\":35}]', '[{\"param\":10,\"id\":47} ,{\"param\":25,\"id\":2} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":11} ,{\"param\":25,\"id\":18} ,{\"param\":9,\"id\":27} ,{\"param\":5,\"id\":28},{\"param\":350,\"id\":29},{\"param\":100,\"id\":33}]'),
(153, 4, 0, 0, 0, 'Kim Triền Thủ', '', 55, 938, -1, 0, 0, 0, 0, '[]', '[{\"param\":10,\"id\":47} ,{\"param\":25,\"id\":3} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":12} ,{\"param\":25,\"id\":18} ,{\"param\":9,\"id\":27} ,{\"param\":5,\"id\":28},{\"param\":350,\"id\":29},{\"param\":100,\"id\":34}]', '[{\"param\":10,\"id\":47} ,{\"param\":25,\"id\":4} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":13} ,{\"param\":25,\"id\":18} ,{\"param\":9,\"id\":27} ,{\"param\":5,\"id\":28},{\"param\":350,\"id\":29},{\"param\":100,\"id\":35}]', '[{\"param\":10,\"id\":47} ,{\"param\":25,\"id\":2} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":11} ,{\"param\":25,\"id\":18} ,{\"param\":9,\"id\":27} ,{\"param\":5,\"id\":28},{\"param\":350,\"id\":29},{\"param\":100,\"id\":33}]'),
(154, 2, 0, 0, 1, 'Áo Thố', '', 17, 183, 7, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(155, 2, 0, 0, 0, 'Áo Thố', '', 17, 884, 22, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(156, 2, 0, 0, 1, 'Áo Vải Bông', '', 27, 180, 3, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(157, 2, 0, 0, 0, 'Áo Vải Bông', '', 27, 885, 20, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(158, 2, 0, 0, 1, 'Áo Tơ Tằm', '', 37, 181, 5, 0, 0, 0, 0, '[]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":2} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":11} ,{\"param\":15,\"id\":15} ,{\"param\":7,\"id\":27} ,{\"param\":3,\"id\":28}]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":3} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":12} ,{\"param\":15,\"id\":15} ,{\"param\":7,\"id\":27} ,{\"param\":3,\"id\":28}]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":4} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":13} ,{\"param\":15,\"id\":15} ,{\"param\":7,\"id\":27} ,{\"param\":3,\"id\":28}]'),
(159, 2, 0, 0, 0, 'Áo Tơ Tằm', '', 37, 886, 18, 0, 0, 0, 0, '[]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":2} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":11} ,{\"param\":15,\"id\":15} ,{\"param\":7,\"id\":27} ,{\"param\":3,\"id\":28}]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":3} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":12} ,{\"param\":15,\"id\":15} ,{\"param\":7,\"id\":27} ,{\"param\":3,\"id\":28}]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":4} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":13} ,{\"param\":15,\"id\":15} ,{\"param\":7,\"id\":27} ,{\"param\":3,\"id\":28}]'),
(160, 2, 0, 0, 1, 'Hoắc Giáp Y', '', 47, 899, 36, 0, 0, 0, 0, '[]', '[{\"param\":16,\"id\":47} ,{\"param\":20,\"id\":4} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":13} ,{\"param\":20,\"id\":15} ,{\"param\":8,\"id\":27} ,{\"param\":4,\"id\":28},{\"param\":300,\"id\":29}]', '[{\"param\":16,\"id\":47} ,{\"param\":20,\"id\":2} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":11} ,{\"param\":20,\"id\":15} ,{\"param\":8,\"id\":27} ,{\"param\":4,\"id\":28},{\"param\":300,\"id\":29}]', '[{\"param\":16,\"id\":47} ,{\"param\":20,\"id\":3} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":12} ,{\"param\":20,\"id\":15} ,{\"param\":8,\"id\":27} ,{\"param\":4,\"id\":28},{\"param\":300,\"id\":29}]'),
(161, 2, 0, 0, 0, 'Hoắc Giáp Y', '', 47, 952, 38, 0, 0, 0, 0, '[]', '[{\"param\":16,\"id\":47} ,{\"param\":20,\"id\":4} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":13} ,{\"param\":20,\"id\":15} ,{\"param\":8,\"id\":27} ,{\"param\":4,\"id\":28},{\"param\":300,\"id\":29}]', '[{\"param\":16,\"id\":47} ,{\"param\":20,\"id\":2} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":11} ,{\"param\":20,\"id\":15} ,{\"param\":8,\"id\":27} ,{\"param\":4,\"id\":28},{\"param\":300,\"id\":29}]', '[{\"param\":16,\"id\":47} ,{\"param\":20,\"id\":3} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":12} ,{\"param\":20,\"id\":15} ,{\"param\":8,\"id\":27} ,{\"param\":4,\"id\":28},{\"param\":300,\"id\":29}]'),
(162, 2, 0, 0, 1, 'Kim Giáp Y', '', 57, 900, 32, 0, 0, 0, 0, '[]', '[{\"param\":24,\"id\":47} ,{\"param\":25,\"id\":4} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":13} ,{\"param\":25,\"id\":15} ,{\"param\":9,\"id\":27} ,{\"param\":5,\"id\":28},{\"param\":350,\"id\":29},{\"param\":100,\"id\":33}]', '[{\"param\":24,\"id\":47} ,{\"param\":25,\"id\":2} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":11} ,{\"param\":25,\"id\":15} ,{\"param\":9,\"id\":27} ,{\"param\":5,\"id\":28},{\"param\":350,\"id\":29},{\"param\":100,\"id\":34}]', '[{\"param\":24,\"id\":47} ,{\"param\":25,\"id\":3} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":12} ,{\"param\":25,\"id\":15} ,{\"param\":9,\"id\":27} ,{\"param\":5,\"id\":28},{\"param\":350,\"id\":29},{\"param\":100,\"id\":35}]'),
(163, 2, 0, 0, 0, 'Kim Giáp Y', '', 57, 901, 42, 0, 0, 0, 0, '[]', '[{\"param\":24,\"id\":47} ,{\"param\":25,\"id\":4} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":13} ,{\"param\":25,\"id\":15} ,{\"param\":9,\"id\":27} ,{\"param\":5,\"id\":28},{\"param\":350,\"id\":29},{\"param\":100,\"id\":33}]', '[{\"param\":24,\"id\":47} ,{\"param\":25,\"id\":2} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":11} ,{\"param\":25,\"id\":15} ,{\"param\":9,\"id\":27} ,{\"param\":5,\"id\":28},{\"param\":350,\"id\":29},{\"param\":100,\"id\":34}]', '[{\"param\":24,\"id\":47} ,{\"param\":25,\"id\":3} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":12} ,{\"param\":25,\"id\":15} ,{\"param\":9,\"id\":27} ,{\"param\":5,\"id\":28},{\"param\":350,\"id\":29},{\"param\":100,\"id\":35}]'),
(164, 0, 0, 0, 1, 'Dây Thanh Tuyến', '', 19, 210, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(165, 0, 0, 0, 0, 'Thanh Ngọc Trâm', '', 19, 199, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(166, 0, 0, 0, 1, 'Dây Huyết Tuyến', '', 29, 211, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(167, 0, 0, 0, 0, 'Hồng Bảo Trâm', '', 29, 198, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(168, 0, 0, 0, 1, 'Dây Kim Tuyến', '', 39, 212, -1, 0, 0, 0, 0, '[]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":2} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":11} ,{\"param\":15,\"id\":17} ,{\"param\":7,\"id\":27} ,{\"param\":3,\"id\":28}]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":3} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":11} ,{\"param\":15,\"id\":17} ,{\"param\":7,\"id\":27} ,{\"param\":3,\"id\":28}]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":4} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":11} ,{\"param\":15,\"id\":17} ,{\"param\":7,\"id\":27} ,{\"param\":3,\"id\":28}]'),
(169, 0, 0, 0, 0, 'Kim Lân Trâm', '', 39, 201, -1, 0, 0, 0, 0, '[]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":2} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":11} ,{\"param\":15,\"id\":17} ,{\"param\":7,\"id\":27} ,{\"param\":3,\"id\":28}]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":3} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":12} ,{\"param\":15,\"id\":17} ,{\"param\":7,\"id\":27} ,{\"param\":3,\"id\":28}]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":4} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":13} ,{\"param\":15,\"id\":17} ,{\"param\":7,\"id\":27} ,{\"param\":3,\"id\":28}]'),
(170, 0, 0, 0, 1, 'Dây Hoắc Tuyến', '', 49, 990, -1, 0, 0, 0, 0, '[]', '[{\"param\":8,\"id\":47} ,{\"param\":20,\"id\":2} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":11} ,{\"param\":20,\"id\":17} ,{\"param\":8,\"id\":27} ,{\"param\":4,\"id\":28},{\"param\":300,\"id\":29}]', '[{\"param\":8,\"id\":47} ,{\"param\":20,\"id\":3} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":12} ,{\"param\":20,\"id\":17} ,{\"param\":8,\"id\":27} ,{\"param\":4,\"id\":28},{\"param\":300,\"id\":29}]', '[{\"param\":8,\"id\":47} ,{\"param\":20,\"id\":4} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":13} ,{\"param\":20,\"id\":17} ,{\"param\":8,\"id\":27} ,{\"param\":4,\"id\":28},{\"param\":300,\"id\":29}]'),
(171, 0, 0, 0, 0, 'Bích Hoa Trâm', '', 49, 202, -1, 0, 0, 0, 0, '[]', '[{\"param\":8,\"id\":47} ,{\"param\":20,\"id\":2} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":11} ,{\"param\":20,\"id\":17} ,{\"param\":8,\"id\":27} ,{\"param\":4,\"id\":28},{\"param\":300,\"id\":29}]', '[{\"param\":8,\"id\":47} ,{\"param\":20,\"id\":3} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":12} ,{\"param\":20,\"id\":17} ,{\"param\":8,\"id\":27} ,{\"param\":4,\"id\":28},{\"param\":300,\"id\":29}]', '[{\"param\":8,\"id\":47} ,{\"param\":20,\"id\":4} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":13} ,{\"param\":20,\"id\":17} ,{\"param\":8,\"id\":27} ,{\"param\":4,\"id\":28},{\"param\":300,\"id\":29}]'),
(172, 0, 0, 0, 1, 'Ngân Bội Tuyến', '', 59, 991, -1, 0, 0, 0, 0, '[]', '[{\"param\":10,\"id\":47} ,{\"param\":25,\"id\":2} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":11} ,{\"param\":25,\"id\":17} ,{\"param\":9,\"id\":27} ,{\"param\":5,\"id\":28},{\"param\":350,\"id\":29},{\"param\":100,\"id\":35}]', '[{\"param\":10,\"id\":47} ,{\"param\":25,\"id\":3} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":12} ,{\"param\":25,\"id\":17} ,{\"param\":9,\"id\":27} ,{\"param\":5,\"id\":28},{\"param\":350,\"id\":29},{\"param\":100,\"id\":33}]', '[{\"param\":10,\"id\":47} ,{\"param\":25,\"id\":4} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":13} ,{\"param\":25,\"id\":17} ,{\"param\":9,\"id\":27} ,{\"param\":5,\"id\":28},{\"param\":350,\"id\":29},{\"param\":100,\"id\":34}]'),
(173, 0, 0, 0, 0, 'Ngân Hoa Trâm', '', 59, 208, -1, 0, 0, 0, 0, '[]', '[{\"param\":10,\"id\":47} ,{\"param\":25,\"id\":2} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":11} ,{\"param\":25,\"id\":17} ,{\"param\":9,\"id\":27} ,{\"param\":5,\"id\":28},{\"param\":350,\"id\":29},{\"param\":100,\"id\":35}]', '[{\"param\":10,\"id\":47} ,{\"param\":25,\"id\":3} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":12} ,{\"param\":25,\"id\":17} ,{\"param\":9,\"id\":27} ,{\"param\":5,\"id\":28},{\"param\":350,\"id\":29},{\"param\":100,\"id\":33}]', '[{\"param\":10,\"id\":47} ,{\"param\":25,\"id\":4} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":13} ,{\"param\":25,\"id\":17} ,{\"param\":9,\"id\":27} ,{\"param\":5,\"id\":28},{\"param\":350,\"id\":29},{\"param\":100,\"id\":34}]'),
(174, 9, 0, 0, 2, 'Bùa Hộ Thân', '', 12, 920, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(175, 9, 0, 0, 2, 'Bùa Kháng Ma', '', 22, 921, -1, 0, 0, 0, 0, '[]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":5} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":12} ,{\"param\":15,\"id\":20} ,{\"param\":6,\"id\":30} ,{\"param\":3,\"id\":31},{\"param\":250,\"id\":32}]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":5} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":13} ,{\"param\":15,\"id\":20} ,{\"param\":6,\"id\":30} ,{\"param\":3,\"id\":31},{\"param\":250,\"id\":32}]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":5} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":14} ,{\"param\":15,\"id\":20} ,{\"param\":6,\"id\":30} ,{\"param\":3,\"id\":31},{\"param\":250,\"id\":32}]'),
(176, 9, 0, 0, 2, 'Bùa Phúc Mệnh', '', 32, 922, -1, 0, 0, 0, 0, '[]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":5} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":12} ,{\"param\":15,\"id\":20} ,{\"param\":6,\"id\":30} ,{\"param\":3,\"id\":31},{\"param\":250,\"id\":32}]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":5} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":13} ,{\"param\":15,\"id\":20} ,{\"param\":6,\"id\":30} ,{\"param\":3,\"id\":31},{\"param\":250,\"id\":32}]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":5} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":14} ,{\"param\":15,\"id\":20} ,{\"param\":6,\"id\":30} ,{\"param\":3,\"id\":31},{\"param\":250,\"id\":32}]'),
(177, 9, 0, 0, 2, 'Bùa Thánh Ý', '', 42, 923, -1, 0, 0, 0, 0, '[]', '[{\"param\":8,\"id\":47} ,{\"param\":20,\"id\":5} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":12} ,{\"param\":20,\"id\":20} ,{\"param\":8,\"id\":30} ,{\"param\":4,\"id\":31},{\"param\":300,\"id\":32}]', '[{\"param\":8,\"id\":47} ,{\"param\":20,\"id\":5} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":13} ,{\"param\":20,\"id\":20} ,{\"param\":8,\"id\":30} ,{\"param\":4,\"id\":31},{\"param\":300,\"id\":32}]', '[{\"param\":8,\"id\":47} ,{\"param\":20,\"id\":5} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":11} ,{\"param\":20,\"id\":20} ,{\"param\":8,\"id\":30} ,{\"param\":4,\"id\":31},{\"param\":300,\"id\":32}]'),
(178, 9, 0, 0, 2, 'Bùa Vạn Phước', '', 52, 924, -1, 0, 0, 0, 0, '[]', '[{\"param\":10,\"id\":47} ,{\"param\":25,\"id\":5} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":12} ,{\"param\":25,\"id\":20} ,{\"param\":9,\"id\":30} ,{\"param\":5,\"id\":31},{\"param\":350,\"id\":32},{\"param\":100,\"id\":36}]', '[{\"param\":10,\"id\":47} ,{\"param\":25,\"id\":5} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":13} ,{\"param\":25,\"id\":20} ,{\"param\":9,\"id\":30} ,{\"param\":5,\"id\":31},{\"param\":350,\"id\":32},{\"param\":100,\"id\":36}]', '[{\"param\":10,\"id\":47} ,{\"param\":25,\"id\":5} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":11} ,{\"param\":25,\"id\":20} ,{\"param\":9,\"id\":30} ,{\"param\":5,\"id\":31},{\"param\":350,\"id\":32},{\"param\":100,\"id\":36}]'),
(179, 7, 0, 0, 2, 'Cẩm Thạch Bội ', '', 14, 915, -1, 0, 0, 0, 0, '[]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":5} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":13} ,{\"param\":15,\"id\":17} ,{\"param\":6,\"id\":30} ,{\"param\":5,\"id\":31}]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":5} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":11} ,{\"param\":15,\"id\":17} ,{\"param\":5,\"id\":30} ,{\"param\":5,\"id\":31}]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":5} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":12} ,{\"param\":15,\"id\":17} ,{\"param\":6,\"id\":30} ,{\"param\":5,\"id\":31}]'),
(180, 7, 0, 0, 2, 'Phỉ Thúy Bội', '', 24, 916, -1, 0, 0, 0, 0, '[]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":5} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":13} ,{\"param\":15,\"id\":17} ,{\"param\":6,\"id\":30} ,{\"param\":5,\"id\":31},{\"param\":250,\"id\":32}]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":5} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":11} ,{\"param\":15,\"id\":17} ,{\"param\":6,\"id\":30} ,{\"param\":5,\"id\":31},{\"param\":250,\"id\":32}]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":5} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":12} ,{\"param\":15,\"id\":17} ,{\"param\":6,\"id\":30} ,{\"param\":5,\"id\":31},{\"param\":250,\"id\":32}]'),
(181, 7, 0, 0, 2, 'Bạch Ngọc Bội ', '', 34, 917, -1, 0, 0, 0, 0, '[]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":5} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":13} ,{\"param\":15,\"id\":17} ,{\"param\":6,\"id\":30} ,{\"param\":5,\"id\":31},{\"param\":250,\"id\":32}]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":5} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":11} ,{\"param\":15,\"id\":17} ,{\"param\":6,\"id\":30} ,{\"param\":5,\"id\":31},{\"param\":250,\"id\":32}]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":5} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":12} ,{\"param\":15,\"id\":17} ,{\"param\":6,\"id\":30} ,{\"param\":5,\"id\":31},{\"param\":250,\"id\":32}]'),
(182, 7, 0, 0, 2, 'Ngọc Bội Hổ Phách', '', 44, 918, -1, 0, 0, 0, 0, '[]', '[{\"param\":8,\"id\":47} ,{\"param\":20,\"id\":5} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":13} ,{\"param\":20,\"id\":14} ,{\"param\":8,\"id\":30} ,{\"param\":4,\"id\":31},{\"param\":300,\"id\":32}]', '[{\"param\":8,\"id\":47} ,{\"param\":20,\"id\":5} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":11} ,{\"param\":20,\"id\":14} ,{\"param\":8,\"id\":30} ,{\"param\":4,\"id\":31},{\"param\":300,\"id\":32}]', '[{\"param\":8,\"id\":47} ,{\"param\":20,\"id\":5} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":12} ,{\"param\":20,\"id\":14} ,{\"param\":8,\"id\":30} ,{\"param\":4,\"id\":31},{\"param\":300,\"id\":32}]'),
(183, 7, 0, 0, 2, 'Thạch Anh Bội ', '', 54, 919, -1, 0, 0, 0, 0, '[]', '[{\"param\":10,\"id\":47} ,{\"param\":25,\"id\":5} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":13} ,{\"param\":25,\"id\":14} ,{\"param\":9,\"id\":30} ,{\"param\":5,\"id\":31},{\"param\":350,\"id\":32},{\"param\":100,\"id\":33}]', '[{\"param\":10,\"id\":47} ,{\"param\":25,\"id\":5} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":11} ,{\"param\":25,\"id\":14} ,{\"param\":9,\"id\":30} ,{\"param\":5,\"id\":31},{\"param\":350,\"id\":32},{\"param\":100,\"id\":34}]', '[{\"param\":10,\"id\":47} ,{\"param\":25,\"id\":5} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":12} ,{\"param\":25,\"id\":14} ,{\"param\":9,\"id\":30} ,{\"param\":5,\"id\":31},{\"param\":350,\"id\":32},{\"param\":100,\"id\":35}]');
INSERT INTO `item` (`id`, `type`, `class`, `skill`, `gender`, `name`, `description`, `level`, `iconID`, `part`, `uptoup`, `isExpires`, `secondsExpires`, `saleCoinLock`, `ItemOption`, `Option1`, `Option2`, `Option3`) VALUES
(184, 5, 0, 0, 2, 'Nhẫn Bạc', '', 16, 910, -1, 0, 0, 0, 0, '[]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":5} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":11} ,{\"param\":15,\"id\":17} ,{\"param\":6,\"id\":30} ,{\"param\":3,\"id\":31},{\"param\":250,\"id\":32}]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":5} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":12} ,{\"param\":15,\"id\":17} ,{\"param\":6,\"id\":30} ,{\"param\":3,\"id\":31},{\"param\":250,\"id\":32}]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":5} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":13} ,{\"param\":15,\"id\":17} ,{\"param\":6,\"id\":30} ,{\"param\":3,\"id\":31},{\"param\":250,\"id\":32}]'),
(185, 5, 0, 0, 2, 'Nhẫn Mắt Mèo', '', 26, 911, -1, 0, 0, 0, 0, '[]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":5} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":11} ,{\"param\":15,\"id\":17} ,{\"param\":6,\"id\":30} ,{\"param\":3,\"id\":31},{\"param\":250,\"id\":32}]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":5} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":12} ,{\"param\":15,\"id\":17} ,{\"param\":6,\"id\":30} ,{\"param\":3,\"id\":31},{\"param\":250,\"id\":32}]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":5} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":13} ,{\"param\":15,\"id\":17} ,{\"param\":6,\"id\":30} ,{\"param\":3,\"id\":31},{\"param\":250,\"id\":32}]'),
(186, 5, 0, 0, 2, 'Nhẫn Thạch Lam', '', 36, 912, -1, 0, 0, 0, 0, '[]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":5} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":11} ,{\"param\":15,\"id\":17} ,{\"param\":6,\"id\":30} ,{\"param\":3,\"id\":31},{\"param\":250,\"id\":32}]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":5} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":12} ,{\"param\":15,\"id\":17} ,{\"param\":6,\"id\":30} ,{\"param\":3,\"id\":31},{\"param\":250,\"id\":32}]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":5} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":13} ,{\"param\":15,\"id\":17} ,{\"param\":6,\"id\":30} ,{\"param\":3,\"id\":31},{\"param\":250,\"id\":32}]'),
(187, 5, 0, 0, 2, 'Nhẫn Opal', '', 46, 913, -1, 0, 0, 0, 0, '[]', '[{\"param\":8,\"id\":47} ,{\"param\":20,\"id\":5} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":11} ,{\"param\":20,\"id\":17} ,{\"param\":8,\"id\":30} ,{\"param\":4,\"id\":31},{\"param\":300,\"id\":32}]', '[{\"param\":8,\"id\":47} ,{\"param\":20,\"id\":5} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":12} ,{\"param\":20,\"id\":17} ,{\"param\":8,\"id\":30} ,{\"param\":4,\"id\":31},{\"param\":300,\"id\":32}]', '[{\"param\":8,\"id\":47} ,{\"param\":20,\"id\":5} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":13} ,{\"param\":20,\"id\":17} ,{\"param\":8,\"id\":30} ,{\"param\":4,\"id\":31},{\"param\":300,\"id\":32}]'),
(188, 5, 0, 0, 2, 'Nhẫn Kim cương', '', 56, 914, -1, 0, 0, 0, 0, '[]', '[{\"param\":10,\"id\":47} ,{\"param\":25,\"id\":5} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":11} ,{\"param\":25,\"id\":17} ,{\"param\":9,\"id\":30} ,{\"param\":5,\"id\":31},{\"param\":350,\"id\":32},{\"param\":100,\"id\":35}]', '[{\"param\":10,\"id\":47} ,{\"param\":25,\"id\":5} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":12} ,{\"param\":25,\"id\":17} ,{\"param\":9,\"id\":30} ,{\"param\":5,\"id\":31},{\"param\":350,\"id\":32},{\"param\":100,\"id\":33}]', '[{\"param\":10,\"id\":47} ,{\"param\":25,\"id\":5} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":13} ,{\"param\":25,\"id\":17} ,{\"param\":9,\"id\":30} ,{\"param\":5,\"id\":31},{\"param\":350,\"id\":32},{\"param\":100,\"id\":34}]'),
(189, 3, 0, 0, 2, 'Dây Chuyền Bạc', '', 18, 905, -1, 0, 0, 0, 0, '[]', '[{\"param\":2,\"id\":47} ,{\"param\":8,\"id\":5} ,{\"param\":15,\"id\":6}, {\"param\":10,\"id\":7} ,{\"param\":10,\"id\":12} ,{\"param\":5,\"id\":14} ,{\"param\":5,\"id\":30} ,{\"param\":5,\"id\":31}]', '[{\"param\":2,\"id\":47} ,{\"param\":8,\"id\":5} ,{\"param\":15,\"id\":6}, {\"param\":10,\"id\":7} ,{\"param\":10,\"id\":13} ,{\"param\":5,\"id\":14} ,{\"param\":5,\"id\":30} ,{\"param\":5,\"id\":31}]', '[{\"param\":2,\"id\":47} ,{\"param\":8,\"id\":5} ,{\"param\":15,\"id\":6}, {\"param\":10,\"id\":7} ,{\"param\":10,\"id\":11} ,{\"param\":5,\"id\":14} ,{\"param\":5,\"id\":30} ,{\"param\":5,\"id\":31}]'),
(190, 3, 0, 0, 2, 'Dây Chuyền Bạch Kim', '', 28, 906, -1, 0, 0, 0, 0, '[]', '[{\"param\":4,\"id\":47} ,{\"param\":10,\"id\":5} ,{\"param\":20,\"id\":6}, {\"param\":20,\"id\":7} ,{\"param\":10,\"id\":12} ,{\"param\":10,\"id\":14} ,{\"param\":4,\"id\":30} ,{\"param\":2,\"id\":31},{\"param\":200,\"id\":32}]', '[{\"param\":4,\"id\":47} ,{\"param\":10,\"id\":5} ,{\"param\":20,\"id\":6}, {\"param\":20,\"id\":7} ,{\"param\":10,\"id\":13} ,{\"param\":10,\"id\":14} ,{\"param\":4,\"id\":30} ,{\"param\":2,\"id\":31},{\"param\":200,\"id\":32}]', '[{\"param\":4,\"id\":47} ,{\"param\":10,\"id\":5} ,{\"param\":20,\"id\":6}, {\"param\":20,\"id\":7} ,{\"param\":10,\"id\":11} ,{\"param\":10,\"id\":14} ,{\"param\":4,\"id\":30} ,{\"param\":2,\"id\":31},{\"param\":200,\"id\":32}]'),
(191, 3, 0, 0, 2, 'Dây Chuyền Vàng', '', 38, 907, -1, 0, 0, 0, 0, '[]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":5} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":12} ,{\"param\":15,\"id\":14} ,{\"param\":6,\"id\":30} ,{\"param\":3,\"id\":31},{\"param\":250,\"id\":32}]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":5} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":13} ,{\"param\":15,\"id\":14} ,{\"param\":6,\"id\":30} ,{\"param\":3,\"id\":31},{\"param\":250,\"id\":32}]', '[{\"param\":6,\"id\":47} ,{\"param\":15,\"id\":5} ,{\"param\":30,\"id\":6}, {\"param\":30,\"id\":7} ,{\"param\":15,\"id\":11} ,{\"param\":15,\"id\":14} ,{\"param\":6,\"id\":30} ,{\"param\":3,\"id\":31},{\"param\":250,\"id\":32}]'),
(192, 3, 0, 0, 2, 'Dây Chuyền Lục Bảo', '', 48, 908, -1, 0, 0, 0, 0, '[]', '[{\"param\":8,\"id\":47} ,{\"param\":20,\"id\":5} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":12} ,{\"param\":20,\"id\":14} ,{\"param\":8,\"id\":30} ,{\"param\":4,\"id\":31},{\"param\":300,\"id\":32}]', '[{\"param\":8,\"id\":47} ,{\"param\":20,\"id\":5} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":13} ,{\"param\":20,\"id\":14} ,{\"param\":8,\"id\":30} ,{\"param\":4,\"id\":31},{\"param\":300,\"id\":32}]', '[{\"param\":8,\"id\":47} ,{\"param\":20,\"id\":5} ,{\"param\":40,\"id\":6}, {\"param\":40,\"id\":7} ,{\"param\":20,\"id\":11} ,{\"param\":20,\"id\":14} ,{\"param\":8,\"id\":30} ,{\"param\":4,\"id\":31},{\"param\":300,\"id\":32}]'),
(193, 3, 0, 0, 2, 'Dây Chuyền Hồng Bảo', '', 58, 909, -1, 0, 0, 0, 0, '[]', '[{\"param\":10,\"id\":47} ,{\"param\":25,\"id\":5} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":12} ,{\"param\":25,\"id\":14} ,{\"param\":9,\"id\":30} ,{\"param\":5,\"id\":31},{\"param\":350,\"id\":32},{\"param\":100,\"id\":34}]', '[{\"param\":10,\"id\":47} ,{\"param\":25,\"id\":5} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":13} ,{\"param\":25,\"id\":14} ,{\"param\":9,\"id\":30} ,{\"param\":5,\"id\":31},{\"param\":350,\"id\":32},{\"param\":100,\"id\":35}]', '[{\"param\":10,\"id\":47} ,{\"param\":25,\"id\":5} ,{\"param\":50,\"id\":6}, {\"param\":50,\"id\":7} ,{\"param\":25,\"id\":11} ,{\"param\":25,\"id\":14} ,{\"param\":9,\"id\":30} ,{\"param\":5,\"id\":31},{\"param\":350,\"id\":32},{\"param\":100,\"id\":33}]'),
(194, 1, 1, 0, 2, 'Kiếm Gỗ', '', 1, 867, 12, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(195, 8, 0, 0, 1, 'Giày', '', 1, 895, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(196, 8, 0, 0, 0, 'Giày', '', 1, 891, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(197, 6, 0, 0, 1, 'Quần Da Thú', '', 3, 186, 0, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(198, 6, 0, 0, 0, 'Quần Da Thú', '', 3, 887, 9, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(199, 4, 0, 0, 1, 'Găng Tay', '', 5, 947, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(200, 4, 0, 0, 0, 'Găng Tay', '', 5, 943, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(201, 2, 0, 0, 1, 'Áo Da Thú', '', 7, 182, 1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(202, 2, 0, 0, 0, 'Áo Da Thú', '', 7, 883, 10, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(203, 0, 0, 0, 1, 'Dây Bạch Tuyến', '', 9, 209, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(204, 0, 0, 0, 0, 'Trâm Cài', '', 9, 200, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(205, 9, 0, 0, 2, 'Bùa Bình An', '', 2, 1020, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(206, 7, 0, 0, 2, 'Ngọc Bội', '', 4, 1032, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(207, 5, 0, 0, 2, 'Nhẫn', '', 6, 1034, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(208, 3, 0, 0, 2, 'Dây Chuyền', '', 8, 1033, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(209, 25, 0, 0, 2, 'Lông nhím', 'Trưởng làng cần vật phẩm này', 1, 1053, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(210, 25, 0, 0, 2, 'Da thỏ', 'Trưởng làng cần vật phẩm này', 1, 1052, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(211, 25, 0, 0, 2, 'Bông thảo dược', 'Dùng để chế thuốc', 1, 1054, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(212, 25, 0, 0, 2, 'Khoáng thạch', 'Dùng làm đồ trang sức', 1, 1131, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(213, 25, 0, 0, 2, 'Vỏ Ốc Đá', 'Dùng làm đồ trang sức', 1, 1132, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(214, 23, 0, 0, 2, 'Thư liên lạc', 'Vật phẩm nhiệm vụ', 1, 1134, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(215, 27, 0, 0, 2, 'Túi vải cấp 1', 'Mở thêm 6 ô trong hành trang', 1, 1133, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(216, 25, 0, 0, 2, 'Nhị hầu tửu', 'Nguyên liệu đặc biệt chữa vết thương', 1, 1163, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(217, 25, 0, 0, 2, 'Xác Châu Chấu', 'Nguyên liệu đặc biệt chữa vết thương', 1, 1162, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(218, 21, 0, 0, 2, 'Sushi', '', 1, 1164, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(219, 24, 0, 0, 2, 'Bình rỗng', 'Dùng để chứa nước', 1, 1169, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(220, 23, 0, 0, 2, 'Bình nước', 'Bên trong chứa đầy nước', 1, 1168, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(221, 23, 0, 0, 2, 'Rìu Bạc', 'Vật trấn ngư chi bảo Làng Chài', 1, 1170, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(222, 22, 0, 0, 2, 'Ngọc 1 sao', 'Hội tụ 7 viên sẽ được phần thưởng giá trị', 1, 1173, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(223, 22, 0, 0, 2, 'Ngọc 2 sao', 'Hội tụ 7 viên sẽ được phần thưởng giá trị', 1, 1174, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(224, 22, 0, 0, 2, 'Ngọc 3 sao', 'Hội tụ 7 viên sẽ được phần thưởng giá trị', 1, 1175, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(225, 22, 0, 0, 2, 'Ngọc 4 sao', 'Hội tụ 7 viên sẽ được phần thưởng giá trị', 1, 1176, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(226, 22, 0, 0, 2, 'Ngọc 5 sao', 'Hội tụ 7 viên sẽ được phần thưởng giá trị', 1, 1177, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(227, 22, 0, 0, 2, 'Ngọc 6 sao', 'Hội tụ 7 viên sẽ được phần thưởng giá trị', 1, 1178, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(228, 22, 0, 0, 2, 'Ngọc 7 sao', 'Hội tụ 7 viên sẽ được phần thưởng giá trị', 1, 1179, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(229, 27, 0, 0, 2, 'Túi vải cấp 2', 'Mở thêm 6 ô trong hành trang', 5, 1194, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(230, 25, 0, 0, 2, 'Chìa khóa cơ quan', 'Vật phẩm nhiệm vụ', 34, 653, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(231, 25, 0, 0, 2, 'Chìa khóa cơ quan', 'Dùng để mở cửa địa đạo', 34, 653, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(232, 23, 0, 0, 2, 'Địa đồ', 'Vật phẩm nhiệm vụ', 35, 656, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(233, 24, 0, 0, 2, 'Địa đồ', 'Khi sử dụng sẽ cho biết tọa độ cần đến', 35, 656, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(234, 24, 0, 0, 2, 'Địa đồ', 'Khi sử dụng sẽ cho biết tọa độ cần đến', 35, 656, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(235, 24, 0, 0, 2, 'Địa đồ', 'Khi sử dụng sẽ cho biết tọa độ cần đến', 35, 656, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(236, 23, 0, 0, 2, 'Tinh thể băng', 'Vật phẩm nhiệm vụ', 1, 657, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(237, 23, 0, 0, 2, 'Tinh thể băng', 'Có thể trung hòa nhiệt độ', 1, 657, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(238, 23, 0, 0, 2, 'Xác dơi lửa', '', 41, 659, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(239, 23, 0, 0, 2, 'Xác dơi lửa', 'Đã bị đóng băng', 41, 661, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(240, 27, 0, 0, 2, 'Giấy phép tẩy tiềm năng', 'Sử dụng sẽ tăng 1 lần tẩy tiềm năng', 10, 663, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(241, 27, 0, 0, 2, 'Giấy phép tẩy kỹ năng', 'Sử dụng sẽ tăng 1 lần tẩy kỹ năng', 10, 727, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(242, 28, 0, 0, 2, 'Bảo hiểm sơ cấp', 'Bảo hiểm nâng cấp trang bị từ cấp 1 đến cấp 8', 1, 674, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(243, 27, 0, 0, 2, 'Chuyển hóa y phục', 'Chuyển cấp độ từ y phục qua y phục', 1, 669, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(244, 27, 0, 0, 2, 'Chuyển hóa trang sức', 'Chuyển cấp độ từ trang sức qua trang sức', 1, 667, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(245, 27, 0, 0, 2, 'Chuyển hóa vũ khí', 'Chuyển cấp độ từ vũ khí qua vũ khí', 1, 668, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(246, 10, 0, 0, 2, 'Dơi đen', 'Hỗ trợ tấn công quái', 1, 670, -1, 0, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(247, 27, 0, 0, 2, 'Thỏi bạc', 'Có thể đổi lấy xu hoặc yên', 1, 698, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(248, 27, 0, 0, 2, 'Nấm linh chi', 'Nhân 2 kinh nghiệm đánh quái. Duy trì 5h, cộng dồn khi sử dụng.', 1, 1004, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(249, 18, 0, 0, 2, 'Sashimi cao cấp', 'Nữa giây phục hồi 40 HP, MP duy trì 3 ngày', 30, 956, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(250, 18, 0, 0, 2, 'Gà quay cao cấp', 'Nữa giây phục hồi 50 HP, MP duy trì 3 ngày', 40, 957, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(251, 27, 0, 0, 2, 'Mảnh giấy vụn', 'Dùng để đổi sách tiềm năng hoặc sách kỹ năng', 1, 1201, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(252, 27, 0, 0, 2, 'Sách kỹ năng sơ cấp', 'Học xong sẽ tăng 1 điểm kỹ năng, được học tối đa 8 quyển', 10, 1202, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(253, 27, 0, 0, 2, 'Sách tiềm năng sơ cấp', 'Học xong sẽ tăng 10 điểm tiềm năng, được học tối đa 8 quyển', 10, 1203, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(254, 27, 0, 0, 2, 'Hoàn cốt chi chú sơ cấp', 'Xóa sạch kinh nghiệm âm dưới cấp 30', 1, 1204, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(255, 27, 0, 0, 2, 'Hoàn cốt chi chú trung cấp', 'Xóa sạch kinh nghiệm âm dưới cấp 60', 30, 1207, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(256, 27, 0, 0, 2, 'Hoàn cốt chi chú cao cấp', 'Xóa sạch kinh nghiệm âm cấp 60 trở lên', 60, 1206, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(257, 27, 0, 0, 2, 'Hoàn lương chi thảo', 'Mỗi lần sử dụng giảm 5 điểm hiếu chiến', 1, 1205, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(258, 11, 0, 0, 1, 'Mặt nạ Sasuke', 'Giúp thay đổi diện mạo', 10, 1208, 112, 0, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(259, 11, 0, 0, 0, 'Mặt nạ Muramasa', 'Giúp thay đổi diện mạo', 10, 1209, 113, 0, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(260, 27, 0, 0, 2, 'Chìa khóa Lãnh Địa Gia Tộc', 'Dùng để mở cơ quan lãnh địa gia tộc', 1, 653, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(261, 27, 0, 0, 2, 'Lam Thảo dược', 'Giúp tập trung thị lực', 1, 1225, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(262, 20, 0, 0, 2, 'Đồng tiền gia tộc', 'Dùng để đổi túi quà gia tộc', 1, 1226, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(263, 27, 0, 0, 2, 'Túi quà gia tộc', 'Nếu may mắn có thể sẽ mở ra hoán chuyển sơ cấp', 1, 1227, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(264, 25, 0, 0, 2, 'Giỏ Cá hổ', 'Bên trong chứa Cá hổ', 1, 1229, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(265, 25, 0, 0, 2, 'Giỏ Rắn tía', 'Bên trong chứa Rắn tía', 1, 1230, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(266, 24, 0, 0, 2, 'Cần câu', 'Vật phẩm nhiệm vụ', 49, 1231, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(267, 25, 0, 0, 2, 'Guốc gỗ', 'Đồ dùng của Soba', 1, 1232, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(268, 27, 0, 0, 2, 'Tà thú lệnh', 'Dùng để tăng thêm 2 lần truy bắt tà thú, mỗi ngày dùng tối đa 1 lần', 1, 1228, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(269, 27, 0, 0, 2, 'Hoán chuyển sơ cấp', 'Chuyển hóa trang bị từ cấp 1 đến cấp 10', 1, 669, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(270, 27, 0, 0, 2, 'Hoán chuyển trung cấp', 'Chuyển hóa trang bị từ cấp 1 đến cấp 13', 1, 667, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(271, 27, 0, 0, 2, 'Hoán chuyển cao cấp', 'Chuyển hóa trang bị từ cấp 1 đến cấp 16', 1, 668, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(272, 27, 0, 0, 2, 'Rương may mắn', 'Nếu may mắn có thể sẽ mở ra bảo hiểm nâng cấp', 1, 1233, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(273, 11, 0, 0, 1, 'Mặt nạ sát thủ', 'Giúp thay đổi diện mạo', 20, 1238, 124, 0, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(274, 11, 0, 0, 0, 'Mặt nạ trinh sát', 'Giúp thay đổi diện mạo', 20, 1239, 125, 0, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(275, 27, 0, 0, 2, 'Minh Mẫn Đan', 'Tăng 500 độ chính xác duy trì 10 phút', 20, 1245, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(276, 27, 0, 0, 2, 'Long Lực Đan', 'Tăng 500% tấn công cơ bản duy trì 10 phút', 20, 1248, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(277, 27, 0, 0, 2, 'Kháng Thể Đan', 'Tăng 100 kháng tất cả duy trì 10 phút', 20, 1247, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(278, 27, 0, 0, 2, 'Sinh Mệnh Đan', 'Tăng 1000 HP duy trì 10 phút', 20, 1246, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(279, 27, 0, 0, 2, 'Vạn biến lệnh', 'Di chuyển nhanh tới người chơi khác', 10, 1244, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(280, 27, 0, 0, 2, 'Lệnh bài hang động', 'Tăng thêm 1 lần vào hang động, mỗi ngày sử dụng tối đa 2 cái', 20, 1242, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(281, 27, 0, 0, 2, 'Lệnh bài gia tộc', 'Tăng thêm 1 lần vào lãnh địa gia tộc, mỗi tuần sử dụng tối đa 4 cái, sẽ khóa sau khi mua.', 20, 1243, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(282, 27, 0, 0, 2, 'Rương tinh xảo', 'Bên trong chứa đầy vật phẩm có giá trị', 20, 1250, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(283, 27, 0, 0, 2, 'Túi vải cấp 3', 'Mở thêm 12 ô trong hành trang', 1, 1252, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(284, 28, 0, 0, 2, 'Bảo hiểm trung cấp', 'Bảo hiểm nâng cấp trang bị từ cấp 1 đến cấp 12', 1, 1251, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(285, 28, 0, 0, 2, 'Bảo hiểm cao cấp', 'Bảo hiểm nâng cấp trang bị từ cấp 1 đến cấp 14', 1, 1253, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(286, 11, 0, 0, 1, 'Mặt nạ Koumou', 'Giúp thay đổi diện mạo', 30, 1258, 126, 0, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(287, 11, 0, 0, 0, 'Mặt nạ Ryokuhatsu', 'Giúp thay đổi diện mạo', 30, 1259, 127, 0, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(288, 27, 0, 0, 2, 'Thất thú thú bảo', 'Chứa đựng phần quà bất ngờ', 20, 1266, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(289, 27, 0, 0, 2, 'Thẻ bài sơ', 'Tăng 1 điểm tinh tú', 20, 1261, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(290, 27, 0, 0, 2, 'Thẻ bài trung', 'Tăng 3 điểm tinh tú', 20, 1260, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(291, 27, 0, 0, 2, 'Thẻ bài cao', 'Tăng 9 điểm tinh tú', 20, 1262, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(292, 27, 0, 0, 2, 'Bột mì', 'Nguyên liệu làm bánh', 20, 1271, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(293, 27, 0, 0, 2, 'Trứng', 'Nguyên liệu làm bánh', 20, 1284, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(294, 27, 0, 0, 2, 'Đường', 'Nguyên liệu làm bánh', 20, 1272, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(295, 27, 0, 0, 2, 'Hạt sen', 'Nguyên liệu làm bánh', 20, 1282, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(296, 27, 0, 0, 2, 'Đậu xanh', 'Nguyên liệu làm bánh', 20, 1273, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(297, 27, 0, 0, 2, 'Mứt', 'Nguyên liệu làm bánh', 20, 1283, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(298, 27, 0, 0, 2, 'Bánh thập cẩm', 'Vật phẩm sự kiện trung thu', 20, 1268, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(299, 27, 0, 0, 2, 'Bánh dẻo', 'Vật phẩm sự kiện trung thu', 20, 1269, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(300, 27, 0, 0, 2, 'Bánh đậu xanh', 'Vật phẩm sự kiện trung thu', 20, 1270, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(301, 27, 0, 0, 2, 'Bánh Pía', 'Vật phẩm sự kiện trung thu', 20, 1274, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(302, 27, 0, 0, 2, 'Hộp bánh thường', 'Vật phẩm sự kiện trung thu', 40, 1281, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(303, 27, 0, 0, 2, 'Hộp bánh thượng hạng', 'Vật phẩm sự kiện trung thu', 40, 1280, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(304, 27, 0, 0, 2, 'Giấy gói thường', 'Dùng làm hộp bánh', 20, 1277, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(305, 27, 0, 0, 2, 'Giấy gói cao cấp', 'Dùng làm hộp bánh', 20, 1278, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(306, 11, 0, 0, 1, 'Mặt nạ Hannya', 'Giúp thay đổi diện mạo', 30, 1317, 139, 0, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(307, 11, 0, 0, 0, 'Mặt nạ Hannya', 'Giúp thay đổi diện mạo', 30, 1316, 137, 0, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(308, 27, 0, 0, 2, 'Bánh trung thu phong lôi', 'Tăng 1 điểm kỹ năng, sử dụng tối đa 10 cái', 20, 1275, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(309, 27, 0, 0, 2, 'Bánh trung thu băng hỏa', 'Tăng 10 điểm tiềm năng, sử dụng tối đa 10 cái', 20, 1276, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(310, 27, 0, 0, 2, 'Hộp diêm', 'Dùng để thấp đèn trung thu', 20, 1279, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(311, 27, 1, 55, 2, 'Sách võ công Pawaraikou', '', 60, 819, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(312, 27, 2, 56, 2, 'Sách võ công Totogai', '', 60, 821, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(313, 27, 3, 57, 2, 'Sách võ công Kitsukemaguma', '', 60, 816, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(314, 27, 4, 58, 2, 'Sách võ công Totaaigo', '', 60, 820, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(315, 27, 5, 59, 2, 'Sách võ công Ikennotto', '', 60, 817, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(316, 27, 6, 60, 2, 'Sách võ công Ooenjo', '', 60, 818, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(317, 8, 0, 0, 1, 'Huyền Thiết Ngoa', '', 61, 1334, -1, 0, 0, 0, 0, '[]', '[{\"param\":12,\"id\":47} ,{\"param\":30,\"id\":4} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":13} ,{\"param\":22,\"id\":16} ,{\"param\":10,\"id\":27} ,{\"param\":6,\"id\":28},{\"param\":400,\"id\":29},{\"param\":120,\"id\":33},{\"param\":500,\"id\":48}]', '[{\"param\":12,\"id\":47} ,{\"param\":30,\"id\":2} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":11} ,{\"param\":22,\"id\":16} ,{\"param\":10,\"id\":27} ,{\"param\":6,\"id\":28},{\"param\":400,\"id\":29},{\"param\":120,\"id\":34},{\"param\":500,\"id\":49}]', '[{\"param\":12,\"id\":47} ,{\"param\":30,\"id\":3} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":12} ,{\"param\":22,\"id\":16} ,{\"param\":10,\"id\":27} ,{\"param\":6,\"id\":28},{\"param\":400,\"id\":29},{\"param\":120,\"id\":35},{\"param\":500,\"id\":50}]'),
(318, 9, 0, 0, 2, 'Bùa Huyền Kỹ', '', 62, 1327, -1, 0, 0, 0, 0, '[]', '[{\"param\":12,\"id\":47} ,{\"param\":30,\"id\":5} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":12} ,{\"param\":30,\"id\":20} ,{\"param\":10,\"id\":30} ,{\"param\":6,\"id\":31},{\"param\":400,\"id\":32},{\"param\":120,\"id\":36},{\"param\":25,\"id\":46}]', '[{\"param\":12,\"id\":47} ,{\"param\":30,\"id\":5} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":13} ,{\"param\":30,\"id\":20} ,{\"param\":10,\"id\":30} ,{\"param\":6,\"id\":31},{\"param\":400,\"id\":32},{\"param\":120,\"id\":36},{\"param\":25,\"id\":46}]', '[{\"param\":12,\"id\":47} ,{\"param\":30,\"id\":5} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":11} ,{\"param\":30,\"id\":20} ,{\"param\":10,\"id\":30} ,{\"param\":6,\"id\":31},{\"param\":400,\"id\":32},{\"param\":120,\"id\":36},{\"param\":25,\"id\":46}]'),
(319, 6, 0, 0, 1, 'Huyền Thiết Hạ Giáp', '', 63, 1332, 30, 0, 0, 0, 0, '[]', '[{\"param\":26,\"id\":47} ,{\"param\":30,\"id\":2} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":11} ,{\"param\":30,\"id\":15} ,{\"param\":10,\"id\":27} ,{\"param\":6,\"id\":28},{\"param\":400,\"id\":29},{\"param\":120,\"id\":35},{\"param\":500,\"id\":50}]', '[{\"param\":26,\"id\":47} ,{\"param\":30,\"id\":3} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":12} ,{\"param\":30,\"id\":15} ,{\"param\":10,\"id\":27} ,{\"param\":6,\"id\":28},{\"param\":400,\"id\":29},{\"param\":120,\"id\":33},{\"param\":500,\"id\":48}]', '[{\"param\":26,\"id\":47} ,{\"param\":30,\"id\":4} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":13} ,{\"param\":30,\"id\":15} ,{\"param\":10,\"id\":27} ,{\"param\":6,\"id\":28},{\"param\":400,\"id\":29},{\"param\":120,\"id\":34},{\"param\":500,\"id\":49}]'),
(320, 7, 0, 0, 2, 'Huyền Kỹ Bội', '', 64, 1326, -1, 0, 0, 0, 0, '[]', '[{\"param\":12,\"id\":47} ,{\"param\":30,\"id\":5} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":13} ,{\"param\":30,\"id\":14} ,{\"param\":10,\"id\":30} ,{\"param\":6,\"id\":31},{\"param\":400,\"id\":32},{\"param\":120,\"id\":33},{\"param\":800,\"id\":51}]', '[{\"param\":12,\"id\":47} ,{\"param\":30,\"id\":5} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":11} ,{\"param\":30,\"id\":14} ,{\"param\":10,\"id\":30} ,{\"param\":6,\"id\":31},{\"param\":400,\"id\":32},{\"param\":120,\"id\":34},{\"param\":800,\"id\":52}]', '[{\"param\":12,\"id\":47} ,{\"param\":30,\"id\":5} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":12} ,{\"param\":30,\"id\":14} ,{\"param\":10,\"id\":30} ,{\"param\":6,\"id\":31},{\"param\":400,\"id\":32},{\"param\":120,\"id\":35},{\"param\":800,\"id\":53}]'),
(321, 4, 0, 0, 1, 'Huyền Thiết Thủ', '', 65, 1333, -1, 0, 0, 0, 0, '[]', '[{\"param\":12,\"id\":47} ,{\"param\":30,\"id\":3} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":12} ,{\"param\":30,\"id\":18} ,{\"param\":10,\"id\":27} ,{\"param\":6,\"id\":28},{\"param\":400,\"id\":29},{\"param\":120,\"id\":34},{\"param\":500,\"id\":49}]', '[{\"param\":12,\"id\":47} ,{\"param\":30,\"id\":4} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":13} ,{\"param\":30,\"id\":18} ,{\"param\":10,\"id\":27} ,{\"param\":6,\"id\":28},{\"param\":400,\"id\":29},{\"param\":120,\"id\":35},{\"param\":500,\"id\":50}]', '[{\"param\":12,\"id\":47} ,{\"param\":30,\"id\":2} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":11} ,{\"param\":30,\"id\":18} ,{\"param\":10,\"id\":27} ,{\"param\":6,\"id\":28},{\"param\":400,\"id\":29},{\"param\":120,\"id\":33},{\"param\":500,\"id\":48}]'),
(322, 5, 0, 0, 2, 'Nhẫn Huyền Kỹ', '', 66, 1325, -1, 0, 0, 0, 0, '[]', '[{\"param\":12,\"id\":47} ,{\"param\":30,\"id\":5} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":11} ,{\"param\":30,\"id\":17} ,{\"param\":10,\"id\":30} ,{\"param\":6,\"id\":31},{\"param\":400,\"id\":32},{\"param\":120,\"id\":35},{\"param\":800,\"id\":53}]', '[{\"param\":12,\"id\":47} ,{\"param\":30,\"id\":5} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":12} ,{\"param\":30,\"id\":17} ,{\"param\":10,\"id\":30} ,{\"param\":6,\"id\":31},{\"param\":400,\"id\":32},{\"param\":120,\"id\":33},{\"param\":800,\"id\":51}]', '[{\"param\":12,\"id\":47} ,{\"param\":30,\"id\":5} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":13} ,{\"param\":30,\"id\":17} ,{\"param\":10,\"id\":30} ,{\"param\":6,\"id\":31},{\"param\":400,\"id\":32},{\"param\":120,\"id\":34},{\"param\":800,\"id\":52}]'),
(323, 2, 0, 0, 1, 'Huyền Thiết Thượng Giáp', '', 67, 1331, 29, 0, 0, 0, 0, '[]', '[{\"param\":26,\"id\":47} ,{\"param\":30,\"id\":4} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":13} ,{\"param\":30,\"id\":15} ,{\"param\":10,\"id\":27} ,{\"param\":6,\"id\":28},{\"param\":400,\"id\":29},{\"param\":120,\"id\":33},{\"param\":500,\"id\":48}]', '[{\"param\":26,\"id\":47} ,{\"param\":30,\"id\":2} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":11} ,{\"param\":30,\"id\":15} ,{\"param\":10,\"id\":27} ,{\"param\":6,\"id\":28},{\"param\":400,\"id\":29},{\"param\":120,\"id\":34},{\"param\":500,\"id\":49}]', '[{\"param\":26,\"id\":47} ,{\"param\":30,\"id\":3} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":12} ,{\"param\":30,\"id\":15} ,{\"param\":10,\"id\":27} ,{\"param\":6,\"id\":28},{\"param\":400,\"id\":29},{\"param\":120,\"id\":35},{\"param\":500,\"id\":50}]'),
(324, 3, 0, 0, 2, 'Dây Chuyền Huyền Kỹ', '', 68, 1323, -1, 0, 0, 0, 0, '[]', '[{\"param\":12,\"id\":47} ,{\"param\":30,\"id\":5} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":12} ,{\"param\":30,\"id\":14} ,{\"param\":10,\"id\"30} ,{\"param\":6,\"id\":31},{\"param\":400,\"id\":32},{\"param\":120,\"id\":34},{\"param\":800,\"id\":52}]', '[{\"param\":12,\"id\":47} ,{\"param\":30,\"id\":5} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":13} ,{\"param\":30,\"id\":14} ,{\"param\":10,\"id\":30} ,{\"param\":6,\"id\":31},{\"param\":400,\"id\":32},{\"param\":120,\"id\":35},{\"param\":800,\"id\":53}]', '[{\"param\":12,\"id\":47} ,{\"param\":30,\"id\":5} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":11} ,{\"param\":30,\"id\":14} ,{\"param\":10,\"id\":30} ,{\"param\":6,\"id\":31},{\"param\":400,\"id\":32},{\"param\":120,\"id\":33},{\"param\":800,\"id\":51}]'),
(325, 0, 0, 0, 1, 'Huyền Thiết Tuyến', '', 69, 1339, -1, 0, 0, 0, 0, '[]', '[{\"param\":12,\"id\":47} ,{\"param\":30,\"id\":2} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":11} ,{\"param\":30,\"id\":17} ,{\"param\":10,\"id\":27} ,{\"param\":6,\"id\":28},{\"param\":400,\"id\":29},{\"param\":120,\"id\":35},{\"param\":500,\"id\":50}]', '[{\"param\":12,\"id\":47} ,{\"param\":30,\"id\":3} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":12} ,{\"param\":30,\"id\":17} ,{\"param\":10,\"id\":27} ,{\"param\":6,\"id\":28},{\"param\":400,\"id\":29},{\"param\":120,\"id\":33},{\"param\":500,\"id\":48}]', '[{\"param\":12,\"id\":47} ,{\"param\":30,\"id\":4} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":13} ,{\"param\":30,\"id\":17} ,{\"param\":10,\"id\":27} ,{\"param\":6,\"id\":28},{\"param\":400,\"id\":29},{\"param\":120,\"id\":34},{\"param\":500,\"id\":49}]'),
(326, 8, 0, 0, 0, 'Huyền Thiết Ngoa', '', 61, 1334, -1, 0, 0, 0, 0, '[]', '[{\"param\":12,\"id\":47} ,{\"param\":30,\"id\":4} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":13} ,{\"param\":22,\"id\":16} ,{\"param\":10,\"id\":27} ,{\"param\":6,\"id\":28},{\"param\":400,\"id\":29},{\"param\":120,\"id\":33},{\"param\":500,\"id\":48}]', '[{\"param\":12,\"id\":47} ,{\"param\":30,\"id\":2} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":11} ,{\"param\":22,\"id\":16} ,{\"param\":10,\"id\":27} ,{\"param\":6,\"id\":28},{\"param\":400,\"id\":29},{\"param\":120,\"id\":34},{\"param\":500,\"id\":49}]', '[{\"param\":12,\"id\":47} ,{\"param\":30,\"id\":3} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":12} ,{\"param\":22,\"id\":16} ,{\"param\":10,\"id\":27} ,{\"param\":6,\"id\":28},{\"param\":400,\"id\":29},{\"param\":120,\"id\":35},{\"param\":500,\"id\":50}]'),
(327, 6, 0, 0, 0, 'Huyền Thiết Hạ Giáp', '', 63, 1336, 142, 0, 0, 0, 0, '[]', '[{\"param\":26,\"id\":47} ,{\"param\":30,\"id\":2} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":11} ,{\"param\":30,\"id\":15} ,{\"param\":10,\"id\":27} ,{\"param\":6,\"id\":28},{\"param\":400,\"id\":29},{\"param\":120,\"id\":35},{\"param\":500,\"id\":50}]', '[{\"param\":26,\"id\":47} ,{\"param\":30,\"id\":3} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":12} ,{\"param\":30,\"id\":15} ,{\"param\":10,\"id\":27} ,{\"param\":6,\"id\":28},{\"param\":400,\"id\":29},{\"param\":120,\"id\":33},{\"param\":500,\"id\":48}]', '[{\"param\":26,\"id\":47} ,{\"param\":30,\"id\":4} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":13} ,{\"param\":30,\"id\":15} ,{\"param\":10,\"id\":27} ,{\"param\":6,\"id\":28},{\"param\":400,\"id\":29},{\"param\":120,\"id\":34},{\"param\":500,\"id\":49}]'),
(328, 4, 0, 0, 0, 'Huyền Thiết Thủ', '', 65, 1333, -1, 0, 0, 0, 0, '[]', '[{\"param\":12,\"id\":47} ,{\"param\":30,\"id\":3} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":12} ,{\"param\":30,\"id\":18} ,{\"param\":10,\"id\":27} ,{\"param\":6,\"id\":28},{\"param\":400,\"id\":29},{\"param\":120,\"id\":34},{\"param\":500,\"id\":49}]', '[{\"param\":12,\"id\":47} ,{\"param\":30,\"id\":4} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":13} ,{\"param\":30,\"id\":18} ,{\"param\":10,\"id\":27} ,{\"param\":6,\"id\":28},{\"param\":400,\"id\":29},{\"param\":120,\"id\":35},{\"param\":500,\"id\":50}]', '[{\"param\":12,\"id\":47} ,{\"param\":30,\"id\":2} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":11} ,{\"param\":30,\"id\":18} ,{\"param\":10,\"id\":27} ,{\"param\":6,\"id\":28},{\"param\":400,\"id\":29},{\"param\":120,\"id\":33},{\"param\":500,\"id\":48}]'),
(329, 2, 0, 0, 0, 'Huyền Thiết Thượng Giáp', '', 67, 1335, 141, 0, 0, 0, 0, '[]', '[{\"param\":26,\"id\":47} ,{\"param\":30,\"id\":4} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":13} ,{\"param\":30,\"id\":15} ,{\"param\":10,\"id\":27} ,{\"param\":6,\"id\":28},{\"param\":400,\"id\":29},{\"param\":120,\"id\":33},{\"param\":500,\"id\":48}]', '[{\"param\":26,\"id\":47} ,{\"param\":30,\"id\":2} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":11} ,{\"param\":30,\"id\":15} ,{\"param\":10,\"id\":27} ,{\"param\":6,\"id\":28},{\"param\":400,\"id\":29},{\"param\":120,\"id\":34},{\"param\":500,\"id\":49}]', '[{\"param\":26,\"id\":47} ,{\"param\":30,\"id\":3} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":12} ,{\"param\":30,\"id\":15} ,{\"param\":10,\"id\":27} ,{\"param\":6,\"id\":28},{\"param\":400,\"id\":29},{\"param\":120,\"id\":35},{\"param\":500,\"id\":50}]'),
(330, 0, 0, 0, 0, 'Huyền Thiết Trâm', '', 69, 1330, -1, 0, 0, 0, 0, '[]', '[{\"param\":12,\"id\":47} ,{\"param\":30,\"id\":2} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":11} ,{\"param\":30,\"id\":17} ,{\"param\":10,\"id\":27} ,{\"param\":6,\"id\":28},{\"param\":400,\"id\":29},{\"param\":120,\"id\":35},{\"param\":500,\"id\":50}]', '[{\"param\":12,\"id\":47} ,{\"param\":30,\"id\":3} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":12} ,{\"param\":30,\"id\":17} ,{\"param\":10,\"id\":27} ,{\"param\":6,\"id\":28},{\"param\":400,\"id\":29},{\"param\":120,\"id\":33},{\"param\":500,\"id\":48}]', '[{\"param\":12,\"id\":47} ,{\"param\":30,\"id\":4} ,{\"param\":60,\"id\":6}, {\"param\":60,\"id\":7} ,{\"param\":30,\"id\":13} ,{\"param\":30,\"id\":17} ,{\"param\":10,\"id\":27} ,{\"param\":6,\"id\":28},{\"param\":400,\"id\":29},{\"param\":120,\"id\":34},{\"param\":500,\"id\":49}]'),
(331, 1, 1, 0, 2, 'Ly Hỏa kiếm', '', 60, 1320, 12, 0, 0, 0, 0, '[{\"param\":200,\"id\":0} ,{\"param\":200,\"id\":1} ,{\"param\":60,\"id\":8}, {\"param\":30,\"id\":10} ,{\"param\":600,\"id\":21} ,{\"param\":60,\"id\":19} ,{\"param\":10,\"id\":27} ,{\"param\":60,\"id\":37},{\"param\":600,\"id\":38},{\"param\":80,\"id\":39},{\"param\":40,\"id\":55}]', '[]', '[]', '[]'),
(332, 1, 2, 0, 2, 'Thái dương tiêu', '', 60, 1329, 15, 0, 0, 0, 0, '[{\"param\":200,\"id\":0} ,{\"param\":200,\"id\":1} ,{\"param\":60,\"id\":9}, {\"param\":30,\"id\":10} ,{\"param\":600,\"id\":22} ,{\"param\":60,\"id\":19} ,{\"param\":10,\"id\":27} ,{\"param\":60,\"id\":37},{\"param\":600,\"id\":38},{\"param\":80,\"id\":39},{\"param\":40,\"id\":55}]', '[]', '[]', '[]'),
(333, 1, 3, 0, 2, 'Long khảm Dao', '', 60, 1328, 41, 0, 0, 0, 0, '[{\"param\":200,\"id\":0},{\"param\":200,\"id\":1},{\"param\":60,\"id\":8},{\"param\":30,\"id\":10},{\"param\":600,\"id\":23},{\"param\":60,\"id\":19},{\"param\":10,\"id\":30},{\"param\":60,\"id\":37},{\"param\":600,\"id\":38},{\"param\":80,\"id\":39},{\"param\":40,\"id\":56}]', '[]', '[]', '[]'),
(334, 1, 4, 0, 2, 'Đoạt tâm cung', '', 60, 1322, 14, 0, 0, 0, 0, '[{\"param\":200,\"id\":0},{\"param\":200,\"id\":1},{\"param\":60,\"id\":9},{\"param\":30,\"id\":10},{\"param\":600,\"id\":24},{\"param\":60,\"id\":19},{\"param\":10,\"id\":30},{\"param\":60,\"id\":37},{\"param\":600,\"id\":38},{\"param\":80,\"id\":39},{\"param\":40,\"id\":56}]', '[]', '[]', '[]'),
(335, 1, 5, 0, 2, 'Chấn thiên Đao', '', 60, 1321, 13, 0, 0, 0, 0, '[{\"param\":200,\"id\":0},{\"param\":200,\"id\":1},{\"param\":60,\"id\":8},{\"param\":30,\"id\":10},{\"param\":600,\"id\":25},{\"param\":60,\"id\":19},{\"param\":10,\"id\":30},{\"param\":60,\"id\":37},{\"param\":600,\"id\":38},{\"param\":80,\"id\":39},{\"param\":40,\"id\":54}]', '[]', '[]', '[]'),
(336, 1, 6, 0, 2, 'Âm phong quạt', '', 60, 1324, 16, 0, 0, 0, 0, '[{\"param\":200,\"id\":0},{\"param\":200,\"id\":1},{\"param\":60,\"id\":9},{\"param\":30,\"id\":10},{\"param\":600,\"id\":26},{\"param\":60,\"id\":19},{\"param\":10,\"id\":30},{\"param\":60,\"id\":37},{\"param\":600,\"id\":38},{\"param\":80,\"id\":39},{\"param\":40,\"id\":54}]', '[]', '[]', '[]'),
(337, 11, 0, 0, 1, 'Mặt nạ thỏ', 'Chỉ xuất hiên trong mùa trung thu, số lượng có hạn', 20, 1318, 140, 0, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(338, 11, 0, 0, 0, 'Mặt nạ thỏ', 'Chỉ xuất hiên trong mùa trung thu, số lượng có hạn', 20, 1319, 138, 0, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(339, 27, 0, 0, 2, 'Điện thoại  LG T375', 'Liên hệ đường dây nóng 19006610 để biết thêm về cách nhận thưởng.', 1, 1371, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(340, 27, 0, 0, 2, 'Phiếu may mắn', '', 1, 1409, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(341, 27, 0, 0, 2, 'Điện thoại Nokia Asha', 'Liên hệ đường dây nóng 19006610 để biết thêm về cách nhận thưởng.', 1, 1406, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(342, 27, 0, 0, 2, 'Điện thoại Nokia lumia 520', 'Liên hệ đường dây nóng 19006610 để biết thêm về cách nhận thưởng.', 1, 1407, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(343, 11, 0, 0, 1, 'Mặt nạ fasshon', 'Dùng để thay đổi diện mạo', 30, 1430, 148, 0, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(344, 11, 0, 0, 1, 'Mặt nạ kinmou', 'Dùng để thay đổi diện mạo', 40, 1420, 146, 0, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(345, 11, 0, 0, 0, 'Mặt nạ fasshon', 'Dùng để thay đổi diện mạo', 30, 1429, 149, 0, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(346, 11, 0, 0, 0, 'Mặt nạ kinmou', 'Dùng để thay đổi diện mạo', 40, 1419, 147, 0, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(347, 25, 0, 0, 2, 'Cây nấm', 'Vật phẩm nhiệm vụ', 1, 1435, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(348, 25, 0, 0, 2, 'Oan hồn', 'Vật phẩm nhiệm vụ', 1, 1433, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(349, 25, 0, 0, 2, 'Lồng đèn ma', 'Vật phẩm nhiệm vụ', 1, 1436, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(350, 25, 0, 0, 2, 'Cánh bướm', 'Vật phẩm nhiệm vụ', 1, 1437, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(351, 11, 0, 0, 1, 'Mũ noel', 'Dùng để thay đổi diện mạo', 10, 1443, 150, 1, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(352, 11, 0, 0, 0, 'Mũ noel', 'Dùng để thay đổi diện mạo', 10, 1448, 151, 1, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(353, 11, 0, 0, 1, 'Mũ thời trang', 'Dùng để thay đổi diện mạo', 10, 1442, 152, 1, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(354, 11, 0, 0, 0, 'Mũ thời trang', 'Dùng để thay đổi diện mạo', 10, 1449, 153, 1, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(355, 8, 0, 0, 1, 'Bạch ngân Ngoa', '', 71, 1540, -1, 0, 0, 0, 0, '[]', '[{\"param\":14,\"id\":47} ,{\"param\":40,\"id\":4} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":13} ,{\"param\":24,\"id\":16} ,{\"param\":12,\"id\":27} ,{\"param\":7,\"id\":28},{\"param\":450,\"id\":29},{\"param\":140,\"id\":33},{\"param\":500,\"id\":48}]', '[{\"param\":14,\"id\":47} ,{\"param\":40,\"id\":2} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":11} ,{\"param\":24,\"id\":16} ,{\"param\":12,\"id\":27} ,{\"param\":7,\"id\":28},{\"param\":450,\"id\":29},{\"param\":140,\"id\":34},{\"param\":500,\"id\":49}]', '[{\"param\":14,\"id\":47} ,{\"param\":40,\"id\":3} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":12} ,{\"param\":24,\"id\":16} ,{\"param\":12,\"id\":27} ,{\"param\":7,\"id\":28},{\"param\":450,\"id\":29},{\"param\":140,\"id\":35},{\"param\":500,\"id\":50}]'),
(356, 9, 0, 0, 2, 'Bùa Bạch ngân', '', 72, 1526, -1, 0, 0, 0, 0, '[]', '[{\"param\":14,\"id\":47} ,{\"param\":40,\"id\":5} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":12} ,{\"param\":40,\"id\":20} ,{\"param\":12,\"id\":30} ,{\"param\":7,\"id\":31},{\"param\":450,\"id\":32},{\"param\":140,\"id\":36},{\"param\":35,\"id\":46}]', '[{\"param\":14,\"id\":47} ,{\"param\":40,\"id\":5} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":13} ,{\"param\":40,\"id\":20} ,{\"param\":12,\"id\":30} ,{\"param\":7,\"id\":31},{\"param\":450,\"id\":32},{\"param\":140,\"id\":36},{\"param\":35,\"id\":46}]', '[{\"param\":14,\"id\":47} ,{\"param\":40,\"id\":5} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":11} ,{\"param\":40,\"id\":20} ,{\"param\":12,\"id\":30} ,{\"param\":7,\"id\":31},{\"param\":450,\"id\":32},{\"param\":140,\"id\":36},{\"param\":35,\"id\":46}]'),
(357, 6, 0, 0, 1, 'Bạch ngân Hạ Giáp', '', 73, 1538, 155, 0, 0, 0, 0, '[]', '[{\"param\":28,\"id\":47} ,{\"param\":40,\"id\":2} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":11} ,{\"param\":40,\"id\":15} ,{\"param\":12,\"id\":27} ,{\"param\":7,\"id\":28},{\"param\":450,\"id\":29},{\"param\":140,\"id\":35},{\"param\":500,\"id\":50}]', '[{\"param\":28,\"id\":47} ,{\"param\":40,\"id\":3} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":12} ,{\"param\":40,\"id\":15} ,{\"param\":12,\"id\":27} ,{\"param\":7,\"id\":28},{\"param\":450,\"id\":29},{\"param\":140,\"id\":33},{\"param\":500,\"id\":48}]', '[{\"param\":28,\"id\":47} ,{\"param\":40,\"id\":4} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":13} ,{\"param\":40,\"id\":15} ,{\"param\":12,\"id\":27} ,{\"param\":7,\"id\":28},{\"param\":450,\"id\":29},{\"param\":140,\"id\":34},{\"param\":500,\"id\":49}]'),
(358, 7, 0, 0, 2, 'Bạch ngân Bội', '', 74, 1529, -1, 0, 0, 0, 0, '[]', '[{\"param\":14,\"id\":47} ,{\"param\":40,\"id\":5} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":13} ,{\"param\":40,\"id\":14} ,{\"param\":12,\"id\":30} ,{\"param\":7,\"id\":31},{\"param\":450,\"id\":32},{\"param\":140,\"id\":33},{\"param\":800,\"id\":51}]', '[{\"param\":14,\"id\":47} ,{\"param\":40,\"id\":5} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":11} ,{\"param\":40,\"id\":14} ,{\"param\":12,\"id\":30} ,{\"param\":7,\"id\":31},{\"param\":450,\"id\":32},{\"param\":140,\"id\":34},{\"param\":800,\"id\":52}]', '[{\"param\":14,\"id\":47} ,{\"param\":40,\"id\":5} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":12} ,{\"param\":40,\"id\":14} ,{\"param\":12,\"id\":30} ,{\"param\":7,\"id\":31},{\"param\":450,\"id\":32},{\"param\":140,\"id\":35},{\"param\":800,\"id\":53}]'),
(359, 4, 0, 0, 1, 'Bạch ngân Thủ', '', 75, 1539, -1, 0, 0, 0, 0, '[]', '[{\"param\":14,\"id\":47} ,{\"param\":40,\"id\":3} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":12} ,{\"param\":40,\"id\":18} ,{\"param\":12,\"id\":27} ,{\"param\":7,\"id\":28},{\"param\":450,\"id\":29},{\"param\":140,\"id\":34},{\"param\":500,\"id\":49}]', '[{\"param\":14,\"id\":47} ,{\"param\":40,\"id\":4} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":13} ,{\"param\":40,\"id\":18} ,{\"param\":12,\"id\":27} ,{\"param\":7,\"id\":28},{\"param\":450,\"id\":29},{\"param\":140,\"id\":35},{\"param\":500,\"id\":50}]', '[{\"param\":14,\"id\":47} ,{\"param\":40,\"id\":2} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":11} ,{\"param\":40,\"id\":18} ,{\"param\":12,\"id\":27} ,{\"param\":7,\"id\":28},{\"param\":450,\"id\":29},{\"param\":140,\"id\":33},{\"param\":500,\"id\":48}]'),
(360, 5, 0, 0, 2, 'Nhẫn Bạch ngân', '', 76, 1528, -1, 0, 0, 0, 0, '[]', '[{\"param\":14,\"id\":47} ,{\"param\":40,\"id\":5} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":11} ,{\"param\":40,\"id\":17} ,{\"param\":12,\"id\":30} ,{\"param\":7,\"id\":31},{\"param\":450,\"id\":32},{\"param\":140,\"id\":35},{\"param\":800,\"id\":53}]', '[{\"param\":14,\"id\":47} ,{\"param\":40,\"id\":5} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":12} ,{\"param\":40,\"id\":17} ,{\"param\":12,\"id\":30} ,{\"param\":7,\"id\":31},{\"param\":450,\"id\":32},{\"param\":140,\"id\":33},{\"param\":800,\"id\":51}]', '[{\"param\":14,\"id\":47} ,{\"param\":40,\"id\":5} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":13} ,{\"param\":40,\"id\":17} ,{\"param\":12,\"id\":30} ,{\"param\":7,\"id\":31},{\"param\":450,\"id\":32},{\"param\":140,\"id\":34},{\"param\":800,\"id\":52}]'),
(361, 2, 0, 0, 1, 'Bạch ngân Thượng Giáp', '', 77, 1537, 154, 0, 0, 0, 0, '[]', '[{\"param\":28,\"id\":47} ,{\"param\":40,\"id\":4} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":13} ,{\"param\":40,\"id\":15} ,{\"param\":12,\"id\":27} ,{\"param\":7,\"id\":28},{\"param\":450,\"id\":29},{\"param\":140,\"id\":33},{\"param\":500,\"id\":48}]', '[{\"param\":28,\"id\":47} ,{\"param\":40,\"id\":2} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":11} ,{\"param\":40,\"id\":15} ,{\"param\":12,\"id\":27} ,{\"param\":7,\"id\":28},{\"param\":450,\"id\":29},{\"param\":140,\"id\":34},{\"param\":500,\"id\":49}]', '[{\"param\":28,\"id\":47} ,{\"param\":40,\"id\":3} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":12} ,{\"param\":40,\"id\":15} ,{\"param\":12,\"id\":27} ,{\"param\":7,\"id\":28},{\"param\":450,\"id\":29},{\"param\":140,\"id\":35},{\"param\":500,\"id\":50}]'),
(362, 3, 0, 0, 2, 'Dây Chuyền Bạch ngân', '', 78, 1536, -1, 0, 0, 0, 0, '[]', '[{\"param\":14,\"id\":47} ,{\"param\":40,\"id\":5} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":12} ,{\"param\":40,\"id\":14} ,{\"param\":12,\"id\":30} ,{\"param\":7,\"id\":31},{\"param\":450,\"id\":32},{\"param\":140,\"id\":34},{\"param\":800,\"id\":52}]', '[{\"param\":14,\"id\":47} ,{\"param\":45,\"id\":5} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":13} ,{\"param\":40,\"id\":14} ,{\"param\":12,\"id\":30} ,{\"param\":7,\"id\":31},{\"param\":450,\"id\":32},{\"param\":140,\"id\":35},{\"param\":800,\"id\":53}]', '[{\"param\":14,\"id\":47} ,{\"param\":40,\"id\":5} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":11} ,{\"param\":40,\"id\":14} ,{\"param\":12,\"id\":30} ,{\"param\":7,\"id\":31},{\"param\":450,\"id\":32},{\"param\":140,\"id\":33},{\"param\":800,\"id\":51}]'),
(363, 0, 0, 0, 1, 'Bạch ngân Tuyến', '', 79, 1545, -1, 0, 0, 0, 0, '[]', '[{\"param\":14,\"id\":47} ,{\"param\":40,\"id\":2} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":11} ,{\"param\":40,\"id\":17} ,{\"param\":12,\"id\":27} ,{\"param\":7,\"id\":28},{\"param\":450,\"id\":29},{\"param\":140,\"id\":35},{\"param\":500,\"id\":50}]', '[{\"param\":14,\"id\":47} ,{\"param\":40,\"id\":3} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":12} ,{\"param\":40,\"id\":17} ,{\"param\":12,\"id\":27} ,{\"param\":7,\"id\":28},{\"param\":450,\"id\":29},{\"param\":140,\"id\":33},{\"param\":500,\"id\":48}]', '[{\"param\":14,\"id\":47} ,{\"param\":40,\"id\":4} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":13} ,{\"param\":40,\"id\":17} ,{\"param\":12,\"id\":27} ,{\"param\":7,\"id\":28},{\"param\":450,\"id\":29},{\"param\":140,\"id\":34},{\"param\":500,\"id\":49}]'),
(364, 8, 0, 0, 0, 'Bạch ngân Ngoa', '', 71, 1544, -1, 0, 0, 0, 0, '[]', '[{\"param\":14,\"id\":47} ,{\"param\":40,\"id\":4} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":13} ,{\"param\":24,\"id\":16} ,{\"param\":12,\"id\":27} ,{\"param\":7,\"id\":28},{\"param\":450,\"id\":29},{\"param\":140,\"id\":33},{\"param\":500,\"id\":48}]', '[{\"param\":14,\"id\":47} ,{\"param\":40,\"id\":2} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":11} ,{\"param\":24,\"id\":16} ,{\"param\":12,\"id\":27} ,{\"param\":7,\"id\":28},{\"param\":450,\"id\":29},{\"param\":140,\"id\":34},{\"param\":500,\"id\":49}]', '[{\"param\":14,\"id\":47} ,{\"param\":40,\"id\":3} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":12} ,{\"param\":24,\"id\":16} ,{\"param\":12,\"id\":27} ,{\"param\":7,\"id\":28},{\"param\":450,\"id\":29},{\"param\":140,\"id\":35},{\"param\":500,\"id\":50}]'),
(365, 6, 0, 0, 0, 'Bạch ngân Hạ Giáp', '', 73, 1542, 157, 0, 0, 0, 0, '[]', '[{\"param\":28,\"id\":47} ,{\"param\":40,\"id\":2} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":11} ,{\"param\":40,\"id\":15} ,{\"param\":12,\"id\":27} ,{\"param\":7,\"id\":28},{\"param\":450,\"id\":29},{\"param\":140,\"id\":35},{\"param\":500,\"id\":50}]', '[{\"param\":28,\"id\":47} ,{\"param\":40,\"id\":3} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":12} ,{\"param\":40,\"id\":15} ,{\"param\":12,\"id\":27} ,{\"param\":7,\"id\":28},{\"param\":450,\"id\":29},{\"param\":140,\"id\":33},{\"param\":500,\"id\":48}]', '[{\"param\":28,\"id\":47} ,{\"param\":40,\"id\":4} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":13} ,{\"param\":40,\"id\":15} ,{\"param\":12,\"id\":27} ,{\"param\":7,\"id\":28},{\"param\":450,\"id\":29},{\"param\":140,\"id\":34},{\"param\":500,\"id\":49}]');
INSERT INTO `item` (`id`, `type`, `class`, `skill`, `gender`, `name`, `description`, `level`, `iconID`, `part`, `uptoup`, `isExpires`, `secondsExpires`, `saleCoinLock`, `ItemOption`, `Option1`, `Option2`, `Option3`) VALUES
(366, 4, 0, 0, 0, 'Bạch ngân Thủ', '', 75, 1543, -1, 0, 0, 0, 0, '[]', '[{\"param\":14,\"id\":47} ,{\"param\":40,\"id\":3} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":12} ,{\"param\":40,\"id\":18} ,{\"param\":12,\"id\":27} ,{\"param\":7,\"id\":28},{\"param\":450,\"id\":29},{\"param\":140,\"id\":34},{\"param\":500,\"id\":49}]', '[{\"param\":14,\"id\":47} ,{\"param\":40,\"id\":4} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":13} ,{\"param\":40,\"id\":18} ,{\"param\":12,\"id\":27} ,{\"param\":7,\"id\":28},{\"param\":450,\"id\":29},{\"param\":140,\"id\":35},{\"param\":500,\"id\":50}]', '[{\"param\":14,\"id\":47} ,{\"param\":40,\"id\":2} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":11} ,{\"param\":40,\"id\":18} ,{\"param\":12,\"id\":27} ,{\"param\":7,\"id\":28},{\"param\":450,\"id\":29},{\"param\":140,\"id\":33},{\"param\":500,\"id\":48}]'),
(367, 2, 0, 0, 0, 'Bạch ngân Thượng Giáp', '', 77, 1541, 156, 0, 0, 0, 0, '[]', '[{\"param\":28,\"id\":47} ,{\"param\":40,\"id\":4} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":13} ,{\"param\":40,\"id\":15} ,{\"param\":12,\"id\":27} ,{\"param\":7,\"id\":28},{\"param\":450,\"id\":29},{\"param\":160,\"id\":33},{\"param\":500,\"id\":48}]', '[{\"param\":28,\"id\":47} ,{\"param\":40,\"id\":2} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":11} ,{\"param\":40,\"id\":15} ,{\"param\":12,\"id\":27} ,{\"param\":7,\"id\":28},{\"param\":450,\"id\":29},{\"param\":140,\"id\":34},{\"param\":500,\"id\":49}]', '[{\"param\":28,\"id\":47} ,{\"param\":40,\"id\":3} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":12} ,{\"param\":40,\"id\":15} ,{\"param\":12,\"id\":27} ,{\"param\":7,\"id\":28},{\"param\":450,\"id\":29},{\"param\":140,\"id\":35},{\"param\":500,\"id\":50}]'),
(368, 0, 0, 0, 0, 'Bạch ngân Trâm', '', 79, 1527, -1, 0, 0, 0, 0, '[]', '[{\"param\":14,\"id\":47} ,{\"param\":40,\"id\":2} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":11} ,{\"param\":40,\"id\":17} ,{\"param\":12,\"id\":27} ,{\"param\":7,\"id\":28},{\"param\":450,\"id\":29},{\"param\":140,\"id\":35},{\"param\":500,\"id\":50}]', '[{\"param\":14,\"id\":47} ,{\"param\":40,\"id\":3} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":12} ,{\"param\":40,\"id\":17} ,{\"param\":12,\"id\":27} ,{\"param\":7,\"id\":28},{\"param\":450,\"id\":29},{\"param\":140,\"id\":33},{\"param\":500,\"id\":48}]', '[{\"param\":14,\"id\":47} ,{\"param\":40,\"id\":4} ,{\"param\":80,\"id\":6}, {\"param\":80,\"id\":7} ,{\"param\":40,\"id\":13} ,{\"param\":40,\"id\":17} ,{\"param\":12,\"id\":27} ,{\"param\":7,\"id\":28},{\"param\":450,\"id\":29},{\"param\":140,\"id\":34},{\"param\":500,\"id\":49}]'),
(369, 1, 1, 0, 2, 'Thiên hỏa kiếm', '', 70, 1530, 12, 0, 0, 0, 0, '[{\"param\":240,\"id\":0} ,{\"param\":240,\"id\":1} ,{\"param\":80,\"id\":8}, {\"param\":40,\"id\":10} ,{\"param\":1000,\"id\":21} ,{\"param\":80,\"id\":19} ,{\"param\":12,\"id\":27} ,{\"param\":70,\"id\":37},{\"param\":700,\"id\":38},{\"param\":100,\"id\":39},{\"param\":40,\"id\":55}]', '[]', '[]', '[]'),
(370, 1, 2, 0, 2, 'Hỏa phong tiêu', '', 70, 1534, 15, 0, 0, 0, 0, '[{\"param\":240,\"id\":0} ,{\"param\":240,\"id\":1} ,{\"param\":80,\"id\":9}, {\"param\":40,\"id\":10} ,{\"param\":1000,\"id\":22} ,{\"param\":80,\"id\":19} ,{\"param\":12,\"id\":27} ,{\"param\":70,\"id\":37},{\"param\":700,\"id\":38},{\"param\":100,\"id\":39},{\"param\":40,\"id\":55}]', '[]', '[]', '[]'),
(371, 1, 3, 0, 2, 'Thủy chấn dao', '', 70, 1533, 41, 0, 0, 0, 0, '[{\"param\":240,\"id\":0},{\"param\":240,\"id\":1},{\"param\":80,\"id\":8},{\"param\":40,\"id\":10},{\"param\":1000,\"id\":23},{\"param\":80,\"id\":19},{\"param\":12,\"id\":30},{\"param\":70,\"id\":37},{\"param\":700,\"id\":38},{\"param\":100,\"id\":39},{\"param\":40,\"id\":56}]', '[]', '[]', '[]'),
(372, 1, 4, 0, 2, 'Băng thần cung', '', 70, 1531, 14, 0, 0, 0, 0, '[{\"param\":240,\"id\":0},{\"param\":240,\"id\":1},{\"param\":80,\"id\":9},{\"param\":40,\"id\":10},{\"param\":1000,\"id\":24},{\"param\":80,\"id\":19},{\"param\":12,\"id\":30},{\"param\":70,\"id\":37},{\"param\":700,\"id\":38},{\"param\":100,\"id\":39},{\"param\":40,\"id\":56}]', '[]', '[]', '[]'),
(373, 1, 5, 0, 2, 'Đồ thần đao', '', 70, 1535, 13, 0, 0, 0, 0, '[{\"param\":240,\"id\":0},{\"param\":240,\"id\":1},{\"param\":80,\"id\":8},{\"param\":40,\"id\":10},{\"param\":1000,\"id\":25},{\"param\":80,\"id\":19},{\"param\":12,\"id\":30},{\"param\":70,\"id\":37},{\"param\":700,\"id\":38},{\"param\":100,\"id\":39},{\"param\":40,\"id\":54}]', '[]', '[]', '[]'),
(374, 1, 6, 0, 2, 'Âm dương quạt', '', 70, 1532, 16, 0, 0, 0, 0, '[{\"param\":240,\"id\":0},{\"param\":240,\"id\":1},{\"param\":80,\"id\":9},{\"param\":40,\"id\":10},{\"param\":1000,\"id\":26},{\"param\":80,\"id\":19},{\"param\":12,\"id\":30},{\"param\":70,\"id\":37},{\"param\":700,\"id\":38},{\"param\":100,\"id\":39},{\"param\":40,\"id\":54}]', '[]', '[]', '[]'),
(375, 27, 1, 61, 2, 'Sách võ công Maajizangeki', '', 70, 819, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(376, 27, 2, 62, 2, 'Sách võ công Baaningufukiya', '', 70, 821, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(377, 27, 3, 63, 2, 'Sách võ công Furiizukatto', '', 70, 816, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(378, 27, 4, 64, 2, 'Sách võ công Furoozunkyuusen', '', 70, 820, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(379, 27, 5, 65, 2, 'Sách võ công Baasutosutoomu', '', 70, 817, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(380, 27, 6, 66, 2, 'Sách võ công Kougekitenrai', '', 70, 818, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(381, 27, 0, 0, 2, 'Bao lì xì nhỏ', '', 20, 1559, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(382, 27, 0, 0, 2, 'Bao lì xì lớn', '', 20, 1560, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(383, 27, 0, 0, 2, 'Bát bảo', 'Sau khi sử dụng sẽ ra ngẫu nhiên trang bị+12', 40, 1564, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(384, 27, 0, 0, 2, 'Rương bạch ngân', 'Sau khi sử dụng sẽ ra ngẫu nhiên trang bị+14', 50, 1563, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(385, 27, 0, 0, 2, 'Rương Huyền bí', 'Sau khi sử dụng sẽ ra ngẫu nhiên trang bị+16', 60, 1566, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(386, 27, 0, 0, 2, 'Hoa hồng đỏ', 'Vật phẩm sự kiện 8/3', 20, 1568, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(387, 27, 0, 0, 2, 'Hoa hồng vàng', 'Vật phẩm sự kiện 8/3', 20, 1569, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(388, 27, 0, 0, 2, 'Hoa hồng xanh', 'Vật phẩm sự kiện 8/3', 20, 1570, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(389, 27, 0, 0, 2, 'Bó hoa hồng đỏ', 'Vật phẩm sự kiện 8/3', 20, 1571, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(390, 27, 0, 0, 2, 'Bó hoa hồng vàng', 'Vật phẩm sự kiện 8/3', 20, 1573, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(391, 27, 0, 0, 2, 'Bó hoa hồng xanh', 'Vật phẩm sự kiện 8/3', 20, 1572, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(392, 27, 0, 0, 2, 'Giỏ hoa 8/3', 'Vật phẩm sự kiện 8/3', 20, 1576, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(393, 27, 0, 0, 2, 'Giấy màu', 'Vật phẩm sự kiện 8/3', 20, 1575, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(394, 27, 0, 0, 2, 'Ruy băng', 'Vật phẩm sự kiện 8/3', 20, 1567, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(395, 27, 0, 0, 2, 'Khung tre', 'Vật phẩm sự kiện 8/3', 20, 1574, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(396, 27, 0, 0, 2, 'Thẻ bài gia tộc', 'Dùng trong hoạt động gia tộc', 20, 1577, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(397, 15, 1, 0, 2, 'Bí kíp Kiếm Thuật', 'Nâng cao kỹ năng chiêu thức môn phái', 60, 1580, -1, 0, 0, 0, 5, '[]', '[]', '[]', '[]'),
(398, 15, 2, 0, 2, 'Bí kíp Tiêu Thuật', 'Nâng cao kỹ năng chiêu thức môn phái', 60, 1581, -1, 0, 0, 0, 5, '[]', '[]', '[]', '[]'),
(399, 15, 3, 0, 2, 'Bí kíp Kunai', 'Nâng cao kỹ năng chiêu thức môn phái', 60, 1578, -1, 0, 0, 0, 5, '[]', '[]', '[]', '[]'),
(400, 15, 4, 0, 2, 'Bí kíp Cung', 'Nâng cao kỹ năng chiêu thức môn phái', 60, 1579, -1, 0, 0, 0, 5, '[]', '[]', '[]', '[]'),
(401, 15, 5, 0, 2, 'Bí kíp Đao', 'Nâng cao kỹ năng chiêu thức môn phái', 60, 1582, -1, 0, 0, 0, 5, '[]', '[]', '[]', '[]'),
(402, 15, 6, 0, 2, 'Bí kíp Quạt', 'Nâng cao kỹ năng chiêu thức môn phái', 60, 1583, -1, 0, 0, 0, 5, '[]', '[]', '[]', '[]'),
(403, 11, 0, 0, 1, 'Mặt nạ Vegeta', 'Giúp thay đổi diện mạo', 40, 1601, 158, 0, 1, 604800, 5, '[{\"param\":80,\"id\":57}]', '[]', '[]', '[]'),
(404, 11, 0, 0, 0, 'Mặt nạ Kunoichi', 'Giúp thay đổi diện mạo', 40, 1598, 162, 0, 1, 604800, 5, '[{\"param\":80,\"id\":57}]', '[]', '[]', '[]'),
(405, 11, 0, 0, 1, 'Mặt nạ Broly', 'Giúp thay đổi diện mạo', 40, 1600, 160, 0, 1, 604800, 5, '[{\"param\":10,\"id\":58},{\"param\":500,\"id\":6}]', '[]', '[]', '[]'),
(406, 11, 0, 0, 0, 'Mặt nạ Buruma', 'Giúp thay đổi diện mạo', 40, 1605, 161, 0, 1, 604800, 5, '[{\"param\":10,\"id\":58},{\"param\":500,\"id\":6}]', '[]', '[]', '[]'),
(407, 11, 0, 0, 1, 'Mặt nạ Super Broly', 'Giúp thay đổi diện mạo', 20, 1602, 159, 0, 0, 0, 5, '[]', '[]', '[]', '[]'),
(408, 11, 0, 0, 0, 'Mặt nạ Onna Bugeisha', 'Giúp thay đổi diện mạo', 20, 1599, 163, 0, 0, 0, 5, '[]', '[]', '[]', '[]'),
(409, 18, 0, 0, 2, 'Gà Tây', 'Nữa giây phục hồi 75 HP, MP duy trì 1 ngày', 60, 1606, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(410, 18, 0, 0, 2, 'Tôm hùm', 'Nữa giây phục hồi 90 HP, MP duy trì 1 ngày', 70, 1607, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(411, 27, 0, 0, 2, 'Cây kẹo mút', 'Vật phẩm sự kiện 1/6', 20, 1627, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(412, 27, 0, 0, 2, 'Hộp bánh ngọt', 'Vật phẩm sự kiện 1/6', 20, 1629, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(413, 27, 0, 0, 2, 'Quả bong bóng', 'Vật phẩm sự kiện 1/6', 20, 1628, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(414, 27, 0, 0, 2, 'Giấy giới thiệu', 'Khi sử dụng sẽ tăng số lần nhận nhiệm vụ tìm trẻ lạc', 20, 1630, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(415, 27, 0, 0, 2, 'Huy hiệu', 'Vật phẩm sự kiện 1/6', 20, 1631, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(416, 27, 0, 0, 2, 'Nấm thần kỳ', 'Vật phẩm sự kiện 1/6', 20, 1625, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(417, 27, 0, 0, 2, 'Ngôi sao nhỏ', 'Vật phẩm sự kiện 1/6', 20, 1624, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(418, 27, 0, 0, 2, 'Ngôi sao may mắn', 'Vật phẩm sự kiện 1/6', 20, 1623, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(419, 10, 0, 0, 2, 'Chim tinh anh', 'Hỗ trợ tấn công quái', 20, 1432, -1, 0, 1, 604800, 5, '[{\"param\":1000,\"id\":0},{\"param\":1000,\"id\":1}]', '[]', '[]', '[]'),
(420, 12, 0, 0, 2, 'Faiyaa yoroi', '', 70, 1640, -1, 0, 0, 0, 0, '[{\"param\":0,\"id\":85},{\"param\":350,\"id\":82},{\"param\":350,\"id\":83},{\"param\":100,\"id\":84},{\"param\":5,\"id\":81},{\"param\":25,\"id\":80},{\"param\":5,\"id\":79}]', '[]', '[]', '[]'),
(421, 12, 0, 0, 2, 'Mizu Yoroi', '', 70, 1639, -1, 0, 0, 0, 0, '[{\"param\":0,\"id\":85},{\"param\":350,\"id\":82},{\"param\":350,\"id\":83},{\"param\":100,\"id\":84},{\"param\":5,\"id\":81},{\"param\":25,\"id\":80},{\"param\":5,\"id\":79}]', '[]', '[]', '[]'),
(422, 12, 0, 0, 2, 'Windo Yoroi', '', 70, 1638, -1, 0, 0, 0, 0, '[{\"param\":0,\"id\":85},{\"param\":350,\"id\":82},{\"param\":350,\"id\":83},{\"param\":100,\"id\":84},{\"param\":5,\"id\":81},{\"param\":25,\"id\":80},{\"param\":5,\"id\":79}]', '[]', '[]', '[]'),
(423, 13, 0, 0, 2, 'Nhẫn thuật gia tộc cấp 1', 'Sau khi gia tộc đã khai mở vật phẩm này thì mới được phép mua sử dụng.', 10, 1692, -1, 1, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(424, 13, 0, 0, 2, 'Nhẫn thuật gia tộc cấp 2', 'Sau khi gia tộc đã khai mở vật phẩm này thì mới được phép mua sử dụng.', 20, 1693, -1, 1, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(425, 13, 0, 0, 2, 'Nhẫn thuật gia tộc cấp 3', 'Sau khi gia tộc đã khai mở vật phẩm này thì mới được phép mua sử dụng.', 30, 1694, -1, 1, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(426, 13, 0, 0, 2, 'Nhẫn thuật gia tộc cấp 4', 'Sau khi gia tộc đã khai mở vật phẩm này thì mới được phép mua sử dụng.', 40, 1695, -1, 1, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(427, 13, 0, 0, 2, 'Nhẫn thuật gia tộc cấp 5', 'Sau khi gia tộc đã khai mở vật phẩm này thì mới được phép mua sử dụng.', 50, 1696, -1, 1, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(428, 27, 0, 0, 2, 'Tre', 'Vật phẩm sự kiện ngày hè', 20, 1701, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(429, 27, 0, 0, 2, 'Dây', 'Vật phẩm sự kiện ngày hè', 20, 1699, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(430, 27, 0, 0, 2, 'Giấy', 'Vật phẩm sự kiện ngày hè', 20, 1698, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(431, 27, 0, 0, 2, 'Vải', 'Vật phẩm sự kiện ngày hè', 20, 1700, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(432, 27, 0, 0, 2, 'Màu vẽ thô sơ', 'Vật phẩm sự kiện ngày hè', 20, 1707, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(433, 27, 0, 0, 2, 'Màu vẽ cao cấp', 'Vật phẩm sự kiện ngày hè', 20, 1708, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(434, 27, 0, 0, 2, 'Diều giấy', 'Vật phẩm sự kiện ngày hè', 20, 1702, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(435, 27, 0, 0, 2, 'Diều vải', 'Vật phẩm sự kiện ngày hè', 1, 1703, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(436, 27, 0, 0, 2, 'Thẻ bài kinh nghiệm gia tộc sơ', 'Yêu cầu gia tộc phải đạt trình độ cấp 5 trở lên', 20, 1704, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(437, 27, 0, 0, 2, 'Thẻ bài kinh nghiệm gia tộc trung', 'Yêu cầu gia tộc phải đạt trình độ cấp 10 trở lên', 20, 1705, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(438, 27, 0, 0, 2, 'Thẻ bài kinh nghiệm gia tộc cao', 'Yêu cầu gia tộc phải đạt trình độ cấp 15 trở lên', 20, 1706, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(439, 29, 0, 0, 2, 'Thú trang', '', 10, 1748, -1, 0, 0, 0, 0, '[{\"param\":0,\"id\":85},{\"param\":50,\"id\":75}]', '[]', '[]', '[]'),
(440, 30, 0, 0, 2, 'Giáp thú', '', 10, 1749, -1, 0, 0, 0, 0, '[{\"param\":0,\"id\":85},{\"param\":500,\"id\":76}]', '[]', '[]', '[]'),
(441, 31, 0, 0, 2, 'Yên', '', 10, 1751, -1, 0, 0, 0, 0, '[{\"param\":0,\"id\":85},{\"param\":500,\"id\":77}]', '[]', '[]', '[]'),
(442, 32, 0, 0, 2, 'Dây cương', '', 10, 1750, -1, 0, 0, 0, 0, '[{\"param\":0,\"id\":85},{\"param\":50,\"id\":78}]', '[]', '[]', '[]'),
(443, 33, 0, 0, 2, 'Xích Nhãn Ngân Lang', '', 10, 1722, -1, 0, 0, 0, 5, '[{\"param\":0,\"id\":65},{\"param\":1000,\"id\":66}]', '[]', '[]', '[]'),
(444, 27, 0, 0, 2, 'Linh Lang Thảo', 'Thức ăn thú cưỡi, tăng 200 hp cho thú cưỡi', 10, 1721, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(445, 27, 0, 0, 2, 'Chữ Vui', 'Tích lũy đủ 10 chữ vui, 10 chữ tết, 10 chữ trung, 10 chữ thu sẽ đổi được thú cưỡi', 20, 1729, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(446, 27, 0, 0, 2, 'Chữ Tết', 'Tích lũy đủ 10 chữ vui, 10 chữ tết, 10 chữ trung, 10 chữ thu sẽ đổi được thú cưỡi', 20, 1730, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(447, 27, 0, 0, 2, 'Chữ Trung', 'Tích lũy đủ 10 chữ vui, 10 chữ tết, 10 chữ trung, 10 chữ thu sẽ đổi được thú cưỡi', 20, 1731, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(448, 27, 0, 0, 2, 'Chữ Thu', 'Tích lũy đủ 10 chữ vui, 10 chữ tết, 10 chữ trung, 10 chữ thu sẽ đổi được thú cưỡi', 20, 1732, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(449, 27, 0, 0, 2, 'Lang hồn thảo', 'Tăng 5 kinh nghiệm thú cưỡi', 20, 1743, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(450, 27, 0, 0, 2, 'Lang hồn mộc', 'Tăng 7 kinh nghiệm thú cưỡi', 20, 1744, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(451, 27, 0, 0, 2, 'Địa lang thảo', 'Tăng 14 kinh nghiệm thú cưỡi', 20, 1745, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(452, 27, 0, 0, 2, 'Tam lục diệp', 'Tăng 20 kinh nghiệm thú cưỡi', 20, 1746, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(453, 27, 0, 0, 2, 'Xích lan hoa ', 'Tăng 25 kinh nghiệm thú cưỡi', 20, 1747, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(454, 27, 0, 0, 2, 'Chuyển tinh thạch', 'Ẩn chứa tinh hoa của trời đất', 20, 1742, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(455, 27, 0, 0, 2, 'Tử tinh thạch sơ cấp', '', 20, 1739, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(456, 27, 0, 0, 2, 'Tử tinh thạch trung cấp', '', 20, 1740, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(457, 27, 0, 0, 2, 'Tử tinh thạch cao cấp', '', 20, 1741, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(458, 27, 0, 0, 2, 'Kẹo ngọt', 'Vật phẩm trong chiến trường Kẹo', 20, 1776, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(459, 27, 0, 0, 2, 'Kẹo đỏ', 'Vật phẩm sự kiện', 20, 1752, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(460, 27, 0, 0, 2, 'Kẹo xanh', 'Vật phẩm sự kiện', 20, 1754, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(461, 27, 0, 0, 2, 'Kẹo vàng', 'Vật phẩm sự kiện', 20, 1755, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(462, 27, 0, 0, 2, 'Kẹo tím', 'Vật phẩm sự kiện', 20, 1753, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(463, 27, 0, 0, 2, 'Giỏ tre', 'Vật phẩm sự kiện', 20, 1781, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(464, 27, 0, 0, 2, 'Giỏ bí ngô', 'Vật phẩm sự kiện', 20, 1771, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(465, 27, 0, 0, 2, 'Giỏ kẹo', 'Vật phẩm sự kiện', 20, 1770, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(466, 27, 0, 0, 2, 'Giỏ kẹo bí ngô', 'Vật phẩm sự kiện', 20, 1782, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(467, 27, 0, 0, 2, 'Bí ngô mặt quỷ nhỏ', 'Vật phẩm sự kiện', 20, 1732, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(468, 27, 0, 0, 2, 'Bí ngô mặt quỷ lớn', 'Vật phẩm sự kiện', 20, 1732, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(469, 27, 0, 0, 2, 'Xăng A95', 'Tăng 200 nhiên liệu cho xe moto', 20, 1767, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(470, 27, 0, 0, 2, 'Bộ cải thiện giảm xóc', 'Tăng 5 hiệu năng Xe moto', 20, 1772, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(471, 27, 0, 0, 2, 'Bộ cải thiện đánh lửa', 'Tăng 14 hiệu năng Xe moto', 20, 1773, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(472, 27, 0, 0, 2, 'Bộ cải thiện động cơ', 'Tăng 25 hiệu năng Xe moto', 20, 1774, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(473, 27, 0, 0, 2, 'Xăng cấp 5', '', 20, 1767, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(474, 27, 0, 0, 2, 'Diệt quỷ phù', 'Cất giữ sức mạnh có thể tiêu diệt Bí ngô mặt quỷ', 20, 1768, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(475, 28, 0, 0, 2, 'Bảo hiểm như ý', 'Bảo hiểm nâng cấp trang bị từ cấp 1 đến cấp 16', 1, 1769, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(476, 27, 0, 0, 2, 'Rương kẹo', 'Chứa nhiều vật phẩm quý giá', 20, 1775, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(477, 27, 0, 0, 2, 'Túi quà noel', '', 20, 1765, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(478, 27, 0, 0, 2, 'Hộp quà noel', '', 20, 1766, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(479, 27, 0, 0, 2, 'Thư đảm bảo', '', 20, 1630, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(480, 27, 0, 0, 2, 'Thiệp giáng sinh', '', 20, 1762, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(481, 27, 0, 0, 2, 'Trái châu', '', 20, 1760, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(482, 27, 0, 0, 2, 'Dây kim tuyến', '', 20, 1761, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(483, 27, 0, 0, 2, 'Chiếc kẹo gậy', '', 20, 1764, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(484, 27, 0, 0, 2, 'Bít tất may mắn', 'Dùng Để Làm Nhiệm Vụ Phát Quà', 20, 1763, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(485, 33, 0, 0, 2, 'Xe máy', '', 50, 1787, -1, 0, 0, 0, 5, '[{\"param\":0,\"id\":65},{\"param\":1000,\"id\":66}]', '[]', '[]', '[]'),
(486, 29, 0, 0, 2, 'Bộ điều khiển', '', 10, 1786, -1, 0, 0, 0, 0, '[{\"param\":0,\"id\":85},{\"param\":50,\"id\":75}]', '[]', '[]', '[]'),
(487, 30, 0, 0, 2, 'Động cơ V- Power', '', 10, 1784, -1, 0, 0, 0, 0, '[{\"param\":0,\"id\":85},{\"param\":500,\"id\":76}]', '[]', '[]', '[]'),
(488, 31, 0, 0, 2, 'Định vị', '', 10, 1785, -1, 0, 0, 0, 0, '[{\"param\":0,\"id\":85},{\"param\":500,\"id\":77}]', '[]', '[]', '[]'),
(489, 32, 0, 0, 2, 'Bình Nitro', '', 10, 1783, -1, 0, 0, 0, 0, '[{\"param\":0,\"id\":85},{\"param\":50,\"id\":78}]', '[]', '[]', '[]'),
(490, 27, 0, 0, 2, 'Cổ lệnh', 'Dùng để dịch chuyển đến ngôi làng trong truyền thuyết', 70, 1799, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(491, 27, 0, 0, 2, 'Nhiệm vụ bí ẩn', 'Sử dụng sẽ nhận được một nhiệm vụ ngẫu nhiên, chỉ dành cho ninja cấp độ 60 - 89.', 60, 1799, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(492, 0, 0, 0, 1, 'Hắc Tử Tuyến', '', 89, 2026, -1, 0, 0, 0, 0, '[]', '[{\"param\":16,\"id\":47} ,{\"param\":50,\"id\":2} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":11} ,{\"param\":50,\"id\":17} ,{\"param\":14,\"id\":27} ,{\"param\":8,\"id\":28},{\"param\":500,\"id\":29},{\"param\":160,\"id\":35},{\"param\":500,\"id\":50}]', '[{\"param\":16,\"id\":47} ,{\"param\":50,\"id\":3} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":12} ,{\"param\":50,\"id\":17} ,{\"param\":14,\"id\":27} ,{\"param\":8,\"id\":28},{\"param\":500,\"id\":29},{\"param\":160,\"id\":33},{\"param\":500,\"id\":48}]', '[{\"param\":16,\"id\":47} ,{\"param\":50,\"id\":4} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":13} ,{\"param\":50,\"id\":17} ,{\"param\":14,\"id\":27} ,{\"param\":8,\"id\":28},{\"param\":500,\"id\":29},{\"param\":160,\"id\":34},{\"param\":500,\"id\":49}]'),
(493, 0, 0, 0, 0, 'Hắc Tử Trâm', '', 89, 2027, -1, 0, 0, 0, 0, '[]', '[{\"param\":16,\"id\":47} ,{\"param\":50,\"id\":2} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":11} ,{\"param\":50,\"id\":17} ,{\"param\":14,\"id\":27} ,{\"param\":8,\"id\":28},{\"param\":500,\"id\":29},{\"param\":160,\"id\":35},{\"param\":500,\"id\":50}]', '[{\"param\":16,\"id\":47} ,{\"param\":50,\"id\":3} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":12} ,{\"param\":50,\"id\":17} ,{\"param\":14,\"id\":27} ,{\"param\":8,\"id\":28},{\"param\":500,\"id\":29},{\"param\":160,\"id\":33},{\"param\":500,\"id\":48}]', '[{\"param\":16,\"id\":47} ,{\"param\":50,\"id\":4} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":13} ,{\"param\":50,\"id\":17} ,{\"param\":14,\"id\":27} ,{\"param\":8,\"id\":28},{\"param\":500,\"id\":29},{\"param\":160,\"id\":34},{\"param\":500,\"id\":49}]'),
(494, 2, 0, 0, 1, 'Hắc Tử Thượng Giáp', '', 87, 2018, 180, 0, 0, 0, 0, '[]', '[{\"param\":32,\"id\":47} ,{\"param\":50,\"id\":4} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":13} ,{\"param\":50,\"id\":15} ,{\"param\":14,\"id\":27} ,{\"param\":8,\"id\":28},{\"param\":500,\"id\":29},{\"param\":160,\"id\":33},{\"param\":500,\"id\":48}]', '[{\"param\":32,\"id\":47} ,{\"param\":50,\"id\":2} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":11} ,{\"param\":50,\"id\":15} ,{\"param\":14,\"id\":27} ,{\"param\":8,\"id\":28},{\"param\":500,\"id\":29},{\"param\":160,\"id\":34},{\"param\":500,\"id\":49}]', '[{\"param\":32,\"id\":47} ,{\"param\":50,\"id\":3} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":12} ,{\"param\":50,\"id\":15} ,{\"param\":14,\"id\":27} ,{\"param\":8,\"id\":28},{\"param\":500,\"id\":29},{\"param\":160,\"id\":35},{\"param\":500,\"id\":50}]'),
(495, 2, 0, 0, 0, 'Hắc Tử Thượng Giáp', '', 87, 2022, 183, 0, 0, 0, 0, '[]', '[{\"param\":32,\"id\":47} ,{\"param\":50,\"id\":4} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":13} ,{\"param\":50,\"id\":15} ,{\"param\":14,\"id\":27} ,{\"param\":8,\"id\":28},{\"param\":500,\"id\":29},{\"param\":160,\"id\":33},{\"param\":500,\"id\":48}]', '[{\"param\":32,\"id\":47} ,{\"param\":50,\"id\":2} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":11} ,{\"param\":50,\"id\":15} ,{\"param\":14,\"id\":27} ,{\"param\":8,\"id\":28},{\"param\":500,\"id\":29},{\"param\":160,\"id\":34},{\"param\":500,\"id\":49}]', '[{\"param\":32,\"id\":47} ,{\"param\":50,\"id\":3} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":12} ,{\"param\":50,\"id\":15} ,{\"param\":14,\"id\":27} ,{\"param\":8,\"id\":28},{\"param\":500,\"id\":29},{\"param\":160,\"id\":35},{\"param\":500,\"id\":50}]'),
(496, 6, 0, 0, 1, 'Hắc Tử Hạ Giáp', '', 83, 2019, 181, 0, 0, 0, 0, '[]', '[{\"param\":32,\"id\":47} ,{\"param\":50,\"id\":2} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":11} ,{\"param\":50,\"id\":15} ,{\"param\":14,\"id\":27} ,{\"param\":8,\"id\":28},{\"param\":500,\"id\":29},{\"param\":160,\"id\":35},{\"param\":500,\"id\":50}]', '[{\"param\":32,\"id\":47} ,{\"param\":50,\"id\":3} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":12} ,{\"param\":50,\"id\":15} ,{\"param\":14,\"id\":27} ,{\"param\":8,\"id\":28},{\"param\":500,\"id\":29},{\"param\":160,\"id\":33},{\"param\":500,\"id\":48}]', '[{\"param\":32,\"id\":47} ,{\"param\":50,\"id\":4} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":13} ,{\"param\":50,\"id\":15} ,{\"param\":14,\"id\":27} ,{\"param\":8,\"id\":28},{\"param\":500,\"id\":29},{\"param\":160,\"id\":34},{\"param\":500,\"id\":49}]'),
(497, 6, 0, 0, 0, 'Hắc Tử Hạ Giáp', '', 83, 2023, 184, 0, 0, 0, 0, '[]', '[{\"param\":32,\"id\":47} ,{\"param\":50,\"id\":2} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":11} ,{\"param\":50,\"id\":15} ,{\"param\":14,\"id\":27} ,{\"param\":8,\"id\":28},{\"param\":500,\"id\":29},{\"param\":160,\"id\":35},{\"param\":500,\"id\":50}]', '[{\"param\":32,\"id\":47} ,{\"param\":50,\"id\":3} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":12} ,{\"param\":50,\"id\":15} ,{\"param\":14,\"id\":27} ,{\"param\":8,\"id\":28},{\"param\":500,\"id\":29},{\"param\":160,\"id\":33},{\"param\":500,\"id\":48}]', '[{\"param\":32,\"id\":47} ,{\"param\":50,\"id\":4} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":13} ,{\"param\":50,\"id\":15} ,{\"param\":14,\"id\":27} ,{\"param\":8,\"id\":28},{\"param\":500,\"id\":29},{\"param\":160,\"id\":34},{\"param\":500,\"id\":49}]'),
(498, 4, 0, 0, 1, 'Hắc Tử Thủ', '', 85, 2021, -1, 0, 0, 0, 0, '[]', '[{\"param\":18,\"id\":47} ,{\"param\":50,\"id\":3} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":12} ,{\"param\":50,\"id\":18} ,{\"param\":14,\"id\":27} ,{\"param\":8,\"id\":28},{\"param\":500,\"id\":29},{\"param\":160,\"id\":34},{\"param\":500,\"id\":49}]', '[{\"param\":18,\"id\":47} ,{\"param\":50,\"id\":4} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":13} ,{\"param\":50,\"id\":18} ,{\"param\":14,\"id\":27} ,{\"param\":8,\"id\":28},{\"param\":500,\"id\":29},{\"param\":160,\"id\":35},{\"param\":500,\"id\":50}]', '[{\"param\":18,\"id\":47} ,{\"param\":50,\"id\":2} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":11} ,{\"param\":50,\"id\":18} ,{\"param\":14,\"id\":27} ,{\"param\":8,\"id\":28},{\"param\":500,\"id\":29},{\"param\":160,\"id\":33},{\"param\":500,\"id\":48}]'),
(499, 4, 0, 0, 0, 'Hắc Tử Thủ', '', 85, 2025, -1, 0, 0, 0, 0, '[]', '[{\"param\":18,\"id\":47} ,{\"param\":50,\"id\":3} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":12} ,{\"param\":50,\"id\":18} ,{\"param\":14,\"id\":27} ,{\"param\":8,\"id\":28},{\"param\":500,\"id\":29},{\"param\":160,\"id\":34},{\"param\":500,\"id\":49}]', '[{\"param\":18,\"id\":47} ,{\"param\":50,\"id\":4} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":13} ,{\"param\":50,\"id\":18} ,{\"param\":14,\"id\":27} ,{\"param\":8,\"id\":28},{\"param\":500,\"id\":29},{\"param\":160,\"id\":35},{\"param\":500,\"id\":50}]', '[{\"param\":18,\"id\":47} ,{\"param\":50,\"id\":2} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":11} ,{\"param\":50,\"id\":18} ,{\"param\":14,\"id\":27} ,{\"param\":8,\"id\":28},{\"param\":500,\"id\":29},{\"param\":160,\"id\":33},{\"param\":500,\"id\":48}]'),
(500, 8, 0, 0, 1, 'Hắc Tử Ngoa', '', 81, 2020, -1, 0, 0, 0, 0, '[]', '[{\"param\":18,\"id\":47} ,{\"param\":50,\"id\":4} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":13} ,{\"param\":28,\"id\":16} ,{\"param\":14,\"id\":27} ,{\"param\":8,\"id\":28},{\"param\":500,\"id\":29},{\"param\":160,\"id\":33},{\"param\":500,\"id\":48}]', '[{\"param\":18,\"id\":47} ,{\"param\":50,\"id\":2} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":11} ,{\"param\":28,\"id\":16} ,{\"param\":14,\"id\":27} ,{\"param\":8,\"id\":28},{\"param\":500,\"id\":29},{\"param\":160,\"id\":34},{\"param\":500,\"id\":49}]', '[{\"param\":18,\"id\":47} ,{\"param\":50,\"id\":3} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":12} ,{\"param\":28,\"id\":16} ,{\"param\":14,\"id\":27} ,{\"param\":8,\"id\":28},{\"param\":500,\"id\":29},{\"param\":160,\"id\":35},{\"param\":500,\"id\":50}]'),
(501, 8, 0, 0, 0, 'Hắc Tử Ngoa', '', 81, 2024, -1, 0, 0, 0, 0, '[]', '[{\"param\":18,\"id\":47} ,{\"param\":50,\"id\":4} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":13} ,{\"param\":28,\"id\":16} ,{\"param\":14,\"id\":27} ,{\"param\":8,\"id\":28},{\"param\":500,\"id\":29},{\"param\":160,\"id\":33},{\"param\":500,\"id\":48}]', '[{\"param\":18,\"id\":47} ,{\"param\":50,\"id\":2} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":11} ,{\"param\":28,\"id\":16} ,{\"param\":14,\"id\":27} ,{\"param\":8,\"id\":28},{\"param\":500,\"id\":29},{\"param\":160,\"id\":34},{\"param\":500,\"id\":49}]', '[{\"param\":18,\"id\":47} ,{\"param\":50,\"id\":3} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":12} ,{\"param\":28,\"id\":16} ,{\"param\":14,\"id\":27} ,{\"param\":8,\"id\":28},{\"param\":500,\"id\":29},{\"param\":160,\"id\":35},{\"param\":500,\"id\":50}]'),
(502, 9, 0, 0, 2, 'Bùa Hắc Tử', '', 82, 2007, -1, 0, 0, 0, 0, '[]', '[{\"param\":18,\"id\":47} ,{\"param\":50,\"id\":5} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":12} ,{\"param\":50,\"id\":20} ,{\"param\":14,\"id\":30} ,{\"param\":8,\"id\":31},{\"param\":500,\"id\":32},{\"param\":160,\"id\":36},{\"param\":45,\"id\":46}]', '[{\"param\":18,\"id\":47} ,{\"param\":50,\"id\":5} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":13} ,{\"param\":50,\"id\":20} ,{\"param\":14,\"id\":30} ,{\"param\":8,\"id\":31},{\"param\":500,\"id\":32},{\"param\":160,\"id\":36},{\"param\":45,\"id\":46}]', '[{\"param\":18,\"id\":47} ,{\"param\":50,\"id\":5} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":11} ,{\"param\":50,\"id\":20} ,{\"param\":14,\"id\":30} ,{\"param\":8,\"id\":31},{\"param\":500,\"id\":32},{\"param\":160,\"id\":36},{\"param\":45,\"id\":46}]'),
(503, 7, 0, 0, 2, 'Hắc Tử Bội', '', 84, 2008, -1, 0, 0, 0, 0, '[]', '[{\"param\":18,\"id\":47} ,{\"param\":50,\"id\":5} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":13} ,{\"param\":50,\"id\":14} ,{\"param\":14,\"id\":30} ,{\"param\":8,\"id\":31},{\"param\":500,\"id\":32},{\"param\":160,\"id\":33},{\"param\":800,\"id\":51}]', '[{\"param\":18,\"id\":47} ,{\"param\":50,\"id\":5} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":11} ,{\"param\":50,\"id\":14} ,{\"param\":14,\"id\":30} ,{\"param\":8,\"id\":31},{\"param\":500,\"id\":32},{\"param\":160,\"id\":34},{\"param\":800,\"id\":52}]', '[{\"param\":18,\"id\":47} ,{\"param\":50,\"id\":5} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":12} ,{\"param\":50,\"id\":14} ,{\"param\":14,\"id\":30} ,{\"param\":8,\"id\":31},{\"param\":500,\"id\":32},{\"param\":160,\"id\":35},{\"param\":800,\"id\":53}]'),
(504, 5, 0, 0, 2, 'Nhẫn Hắc Tử', '', 86, 2013, -1, 0, 0, 0, 0, '[]', '[{\"param\":18,\"id\":47} ,{\"param\":50,\"id\":5} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":11} ,{\"param\":50,\"id\":17} ,{\"param\":14,\"id\":30} ,{\"param\":8,\"id\":31},{\"param\":500,\"id\":32},{\"param\":160,\"id\":35},{\"param\":800,\"id\":53}]', '[{\"param\":18,\"id\":47} ,{\"param\":50,\"id\":5} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":12} ,{\"param\":50,\"id\":17} ,{\"param\":14,\"id\":30} ,{\"param\":8,\"id\":31},{\"param\":500,\"id\":32},{\"param\":160,\"id\":33},{\"param\":800,\"id\":51}]', '[{\"param\":18,\"id\":47} ,{\"param\":50,\"id\":5} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":13} ,{\"param\":50,\"id\":17} ,{\"param\":14,\"id\":30} ,{\"param\":8,\"id\":31},{\"param\":500,\"id\":32},{\"param\":160,\"id\":34},{\"param\":800,\"id\":52}]'),
(505, 3, 0, 0, 2, 'Dây Chuyền Hắc Tử', '', 88, 2010, -1, 0, 0, 0, 0, '[]', '[{\"param\":18,\"id\":47} ,{\"param\":50,\"id\":5} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":12} ,{\"param\":50,\"id\":14} ,{\"param\":14,\"id\":30} ,{\"param\":8,\"id\":31},{\"param\":500,\"id\":32},{\"param\":160,\"id\":34},{\"param\":800,\"id\":52}]', '[{\"param\":18,\"id\":47} ,{\"param\":50,\"id\":5} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":13} ,{\"param\":50,\"id\":14} ,{\"param\":14,\"id\":30} ,{\"param\":8,\"id\":31},{\"param\":500,\"id\":32},{\"param\":160,\"id\":35},{\"param\":800,\"id\":53}]', '[{\"param\":18,\"id\":47} ,{\"param\":50,\"id\":5} ,{\"param\":100,\"id\":6}, {\"param\":100,\"id\":7} ,{\"param\":50,\"id\":11} ,{\"param\":50,\"id\":14} ,{\"param\":14,\"id\":30} ,{\"param\":8,\"id\":31},{\"param\":500,\"id\":32},{\"param\":160,\"id\":33},{\"param\":800,\"id\":51}]'),
(506, 1, 1, 0, 2, 'Huyết Ẩm Kiếm', '', 80, 2015, 12, 0, 0, 0, 0, '[{\"param\":280,\"id\":0} ,{\"param\":280,\"id\":1} ,{\"param\":100,\"id\":8}, {\"param\":50,\"id\":10} ,{\"param\":1400,\"id\":21} ,{\"param\":100,\"id\":19} ,{\"param\":14,\"id\":27} ,{\"param\":80,\"id\":37},{\"param\":800,\"id\":38},{\"param\":120,\"id\":39},{\"param\":40,\"id\":55}]', '[]', '[]', '[]'),
(507, 1, 2, 0, 2, 'Thiêu Thủy Tiêu', '', 80, 2011, 15, 0, 0, 0, 0, '[{\"param\":280,\"id\":0} ,{\"param\":280,\"id\":1} ,{\"param\":100,\"id\":9}, {\"param\":50,\"id\":10} ,{\"param\":1400,\"id\":22} ,{\"param\":100,\"id\":19} ,{\"param\":14,\"id\":27} ,{\"param\":80,\"id\":37},{\"param\":800,\"id\":38},{\"param\":120,\"id\":39},{\"param\":40,\"id\":55}]', '[]', '[]', '[]'),
(508, 1, 3, 0, 2, 'Lệ Hàn Dao', '', 80, 2014, 41, 0, 0, 0, 0, '[{\"param\":280,\"id\":0},{\"param\":280,\"id\":1},{\"param\":100,\"id\":8},{\"param\":50,\"id\":10},{\"param\":1400,\"id\":23},{\"param\":100,\"id\":19},{\"param\":14,\"id\":30},{\"param\":80,\"id\":37},{\"param\":800,\"id\":38},{\"param\":120,\"id\":39},{\"param\":40,\"id\":56}]', '[]', '[]', '[]'),
(509, 1, 4, 0, 2, 'Đại Hàn Cung', '', 80, 2017, 14, 0, 0, 0, 0, '[{\"param\":280,\"id\":0},{\"param\":280,\"id\":1},{\"param\":100,\"id\":9},{\"param\":50,\"id\":10},{\"param\":1400,\"id\":24},{\"param\":100,\"id\":19},{\"param\":14,\"id\":30},{\"param\":80,\"id\":37},{\"param\":800,\"id\":38},{\"param\":120,\"id\":39},{\"param\":40,\"id\":56}]', '[]', '[]', '[]'),
(510, 1, 5, 0, 2, 'Diệt Ma Đao', '', 80, 2016, 13, 0, 0, 0, 0, '[{\"param\":280,\"id\":0},{\"param\":280,\"id\":1},{\"param\":100,\"id\":8},{\"param\":50,\"id\":10},{\"param\":1400,\"id\":25},{\"param\":100,\"id\":19},{\"param\":14,\"id\":30},{\"param\":80,\"id\":37},{\"param\":800,\"id\":38},{\"param\":120,\"id\":39},{\"param\":40,\"id\":54}]', '[]', '[]', '[]'),
(511, 1, 6, 0, 2, 'Linh Phong Quạt', '', 80, 2009, 16, 0, 0, 0, 0, '[{\"param\":280,\"id\":0},{\"param\":280,\"id\":1},{\"param\":100,\"id\":9},{\"param\":50,\"id\":10},{\"param\":1400,\"id\":26},{\"param\":100,\"id\":19},{\"param\":14,\"id\":30},{\"param\":80,\"id\":37},{\"param\":800,\"id\":38},{\"param\":120,\"id\":39},{\"param\":40,\"id\":54}]', '[]', '[]', '[]'),
(512, 11, 0, 0, 1, 'Mũ Hắc Tử', 'Giúp thay đổi diện mạo', 85, 2026, 179, 0, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(513, 11, 0, 0, 0, 'Mũ Hắc Tử', 'Giúp thay đổi diện mạo', 85, 2027, 182, 0, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(514, 27, 0, 0, 2, 'Thiệp chúc tết', 'Nhắn gởi yêu thương', 20, 2045, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(515, 27, 0, 0, 2, 'Thiệp chúc tết đặc biệt', 'Cùng chung niềm vui, sẻ chia nụ cười.', 20, 2046, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(516, 27, 0, 0, 2, 'Sung', 'Item sự kiện Tết nguyên đán', 20, 2038, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(517, 27, 0, 0, 2, 'Xoài', 'Item sự kiện Tết nguyên đán', 20, 2041, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(518, 27, 0, 0, 2, 'Đu đủ', 'Item sự kiện Tết nguyên đán', 20, 2042, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(519, 27, 0, 0, 2, 'Dừa', 'Item sự kiện Tết nguyên đán', 20, 2039, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(520, 27, 0, 0, 2, 'Mãng cầu', 'Item sự kiện Tết nguyên đán', 20, 2040, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(521, 27, 0, 0, 2, 'Mâm ngũ quả nhỏ', 'Item sự kiện Tết nguyên đán', 20, 2044, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(522, 27, 0, 0, 2, 'Mâm ngũ quả lớn', 'Item sự kiện Tết nguyên đán', 20, 2043, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(523, 33, 0, 0, 2, 'Huyết Sắc Hung Lang', '', 20, 2058, -1, 0, 1, 604800, 5, '[{\"param\":0,\"id\":65},{\"param\":1000,\"id\":66}]', '[]', '[]', '[]'),
(524, 33, 0, 0, 2, 'Harley Davidson', 'Xe dành cho những ninja đích thực', 60, 2207, -1, 0, 0, 0, 5, '[{\"param\":0,\"id\":65},{\"param\":1000,\"id\":66}]', '[]', '[]', '[]'),
(525, 27, 0, 0, 2, '100 ván gạo nếp', 'Vật phẩm sự kiện Giổ tổ 2015', 20, 2163, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(526, 27, 0, 0, 2, '100 nệp bánh chưng', 'Vật phẩm sự kiện Giổ tổ 2015', 20, 2164, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(527, 27, 0, 0, 2, 'Voi 9 ngà', 'Vật phẩm sự kiện Giổ tổ 2015', 20, 2166, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(528, 27, 0, 0, 2, 'Gà 9 cựa', 'Vật phẩm sự kiện Giổ tổ 2015', 20, 2165, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(529, 27, 0, 0, 2, 'Ngựa 9 hồng mao', 'Vật phẩm sự kiện Giổ tổ 2015', 20, 2167, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(530, 27, 0, 0, 2, 'Linh thạch', 'Vật phẩm sự kiện Giổ tổ 2015', 20, 2172, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(531, 27, 0, 0, 2, 'Mâm bạc', 'Vật phẩm sự kiện Giổ tổ 2015', 20, 2169, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(532, 27, 0, 0, 2, 'Mâm vàng', 'Vật phẩm sự kiện Giổ tổ 2015', 20, 2168, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(533, 27, 0, 0, 2, 'Mâm lễ vật bạc', 'Vật phẩm sự kiện Giổ tổ 2015', 20, 2171, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(534, 27, 0, 0, 2, 'Mâm lễ vật vàng', 'Vật phẩm sự kiện Giổ tổ 2015', 20, 2170, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(535, 27, 0, 0, 2, 'Lang bảo', 'Sử dụng nhận được một vật phẩm ngẫu nhiên của Lang tộc.', 60, 2090, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(536, 27, 0, 0, 2, 'Khí bảo', 'Sử dụng có cơ hội nhận được vật phẩm quý.', 60, 2091, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(537, 27, 0, 0, 2, 'Khai nhãn phù', 'Tăng tỉ lệ ra đồ quý khi đánh quái.', 60, 2093, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(538, 27, 0, 0, 2, 'Thiên nhãn phù', 'Tăng tỉ lệ ra đồ quý khi đánh quái.', 60, 2092, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(539, 27, 0, 0, 2, 'Linh Chi Ngàn Năm', 'Sử dụng sẽ được nhân ba kinh nghiệm trong vòng 60 phút. Không cộng dồn.', 10, 2203, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(540, 27, 0, 0, 2, 'Linh Chi Vạn Năm', 'Sử dụng sẽ được nhân bốn kinh nghiệm trong vòng 60 phút. Không cộng dồn', 50, 2204, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(541, 11, 0, 0, 2, 'Thủy tinh', 'Sử dụng giúp thay đổi diện mạo', 50, 2201, 185, 0, 1, 604800, 5, '[{\"id\":58,\"param\":20},{\"id\":6,\"param\":5000}]', '[]', '[]', '[]'),
(542, 11, 0, 0, 2, 'Sơn tinh', 'Sử dụng giúp thay đổi diện mạo', 50, 2202, 188, 0, 1, 604800, 5, '[{\"id\":87,\"param\":5000},{\"id\":82,\"param\":5000}]', '[]', '[]', '[]'),
(543, 27, 0, 0, 2, 'Truyền Thuyết Lệnh', 'Dùng để dịch chuyển đến ngôi làng trong truyền thu...', 100, 2208, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(544, 27, 0, 0, 2, 'Sơn lệnh', 'Nhận lệnh tiêu diệt Thủy tinh', 30, 2209, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(545, 27, 0, 0, 2, 'Phân thân lệnh', 'Sở hữu vật phẩm này cho phép triệu hồi phân thân', 90, 2216, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(546, 27, 0, 0, 2, 'Nhân sâm vạn năm', 'Sử dụng sẽ được x2 kinh nghiệm trong 2 tiếng. Sử dụng cùng Nấm linh chi sẽ được x4.', 40, 2210, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(547, 27, 0, 66, 2, 'Sách võ công Kage Bunshin ', ' ', 90, 2214, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(548, 27, 0, 0, 2, 'Cần câu vàng', 'Sử dụng tại sông hồ sẽ câu được phần thưởng bất ngờ.', 20, 2225, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(549, 27, 0, 0, 2, 'Giày rách', 'Sử dụng sẽ nhận được một ít Yên.', 10, 2222, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(550, 27, 0, 0, 2, 'Giày bạc', 'Sử dụng sẽ nhận được Yên.', 10, 2223, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(551, 27, 0, 0, 2, 'Giày vàng', 'Sử dụng sẽ nhận được một số Yên ngẫu nhiên.', 10, 2224, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(552, 27, 1, 73, 2, 'Sách võ công Ikkakujuu ', '', 80, 2238, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(553, 27, 2, 78, 2, 'Sách võ công Hibashiri', '', 80, 2239, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(554, 27, 3, 75, 2, 'Sách võ công Saihyoken', '', 80, 2240, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(555, 27, 4, 76, 2, 'Sách võ công Aisu Meiku', '', 80, 2241, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(556, 27, 5, 74, 2, 'Sách võ công Kaminari', '', 80, 2242, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(557, 27, 6, 77, 2, 'Sách võ công Kokaze', '', 80, 2243, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(558, 27, 1, 79, 2, 'Sách võ công Enko Bakusatsu', '', 100, 2244, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(559, 27, 2, 83, 2, 'Sách võ công Tsumabeni', '', 100, 2245, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(560, 27, 3, 81, 2, 'Sách võ công Shabondama', '', 100, 2246, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(561, 27, 4, 82, 2, 'Sách võ công Kogoraseru', '', 100, 2247, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(562, 27, 5, 80, 2, 'Sách võ công Raijin', '', 100, 2248, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(563, 27, 6, 84, 2, 'Sách võ công Kamikaze', '', 100, 2249, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(564, 27, 0, 0, 2, 'Thí Luyện Thiếp', 'Sử dụng sẽ được phiêu lưu ̀5 giờ trong Map Vip.', 20, 2260, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(565, 16, 0, 0, 2, 'Bình HP Cao Cấp', 'Nữa giây phục hồi 1500 HP, duy trì 3 giây.', 90, 2261, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(566, 17, 0, 0, 2, 'Bình MP Cao Cấp', 'Phục hồi 5000 MP.', 90, 2262, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(567, 18, 0, 0, 2, 'Haggis', 'Nữa giây phục hồi 120 HP, MP duy trì 1 ngày', 90, 2263, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(568, 10, 0, 0, 2, 'Lồng đèn tròn', ' ', 40, 2404, -1, 0, 1, 604800, 5, '[{\"id\":100,\"param\":20}]', '[]', '[]', '[]'),
(569, 10, 0, 0, 2, 'Lồng đèn cá chép', ' ', 40, 2402, -1, 0, 1, 604800, 5, '[{\"id\":99,\"param\":300}]', '[]', '[]', '[]'),
(570, 10, 0, 0, 2, 'Lồng đèn ngôi sao', ' ', 40, 2403, -1, 0, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(571, 10, 0, 0, 2, 'Lồng đèn mặt trăng', ' ', 40, 2405, -1, 0, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(572, 27, 0, 0, 2, 'Thiên biến lệnh', 'Nhẫn giả sở hữu vật phẩm này có thể tốc biến tấn công quái vật.', 20, 2406, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(573, 27, 0, 0, 2, 'Lục thanh hoa', 'Tăng 200 điểm kinh nghiệm cho thú cưỡi.', 50, 2407, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(574, 27, 0, 0, 2, 'Tử linh liên hoa', 'Tăng 400 điểm kinh nghiệm cho thú cưỡi.', 60, 2408, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(575, 27, 0, 0, 2, 'Linh lang hồ điệp', 'Tăng 600 điểm kinh nghiệm cho thú cưỡi.', 70, 2409, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(576, 27, 0, 0, 2, 'Bánh răng', 'Tăng 100 điểm hiệu năng cho Xe máy.', 50, 2410, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(577, 27, 0, 0, 2, 'IK', 'Tăng 250 điểm hiệu năng cho Xe máy.', 60, 2411, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(578, 27, 0, 0, 2, 'Thuốc cải tiến', 'Tăng 500 điểm hiệu năng cho Xe máy.', 70, 2412, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(579, 27, 0, 0, 2, 'Giấy Cứng', 'Vật phẩm Sự kiện Tết ', 20, 2446, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(580, 27, 0, 0, 2, 'Dây Mồi', 'Vật phẩm Sự kiện Tết ', 20, 2447, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(581, 27, 0, 0, 2, 'Thuốc', 'Vật phẩm Sự kiện Tết ', 20, 2448, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(582, 27, 0, 0, 2, 'Pháo Hoa', 'Vật phẩm Sự kiện Tết 2016', 20, 2449, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(583, 10, 0, 0, 2, 'Hỏa long', '', 20, 2490, -1, 0, 0, 0, 5, '[]', '[]', '[]', '[]'),
(584, 10, 0, 0, 2, 'Hải mã cấp 1', ' ', 70, 2484, -1, 0, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(585, 10, 0, 0, 2, 'Hải mã cấp 2', ' ', 70, 2485, -1, 0, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(586, 10, 0, 0, 2, 'Thần Thú Gia Tộc', 'Chỉ Có Trong Gia Tộc', 1, 2486, -1, 0, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(587, 10, 0, 0, 2, 'Dị Long cấp 1', ' ', 50, 2487, -1, 0, 1, 604800, 5, '[{\"param\":10000,\"id\":87},{\"param\":20,\"id\":100}]', '[]', '[]', '[]'),
(588, 10, 0, 0, 2, 'Dị Long cấp 2', ' ', 70, 2488, -1, 0, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(589, 10, 0, 0, 2, 'Dị Long cấp 3', ' ', 1, 2489, -1, 0, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(590, 27, 0, 0, 2, 'Đốt tre xanh', 'Vật phẩm sử dụng trong sự kiện Giổ tổ ', 20, 2479, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(591, 27, 0, 0, 2, 'Đốt tre vàng', 'Vật phẩm sử dụng trong sự kiện Giổ tổ ', 20, 2480, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(592, 27, 0, 0, 2, 'Tre xanh trăm đốt', 'Vật phẩm sử dụng trong sự kiện Giổ tổ ', 20, 2481, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(593, 27, 0, 0, 2, 'Tre vàng trăm đốt', 'Vật phẩm sử dụng trong sự kiện Giổ tổ', 20, 2492, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(594, 11, 0, 0, 2, 'Mặt nạ Thánh Gióng ', 'Có thể nâng cấp ', 50, 2482, 205, 0, 0, 0, 5, '[{\"param\":5000,\"id\":87},{\"param\":100,\"id\":94},{\"param\":100,\"id\":57},{\"param\":100,\"id\":92},{\"param\":15,\"id\":67},{\"param\":10,\"id\":98},{\"param\":100,\"id\":95},{\"param\":100,\"id\":96},{\"param\":100,\"id\":97}]', '[]', '[]', '[]'),
(595, 27, 0, 0, 2, 'Tín vật', 'Vật phẩm sử dụng trong sự kiện Giổ tổ ', 20, 2483, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(596, 27, 0, 0, 2, 'Trứng Dị Long', 'Sau 7 ngày sẽ nở ra một Dị long con.', 60, 2493, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(597, 27, 0, 0, 2, 'Vạn Ngư Câu', 'Sử dụng để câu cá tại làng chài.', 60, 2495, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(598, 27, 0, 0, 2, 'Huyết long ngư', 'Thức ăn ưa thích của thần thú.', 60, 2496, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(599, 27, 0, 0, 2, 'Tuyết sa ngư', 'Loài cá quý hiếm giúp thần thú mau chóng trưởng thành.', 60, 2497, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(600, 27, 0, 0, 2, 'Linh tâm ngư', 'Là loài cá cổ rất hiếm ở làng Chài.', 60, 2498, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(601, 27, 0, 0, 2, 'Trứng Hải Mã', 'Sau 7 ngày sẽ nở ra một Hải mã con.', 60, 2494, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(602, 27, 0, 0, 2, 'Dế Cơm', 'Mồi câu cá.', 60, 2500, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(603, 27, 0, 0, 2, 'Giun Đất', 'Mồi câu cá.', 60, 2501, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(604, 27, 0, 0, 2, 'Triệu Hồi Thú Thần', 'Sử dụng để gọi ra thần thú giá tộc.', 60, 2510, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(605, 27, 0, 0, 2, 'Tiến Hóa Đan', 'Có xác suất giúp thần thú tiến hóa.', 60, 2509, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(606, 27, 0, 0, 2, 'Bí Ma', 'Item sự kiện Halloween', 30, 2526, 214, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(607, 27, 0, 0, 2, 'Xương Thú', 'Item sự kiện Halloween', 30, 2511, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(608, 27, 0, 0, 2, 'Tàn Linh', 'Item sự kiện Halloween', 30, 2513, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(609, 27, 0, 0, 2, 'Quả Táo', 'Item sự kiện Halloween', 30, 2514, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(610, 27, 0, 0, 2, 'Mật Ong', 'Item sự kiện Halloween', 30, 2515, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(611, 27, 0, 0, 2, 'Kẹo Táo', 'Item sự kiện Halloween', 30, 2516, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(612, 27, 0, 0, 2, 'Hộp Ma Quỷ', 'Item sự kiện Halloween', 30, 2517, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(613, 11, 0, 0, 1, 'Mặt nạ Jiraiya ', 'Sử dụng để thay đổi diện mạo', 1, 2518, 210, 0, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(614, 11, 0, 0, 0, 'Mặt nạ Konan', 'Sử dụng để thay đổi diện mạo', 10, 2520, 211, 0, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(615, 11, 0, 0, 0, 'Mặt nạ Deidara', 'Sử dụng để thay đổi diện mạo', 80, 2522, 212, 0, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(616, 11, 0, 0, 1, 'Mặt nạ Tobi', 'Sử dụng để thay đổi diện mạo', 80, 2524, 213, 0, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(617, 27, 0, 0, 2, 'Ma vật', 'Item sự kiện Halloween 2016', 30, 2512, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(618, 0, 0, 0, 1, 'Thái Dương Cốt Ngọc Tuyến', '', 99, 2564, -1, 0, 0, 0, 0, '[]', '[{\"param\":20,\"id\":47} ,{\"param\":60,\"id\":2} ,{\"param\":150,\"id\":6}, {\"param\":150,\"id\":7} ,{\"param\":60,\"id\":11} ,{\"param\":60,\"id\":17} ,{\"param\":16,\"id\":27} ,{\"param\":9,\"id\":28},{\"param\":550,\"id\":29},{\"param\":180,\"id\":35},{\"param\":500,\"id\":50}]', '[{\"param\":20,\"id\":47} ,{\"param\":60,\"id\":3} ,{\"param\":150,\"id\":6}, {\"param\":150,\"id\":7} ,{\"param\":60,\"id\":12} ,{\"param\":60,\"id\":17} ,{\"param\":16,\"id\":27} ,{\"param\":9,\"id\":28},{\"param\":550,\"id\":29},{\"param\":180,\"id\":33},{\"param\":500,\"id\":48}]', '[{\"param\":20,\"id\":47} ,{\"param\":60,\"id\":4} ,{\"param\":150,\"id\":6}, {\"param\":150,\"id\":7} ,{\"param\":60,\"id\":13} ,{\"param\":60,\"id\":17} ,{\"param\":16,\"id\":27} ,{\"param\":9,\"id\":28},{\"param\":550,\"id\":29},{\"param\":180,\"id\":34},{\"param\":500,\"id\":49}]'),
(619, 0, 0, 0, 0, 'Thái Dương Cốt Ngọc Trâm', '', 99, 2560, -1, 0, 0, 0, 0, '[]', '[{\"param\":20,\"id\":47} ,{\"param\":60,\"id\":2} ,{\"param\":150,\"id\":6}, {\"param\":150,\"id\":7} ,{\"param\":60,\"id\":11} ,{\"param\":60,\"id\":17} ,{\"param\":16,\"id\":27} ,{\"param\":9,\"id\":28},{\"param\":550,\"id\":29},{\"param\":180,\"id\":35},{\"param\":500,\"id\":50}]', '[{\"param\":20,\"id\":47} ,{\"param\":60,\"id\":3} ,{\"param\":150,\"id\":6}, {\"param\":150,\"id\":7} ,{\"param\":60,\"id\":12} ,{\"param\":60,\"id\":17} ,{\"param\":16,\"id\":27} ,{\"param\":9,\"id\":28},{\"param\":550,\"id\":29},{\"param\":180,\"id\":33},{\"param\":500,\"id\":48}]', '[{\"param\":20,\"id\":47} ,{\"param\":60,\"id\":4} ,{\"param\":150,\"id\":6}, {\"param\":150,\"id\":7} ,{\"param\":60,\"id\":13} ,{\"param\":60,\"id\":17} ,{\"param\":16,\"id\":27} ,{\"param\":9,\"id\":28},{\"param\":550,\"id\":29},{\"param\":180,\"id\":34},{\"param\":500,\"id\":49}]');
INSERT INTO `item` (`id`, `type`, `class`, `skill`, `gender`, `name`, `description`, `level`, `iconID`, `part`, `uptoup`, `isExpires`, `secondsExpires`, `saleCoinLock`, `ItemOption`, `Option1`, `Option2`, `Option3`) VALUES
(620, 2, 0, 0, 1, 'Thái Dương Cốt Ngọc Giáp', '', 97, 2528, 197, 0, 0, 0, 0, '[]', '[{\"param\":36,\"id\":47} \n,{\"param\":60,\"id\":4} \n,{\"param\":150,\"id\":6}\n,{\"param\":150,\"id\":7} \n,{\"param\":60,\"id\":13} \n,{\"param\":60,\"id\":15} \n,{\"param\":16,\"id\":27} \n,{\"param\":9,\"id\":28}\n,{\"param\":550,\"id\":29}\n,{\"param\":180,\"id\":33}\n,{\"param\":500,\"id\":48}]', '[{\"param\":36,\"id\":47} ,{\"param\":60,\"id\":2} ,{\"param\":150,\"id\":6}, {\"param\":150,\"id\":7} ,{\"param\":60,\"id\":11} ,{\"param\":60,\"id\":15} ,{\"param\":16,\"id\":27} ,{\"param\":9,\"id\":28},{\"param\":550,\"id\":29},{\"param\":180,\"id\":34},{\"param\":500,\"id\":49}]', '[{\"param\":36,\"id\":47} ,{\"param\":60,\"id\":3} ,{\"param\":150,\"id\":6}, {\"param\":150,\"id\":7} ,{\"param\":60,\"id\":12} ,{\"param\":60,\"id\":15} ,{\"param\":16,\"id\":27} ,{\"param\":9,\"id\":28},{\"param\":550,\"id\":29},{\"param\":180,\"id\":35},{\"param\":500,\"id\":50}]'),
(621, 2, 0, 0, 0, 'Thái Dương Cốt Ngọc Giáp', '', 97, 2532, 199, 0, 0, 0, 0, '[]', '[{\"param\":36,\"id\":47} \n,{\"param\":60,\"id\":4} \n,{\"param\":150,\"id\":6}\n,{\"param\":150,\"id\":7} \n,{\"param\":60,\"id\":13} \n,{\"param\":60,\"id\":15} \n,{\"param\":16,\"id\":27} \n,{\"param\":9,\"id\":28}\n,{\"param\":550,\"id\":29}\n,{\"param\":180,\"id\":33}\n,{\"param\":500,\"id\":48}]', '[{\"param\":36,\"id\":47} ,{\"param\":60,\"id\":2} ,{\"param\":150,\"id\":6}, {\"param\":150,\"id\":7} ,{\"param\":60,\"id\":11} ,{\"param\":60,\"id\":15} ,{\"param\":16,\"id\":27} ,{\"param\":9,\"id\":28},{\"param\":550,\"id\":29},{\"param\":180,\"id\":34},{\"param\":500,\"id\":49}]', '[{\"param\":36,\"id\":47} ,{\"param\":60,\"id\":3} ,{\"param\":150,\"id\":6}, {\"param\":150,\"id\":7} ,{\"param\":60,\"id\":12} ,{\"param\":60,\"id\":15} ,{\"param\":16,\"id\":27} ,{\"param\":9,\"id\":28},{\"param\":550,\"id\":29},{\"param\":180,\"id\":35},{\"param\":500,\"id\":50}]'),
(622, 6, 0, 0, 1, 'Thái Dương Cốt Ngọc Hạ Giáp', '', 93, 2530, 198, 0, 0, 0, 0, '[]', '[{\"param\":36,\"id\":47} \n,{\"param\":60,\"id\":2} \n,{\"param\":150,\"id\":6}\n,{\"param\":150,\"id\":7} \n,{\"param\":60,\"id\":11} \n,{\"param\":60,\"id\":15} \n,{\"param\":16,\"id\":27} \n,{\"param\":9,\"id\":28}\n,{\"param\":550,\"id\":29}\n,{\"param\":180,\"id\":35}\n,{\"param\":500,\"id\":50}]', '[{\"param\":36,\"id\":47} ,{\"param\":60,\"id\":3} ,{\"param\":150,\"id\":6}, {\"param\":150,\"id\":7} ,{\"param\":60,\"id\":12} ,{\"param\":60,\"id\":15} ,{\"param\":16,\"id\":27} ,{\"param\":9,\"id\":28},{\"param\":550,\"id\":29},{\"param\":180,\"id\":33},{\"param\":500,\"id\":48}]', '[{\"param\":36,\"id\":47} ,{\"param\":60,\"id\":4} ,{\"param\":150,\"id\":6}, {\"param\":150,\"id\":7} ,{\"param\":60,\"id\":13} ,{\"param\":60,\"id\":15} ,{\"param\":16,\"id\":27} ,{\"param\":9,\"id\":28},{\"param\":550,\"id\":29},{\"param\":180,\"id\":34},{\"param\":500,\"id\":49}]'),
(623, 6, 0, 0, 0, 'Thái Dương Cốt Ngọc Hạ Giáp', '', 93, 2534, 200, 0, 0, 0, 0, '[]', '[{\"param\":36,\"id\":47} \n,{\"param\":60,\"id\":2} \n,{\"param\":150,\"id\":6}\n,{\"param\":150,\"id\":7} \n,{\"param\":60,\"id\":11} \n,{\"param\":60,\"id\":15} \n,{\"param\":16,\"id\":27} \n,{\"param\":9,\"id\":28}\n,{\"param\":550,\"id\":29}\n,{\"param\":180,\"id\":35}\n,{\"param\":500,\"id\":50}]', '[{\"param\":36,\"id\":47} ,{\"param\":60,\"id\":3} ,{\"param\":150,\"id\":6}, {\"param\":150,\"id\":7} ,{\"param\":60,\"id\":12} ,{\"param\":60,\"id\":15} ,{\"param\":16,\"id\":27} ,{\"param\":9,\"id\":28},{\"param\":550,\"id\":29},{\"param\":180,\"id\":33},{\"param\":500,\"id\":48}]', '[{\"param\":36,\"id\":47} ,{\"param\":60,\"id\":4} ,{\"param\":150,\"id\":6}, {\"param\":150,\"id\":7} ,{\"param\":60,\"id\":13} ,{\"param\":60,\"id\":15} ,{\"param\":16,\"id\":27} ,{\"param\":9,\"id\":28},{\"param\":550,\"id\":29},{\"param\":180,\"id\":34},{\"param\":500,\"id\":49}]'),
(624, 4, 0, 0, 1, 'Thái Dương Cốt Ngọc Thủ', '', 95, 2531, -1, 0, 0, 0, 0, '[]', '[{\"param\":36,\"id\":47} ,{\"param\":60,\"id\":3} ,{\"param\":150,\"id\":6}, {\"param\":150,\"id\":7} ,{\"param\":60,\"id\":12} ,{\"param\":60,\"id\":18} ,{\"param\":16,\"id\":27} ,{\"param\":9,\"id\":28},{\"param\":550,\"id\":29},{\"param\":180,\"id\":34},{\"param\":500,\"id\":49}]', '[{\"param\":36,\"id\":47} ,{\"param\":60,\"id\":4} ,{\"param\":150,\"id\":6}, {\"param\":150,\"id\":7} ,{\"param\":60,\"id\":13} ,{\"param\":60,\"id\":18} ,{\"param\":16,\"id\":27} ,{\"param\":9,\"id\":28},{\"param\":550,\"id\":29},{\"param\":180,\"id\":35},{\"param\":500,\"id\":50}]', '[{\"param\":36,\"id\":47} ,{\"param\":60,\"id\":2} ,{\"param\":150,\"id\":6}, {\"param\":150,\"id\":7} ,{\"param\":60,\"id\":11} ,{\"param\":60,\"id\":18} ,{\"param\":16,\"id\":27} ,{\"param\":9,\"id\":28},{\"param\":550,\"id\":29},{\"param\":180,\"id\":33},{\"param\":500,\"id\":48}]'),
(625, 4, 0, 0, 0, 'Thái Dương Cốt Ngọc Thủ', '', 95, 2533, -1, 0, 0, 0, 0, '[]', '[{\"param\":36,\"id\":47} ,{\"param\":60,\"id\":3} ,{\"param\":150,\"id\":6}, {\"param\":150,\"id\":7} ,{\"param\":60,\"id\":12} ,{\"param\":60,\"id\":18} ,{\"param\":16,\"id\":27} ,{\"param\":9,\"id\":28},{\"param\":550,\"id\":29},{\"param\":180,\"id\":34},{\"param\":500,\"id\":49}]', '[{\"param\":36,\"id\":47} ,{\"param\":60,\"id\":4} ,{\"param\":150,\"id\":6}, {\"param\":150,\"id\":7} ,{\"param\":60,\"id\":13} ,{\"param\":60,\"id\":18} ,{\"param\":16,\"id\":27} ,{\"param\":9,\"id\":28},{\"param\":550,\"id\":29},{\"param\":180,\"id\":35},{\"param\":500,\"id\":50}]', '[{\"param\":36,\"id\":47} ,{\"param\":60,\"id\":2} ,{\"param\":150,\"id\":6}, {\"param\":150,\"id\":7} ,{\"param\":60,\"id\":11} ,{\"param\":60,\"id\":18} ,{\"param\":16,\"id\":27} ,{\"param\":9,\"id\":28},{\"param\":550,\"id\":29},{\"param\":180,\"id\":33},{\"param\":500,\"id\":48}]'),
(626, 8, 0, 0, 1, 'Thái Dương Cốt Ngọc Ngoa', '', 91, 2529, -1, 0, 0, 0, 0, '[]', '[{\"param\":20,\"id\":47} \n,{\"param\":60,\"id\":4} \n,{\"param\":150,\"id\":6}\n,{\"param\":150,\"id\":7} \n,{\"param\":60,\"id\":13} \n,{\"param\":40,\"id\":16} \n,{\"param\":16,\"id\":27} \n,{\"param\":9,\"id\":28}\n,{\"param\":550,\"id\":29}\n,{\"param\":180,\"id\":33}\n,{\"param\":500,\"id\":48}]', '[{\"param\":20,\"id\":47} ,{\"param\":60,\"id\":2} ,{\"param\":150,\"id\":6}, {\"param\":150,\"id\":7} ,{\"param\":60,\"id\":11} ,{\"param\":40,\"id\":16} ,{\"param\":16,\"id\":27} ,{\"param\":9,\"id\":28},{\"param\":550,\"id\":29},{\"param\":180,\"id\":34},{\"param\":500,\"id\":49}]', '[{\"param\":20,\"id\":47} ,{\"param\":60,\"id\":3} ,{\"param\":150,\"id\":6}, {\"param\":150,\"id\":7} ,{\"param\":60,\"id\":12} ,{\"param\":40,\"id\":16} ,{\"param\":16,\"id\":27} ,{\"param\":9,\"id\":28},{\"param\":550,\"id\":29},{\"param\":180,\"id\":35},{\"param\":500,\"id\":50}]'),
(627, 8, 0, 0, 0, 'Thái Dương Cốt Ngọc Ngoa', '', 91, 2535, -1, 0, 0, 0, 0, '[]', '[{\"param\":20,\"id\":47} \n,{\"param\":60,\"id\":4} \n,{\"param\":150,\"id\":6}\n,{\"param\":150,\"id\":7} \n,{\"param\":60,\"id\":13} \n,{\"param\":40,\"id\":16} \n,{\"param\":16,\"id\":27} \n,{\"param\":9,\"id\":28}\n,{\"param\":550,\"id\":29}\n,{\"param\":180,\"id\":33}\n,{\"param\":500,\"id\":48}]', '[{\"param\":20,\"id\":47} ,{\"param\":60,\"id\":2} ,{\"param\":150,\"id\":6}, {\"param\":150,\"id\":7} ,{\"param\":60,\"id\":11} ,{\"param\":40,\"id\":16} ,{\"param\":16,\"id\":27} ,{\"param\":9,\"id\":28},{\"param\":550,\"id\":29},{\"param\":180,\"id\":34},{\"param\":500,\"id\":49}]', '[{\"param\":20,\"id\":47} ,{\"param\":60,\"id\":3} ,{\"param\":150,\"id\":6}, {\"param\":150,\"id\":7} ,{\"param\":60,\"id\":12} ,{\"param\":40,\"id\":16} ,{\"param\":16,\"id\":27} ,{\"param\":9,\"id\":28},{\"param\":550,\"id\":29},{\"param\":180,\"id\":35},{\"param\":500,\"id\":50}]'),
(628, 9, 0, 0, 2, 'Thái Dương Cốt Ngọc Phù', '', 92, 2561, -1, 0, 0, 0, 0, '[]', '[{\"param\":22,\"id\":47} \n,{\"param\":60,\"id\":5} \n,{\"param\":150,\"id\":6}\n,{\"param\":150,\"id\":7} \n,{\"param\":60,\"id\":12} \n,{\"param\":60,\"id\":20} \n,{\"param\":16,\"id\":30} \n,{\"param\":9,\"id\":31}\n,{\"param\":550,\"id\":32}\n,{\"param\":180,\"id\":36}\n,{\"param\":55,\"id\":46}]', '[{\"param\":22,\"id\":47} ,{\"param\":60,\"id\":5} ,{\"param\":150,\"id\":6}, {\"param\":150,\"id\":7} ,{\"param\":60,\"id\":13} ,{\"param\":60,\"id\":20} ,{\"param\":16,\"id\":30} ,{\"param\":9,\"id\":31},{\"param\":550,\"id\":32},{\"param\":180,\"id\":36},{\"param\":55,\"id\":46}]', '[{\"param\":22,\"id\":47} ,{\"param\":60,\"id\":5} ,{\"param\":150,\"id\":6}, {\"param\":150,\"id\":7} ,{\"param\":60,\"id\":11} ,{\"param\":60,\"id\":20} ,{\"param\":16,\"id\":30} ,{\"param\":9,\"id\":31},{\"param\":550,\"id\":32},{\"param\":180,\"id\":36},{\"param\":55,\"id\":46}]'),
(629, 7, 0, 0, 2, 'Thái Dương Cốt Ngọc Bội', '', 94, 2565, -1, 0, 0, 0, 0, '[]', '[{\"param\":22,\"id\":47} \n,{\"param\":60,\"id\":5} \n,{\"param\":150,\"id\":6}\n,{\"param\":150,\"id\":7} \n,{\"param\":60,\"id\":13} \n,{\"param\":60,\"id\":14} \n,{\"param\":16,\"id\":30} \n,{\"param\":9,\"id\":31}\n,{\"param\":550,\"id\":32}\n,{\"param\":180,\"id\":33}\n,{\"param\":800,\"id\":51}]', '[{\"param\":22,\"id\":47} ,{\"param\":60,\"id\":5} ,{\"param\":150,\"id\":6}, {\"param\":150,\"id\":7} ,{\"param\":60,\"id\":11} ,{\"param\":60,\"id\":14} ,{\"param\":16,\"id\":30} ,{\"param\":9,\"id\":31},{\"param\":550,\"id\":32},{\"param\":180,\"id\":34},{\"param\":800,\"id\":52}]', '[{\"param\":22,\"id\":47} ,{\"param\":60,\"id\":5} ,{\"param\":150,\"id\":6}, {\"param\":150,\"id\":7} ,{\"param\":60,\"id\":12} ,{\"param\":60,\"id\":14} ,{\"param\":16,\"id\":30} ,{\"param\":9,\"id\":31},{\"param\":550,\"id\":32},{\"param\":180,\"id\":35},{\"param\":800,\"id\":53}]'),
(630, 5, 0, 0, 2, 'Thái Dương Cốt Ngọc Giới', '', 96, 2563, -1, 0, 0, 0, 0, '[]', '[{\"param\":22,\"id\":47} \n,{\"param\":60,\"id\":5} \n,{\"param\":150,\"id\":6}\n,{\"param\":150,\"id\":7} \n,{\"param\":60,\"id\":11} \n,{\"param\":60,\"id\":17} \n,{\"param\":16,\"id\":30} \n,{\"param\":9,\"id\":31}\n,{\"param\":550,\"id\":32}\n,{\"param\":180,\"id\":35}\n,{\"param\":800,\"id\":53}]', '[{\"param\":22,\"id\":47} ,{\"param\":60,\"id\":5} ,{\"param\":150,\"id\":6}, {\"param\":150,\"id\":7} ,{\"param\":60,\"id\":12} ,{\"param\":60,\"id\":17} ,{\"param\":16,\"id\":30} ,{\"param\":9,\"id\":31},{\"param\":550,\"id\":32},{\"param\":180,\"id\":33},{\"param\":800,\"id\":51}]', '[{\"param\":22,\"id\":47} ,{\"param\":60,\"id\":5} ,{\"param\":150,\"id\":6}, {\"param\":150,\"id\":7} ,{\"param\":60,\"id\":13} ,{\"param\":60,\"id\":17} ,{\"param\":16,\"id\":30} ,{\"param\":9,\"id\":31},{\"param\":550,\"id\":32},{\"param\":180,\"id\":34},{\"param\":800,\"id\":52}]'),
(631, 3, 0, 0, 2, 'Thái Dương Cốt Ngọc Liên', '', 98, 2562, -1, 0, 0, 0, 0, '[]', '[{\"param\":22,\"id\":47} \n,{\"param\":60,\"id\":5} \n,{\"param\":150,\"id\":6}\n,{\"param\":150,\"id\":7} \n,{\"param\":60,\"id\":12} \n,{\"param\":60,\"id\":14} \n,{\"param\":16,\"id\":30} \n,{\"param\":9,\"id\":31}\n,{\"param\":550,\"id\":32}\n,{\"param\":180,\"id\":34}\n,{\"param\":800,\"id\":52}]', '[{\"param\":22,\"id\":47} ,{\"param\":60,\"id\":5} ,{\"param\":150,\"id\":6}, {\"param\":150,\"id\":7} ,{\"param\":60,\"id\":13} ,{\"param\":60,\"id\":14} ,{\"param\":16,\"id\":30} ,{\"param\":9,\"id\":31},{\"param\":550,\"id\":32},{\"param\":180,\"id\":35},{\"param\":800,\"id\":53}]', '[{\"param\":22,\"id\":47} ,{\"param\":60,\"id\":5} ,{\"param\":150,\"id\":6}, {\"param\":150,\"id\":7} ,{\"param\":60,\"id\":11} ,{\"param\":60,\"id\":14} ,{\"param\":16,\"id\":30} ,{\"param\":9,\"id\":31},{\"param\":550,\"id\":32},{\"param\":180,\"id\":33},{\"param\":800,\"id\":51}]'),
(632, 1, 1, 0, 2, 'Thái Dương Vô Cực Kiếm', '', 90, 2540, 12, 0, 0, 0, 0, '[{\"param\":500,\"id\":0} ,{\"param\":500,\"id\":1} ,{\"param\":150,\"id\":8}, {\"param\":60,\"id\":10} ,{\"param\":2000,\"id\":21} ,{\"param\":200,\"id\":19} ,{\"param\":16,\"id\":27} ,{\"param\":90,\"id\":37},{\"param\":900,\"id\":38},{\"param\":140,\"id\":39},{\"param\":40,\"id\":55}]', '[]', '[]', '[]'),
(633, 1, 2, 0, 2, 'Thái Dương Thiên Hỏa Tiêu', '', 90, 2541, 15, 0, 0, 0, 0, '[{\"param\":500,\"id\":0} ,{\"param\":500,\"id\":1} ,{\"param\":150,\"id\":9}, {\"param\":60,\"id\":10} ,{\"param\":2000,\"id\":22} ,{\"param\":200,\"id\":19} ,{\"param\":16,\"id\":27} ,{\"param\":90,\"id\":37},{\"param\":900,\"id\":38},{\"param\":140,\"id\":39},{\"param\":40,\"id\":55}]', '[]', '[]', '[]'),
(634, 1, 3, 0, 2, 'Thái Dương Táng Hồn Dao', '', 90, 2539, 41, 0, 0, 0, 0, '[{\"param\":500,\"id\":0} ,{\"param\":500,\"id\":1} ,{\"param\":150,\"id\":8}, {\"param\":60,\"id\":10} ,{\"param\":2000,\"id\":23} ,{\"param\":200,\"id\":19} ,{\"param\":16,\"id\":27} ,{\"param\":90,\"id\":37},{\"param\":900,\"id\":38},{\"param\":140,\"id\":39},{\"param\":40,\"id\":56}]', '[]', '[]', '[]'),
(635, 1, 4, 0, 2, 'Thái Dương Băng Thần Cung', '', 90, 2538, 14, 0, 0, 0, 0, '[{\"param\":500,\"id\":0} ,{\"param\":500,\"id\":1} ,{\"param\":150,\"id\":9}, {\"param\":60,\"id\":10} ,{\"param\":2000,\"id\":24} ,{\"param\":200,\"id\":19} ,{\"param\":16,\"id\":27} ,{\"param\":90,\"id\":37},{\"param\":900,\"id\":38},{\"param\":140,\"id\":39},{\"param\":40,\"id\":56}]', '[]', '[]', '[]'),
(636, 1, 5, 0, 2, 'Thái Dương Chiến Lục Đao', '', 90, 2536, 13, 0, 0, 0, 0, '[{\"param\":500,\"id\":0} ,{\"param\":500,\"id\":1} ,{\"param\":150,\"id\":8}, {\"param\":60,\"id\":10} ,{\"param\":2000,\"id\":25} ,{\"param\":200,\"id\":19} ,{\"param\":16,\"id\":27} ,{\"param\":90,\"id\":37},{\"param\":900,\"id\":38},{\"param\":140,\"id\":39},{\"param\":40,\"id\":54}]', '[]', '[]', '[]'),
(637, 1, 6, 0, 2, 'Thái Dương Hoàng Phong Phiến', '', 90, 2537, 16, 0, 0, 0, 0, '[{\"param\":500,\"id\":0} ,{\"param\":500,\"id\":1} ,{\"param\":150,\"id\":9}, {\"param\":60,\"id\":10} ,{\"param\":2000,\"id\":26} ,{\"param\":200,\"id\":19} ,{\"param\":16,\"id\":27} ,{\"param\":90,\"id\":37},{\"param\":900,\"id\":38},{\"param\":140,\"id\":39},{\"param\":40,\"id\":54}]', '[]', '[]', '[]'),
(638, 27, 0, 0, 2, 'Lá dong', 'Item sự kiện Tết Nguyên Đán ', 30, 2542, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(639, 27, 0, 0, 2, 'Nếp', 'Item sự kiện Tết Nguyên Đán ', 30, 2545, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(640, 27, 0, 0, 2, 'Thịt heo', 'Item sự kiện Tết Nguyên Đán', 30, 2547, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(641, 27, 0, 0, 2, 'Đậu xanh', 'Item sự kiện Tết Nguyên Đán', 30, 2544, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(642, 27, 0, 0, 2, 'Lạt tre', 'Item sự kiện Tết Nguyên Đán', 30, 2543, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(643, 27, 0, 0, 2, 'Bánh Chưng', 'Item sự kiện Tết Nguyên Đán', 1, 2548, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(644, 27, 0, 0, 2, 'Bánh Tét', 'Item sự kiện Tết Nguyên Đán', 30, 2549, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(645, 27, 0, 0, 2, 'Túi Quà 8/3', '', 1, 2550, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(646, 27, 0, 0, 2, 'Bùa May Mắn', 'Sử dụng có tỉ lệ ngẫu nhiên nhận trang bị Minh Giác', 30, 2546, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(647, 27, 0, 0, 2, 'Rương Ma Quái', 'Chứa đựng rất nhiều vật phẩm giá trị.', 90, 2556, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(648, 27, 0, 0, 2, 'Huy chương chiến công đồng', 'Item sự kiện', 30, 2569, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(649, 27, 0, 0, 2, 'Huy chương chiến công bạc', 'Item sự kiện', 30, 2566, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(650, 27, 0, 0, 2, 'Huy Chương chiến công vàng', 'Item sự kiện', 30, 2567, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(651, 27, 0, 0, 2, 'Huy Chương Chiến Công', '', 30, 2568, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(652, 34, 0, 0, 2, 'Huyền Tinh Ngọc', '', 70, 2554, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(653, 34, 0, 0, 2, 'Huyết Ngọc', '', 70, 2553, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(654, 34, 0, 0, 2, 'Lam Tinh Ngọc', '', 70, 2555, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(655, 34, 0, 0, 2, 'Lục Ngọc', '', 50, 2552, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(656, 27, 0, 0, 2, 'Đá Năng Lượng Băng', 'Item sự kiện', 40, 2571, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(657, 27, 0, 0, 2, 'Đá Năng Lượng Hỏa', 'Item sự kiện', 40, 2570, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(658, 27, 0, 0, 2, 'Đá Năng Lượng Gió', 'Item sự kiện', 40, 2572, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(659, 27, 0, 0, 2, 'Đá Ma Thuật', 'Item sự kiện', 1, 2573, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(660, 27, 0, 0, 2, 'Truy Tung Phù', 'Item sự kiện', 40, 2574, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(661, 27, 0, 0, 2, 'Truy Tung Lệnh', 'Item sự kiện', 40, 2575, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(662, 27, 0, 0, 2, 'Lệnh bài năng động', 'Item mo rong', 90, 2575, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(663, 27, 0, 0, 2, 'Lệnh bài hoàn thành', 'Dùng để hoàn thành tức thời nhiệm vụ matsurugi', 90, 2579, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(664, 27, 0, 0, 2, 'Lồng đèn', 'Thắp đèn đêm trung thu', 1, 2580, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(665, 27, 0, 0, 2, 'Giấy thông hành', 'Item sự kiện', 1, 2581, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(666, 27, 0, 0, 2, 'Bơ', 'Bơ làm bánh', 1, 2613, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(667, 27, 0, 0, 2, 'Kem', 'Kem làm bánh', 1, 2614, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(668, 27, 0, 0, 2, 'Đường bột', 'Đường bột làm bánh', 1, 2617, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(669, 27, 0, 0, 2, 'Chocolate', 'Socola làm bánh', 1, 2615, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(670, 27, 0, 0, 2, 'Dâu tây', 'Dâu làm bánh', 1, 2616, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(671, 27, 0, 0, 2, 'Bánh khúc cây chocolate', 'Bánh khúc cây', 20, 2618, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(672, 27, 0, 0, 2, 'Bánh khúc cây dâu tây', 'Bánh khúc cây dâu tây', 20, 2619, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(673, 27, 0, 0, 2, 'Quà trang trí', 'Quà trang trí cây thông', 20, 2580, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(674, 27, 0, 0, 2, 'Mảnh pháo hoa', 'Nguyên liệu để ghép pháo hoa ngày tết', 1, 2622, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(675, 27, 0, 0, 2, 'Tràng Pháo', 'Sử dụng để bắn phóa hoa và nhận thưởng', 1, 2623, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(676, 27, 0, 0, 2, 'Vui Xuân', 'Sử dụng để tìm kiếm hộp quà vui xuân', 1, 2624, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(677, 27, 0, 0, 2, 'Miếng dưa hấu', 'Dưa hấu ăn dở', 1, 2628, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(678, 27, 0, 0, 2, 'Dưa hấu dài', 'Dưa hấu dài', 20, 2629, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(679, 27, 0, 0, 2, 'Dưa hấu tròn', 'Dưa hấu tròn', 20, 2627, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(680, 27, 0, 0, 2, 'Giấy xác thực', 'Giấy xác thực', 1, 2626, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(681, 27, 0, 0, 2, 'Giấy chứng nhận', 'Giấy chứng nhận', 1, 2625, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(682, 27, 0, 0, 2, 'Đá Mặt Trăng', 'Vật Phẩm Sự Kiện', 1, 2632, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(683, 27, 0, 0, 2, 'Cỏ ba lá', 'Cỏ ba lá', 20, 2631, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(684, 27, 0, 0, 2, 'Cỏ bốn lá', 'Cỏ bốn lá', 20, 2630, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(685, 14, 0, 0, 2, 'Geningan', '', 1, 2633, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(686, 14, 0, 0, 2, 'Chuuningan', '', 1, 2634, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(687, 14, 0, 0, 2, 'Jougan', '', 1, 2635, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(688, 14, 0, 0, 2, 'Seningan', '', 1, 2636, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(689, 14, 0, 0, 2, 'Kyubigan', '', 1, 2637, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(690, 14, 0, 0, 2, 'Rinnegan', '', 1, 2638, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(691, 14, 0, 0, 2, 'Sharingan', '', 1, 2639, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(692, 14, 0, 0, 2, 'Tenseigan', '', 1, 2640, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(693, 14, 0, 0, 2, 'Ketsuryugan', '', 1, 2641, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(694, 14, 0, 0, 2, 'Sukaigan', '', 1, 2642, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(695, 27, 0, 0, 2, 'Đá danh vọng cấp 1', 'Vật phẩm nâng cấp', 1, 2644, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(696, 27, 0, 0, 2, 'Đá danh vọng cấp 2', 'Vật phẩm nâng cấp', 1, 2645, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(697, 27, 0, 0, 2, 'Đá danh vọng cấp 3', 'Vật phẩm nâng cấp', 1, 2646, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(698, 27, 0, 0, 2, 'Đá danh vọng cấp 4', 'Vật phẩm nâng cấp', 1, 2647, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(699, 27, 0, 0, 2, 'Đá danh vọng cấp 5', 'Vật phẩm nâng cấp', 1, 2648, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(700, 27, 0, 0, 2, 'Đá danh vọng cấp 6', 'Vật phẩm nâng cấp', 1, 2649, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(701, 27, 0, 0, 2, 'Đá danh vọng cấp 7', 'Vật phẩm nâng cấp', 1, 2650, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(702, 27, 0, 0, 2, 'Đá danh vọng cấp 8', 'Vật phẩm nâng cấp', 1, 2651, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(703, 27, 0, 0, 2, 'Đá danh vọng cấp 9', 'Vật phẩm nâng cấp', 1, 2652, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(704, 27, 0, 0, 2, 'Đá danh vọng cấp 10', 'Đá danh vọng cấp 10', 1, 2653, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(705, 27, 0, 0, 2, 'Danh vọng phù', 'Tăng số lần làm nhiệm vụ danh vọng', 1, 2643, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(706, 27, 0, 0, 2, 'Mảnh bản đồ', 'Vật phẩm sự kiện', 1, 2654, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(707, 27, 0, 0, 2, 'Bản đồ 1', 'Vật phẩm sự kiện', 1, 2655, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(708, 27, 0, 0, 2, 'Bản đồ 3', 'Vật phẩm sự kiện', 1, 2656, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(709, 2, 0, 0, 1, 'Áo cam 1', 'Áo cam 1', 1, 2656, 224, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(710, 6, 0, 0, 1, 'Quần cam 1', 'Quần cam 1', 1, 2656, 225, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(711, 11, 0, 0, 1, 'Mặt nạ Jirai ', 'Tóc cam 1', 1, 2931, 223, 0, 0, 0, 5, '[]', '[]', '[]', '[]'),
(712, 2, 0, 0, 1, 'Áo Jirai', ' ', 1, 2923, 224, 0, 0, 0, 0, '[{\"param\":40,\"id\":47} \n,{\"param\":80,\"id\":4} \n,{\"param\":200,\"id\":6}\n,{\"param\":200,\"id\":7} \n,{\"param\":80,\"id\":13} \n,{\"param\":60,\"id\":15} \n,{\"param\":20,\"id\":27} \n,{\"param\":15,\"id\":28}\n,{\"param\":600,\"id\":29}\n,{\"param\":200,\"id\":33}\n,{\"param\":700,\"id\":48}]', '[]', '[]', '[]'),
(713, 6, 0, 0, 1, 'Quần Jirai ', ' ', 1, 2940, 225, 0, 0, 0, 0, '[{\"param\":40,\"id\":47} \n,{\"param\":80,\"id\":2} \n,{\"param\":200,\"id\":6}\n,{\"param\":200,\"id\":7} \n,{\"param\":80,\"id\":11} \n,{\"param\":60,\"id\":15} \n,{\"param\":20,\"id\":27} \n,{\"param\":15,\"id\":28}\n,{\"param\":600,\"id\":29}\n,{\"param\":200,\"id\":35}\n,{\"param\":700,\"id\":50}]', '[]', '[]', '[]'),
(714, 11, 0, 0, 0, 'Mặt nạ Jumito', ' ', 1, 2950, 226, 0, 0, 0, 5, '[]', '[]', '[]', '[]'),
(715, 2, 0, 0, 0, 'Áo jumito', ' ', 1, 2942, 227, 0, 0, 0, 0, '[{\"param\":50,\"id\":47} \n,{\"param\":100,\"id\":4} \n,{\"param\":250,\"id\":6}\n,{\"param\":250,\"id\":7} \n,{\"param\":100,\"id\":13} \n,{\"param\":100,\"id\":15} \n,{\"param\":50,\"id\":27} \n,{\"param\":20,\"id\":28}\n,{\"param\":700,\"id\":29}\n,{\"param\":250,\"id\":33}\n,{\"param\":700,\"id\":48}]', '[]', '[]', '[]'),
(716, 6, 0, 0, 0, 'Quần Jumito', ' ', 1, 2959, 228, 0, 0, 0, 0, '[{\"param\":50,\"id\":47} \n,{\"param\":100,\"id\":2} \n,{\"param\":250,\"id\":6}\n,{\"param\":250,\"id\":7} \n,{\"param\":100,\"id\":11} \n,{\"param\":100,\"id\":15} \n,{\"param\":20,\"id\":27} \n,{\"param\":15,\"id\":28}\n,{\"param\":700,\"id\":29}\n,{\"param\":250,\"id\":35}\n,{\"param\":700,\"id\":50}]', '[]', '[]', '[]'),
(717, 11, 0, 0, 2, 'Tóc 3', ' ', 1, 2656, 229, 0, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(718, 2, 0, 0, 1, 'Naruto Áo', 'Sử dụng sẽ hóa thân thành Uzumaki Naruto - Hokage Đệ Thất', 1, 2743, 233, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(719, 6, 0, 0, 1, 'Naruto Quần', 'Sử dụng sẽ hóa thân thành Uzumaki Naruto - Hokage Đệ Thất', 1, 2762, 234, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(720, 11, 0, 0, 1, 'Naruto Tóc', 'Sử dụng sẽ hóa thân thành Uzumaki Naruto - Hokage Đệ Thất', 1, 2741, 232, 0, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(721, 2, 0, 0, 2, 'Deidara\r\n Áo', 'Sử dụng sẽ hóa thân thành Deidara', 1, 2771, 236, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(722, 6, 0, 0, 2, 'Deidara Quần', 'Sử dụng sẽ hóa thân thành Deidara', 1, 2788, 237, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(723, 11, 0, 0, 2, 'Deidara Tóc', 'Sử dụng sẽ hóa thân thành Deidara', 1, 2769, 235, 0, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(724, 2, 0, 0, 2, 'Jellal Áo', 'Sử dụng sẽ hóa thân thành Jellal', 1, 2805, 239, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(725, 6, 0, 0, 2, 'Jellal Quần', 'Sử dụng sẽ hóa thân thành Jellal', 1, 2817, 240, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(726, 11, 0, 0, 2, 'Jellal Tóc', 'Sử dụng sẽ hóa thân thành Jellal', 1, 2796, 238, 0, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(727, 2, 0, 0, 0, 'Sakura Áo', 'Sử dụng sẽ hóa thân thành Haruno Sakura', 1, 2825, 242, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(728, 6, 0, 0, 0, 'Sakura Quần', 'Sử dụng sẽ hóa thân thành Haruno Sakura', 1, 2842, 243, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(729, 11, 0, 0, 0, 'Sakura Tóc', 'Sử dụng sẽ hóa thân thành Haruno Sakura', 1, 2823, 241, 0, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(730, 2, 0, 0, 0, 'Tsunade Áo', ' ', 1, 2656, 245, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(731, 6, 0, 0, 0, 'Tsunade Quần', ' ', 1, 2656, 246, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(732, 11, 0, 0, 0, 'Tsunade Tóc', ' ', 1, 2656, 244, 0, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(733, 27, 0, 0, 1, 'Mảnh Nón Jirai ', '', 1, 2937, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(734, 27, 0, 0, 1, 'Mảnh Găng tay Jirai ', '', 1, 2928, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(735, 27, 0, 0, 1, 'Mảnh Áo Jirai ', '', 1, 2924, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(736, 27, 0, 0, 1, 'Mảnh Quần Jirai ', '', 1, 2941, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(737, 27, 0, 0, 1, 'Mảnh Giày Jirai ', '', 1, 2930, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(738, 27, 0, 0, 1, 'Mảnh Dây chuyền Jirai ', '', 1, 2926, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(739, 27, 0, 0, 1, 'Mảnh Ngọc Bội Jirai ', '', 1, 2933, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(740, 27, 0, 0, 1, 'Mảnh Phù Jirai ', '', 1, 2939, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(741, 27, 0, 0, 1, 'Mảnh Nhẫn Jirai ', '', 1, 2935, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(742, 10, 0, 0, 2, 'Tuần Lộc', '', 1, 2890, -1, 0, 1, 604800, 5, '[{\"param\":5000,\"id\":87},{\"param\":5000,\"id\":6}]', '[]', '[]', '[]'),
(743, 24, 0, 0, 2, 'Tuần Thú Lệnh', 'Sử dụng để triệu hồi Boss Tuần Lộc', 40, 2891, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(744, 10, 0, 0, 2, 'Tuần Lộc', 'Chống đồ sát', 1, 2890, -1, 0, 1, 604800, 5, '[{\"param\":5000,\"id\":87},{\"param\":5000,\"id\":6}]', '[]', '[]', '[]'),
(745, 11, 0, 0, 2, 'Mặt nạ chuột', 'Dùng thay đổi diện mạo', 40, 2920, 264, 0, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(746, 0, 0, 0, 1, 'Nón Jirai', '', 1, 2936, -1, 0, 0, 0, 0, '[{\"param\":40,\"id\":47} ,{\"param\":80,\"id\":2} ,{\"param\":170,\"id\":6}, {\"param\":170,\"id\":7} ,{\"param\":80,\"id\":11} ,{\"param\":60,\"id\":17} ,{\"param\":20,\"id\":27} ,{\"param\":15,\"id\":28},{\"param\":600,\"id\":29},{\"param\":200,\"id\":35},{\"param\":700,\"id\":50}]', '[]', '[]', '[]'),
(747, 4, 0, 0, 1, 'Găng Tay Jirai', '', 1, 2927, -1, 0, 0, 0, 0, '[{\"param\":40,\"id\":47} ,{\"param\":80,\"id\":3} ,{\"param\":200,\"id\":6}, {\"param\":200,\"id\":7} ,{\"param\":80,\"id\":12} ,{\"param\":60,\"id\":18} ,{\"param\":20,\"id\":27} ,{\"param\":15,\"id\":28},{\"param\":600,\"id\":29},{\"param\":200,\"id\":34},{\"param\":700,\"id\":49}]', '[]', '[]', '[]'),
(748, 8, 0, 0, 1, 'Giày Jirai', '', 1, 2929, -1, 0, 0, 0, 0, '[{\"param\":40,\"id\":47} \n,{\"param\":80,\"id\":4} \n,{\"param\":170,\"id\":6}\n,{\"param\":170,\"id\":7} \n,{\"param\":80,\"id\":13} \n,{\"param\":60,\"id\":16} \n,{\"param\":20,\"id\":27} \n,{\"param\":15,\"id\":28}\n,{\"param\":600,\"id\":29}\n,{\"param\":200,\"id\":33}\n,{\"param\":700,\"id\":48}]', '[]', '[]', '[]'),
(749, 5, 0, 0, 1, 'Nhẫn Jirai', '', 1, 2934, -1, 0, 0, 0, 0, '[{\"param\":40,\"id\":47} \n,{\"param\":80,\"id\":5} \n,{\"param\":200,\"id\":6}\n,{\"param\":200,\"id\":7} \n,{\"param\":80,\"id\":11} \n,{\"param\":80,\"id\":17} \n,{\"param\":20,\"id\":30} \n,{\"param\":15,\"id\":31}\n,{\"param\":600,\"id\":32}\n,{\"param\":200,\"id\":35}\n,{\"param\":1000,\"id\":53}]', '[]', '[]', '[]'),
(750, 9, 0, 0, 1, 'Phù Jirai', '', 1, 2938, -1, 0, 0, 0, 0, '[{\"param\":40,\"id\":47} \n,{\"param\":80,\"id\":5} \n,{\"param\":200,\"id\":6}\n,{\"param\":200,\"id\":7} \n,{\"param\":80,\"id\":12} \n,{\"param\":80,\"id\":14} \n,{\"param\":20,\"id\":30} \n,{\"param\":15,\"id\":31}\n,{\"param\":600,\"id\":32}\n,{\"param\":200,\"id\":36}\n,{\"param\":70,\"id\":46}]', '[]', '[]', '[]'),
(751, 7, 0, 0, 1, 'Ngọc Bội Jirai', '', 1, 2932, -1, 0, 0, 0, 0, '[{\"param\":40,\"id\":47} \n,{\"param\":80,\"id\":5} \n,{\"param\":200,\"id\":6}\n,{\"param\":200,\"id\":7} \n,{\"param\":80,\"id\":13} \n,{\"param\":80,\"id\":18} \n,{\"param\":20,\"id\":30} \n,{\"param\":15,\"id\":31}\n,{\"param\":600,\"id\":32}\n,{\"param\":200,\"id\":33}\n,{\"param\":1000,\"id\":51}]', '[]', '[]', '[]'),
(752, 3, 0, 0, 1, 'Dây Chuyền Jirai', '', 1, 2925, -1, 0, 0, 0, 0, '[{\"param\":40,\"id\":47} \n,{\"param\":80,\"id\":5} \n,{\"param\":200,\"id\":6}\n,{\"param\":200,\"id\":7} \n,{\"param\":80,\"id\":12} \n,{\"param\":80,\"id\":14} \n,{\"param\":20,\"id\":30} \n,{\"param\":15,\"id\":31}\n,{\"param\":600,\"id\":32}\n,{\"param\":200,\"id\":34}\n,{\"param\":1000,\"id\":52}]', '[]', '[]', '[]'),
(753, 0, 0, 0, 0, 'Nón Jumito', '', 1, 2955, -1, 0, 0, 0, 0, '[{\"param\":50,\"id\":47} ,{\"param\":100,\"id\":2} ,{\"param\":250,\"id\":6}, {\"param\":250,\"id\":7} ,{\"param\":100,\"id\":11} ,{\"param\":100,\"id\":17} ,{\"param\":50,\"id\":27} ,{\"param\":20,\"id\":28},{\"param\":700,\"id\":29},{\"param\":250,\"id\":35},{\"param\":700,\"id\":50}]', '[]', '[]', '[]'),
(754, 4, 0, 0, 0, 'Găng Tay Jumito', '', 1, 2946, -1, 0, 0, 0, 0, '[{\"param\":50,\"id\":47} ,{\"param\":100,\"id\":3} ,{\"param\":250,\"id\":6}, {\"param\":250,\"id\":7} ,{\"param\":100,\"id\":12} ,{\"param\":100,\"id\":18} ,{\"param\":50,\"id\":27} ,{\"param\":20,\"id\":28},{\"param\":700,\"id\":29},{\"param\":200,\"id\":34},{\"param\":700,\"id\":49}]', '[]', '[]', '[]'),
(755, 8, 0, 0, 0, 'Giày Jumito', '', 1, 2948, -1, 0, 0, 0, 0, '[{\"param\":50,\"id\":47} \n,{\"param\":100,\"id\":4} \n,{\"param\":250,\"id\":6}\n,{\"param\":250,\"id\":7} \n,{\"param\":100,\"id\":13} \n,{\"param\":50,\"id\":16} \n,{\"param\":20,\"id\":27} \n,{\"param\":15,\"id\":28}\n,{\"param\":700,\"id\":29}\n,{\"param\":250,\"id\":33}\n,{\"param\":700,\"id\":48}]', '[]', '[]', '[]'),
(756, 5, 0, 0, 0, 'Nhẫn Jumito', '', 1, 2953, -1, 0, 0, 0, 0, '[{\"param\":50,\"id\":47} \n,{\"param\":100,\"id\":5} \n,{\"param\":250,\"id\":6}\n,{\"param\":250,\"id\":7} \n,{\"param\":100,\"id\":11} \n,{\"param\":100,\"id\":17} \n,{\"param\":50,\"id\":30} \n,{\"param\":20,\"id\":31}\n,{\"param\":700,\"id\":32}\n,{\"param\":250,\"id\":35}\n,{\"param\":1000,\"id\":53}]', '[]', '[]', '[]'),
(757, 9, 0, 0, 0, 'Phù Jumito', '', 1, 2957, -1, 0, 0, 0, 0, '[{\"param\":50,\"id\":47} \n,{\"param\":100,\"id\":5} \n,{\"param\":250,\"id\":6}\n,{\"param\":250,\"id\":7} \n,{\"param\":100,\"id\":12} \n,{\"param\":100,\"id\":14} \n,{\"param\":50,\"id\":30} \n,{\"param\":20,\"id\":31}\n,{\"param\":700,\"id\":32}\n,{\"param\":250,\"id\":36}\n,{\"param\":70,\"id\":46}]', '[]', '[]', '[]'),
(758, 7, 0, 0, 0, 'Ngọc Bội Jumito', '', 1, 2951, -1, 0, 0, 0, 0, '[{\"param\":50,\"id\":47} \n,{\"param\":100,\"id\":5} \n,{\"param\":250,\"id\":6}\n,{\"param\":250,\"id\":7} \n,{\"param\":100,\"id\":13} \n,{\"param\":100,\"id\":18} \n,{\"param\":50,\"id\":30} \n,{\"param\":20,\"id\":31}\n,{\"param\":700,\"id\":32}\n,{\"param\":250,\"id\":33}\n,{\"param\":1000,\"id\":51}]', '[]', '[]', '[]'),
(759, 3, 0, 0, 0, 'Dây Chuyền Jumito', '', 1, 2944, -1, 0, 0, 0, 0, '[{\"param\":50,\"id\":47} \n,{\"param\":100,\"id\":5} \n,{\"param\":250,\"id\":6}\n,{\"param\":250,\"id\":7} \n,{\"param\":100,\"id\":12} \n,{\"param\":100,\"id\":14} \n,{\"param\":50,\"id\":30} \n,{\"param\":20,\"id\":31}\n,{\"param\":700,\"id\":32}\n,{\"param\":250,\"id\":34}\n,{\"param\":1000,\"id\":52}]', '[]', '[]', '[]'),
(760, 27, 0, 0, 0, 'Mảnh Nón Jumito', '', 1, 2956, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(761, 27, 0, 0, 0, 'Mảnh Găng tay Jumito', '', 1, 2947, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(762, 27, 0, 0, 0, 'Mảnh Áo Jumito', '', 1, 2943, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(763, 27, 0, 0, 0, 'Mảnh Quần Jumito', '', 1, 2960, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(764, 27, 0, 0, 0, 'Mảnh Giày Jumito', '', 1, 2949, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(765, 27, 0, 0, 0, 'Mảnh Dây chuyền Jumito', '', 1, 2945, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(766, 27, 0, 0, 0, 'Mảnh Ngọc Bội Jumito', '', 1, 2952, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(767, 27, 0, 0, 0, 'Mảnh Phù Jumito', '', 1, 2958, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(768, 27, 0, 0, 0, 'Mảnh Nhẫn Jumito', '', 1, 2954, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(769, 27, 0, 0, 2, 'Nước diệt khuẩn', 'Vật phẩm sự kiện', 1, 2921, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(770, 27, 0, 0, 2, 'Viên thuốc thần kỳ', 'Vật phẩm sự kiện', 1, 2922, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(771, 11, 0, 0, 2, 'Jack Hollow', 'Vật phẩm sự kiện', 1, 3017, 258, 0, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(772, 10, 0, 0, 2, 'Bí Rễ Hành', 'Vật phẩm sự kiện', 1, 3018, -1, 0, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(773, 10, 0, 0, 2, 'Bí Rễ Hành', 'Vật phẩm sự kiện', 1, 3018, -1, 0, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(774, 11, 0, 0, 2, 'Santa Claus', 'Có thể nâng cấp ', 1, 3047, 267, 0, 0, 0, 1000, '[{\"param\":2,\"id\":58},{\"param\":500,\"id\":87},{\"param\":500,\"id\":82},{\"param\":10,\"id\":92},{\"param\":10,\"id\":84},{\"param\":10,\"id\":100},{\"param\":5,\"id\":128}]', '[]', '[]', '[]'),
(775, 27, 0, 0, 2, 'Hoa tuyết', 'Dùng tạo và nâng cấp mặt nạ Santa claus', 1, 3048, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(776, 33, 0, 0, 2, 'Hắc ngưu', 'Thú cưỡi', 1, 3069, -1, 0, 0, 0, 0, '[{\"param\":0,\"id\":65},{\"param\":1000,\"id\":66}]', '[]', '[]', '[]'),
(777, 33, 0, 0, 2, 'Kim ngưu', 'Thú cưỡi', 1, 3070, -1, 0, 0, 0, 0, '[{\"param\":0,\"id\":65},{\"param\":1000,\"id\":66}]', '[]', '[]', '[]'),
(778, 27, 0, 0, 2, 'Thông linh thảo', 'Tăng ngẫu nhiên 1-10 exp cho Trâu', 1, 3068, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(779, 27, 0, 0, 2, 'Tượng linh thảo', 'Thức ăn cho Trâu. Hồi 100 hp', 1, 3067, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(780, 27, 0, 0, 2, 'Tiến hoá thảo', 'Dùng tiến hoá cho Trâu', 1, 3066, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(781, 10, 0, 0, 2, 'Pet Boru', 'Thật ra đây không phải là quả bóng, nó là trọng tài của 1 trận đấu thể thao.', 1, 3195, -1, 0, 0, 0, 5, '[{\"param\":2000,\"id\":6},{\"param\":2000,\"id\":7},{\"param\":5000,\"id\":87},{\"param\":10,\"id\":100}]', '[]', '[]', '[]'),
(782, 27, 0, 0, 2, 'Bóng vàng', 'Vật phẩm sự kiện', 1, 3194, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(783, 27, 0, 0, 2, 'Bóng', 'Vật phẩm sự kiện', 1, 3191, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(784, 27, 0, 0, 2, 'Cúp bạc', 'Vật phẩm sự kiện', 1, 3193, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(785, 27, 0, 0, 2, 'Cúp vàng', 'Vật phẩm sự kiện', 1, 3192, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(786, 11, 0, 0, 1, 'Sumikura', '', 1, 3187, 270, 0, 0, 0, 0, '[{\"param\":2,\"id\":58},{\"param\":500,\"id\":87},{\"param\":500,\"id\":82},{\"param\":10,\"id\":92},{\"param\":10,\"id\":84},{\"param\":10,\"id\":100},{\"param\":5,\"id\":127}]', '[]', '[]', '[]'),
(787, 11, 0, 0, 2, 'Yukimura', '', 1, 3188, 276, 0, 0, 0, 0, '[{\"param\":2,\"id\":58},{\"param\":500,\"id\":87},{\"param\":500,\"id\":82},{\"param\":10,\"id\":92},{\"param\":10,\"id\":84},{\"param\":10,\"id\":100},{\"param\":5,\"id\":129}]', '[]', '[]', '[]'),
(788, 27, 0, 0, 2, 'Nham Thạch ', 'Dùng tạo cải trang Sumimura', 1, 3189, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(789, 27, 0, 0, 2, 'Pha Lê', 'Dùng tạo cải trang Yukimura', 1, 3190, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(790, 27, 0, 0, 2, 'Hoa Sen Trắng', 'Vật phẩm sự kiện', 1, 3197, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(791, 27, 0, 0, 2, 'Hoa Sen Hồng', 'Vật phẩm sự kiện', 1, 3196, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(792, 27, 0, 0, 2, 'Bó sen trắng', 'Vật phẩm sự kiện', 1, 3199, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(793, 27, 0, 0, 2, 'Bó sen hồng', 'Vật phẩm sự kiện', 1, 3198, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(794, 27, 0, 0, 2, 'Màu nhuộm', 'Vật phẩm sự kiện', 1, 1707, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(795, 4, 0, 0, 0, 'Thiên Nguyệt Chi Nữ', 'Vật phẩm sự kiện', 1, 3200, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(796, 4, 0, 0, 1, 'Nhật Tử Lam Phong', 'Vật phẩm sự kiện', 1, 3201, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(797, 12, 0, 0, 2, 'Hakairo Yoroi', ' ', 1, 3205, -1, 0, 0, 0, 0, '[{\"param\":0,\"id\":85},{\"param\":500,\"id\":87},{\"param\":1000,\"id\":82},\n{\"param\":1000,\"id\":83},\n{\"param\":100,\"id\":84},\n{\"param\":10,\"id\":81},\n{\"param\":30,\"id\":80},{\"param\":5,\"id\":98},{\"param\":5,\"id\":79}]', '[]', '[]', '[]'),
(798, 33, 0, 0, 2, 'Lân Sư Vũ', ' ', 1, 3204, -1, 0, 0, 0, 0, '[{\"param\":0,\"id\":65},{\"param\":1000,\"id\":66}]', '[]', '[]', '[]'),
(799, 1, 0, 0, 1, 'Gậy Mặt Trăng', 'Vũ khí thời trang', 1, 3203, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(800, 1, 0, 0, 0, 'Gậy Trái Tim', 'Vũ khí thời trang', 1, 3202, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(801, 33, 0, 0, 2, 'Xích Tử Mã', ' ', 1, 3208, -1, 0, 0, 0, 0, '[{\"param\":0,\"id\":65},{\"param\":1000,\"id\":66}]', '[]', '[]', '[]'),
(802, 33, 0, 0, 2, 'Tà Linh Mã', ' ', 1, 3207, -1, 0, 0, 0, 0, '[{\"param\":0,\"id\":65},{\"param\":1000,\"id\":66}]', '[]', '[]', '[]'),
(803, 33, 0, 0, 2, 'Phong Thương Mã', ' ', 1, 3206, -1, 0, 0, 0, 0, '[{\"param\":0,\"id\":65},{\"param\":1000,\"id\":66}]', '[]', '[]', '[]'),
(804, 3, 0, 0, 0, 'Hajiro', 'Vật phẩm sự kiện', 1, 3222, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(805, 3, 0, 0, 1, 'Shiraiji', 'Vật phẩm sự kiện', 1, 3221, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(806, 27, 0, 0, 2, 'H', 'Item sự kiện Halloween', 30, 3209, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(807, 27, 0, 0, 2, 'A', 'Item sự kiện Halloween', 30, 3210, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(808, 27, 0, 0, 2, 'L', 'Item sự kiện Halloween', 30, 3211, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(809, 27, 0, 0, 2, 'O', 'Item sự kiện Halloween', 30, 3212, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(810, 27, 0, 0, 2, 'W', 'Item sự kiện Halloween', 20, 3123, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(811, 27, 0, 0, 2, 'E', 'Item sự kiện Halloween', 20, 3214, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(812, 27, 0, 0, 2, 'N', 'Item sự kiện Halloween', 20, 3215, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(813, 8, 0, 0, 2, 'Mặt nạ Shin Ah', 'Chỉ xuất hiên trong mùa Haloween, số lượng có hạn', 20, 3216, 0, 0, 0, 0, 0, '[{\"param\":5000,\"id\":6},{\"param\":5000,\"id\":7},{\"param\":10,\"id\":94}]', '[]', '[]', '[]'),
(814, 7, 0, 0, 2, 'Mặt nạ Vô Diện', 'Chỉ xuất hiên trong mùa Haloween, số lượng có hạn', 20, 3219, 0, 0, 0, 0, 0, '[{\"param\":200,\"id\":57},{\"param\":20,\"id\":58},{\"param\":1,\"id\":59}]', '[]', '[]', '[]'),
(815, 12, 0, 0, 2, 'Mặt nạ Oni', 'Chỉ xuất hiên trong mùa Haloween, số lượng có hạn', 20, 3218, 0, 0, 0, 0, 0, '[{\"param\":500,\"id\":8},{\"param\":500,\"id\":9},{\"param\":100,\"id\":10}]', '[]', '[]', '[]'),
(816, 11, 0, 0, 2, 'Mặt Nạ Kuma', 'Chỉ xuất hiên trong mùa Haloween, số lượng có hạn', 20, 3220, 0, 0, 0, 0, 0, '[{\"param\":3000,\"id\":6},{\"param\":3000,\"id\":7},{\"param\":10,\"id\":94},{\"param\":30,\"id\":100},{\"param\":100,\"id\":91},{\"param\":3,\"id\":93},{\"param\":200,\"id\":92},{\"param\":100,\"id\":91}]', '[]', '[]', '[]'),
(817, 9, 0, 0, 2, 'Mặt nạ Inu', 'Chỉ xuất hiên trong mùa Haloween, số lượng có hạn', 20, 3217, 0, 0, 0, 0, 0, '[{\"param\":5000,\"id\":0},{\"param\":5000,\"id\":1},{\"param\":20,\"id\":94}]', '[]', '[]', '[]'),
(818, 27, 0, 0, 2, 'Chìa khóa', 'Item sự kiện Halloween', 30, 653, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(819, 27, 0, 0, 2, 'Hòm May Mắn', '', 1, 3228, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(820, 27, 0, 0, 1, 'Đồng xu đỏ', 'Chỉ xuất hiện trong BlackFriday', 1, 3223, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(821, 27, 0, 0, 1, 'Đồng xu trắng', 'Chỉ xuất hiện trong BlackFriday', 1, 3224, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(822, 27, 0, 0, 1, 'Đồng xu vàng', 'Chỉ xuất hiện trong BlackFriday', 1, 3225, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(823, 27, 0, 0, 1, 'Đồng xu xanh dương', 'Chỉ xuất hiện trong BlackFriday', 1, 3226, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(824, 27, 0, 0, 1, 'Đồng xu xanh lá', 'Chỉ xuất hiện trong BlackFriday', 1, 3227, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(825, 10, 0, 0, 2, 'Pet Bóng Ma', 'Chỉ xuất hiện trong BlackFriday', 1, 3229, -1, 0, 0, 0, 0, '[{\"param\":5000,\"id\":6},{\"param\":5000,\"id\":7},{\"param\":10,\"id\":100}]', '[]', '[]', '[]'),
(826, 15, 0, 0, 2, 'Pet Yêu Tinh', 'Chỉ xuất hiện trong BlackFriday', 1, 3230, -1, 0, 0, 0, 0, '[{\"param\":5000,\"id\":6},{\"param\":5000,\"id\":7},{\"param\":20,\"id\":100}]', '[]', '[]', '[]'),
(827, 27, 0, 0, 2, 'Hộp quà ', 'Hộp quà Noel', 20, 3233, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(828, 33, 0, 0, 2, 'Phượng Hoàng Băng', 'Á THẦN CỔ ĐẠI - Quyền năng bất diệt có thể đóng băng tất cả kẻ thù', 1, 3234, -1, 0, 0, 0, 0, '[{\"param\":0,\"id\":65},{\"param\":1000,\"id\":66},{\"param\":15000,\"id\":73},{\"param\":210,\"id\":114},{\"param\":210,\"id\":68},{\"param\":70,\"id\":67},{\"param\":10000,\"id\":6},{\"param\":10000,\"id\":7},{\"param\":10000,\"id\":102},{\"param\":5000,\"id\":103},{\"param\":200,\"id\":113},{\"param\":20,\"id\":121},{\"param\":5,\"id\":130},{\"param\":10,\"id\":131},{\"param\":5,\"id\":133}]', '[]', '[]', '[]'),
(829, 2, 0, 0, 1, 'Mặt Nạ Hổ Nam', 'Dùng để hóa thân thành Hổ', 1, 3235, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(830, 2, 0, 0, 0, 'Mặt Nạ Hổ Nữ', 'Dùng để hóa thân thành Hổ', 1, 3236, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(831, 33, 0, 0, 2, 'Bạch Hổ', 'Thần Thú Truyền Thuyết, hàng ma diệt quỷ bảo vệ dân làng', 1, 3237, -1, 0, 0, 0, 0, '[{\"param\":0,\"id\":65},{\"param\":1000,\"id\":66},{\"param\":20,\"id\":58},{\"param\":15,\"id\":94}]', '[]', '[]', '[]'),
(832, 10, 0, 0, 2, 'Ứng Long', 'Hình Rồng lại mang thêm đôi cánh, có thể hô phong hoán vũ kinh động trời xanh', 1, 3238, -1, 0, 1, 604800, 5, '[{\"param\":3000,\"id\":73},{\"param\":3000,\"id\":6},\n{\"param\":3000,\"id\":7},{\"param\":10,\"id\":92},{\"param\":10,\"id\":94}]', '[]', '[]', '[]'),
(833, 11, 0, 0, 0, 'Mỵ Nương', 'Dùng để hóa thân thành nàng Mỵ Nương Xinh Đẹp', 40, 2173, 194, 0, 0, 0, 0, '[{\"param\":1000,\"id\":47},{\"param\":10000,\"id\":87},{\"param\":2000,\"id\":6},{\"param\":1000,\"id\":7},{\"param\":1000,\"id\":68},{\"param\":30,\"id\":37},{\"param\":2000,\"id\":32},{\"param\":15,\"id\":39},{\"param\":15,\"id\":46},{\"param\":9,\"id\":85},{\"param\":5000,\"id\":0},{\"param\":5000,\"id\":1},{\"param\":20,\"id\":8},{\"param\":25,\"id\":9},{\"param\":10,\"id\":94},{\"param\":50,\"id\":114},{\"param\":200,\"id\":113}]', '[]', '[]', '[]'),
(834, 11, 0, 0, 1, 'Tôn Ngộ Không', 'Dùng để hóa thân thành Tề Thiên Đại Thánh', 40, 10006, 201, 0, 0, 0, 0, '[{\"param\":1000,\"id\":47},{\"param\":10000,\"id\":87},{\"param\":2000,\"id\":6},{\"param\":1000,\"id\":7},{\"param\":1000,\"id\":68},{\"param\":30,\"id\":37},{\"param\":2000,\"id\":32},{\"param\":15,\"id\":39},{\"param\":15,\"id\":46},{\"param\":9,\"id\":85},{\"param\":5000,\"id\":0},{\"param\":5000,\"id\":1},{\"param\":20,\"id\":8},{\"param\":25,\"id\":9},{\"param\":10,\"id\":94},{\"param\":50,\"id\":114},{\"param\":200,\"id\":113}]', '[]', '[]', '[]'),
(835, 1, 0, 0, 2, 'Gậy Như Ý', 'Vật phẩm trấn giữ long hải', 10, 2441, 204, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(836, 27, 0, 0, 2, 'Túi Quà Valentine', 'Dùng để đổi quà valentine', 1, 3232, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(837, 27, 0, 0, 2, 'Đá nâng cấp', 'Dùng để nâng cấp bí kíp', 1, 10000, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(838, 27, 0, 0, 2, 'Rương Ngọc', 'Mở Ra Random 4 Loại Ngọc', 1, 10001, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(839, 13, 0, 0, 2, 'Ấn Tộc', 'Giúp cho nhân vật mạnh hơn', 1, 3410, -1, 0, 0, 0, 5, '[]', '[]', '[]', '[]'),
(840, 27, 0, 0, 2, 'Đá Thăng Ấn', 'Dùng để thăng cấp ấn tộc', 1, 10003, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(841, 10, 0, 0, 2, 'Cửu Vĩ', '', 1, 3247, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(842, 24, 0, 0, 2, 'Chuột Canh Tý', 'Sử dụng để triệu hồi Boss Chuột Canh Tý', 1, 2920, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(843, 0, 0, 0, 1, 'Áo Dài Nam', 'Dùng để hóa thân trong ngày Tết', 1, 3379, -1, 0, 0, 0, 0, '[{\"param\":3000,\"id\":73},{\"param\":3000,\"id\":6},\n{\"param\":3000,\"id\":7},{\"param\":10,\"id\":92},{\"param\":10,\"id\":94}]', '[]', '[]', '[]'),
(844, 0, 0, 0, 0, 'Áo Dài Nữ', 'Dùng để hóa thân trong ngày Tết', 1, 3380, -1, 0, 0, 0, 0, '[{\"param\":3000,\"id\":73},{\"param\":3000,\"id\":6},\n{\"param\":3000,\"id\":7},{\"param\":10,\"id\":92},{\"param\":10,\"id\":94}]', '[]', '[]', '[]'),
(845, 5, 0, 0, 1, 'Giáp Samurai Nam', 'Dùng để hóa thân thành Samurai', 1, 10004, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(846, 5, 0, 0, 0, 'Giáp Samurai Nữ', 'Dùng để hóa thân thành Samurai', 1, 10005, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(847, 10, 0, 0, 2, 'Nhất Vĩ Li Mao Bảo Bảo Siêu Cấp', '', 1, 3239, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(848, 10, 0, 0, 2, 'Nhị Vĩ Ác Miêu Bảo Bảo Siêu Cấp', '', 1, 3240, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(849, 10, 0, 0, 2, 'Tam Vĩ Khổng Quy Bảo Bảo Siêu Cấp', '', 1, 3241, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(850, 10, 0, 0, 2, 'Tứ Vĩ Hầu Tôn Bảo Bảo Siêu Cấp', '', 1, 3242, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(851, 10, 0, 0, 2, 'Ngũ Vĩ Mã Ngư Bảo Bảo Siêu Cấp', '', 1, 3243, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(852, 10, 0, 0, 2, 'Lục Vĩ Bạch Sên Bảo Bảo Siêu Cấp', '', 1, 3244, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(853, 10, 0, 0, 2, 'Thất Vĩ Cương Trùng Bảo Bảo Siêu Cấp', '', 1, 3245, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(854, 10, 0, 0, 2, 'Bát Vĩ Khổng Ngưu Bảo Bảo Siêu Cấp', '', 1, 3246, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(855, 10, 0, 0, 2, 'Cửu Vĩ Hồ Ly Bảo Bảo Siêu Cấp', '', 1, 3247, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(856, 33, 0, 0, 2, 'Hỏa Kỳ Lân', 'Hung Thú Thượng Cổ \r\nNgười cản giết người - Phật cản giết Phật', 1, 3375, -1, 0, 0, 0, 0, '[{\"param\":0,\"id\":65},{\"param\":1000,\"id\":66},{\"param\":20,\"id\":58},{\"param\":40,\"id\":94},{\"param\":20,\"id\":79}]\r\n', '[]', '[]', '[]'),
(857, 33, 0, 0, 2, 'Phượng Hoàng Băng New', 'Đây không phải là Pet - Đây là Thế Thần\r\nSức mạnh to lớn - ai dám ngăn cản ?', 1, 3234, -1, 0, 0, 0, 0, '[{\"param\":0,\"id\":65},{\"param\":1000,\"id\":66},{\"param\":20,\"id\":58},{\"param\":50,\"id\":94},{\"param\":100,\"id\":74},{\"param\":20,\"id\":79},{\"param\":10,\"id\":130},{\"param\":10,\"id\":131}]', '[]', '[]', '[]'),
(858, 1, 1, 0, 2, 'Thần Vương Kiếm', 'Một trong các thần khí tuyệt thế, chỉ cần bạn sở hữu có thể xưng Thần', 1, 3393, -1, 0, 1, 604800, 100000, '[{\"param\":5000,\"id\":87},\n{\"param\":5000,\"id\":82},{\"param\":5000,\"id\":83},\n{\"param\":10,\"id\":58},{\"param\":25,\"id\":100},{\"param\":25,\"id\":98},{\"param\":50,\"id\":84},{\"param\":50,\"id\":86}]', '[]', '[]', '[]'),
(859, 1, 2, 0, 2, 'Thần Vương Tiêu', 'Một trong các thần khí tuyệt thế, chỉ cần bạn sở hữu có thể xưng Thần', 1, 3395, -1, 0, 1, 604800, 100000, '[{\"param\":5000,\"id\":87},\n{\"param\":5000,\"id\":82},{\"param\":5000,\"id\":83},\n{\"param\":10,\"id\":58},{\"param\":25,\"id\":100},{\"param\":25,\"id\":98},{\"param\":50,\"id\":84},{\"param\":50,\"id\":86}]', '[]', '[]', '[]'),
(860, 1, 3, 0, 2, 'Thần Vương Dao', 'Một trong các thần khí tuyệt thế, chỉ cần bạn sở hữu có thể xưng Thần', 1, 3391, -1, 0, 1, 604800, 100000, '[{\"param\":5000,\"id\":87},\n{\"param\":5000,\"id\":82},{\"param\":5000,\"id\":83},\n{\"param\":10,\"id\":58},{\"param\":25,\"id\":100},{\"param\":25,\"id\":98},{\"param\":50,\"id\":84},{\"param\":50,\"id\":86}]', '[]', '[]', '[]'),
(861, 1, 4, 0, 2, 'Thần Vương Cung', 'Một trong các thần khí tuyệt thế, chỉ cần bạn sở hữu có thể xưng Thần', 1, 3390, -1, 0, 1, 604800, 100000, '[{\"param\":5000,\"id\":87},\n{\"param\":5000,\"id\":82},{\"param\":5000,\"id\":83},\n{\"param\":10,\"id\":58},{\"param\":25,\"id\":100},{\"param\":25,\"id\":98},{\"param\":50,\"id\":84},{\"param\":50,\"id\":86}]', '[]', '[]', '[]'),
(862, 1, 5, 0, 2, 'Thần Vương Đao', 'Một trong các thần khí tuyệt thế, chỉ cần bạn sở hữu có thể xưng Thần', 1, 3392, -1, 0, 1, 604800, 100000, '[{\"param\":5000,\"id\":87},\n{\"param\":5000,\"id\":82},{\"param\":5000,\"id\":83},\n{\"param\":10,\"id\":58},{\"param\":25,\"id\":100},{\"param\":25,\"id\":98},{\"param\":50,\"id\":84},{\"param\":50,\"id\":86}]', '[]', '[]', '[]'),
(863, 1, 6, 0, 2, 'Thần Vương Phiến', 'Một trong các thần khí tuyệt thế, chỉ cần bạn sở hữu có thể xưng Thần', 1, 3394, -1, 0, 1, 604800, 100000, '[{\"param\":5000,\"id\":87},\n{\"param\":5000,\"id\":82},{\"param\":5000,\"id\":83},\n{\"param\":10,\"id\":58},{\"param\":25,\"id\":100},{\"param\":25,\"id\":98},{\"param\":50,\"id\":84},{\"param\":50,\"id\":86}]', '[]', '[]', '[]'),
(864, 6, 0, 0, 1, 'Deidara Nam', '', 1, 3388, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(865, 6, 0, 0, 0, 'Deidara Nữ', '', 1, 3389, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(866, 14, 0, 0, 2, 'Thú Hồn', 'Triệu hồi SUSANNO\r\nĐột phá sức mạnh không giới hạn', 1, 3373, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(867, 2, 0, 0, 1, 'Minh Giác Giáng Sa Giáp', '', 100, 3396, 206, 0, 0, 0, 0, '[{\"param\":40,\"id\":47} \n,{\"param\":80,\"id\":4} \n,{\"param\":200,\"id\":6}\n,{\"param\":200,\"id\":7} \n,{\"param\":80,\"id\":13} \n,{\"param\":80,\"id\":15} \n,{\"param\":40,\"id\":27} \n,{\"param\":15,\"id\":28}\n,{\"param\":500,\"id\":29}\n,{\"param\":200,\"id\":33}\n,{\"param\":500,\"id\":48}]', '[]', '[]', '[]'),
(868, 8, 0, 0, 1, 'Minh Giác Giáng Sa Ngoa', '', 100, 3397, -1, 0, 0, 0, 0, '[{\"param\":40,\"id\":47} \n,{\"param\":80,\"id\":4} \n,{\"param\":200,\"id\":6}\n,{\"param\":200,\"id\":7} \n,{\"param\":80,\"id\":13} \n,{\"param\":40,\"id\":16} \n,{\"param\":80,\"id\":27} \n,{\"param\":15,\"id\":28}\n,{\"param\":500,\"id\":29}\n,{\"param\":200,\"id\":33}\n,{\"param\":500,\"id\":48}]', '[]', '[]', '[]');
INSERT INTO `item` (`id`, `type`, `class`, `skill`, `gender`, `name`, `description`, `level`, `iconID`, `part`, `uptoup`, `isExpires`, `secondsExpires`, `saleCoinLock`, `ItemOption`, `Option1`, `Option2`, `Option3`) VALUES
(869, 6, 0, 0, 1, 'Minh Giác Giáng Sa Hạ Giáp', '', 100, 3398, 207, 0, 0, 0, 0, '[{\"param\":40,\"id\":47} \n,{\"param\":80,\"id\":2} \n,{\"param\":200,\"id\":6}\n,{\"param\":200,\"id\":7} \n,{\"param\":80,\"id\":11} \n,{\"param\":80,\"id\":15} \n,{\"param\":100,\"id\":27} \n,{\"param\":10,\"id\":28}\n,{\"param\":500,\"id\":29}\n,{\"param\":200,\"id\":35}\n,{\"param\":500,\"id\":50}]', '[]', '[]', '[]'),
(870, 4, 0, 0, 1, 'Minh Giác Giáng Sa Thủ', '', 100, 3399, -1, 0, 0, 0, 0, '[{\"param\":40,\"id\":47} ,{\"param\":80,\"id\":3} ,{\"param\":200,\"id\":6}, {\"param\":200,\"id\":7} ,{\"param\":80,\"id\":12} ,{\"param\":80,\"id\":18} ,{\"param\":40,\"id\":27} ,{\"param\":15,\"id\":28},{\"param\":500,\"id\":29},{\"param\":150,\"id\":34},{\"param\":500,\"id\":49}]', '[]', '[]', '[]'),
(871, 2, 0, 0, 0, 'Minh Giác Giáng Sa Giáp', '', 100, 3400, 206, 0, 0, 0, 0, '[{\"param\":40,\"id\":47} \n,{\"param\":80,\"id\":4} \n,{\"param\":200,\"id\":6}\n,{\"param\":200,\"id\":7} \n,{\"param\":80,\"id\":13} \n,{\"param\":80,\"id\":15} \n,{\"param\":40,\"id\":27} \n,{\"param\":15,\"id\":28}\n,{\"param\":500,\"id\":29}\n,{\"param\":200,\"id\":33}\n,{\"param\":500,\"id\":48}]', '[]', '[]', '[]'),
(872, 8, 0, 0, 0, 'Minh Giác Giáng Sa Ngoa', '', 100, 3403, -1, 0, 0, 0, 0, '[{\"param\":40,\"id\":47} \n,{\"param\":80,\"id\":4} \n,{\"param\":200,\"id\":6}\n,{\"param\":200,\"id\":7} \n,{\"param\":80,\"id\":13} \n,{\"param\":40,\"id\":16} \n,{\"param\":80,\"id\":27} \n,{\"param\":15,\"id\":28}\n,{\"param\":500,\"id\":29}\n,{\"param\":200,\"id\":33}\n,{\"param\":500,\"id\":48}]', '[]', '[]', '[]'),
(873, 6, 0, 0, 0, 'Minh Giác Giáng Sa Hạ Giáp', '', 100, 3402, 207, 0, 0, 0, 0, '[{\"param\":40,\"id\":47} \n,{\"param\":80,\"id\":2} \n,{\"param\":200,\"id\":6}\n,{\"param\":200,\"id\":7} \n,{\"param\":80,\"id\":11} \n,{\"param\":80,\"id\":15} \n,{\"param\":100,\"id\":27} \n,{\"param\":10,\"id\":28}\n,{\"param\":500,\"id\":29}\n,{\"param\":200,\"id\":35}\n,{\"param\":500,\"id\":50}]', '[]', '[]', '[]'),
(874, 4, 0, 0, 0, 'Minh Giác Giáng Sa Thủ', '', 100, 3401, -1, 0, 0, 0, 0, '[{\"param\":40,\"id\":47} ,{\"param\":80,\"id\":3} ,{\"param\":200,\"id\":6}, {\"param\":200,\"id\":7} ,{\"param\":80,\"id\":12} ,{\"param\":80,\"id\":18} ,{\"param\":40,\"id\":27} ,{\"param\":15,\"id\":28},{\"param\":500,\"id\":29},{\"param\":150,\"id\":34},{\"param\":500,\"id\":49}]', '[]', '[]', '[]'),
(875, 0, 0, 0, 0, 'Minh Giác Giáng Sa Trâm', '', 100, 3404, -1, 0, 0, 0, 0, '[{\"param\":40,\"id\":47} ,{\"param\":80,\"id\":2} ,{\"param\":200,\"id\":6}, {\"param\":200,\"id\":7} ,{\"param\":80,\"id\":11} ,{\"param\":80,\"id\":17} ,{\"param\":40,\"id\":27} ,{\"param\":15,\"id\":28},{\"param\":500,\"id\":29},{\"param\":200,\"id\":35},{\"param\":500,\"id\":50}]', '[]', '[]', '[]'),
(876, 0, 0, 0, 1, 'Minh Giác Giáng Sa Tuyến', '', 100, 3405, -1, 0, 0, 0, 0, '[{\"param\":40,\"id\":47} ,{\"param\":80,\"id\":2} ,{\"param\":200,\"id\":6}, {\"param\":200,\"id\":7} ,{\"param\":80,\"id\":11} ,{\"param\":80,\"id\":17} ,{\"param\":40,\"id\":27} ,{\"param\":15,\"id\":28},{\"param\":500,\"id\":29},{\"param\":200,\"id\":35},{\"param\":500,\"id\":50}]', '[]', '[]', '[]'),
(877, 3, 0, 0, 2, 'Minh Giác Giáng Sa Liên', '', 100, 3408, -1, 0, 0, 0, 0, '[{\"param\":40,\"id\":47} \n,{\"param\":80,\"id\":5} \n,{\"param\":200,\"id\":6}\n,{\"param\":200,\"id\":7} \n,{\"param\":80,\"id\":12} \n,{\"param\":80,\"id\":14} \n,{\"param\":40,\"id\":30} \n,{\"param\":15,\"id\":31}\n,{\"param\":500,\"id\":32}\n,{\"param\":200,\"id\":34}\n,{\"param\":700,\"id\":52}]', '[]', '[]', '[]'),
(878, 5, 0, 0, 2, 'Minh Giác Giáng Sa Giới', '', 100, 3407, -1, 0, 0, 0, 0, '[{\"param\":40,\"id\":47} \n,{\"param\":80,\"id\":5} \n,{\"param\":200,\"id\":6}\n,{\"param\":200,\"id\":7} \n,{\"param\":80,\"id\":11} \n,{\"param\":80,\"id\":17} \n,{\"param\":40,\"id\":30} \n,{\"param\":15,\"id\":31}\n,{\"param\":500,\"id\":32}\n,{\"param\":200,\"id\":35}\n,{\"param\":500,\"id\":53}]', '[]', '[]', '[]'),
(879, 7, 0, 0, 2, 'Minh Giác Giáng Sa Bội', '', 100, 3406, -1, 0, 0, 0, 0, '[{\"param\":40,\"id\":47} \n,{\"param\":80,\"id\":5} \n,{\"param\":200,\"id\":6}\n,{\"param\":200,\"id\":7} \n,{\"param\":80,\"id\":13} \n,{\"param\":80,\"id\":18} \n,{\"param\":40,\"id\":30} \n,{\"param\":15,\"id\":31}\n,{\"param\":500,\"id\":32}\n,{\"param\":200,\"id\":33}\n,{\"param\":700,\"id\":51}]', '[]', '[]', '[]'),
(880, 9, 0, 0, 2, 'Minh Giác Giáng Sa Phù', '', 100, 3409, -1, 0, 0, 0, 0, '[{\"param\":40,\"id\":47} \n,{\"param\":80,\"id\":5} \n,{\"param\":200,\"id\":6}\n,{\"param\":200,\"id\":7} \n,{\"param\":80,\"id\":12} \n,{\"param\":80,\"id\":14} \n,{\"param\":40,\"id\":30} \n,{\"param\":15,\"id\":31}\n,{\"param\":500,\"id\":32}\n,{\"param\":200,\"id\":36}\n,{\"param\":50,\"id\":46}]', '[]', '[]', '[]'),
(881, 6, 0, 0, 2, 'Vương Niệm Hạng Nhất', '', 1, 3263, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(882, 6, 0, 0, 2, 'Vương Niệm Hạng Nhì', '', 1, 3267, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(883, 6, 0, 0, 2, 'Vương Niệm Hạng Ba', '', 1, 3279, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(884, 27, 0, 0, 2, 'Long Hổ Lệnh', 'Sử Dụng Để Vào Vùng Đất Bí Ẩn', 100, 2575, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(885, 1, 1, 0, 2, 'Minh Giác Giáng Sa Kiếm', 'Vũ khí cổ đại, tăng sức mạnh cho kẻ sở hữu nó', 100, 3393, 12, 0, 0, 0, 0, '[{\"param\":600,\"id\":0},{\"param\":600,\"id\":1},{\"param\":360,\"id\":8},{\"param\":360,\"id\":9},{\"param\":280,\"id\":10},{\"param\":3900,\"id\":21},{\"param\":560,\"id\":19},{\"param\":32,\"id\":27},{\"param\":110,\"id\":37},{\"param\":1000,\"id\":38},{\"param\":150,\"id\":39},{\"param\":15,\"id\":54},{\"param\":15,\"id\":55},{\"param\":15,\"id\":56}]', '[]', '[]', '[]'),
(886, 1, 2, 0, 2, 'Minh Giác Giáng Sa Tiêu', 'Vũ khí cổ đại, tăng sức mạnh cho kẻ sở hữu nó', 100, 3395, 15, 0, 0, 0, 0, '[{\"param\":600,\"id\":0},{\"param\":600,\"id\":1},{\"param\":360,\"id\":8},{\"param\":360,\"id\":9},{\"param\":280,\"id\":10},{\"param\":3900,\"id\":22},{\"param\":560,\"id\":19},{\"param\":32,\"id\":27},{\"param\":110,\"id\":37},{\"param\":1000,\"id\":38},{\"param\":150,\"id\":39},{\"param\":15,\"id\":54},{\"param\":15,\"id\":55},{\"param\":15,\"id\":56}]', '[]', '[]', '[]'),
(887, 1, 3, 0, 2, 'Minh Giác Giáng Sa Dao', 'Vũ khí cổ đại, tăng sức mạnh cho kẻ sở hữu nó', 100, 3391, 41, 0, 0, 0, 0, '[{\"param\":600,\"id\":0},{\"param\":600,\"id\":1},{\"param\":360,\"id\":8},{\"param\":360,\"id\":9},{\"param\":280,\"id\":10},{\"param\":3900,\"id\":23},{\"param\":560,\"id\":19},{\"param\":32,\"id\":27},{\"param\":110,\"id\":37},{\"param\":1000,\"id\":38},{\"param\":150,\"id\":39},{\"param\":15,\"id\":54},{\"param\":15,\"id\":55},{\"param\":15,\"id\":56}]', '[]', '[]', '[]'),
(888, 1, 4, 0, 2, 'Minh Giác Giáng Sa Cung', 'Vũ khí cổ đại, tăng sức mạnh cho kẻ sở hữu nó', 100, 3390, 14, 0, 0, 0, 0, '[{\"param\":600,\"id\":0},{\"param\":600,\"id\":1},{\"param\":360,\"id\":8},{\"param\":360,\"id\":9},{\"param\":280,\"id\":10},{\"param\":3900,\"id\":24},{\"param\":560,\"id\":19},{\"param\":32,\"id\":27},{\"param\":110,\"id\":37},{\"param\":1000,\"id\":38},{\"param\":150,\"id\":39},{\"param\":15,\"id\":54},{\"param\":15,\"id\":55},{\"param\":15,\"id\":56}]', '[]', '[]', '[]'),
(889, 1, 5, 0, 2, 'Minh Giác Giáng Sa Đao', 'Vũ khí cổ đại, tăng sức mạnh cho kẻ sở hữu nó', 100, 3392, 13, 0, 0, 0, 0, '[{\"param\":600,\"id\":0},{\"param\":600,\"id\":1},{\"param\":360,\"id\":8},{\"param\":360,\"id\":9},{\"param\":280,\"id\":10},{\"param\":3900,\"id\":25},{\"param\":560,\"id\":19},{\"param\":32,\"id\":27},{\"param\":110,\"id\":37},{\"param\":1000,\"id\":38},{\"param\":150,\"id\":39},{\"param\":15,\"id\":54},{\"param\":15,\"id\":55},{\"param\":15,\"id\":56}]', '[]', '[]', '[]'),
(890, 1, 6, 0, 2, 'Minh Giác Giáng Sa Phiến', 'Vũ khí cổ đại, tăng sức mạnh cho kẻ sở hữu nó', 100, 3394, 16, 0, 0, 0, 0, '[{\"param\":600,\"id\":0},{\"param\":600,\"id\":1},{\"param\":360,\"id\":8},{\"param\":360,\"id\":9},{\"param\":280,\"id\":10},{\"param\":3900,\"id\":26},{\"param\":560,\"id\":19},{\"param\":32,\"id\":27},{\"param\":110,\"id\":37},{\"param\":1000,\"id\":38},{\"param\":150,\"id\":39},{\"param\":15,\"id\":54},{\"param\":15,\"id\":55},{\"param\":15,\"id\":56}]', '[]', '[]', '[]'),
(891, 27, 0, 0, 2, 'Rương Huyền Thoại', 'Sử dụng có tỉ lệ ngẫu nhiên nhận trang bị Minh Giác', 100, 2499, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(892, 4, 0, 0, 2, 'Ác Linh', '', 1, 10007, -1, 0, 0, 0, 0, '[{\"param\":1000,\"id\":73},{\"param\":1000,\"id\":6},{\"param\":1000,\"id\":7},{\"param\":10,\"id\":92},{\"param\":10,\"id\":94}]', '[]', '[]', '[]'),
(893, 27, 0, 0, 2, 'Đá Thức Tỉnh', 'Dùng Để Thức Tỉnh Trang Bị', 1, 10008, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(894, 8, 0, 0, 2, 'Trang Bị Vip', 'Vật Phẩm Bí Ẩn - Không Rõ Nguồn Gốc', 1, 3269, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(895, 27, 1, 85, 2, 'Sách võ công Hoả Hồn Long Trảm', 'Kỹ năng Đẹp và bá đạo không còn gì để nói', 120, 26000, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(896, 27, 2, 86, 2, 'Sách võ công Tiêu Hoả Phi Long', 'Kỹ năng Đẹp và bá đạo không còn gì để nói', 120, 26001, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(897, 27, 3, 87, 2, 'Sách võ công Băng Hổ Bạch Long', 'Kỹ năng Đẹp và bá đạo không còn gì để nói', 120, 26002, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(898, 27, 4, 88, 2, 'Sách võ công Tiễn Ưng Vĩnh Cửu', 'Kỹ năng Đẹp và bá đạo không còn gì để nói', 120, 26003, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(899, 27, 5, 89, 2, 'Sách võ công Vũ Đao Thiên Lôi', 'Kỹ năng Đẹp và bá đạo không còn gì để nói', 120, 26004, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(900, 27, 6, 90, 2, 'Sách võ công Thuật Phiến Cuồng Phong', 'Kỹ năng Đẹp và bá đạo không còn gì để nói', 120, 26005, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(901, 15, 0, 0, 2, 'Fan cứng', '', 20, 1214, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(902, 15, 0, 0, 2, 'TOP SERVER', '', 20, 1215, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(903, 15, 0, 0, 2, 'VVIP', '', 20, 1216, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(904, 15, 0, 0, 2, 'ĐỆ NHỊ NINJA', '', 20, 3509, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(905, 27, 0, 0, 2, 'Thẻ Đổi Tên', 'Lưu ý sau khi đổi tên sẻ bị thoát khỏi gia tộc', 20, 3381, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(906, 14, 0, 0, 2, 'Suiton', 'Suiton - Thủy​ Thuật', 1, 3549, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(907, 14, 0, 0, 2, 'Fuuton', 'Fuuton - Phong​ Thuật', 1, 3550, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(908, 14, 0, 0, 2, 'Katon', 'Katon - Hỏa​ Thuật', 1, 3551, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(909, 15, 0, 0, 2, 'ĐỆ NHẤT', '', 20, 3509, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(910, 15, 0, 0, 2, 'ĐỆ NHỊ', '', 20, 3509, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(911, 15, 0, 0, 2, 'ĐỆ TAM', '', 20, 3509, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(912, 15, 0, 0, 2, 'ĐỆ TƯ', '', 20, 3509, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(913, 15, 0, 0, 2, 'CHÍ TÔN', '', 20, 3509, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(914, 15, 0, 0, 2, 'SADBOY', '', 20, 3509, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(915, 0, 0, 0, 1, 'Thiên Vương Tuyến', '', 119, 26079, -1, 0, 0, 0, 0, '[{\"param\":80,\"id\":47}\r\n,{\"param\":160,\"id\":2}\r\n,{\"param\":400,\"id\":6}\r\n,{\"param\":400,\"id\":7}\r\n,{\"param\":160,\"id\":11}\r\n,{\"param\":160,\"id\":17}\r\n,{\"param\":80,\"id\":27}\r\n,{\"param\":30,\"id\":28}\r\n,{\"param\":1000,\"id\":29}\r\n,{\"param\":400,\"id\":35}\r\n,{\"param\":1000,\"id\":50}]', '[]', '[]', '[]'),
(916, 0, 0, 0, 0, 'Thiên Vương Trâm', '', 119, 26079, -1, 0, 0, 0, 0, '[{\"param\":80,\"id\":47}\r\n,{\"param\":160,\"id\":2}\r\n,{\"param\":400,\"id\":6}\r\n,{\"param\":400,\"id\":7}\r\n,{\"param\":160,\"id\":11}\r\n,{\"param\":160,\"id\":17}\r\n,{\"param\":80,\"id\":27}\r\n,{\"param\":30,\"id\":28}\r\n,{\"param\":1000,\"id\":29}\r\n,{\"param\":400,\"id\":35}\r\n,{\"param\":1000,\"id\":50}]', '[]', '[]', '[]'),
(917, 2, 0, 0, 1, 'Thiên Vương Giáp', '', 117, 26077, 189, 0, 0, 0, 0, '[{\"param\":80,\"id\":47} \r\n,{\"param\":160,\"id\":4} \r\n,{\"param\":400,\"id\":6}\r\n,{\"param\":400,\"id\":7} \r\n,{\"param\":160,\"id\":13} \r\n,{\"param\":160,\"id\":15} \r\n,{\"param\":80,\"id\":27} \r\n,{\"param\":30,\"id\":28}\r\n,{\"param\":1000,\"id\":29}\r\n,{\"param\":400,\"id\":33}\r\n,{\"param\":1000,\"id\":48}]', '[]', '[]', '[]'),
(918, 2, 0, 0, 0, 'Thiên Vương Giáp', '', 117, 26077, 189, 0, 0, 0, 0, '[{\"param\":80,\"id\":47} \r\n,{\"param\":160,\"id\":4} \r\n,{\"param\":400,\"id\":6}\r\n,{\"param\":400,\"id\":7} \r\n,{\"param\":160,\"id\":13} \r\n,{\"param\":160,\"id\":15} \r\n,{\"param\":80,\"id\":27} \r\n,{\"param\":30,\"id\":28}\r\n,{\"param\":1000,\"id\":29}\r\n,{\"param\":400,\"id\":33}\r\n,{\"param\":1000,\"id\":48}]', '[]', '[]', '[]'),
(919, 6, 0, 0, 1, 'Thiên Vương Hạ Giáp', '', 113, 26073, 190, 0, 0, 0, 0, '[{\"param\":80,\"id\":47} \r\n,{\"param\":160,\"id\":2} \r\n,{\"param\":400,\"id\":6}\r\n,{\"param\":400,\"id\":7} \r\n,{\"param\":160,\"id\":11} \r\n,{\"param\":160,\"id\":15} \r\n,{\"param\":200,\"id\":27} \r\n,{\"param\":20,\"id\":28}\r\n,{\"param\":1000,\"id\":29}\r\n,{\"param\":400,\"id\":35}\r\n,{\"param\":1000,\"id\":50}]', '[]', '[]', '[]'),
(920, 6, 0, 0, 0, 'Thiên Vương Hạ Giáp', '', 113, 26073, 190, 0, 0, 0, 0, '[{\"param\":80,\"id\":47} \r\n,{\"param\":160,\"id\":2} \r\n,{\"param\":400,\"id\":6}\r\n,{\"param\":400,\"id\":7} \r\n,{\"param\":160,\"id\":11} \r\n,{\"param\":160,\"id\":15} \r\n,{\"param\":200,\"id\":27} \r\n,{\"param\":20,\"id\":28}\r\n,{\"param\":1000,\"id\":29}\r\n,{\"param\":400,\"id\":35}\r\n,{\"param\":1000,\"id\":50}]', '[]', '[]', '[]'),
(921, 4, 0, 0, 1, 'Thiên Vương Thủ', '', 115, 26075, -1, 0, 0, 0, 0, '[{\"param\":80,\"id\":47}\r\n,{\"param\":160,\"id\":3}\r\n,{\"param\":400,\"id\":6}\r\n,{\"param\":400,\"id\":7}\r\n,{\"param\":160,\"id\":12}\r\n,{\"param\":160,\"id\":18}\r\n,{\"param\":80,\"id\":27}\r\n,{\"param\":30,\"id\":28}\r\n,{\"param\":1000,\"id\":29}\r\n,{\"param\":300,\"id\":34}\r\n,{\"param\":1000,\"id\":49}]', '[]', '[]', '[]'),
(922, 4, 0, 0, 0, 'Thiên Vương Thủ', '', 115, 26075, -1, 0, 0, 0, 0, '[{\"param\":80,\"id\":47}\r\n,{\"param\":160,\"id\":3}\r\n,{\"param\":400,\"id\":6}\r\n,{\"param\":400,\"id\":7}\r\n,{\"param\":160,\"id\":12}\r\n,{\"param\":160,\"id\":18}\r\n,{\"param\":80,\"id\":27}\r\n,{\"param\":30,\"id\":28}\r\n,{\"param\":1000,\"id\":29}\r\n,{\"param\":300,\"id\":34}\r\n,{\"param\":1000,\"id\":49}]', '[]', '[]', '[]'),
(923, 8, 0, 0, 1, 'Thiên Vương Ngoa', '', 111, 26071, -1, 0, 0, 0, 0, '[{\"param\":80,\"id\":47} \r\n,{\"param\":160,\"id\":4} \r\n,{\"param\":400,\"id\":6}\r\n,{\"param\":400,\"id\":7} \r\n,{\"param\":160,\"id\":13} \r\n,{\"param\":80,\"id\":16} \r\n,{\"param\":160,\"id\":27} \r\n,{\"param\":30,\"id\":28}\r\n,{\"param\":1000,\"id\":29}\r\n,{\"param\":400,\"id\":33}\r\n,{\"param\":1000,\"id\":48}]', '[]', '[]', '[]'),
(924, 8, 0, 0, 0, 'Thiên Vương Ngoa', '', 111, 26071, -1, 0, 0, 0, 0, '[{\"param\":80,\"id\":47} \r\n,{\"param\":160,\"id\":4} \r\n,{\"param\":400,\"id\":6}\r\n,{\"param\":400,\"id\":7} \r\n,{\"param\":160,\"id\":13} \r\n,{\"param\":80,\"id\":16} \r\n,{\"param\":160,\"id\":27} \r\n,{\"param\":30,\"id\":28}\r\n,{\"param\":1000,\"id\":29}\r\n,{\"param\":400,\"id\":33}\r\n,{\"param\":1000,\"id\":48}]', '[]', '[]', '[]'),
(925, 9, 0, 0, 2, 'Thiên Vương Phù', '', 112, 26072, -1, 0, 0, 0, 0, '[{\"param\":80,\"id\":47} \r\n,{\"param\":160,\"id\":5} \r\n,{\"param\":400,\"id\":6}\r\n,{\"param\":400,\"id\":7} \r\n,{\"param\":160,\"id\":12} \r\n,{\"param\":160,\"id\":14} \r\n,{\"param\":80,\"id\":30} \r\n,{\"param\":30,\"id\":31}\r\n,{\"param\":1000,\"id\":32}\r\n,{\"param\":400,\"id\":36}\r\n,{\"param\":100,\"id\":46}]', '[]', '[]', '[]'),
(926, 7, 0, 0, 2, 'Thiên Vương Bội', '', 114, 26074, -1, 0, 0, 0, 0, '[{\"param\":80,\"id\":47} \r\n,{\"param\":160,\"id\":5} \r\n,{\"param\":400,\"id\":6}\r\n,{\"param\":400,\"id\":7} \r\n,{\"param\":160,\"id\":13} \r\n,{\"param\":160,\"id\":18} \r\n,{\"param\":80,\"id\":30} \r\n,{\"param\":30,\"id\":31}\r\n,{\"param\":1000,\"id\":32}\r\n,{\"param\":400,\"id\":33}\r\n,{\"param\":1400,\"id\":51}]', '[]', '[]', '[]'),
(927, 5, 0, 0, 2, 'Thiên Vương Giới', '', 116, 26076, -1, 0, 0, 0, 0, '[{\"param\":80,\"id\":47} \r\n,{\"param\":160,\"id\":5} \r\n,{\"param\":400,\"id\":6}\r\n,{\"param\":400,\"id\":7} \r\n,{\"param\":160,\"id\":11} \r\n,{\"param\":160,\"id\":17} \r\n,{\"param\":80,\"id\":30} \r\n,{\"param\":30,\"id\":31}\r\n,{\"param\":1000,\"id\":32}\r\n,{\"param\":400,\"id\":35}\r\n,{\"param\":1000,\"id\":53}]', '[]', '[]', '[]'),
(928, 3, 0, 0, 2, 'Thiên Vương Liên', '', 118, 26078, -1, 0, 0, 0, 0, '[{\"param\":80,\"id\":47} \r\n,{\"param\":160,\"id\":5} \r\n,{\"param\":400,\"id\":6}\r\n,{\"param\":400,\"id\":7} \r\n,{\"param\":160,\"id\":12} \r\n,{\"param\":160,\"id\":14} \r\n,{\"param\":80,\"id\":30} \r\n,{\"param\":30,\"id\":31}\r\n,{\"param\":1000,\"id\":32}\r\n,{\"param\":400,\"id\":34}\r\n,{\"param\":1400,\"id\":52}]', '[]', '[]', '[]'),
(929, 1, 1, 0, 2, 'Thiên Vương Kiếm', '', 110, 25045, 12, 0, 0, 0, 0, '[{\"param\":1200,\"id\":0},{\"param\":1200,\"id\":1},{\"param\":720,\"id\":8},{\"param\":720,\"id\":9},{\"param\":560,\"id\":10},{\"param\":7800,\"id\":21},{\"param\":1120,\"id\":19},{\"param\":64,\"id\":27},{\"param\":220,\"id\":37},{\"param\":2000,\"id\":38},{\"param\":300,\"id\":39},{\"param\":30,\"id\":54},{\"param\":30,\"id\":55},{\"param\":30,\"id\":56}]', '[]', '[]', '[]'),
(930, 1, 2, 0, 2, 'Thiên Vương Tiêu', '', 110, 25046, 15, 0, 0, 0, 0, '[{\"param\":1200,\"id\":0},{\"param\":1200,\"id\":1},{\"param\":720,\"id\":8},{\"param\":720,\"id\":9},{\"param\":560,\"id\":10},{\"param\":7800,\"id\":21},{\"param\":1120,\"id\":19},{\"param\":64,\"id\":27},{\"param\":220,\"id\":37},{\"param\":2000,\"id\":38},{\"param\":300,\"id\":39},{\"param\":30,\"id\":54},{\"param\":30,\"id\":55},{\"param\":30,\"id\":56}]', '[]', '[]', '[]'),
(931, 1, 3, 0, 2, 'Thiên Vương DAO', '', 110, 25047, 41, 0, 0, 0, 0, '[{\"param\":1200,\"id\":0},{\"param\":1200,\"id\":1},{\"param\":720,\"id\":8},{\"param\":720,\"id\":9},{\"param\":560,\"id\":10},{\"param\":7800,\"id\":21},{\"param\":1120,\"id\":19},{\"param\":64,\"id\":27},{\"param\":220,\"id\":37},{\"param\":2000,\"id\":38},{\"param\":300,\"id\":39},{\"param\":30,\"id\":54},{\"param\":30,\"id\":55},{\"param\":30,\"id\":56}]', '[]', '[]', '[]'),
(932, 1, 4, 0, 2, 'Thiên Vương Cung', '', 110, 25048, 14, 0, 0, 0, 0, '[{\"param\":1200,\"id\":0},{\"param\":1200,\"id\":1},{\"param\":720,\"id\":8},{\"param\":720,\"id\":9},{\"param\":560,\"id\":10},{\"param\":7800,\"id\":21},{\"param\":1120,\"id\":19},{\"param\":64,\"id\":27},{\"param\":220,\"id\":37},{\"param\":2000,\"id\":38},{\"param\":300,\"id\":39},{\"param\":30,\"id\":54},{\"param\":30,\"id\":55},{\"param\":30,\"id\":56}]', '[]', '[]', '[]'),
(933, 1, 5, 0, 2, 'Thiên Vương Đao', '', 110, 25049, 13, 0, 0, 0, 0, '[{\"param\":1200,\"id\":0},{\"param\":1200,\"id\":1},{\"param\":720,\"id\":8},{\"param\":720,\"id\":9},{\"param\":560,\"id\":10},{\"param\":7800,\"id\":21},{\"param\":1120,\"id\":19},{\"param\":64,\"id\":27},{\"param\":220,\"id\":37},{\"param\":2000,\"id\":38},{\"param\":300,\"id\":39},{\"param\":30,\"id\":54},{\"param\":30,\"id\":55},{\"param\":30,\"id\":56}]', '[]', '[]', '[]'),
(934, 1, 6, 0, 2, 'Thiên Vương Quạt', '', 110, 25050, 16, 0, 0, 0, 0, '[{\"param\":1200,\"id\":0},{\"param\":1200,\"id\":1},{\"param\":720,\"id\":8},{\"param\":720,\"id\":9},{\"param\":560,\"id\":10},{\"param\":7800,\"id\":21},{\"param\":1120,\"id\":19},{\"param\":64,\"id\":27},{\"param\":220,\"id\":37},{\"param\":2000,\"id\":38},{\"param\":300,\"id\":39},{\"param\":30,\"id\":54},{\"param\":30,\"id\":55},{\"param\":30,\"id\":56}]', '[]', '[]', '[]'),
(935, 15, 0, 0, 2, 'Quân pháp Kanrinseiyou', 'Hào Quang 3 Phái', 10, 2096, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(936, 15, 0, 0, 2, 'Binh Thư Đại Gia Blue', 'Sử Dụng Nhận Được Danh HiệuĐại Gia Blue', 1, 3509, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(937, 15, 0, 0, 2, 'Binh Thư Bá Chủ Lôi Đài', 'Sử Dụng Nhận Được Danh Hiệu Bá Chủ Lôi Đài', 1, 3509, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(938, 15, 0, 0, 2, 'Binh Thư Đại Gia Tím', 'Sử Dụng Nhận Được Danh Hiệu Đại Gia Blue Tím', 1, 3509, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(939, 15, 0, 0, 2, 'Binh Thư Vua Loạn Đấu', 'Sử Dụng Nhận Được Danh Hiệu Vua Loạn Đấu', 1, 3509, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(940, 15, 0, 0, 2, 'Binh Thư Vương Gia', 'Sử Dụng Nhận Được Danh Hiệu Vương Gia', 1, 3509, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(941, 27, 0, 0, 2, 'Đá Sát Thương', 'Dùng Đê Khai Hỏa', 10, 3689, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(942, 27, 0, 0, 2, 'Đá Phòng Ngự', 'Dùng Đê Khai Hỏa', 10, 3690, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(943, 27, 0, 0, 2, 'Đá Sinh Mệnh', 'Dùng Đê Khai Hỏa', 10, 3691, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(944, 27, 0, 0, 2, 'Rương May Mắn', '', 10, 3228, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(945, 10, 0, 0, 2, 'Khẩu Trang Vip', 'Giúp cho nhân vật mạnh hơn', 1, 26080, 98, 0, 0, 0, 0, '[{\"param\":5000,\"id\":6},{\"param\":5000,\"id\":7},{\"param\":10,\"id\":100}]', '[]', '[]', '[]'),
(946, 15, 0, 0, 2, 'Binh Thư GT Huyền Thoại', '', 1, 3509, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(947, 15, 0, 0, 2, 'Binh Thư Trum VQMM', '', 1, 3509, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(948, 15, 0, 0, 2, 'Binh Thư GT Minh Mẫn', '', 1, 3509, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(949, 15, 0, 0, 2, 'Binh Thư GT Siêng Năng', '', 1, 3509, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(950, 15, 0, 0, 2, 'Binh Duy Ngã Độc Tôn', '', 1, 3509, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(951, 15, 0, 0, 2, 'Binh Thư Top Boss', '', 1, 3509, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(952, 15, 0, 0, 2, 'Binh Thư Tỷ Phú', '', 1, 3509, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(953, 15, 0, 0, 2, 'Binh Thư KnightMaster', '', 1, 3509, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(954, 15, 0, 0, 2, 'Binh Thư King Vip', '', 1, 3509, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(955, 15, 0, 0, 2, 'Binh Thư KingSaven', '', 1, 3509, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(956, 7, 0, 0, 2, 'Thiên Sơn Tuyết Liên', 'Bách Thảo Chi Vương - Vô Cùng Hiếm Gặp', 1, 1003, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(957, 13, 0, 0, 2, 'Vô Môn Lệnh', 'Không có nhẫn thuật nào là không có điểm yếu, Điểm yếu của nhẫn thuật này chính là sự tồn tại của ta. - yaskawa', 10, 3507, -1, 1, 1, 604800, 5, '[]', '[]', '[]', '[]'),
(958, 27, 0, 0, 2, 'Bùa Aitemu', 'Gia hạn vật phẩm không phải thú và thời trang', 1, 3257, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(959, 27, 0, 0, 2, 'Bùa Sochi', 'Gia hạn trang bị, mặt nạ, thú nuôi,...', 1, 3258, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(960, 27, 0, 0, 2, 'Bùa Noru', 'Gia hạn thú cưỡi', 1, 3259, -1, 1, 0, 0, 0, '[]', '[]', '[]', '[]'),
(961, 11, 0, 0, 2, 'Mạt Nạ Madara', '', 1, 15000, 288, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(962, 11, 0, 0, 2, 'Mạt Nạ Naruto', '', 1, 15030, 291, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(963, 11, 0, 0, 2, 'Mạt Nạ Sakura', '', 1, 15060, 294, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(964, 0, 0, 0, 1, 'Obito', 'Dùng để thay đổi diện mạo', 20, 3422, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(965, 0, 0, 0, 0, 'Sakura', 'Dùng để thay đổi diện mạo', 20, 3421, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(966, 11, 0, 0, 2, 'Cải Trang Dendera', '', 1, 3097, 305, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(967, 11, 0, 0, 2, 'Cải Trang Kakashi', '', 1, 3097, 308, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(968, 11, 0, 0, 2, 'Cải Trang Long Nữ', '', 1, 3097, 311, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(969, 11, 0, 0, 2, 'Cải Trang Tân Thời', '', 1, 3097, 314, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(970, 11, 0, 0, 2, 'Cải Trang Hitoki', '', 1, 3097, 317, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(971, 11, 0, 0, 2, 'Cải Trang Mongoku', '', 1, 3097, 320, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(972, 11, 0, 0, 2, 'Cải Trang Itachi', '', 1, 3097, 323, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(973, 11, 0, 0, 2, 'Cải Trang Naruto', '', 1, 3097, 326, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(974, 11, 0, 0, 2, 'Cải Trang Kimsuro', '', 1, 3097, 329, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(975, 11, 0, 0, 2, 'Cải Trang Saruno', '', 1, 3097, 332, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(976, 11, 0, 0, 2, 'Cải Trang Hiro', '', 1, 3097, 323, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(977, 11, 0, 0, 2, 'Cải Trang Bảnh', '', 1, 3097, 323, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(978, 11, 0, 0, 2, 'Cải Trang Tomiruno', '', 1, 3097, 323, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(979, 11, 0, 0, 2, 'Cải Trang hakito', '', 1, 3097, 323, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(980, 11, 0, 0, 2, 'Cải Trang Kimuto', '', 1, 3097, 348, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(981, 11, 0, 0, 2, 'Cải Trang Makiro', '', 1, 3097, 323, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(982, 10, 0, 0, 2, 'trang bi chua dat ten', '', 1, 3664, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(983, 34, 0, 0, 2, 'Bomb fruit', 'Uncommon', 1, 3552, -1, 0, 0, 0, 0, '[{\"param\":1000,\"id\":82},{\"param\":100,\"id\":88}]', '[]', '[]', '[]'),
(984, 34, 0, 0, 2, 'Control fruit', 'Legendary', 1, 3553, -1, 0, 0, 0, 0, '[{\"param\":1000,\"id\":82},{\"param\":1000,\"id\":87},{\"param\":100,\"id\":99},{\"param\":10,\"id\":94}]', '[]', '[]', '[]'),
(985, 34, 0, 0, 2, 'Dark fruit', 'Mythical', 1, 3554, -1, 0, 0, 0, 0, '[{\"param\":2000,\"id\":82},{\"param\":2000,\"id\":87},{\"param\":200,\"id\":99},{\"param\":10,\"id\":58},{\"param\":50,\"id\":57}]', '[]', '[]', '[]'),
(986, 34, 0, 0, 2, 'Dragon fruit', 'Mythical', 1, 3555, -1, 0, 0, 0, 0, '[{\"param\":2000,\"id\":82},{\"param\":2000,\"id\":87},{\"param\":200,\"id\":99},{\"param\":10,\"id\":58},{\"param\":10,\"id\":67}]', '[]', '[]', '[]'),
(987, 34, 0, 0, 2, 'Falcon fruit', 'Uncommon', 1, 3556, -1, 0, 0, 0, 0, '[{\"param\":1000,\"id\":82},{\"param\":100,\"id\":89}]', '[]', '[]', '[]'),
(988, 34, 0, 0, 2, 'Gravity fruit', 'Epic', 1, 3557, -1, 0, 0, 0, 0, '[{\"param\":1000,\"id\":82},{\"param\":500,\"id\":87},{\"param\":10,\"id\":79}]', '[]', '[]', '[]'),
(989, 34, 0, 0, 2, 'Ice fruit', 'Legendary', 1, 3558, -1, 0, 0, 0, 0, '[{\"param\":1000,\"id\":82},{\"param\":1000,\"id\":87},{\"param\":100,\"id\":99},{\"param\":200,\"id\":91}]', '[]', '[]', '[]'),
(990, 34, 0, 0, 2, 'Leopard fruit', 'Mythical', 1, 3559, -1, 0, 0, 0, 0, '[{\"param\":2000,\"id\":82},{\"param\":2000,\"id\":87},{\"param\":200,\"id\":99},{\"param\":10,\"id\":58},{\"param\":500,\"id\":88}]', '[]', '[]', '[]'),
(991, 34, 0, 0, 2, 'Mammoth fruit', 'Mythical', 1, 3560, -1, 0, 0, 0, 0, '[{\"param\":2000,\"id\":82},{\"param\":2000,\"id\":87},{\"param\":200,\"id\":99},{\"param\":10,\"id\":58},{\"param\":500,\"id\":89}]', '[]', '[]', '[]'),
(992, 34, 0, 0, 2, 'Quake fruit', 'Legendary', 1, 3561, -1, 0, 0, 0, 0, '[{\"param\":1000,\"id\":82},{\"param\":1000,\"id\":87},{\"param\":100,\"id\":99},{\"param\":300,\"id\":95}]', '[]', '[]', '[]'),
(993, 34, 0, 0, 2, 'Rumble fruit', 'Legendary', 1, 3562, -1, 0, 0, 0, 0, '[{\"param\":1000,\"id\":82},{\"param\":1000,\"id\":87},{\"param\":100,\"id\":99},{\"param\":300,\"id\":96}]', '[]', '[]', '[]'),
(994, 34, 0, 0, 2, 'Spirit fruit', 'Mythical', 1, 3563, -1, 0, 0, 0, 0, '[{\"param\":2000,\"id\":82},{\"param\":2000,\"id\":87},{\"param\":200,\"id\":99},{\"param\":10,\"id\":58},{\"param\":500,\"id\":90}]', '[]', '[]', '[]'),
(995, 34, 0, 0, 2, 'Blizzard fruit', 'Mythical', 1, 3564, -1, 0, 0, 0, 0, '[{\"param\":2000,\"id\":82},{\"param\":2000,\"id\":87},{\"param\":200,\"id\":99},{\"param\":10,\"id\":58},{\"param\":300,\"id\":95}]', '[]', '[]', '[]'),
(996, 34, 0, 0, 2, 'Diamond fruit', 'Rare', 1, 3565, -1, 0, 0, 0, 0, '[{\"param\":1000,\"id\":82},{\"param\":100,\"id\":81}]', '[]', '[]', '[]'),
(997, 34, 0, 0, 2, 'Dough fruit', 'Legendary', 1, 3566, -1, 0, 0, 0, 0, '[{\"param\":1000,\"id\":82},{\"param\":1000,\"id\":87},{\"param\":100,\"id\":99},{\"param\":300,\"id\":97}]', '[]', '[]', '[]'),
(998, 34, 0, 0, 2, 'Flame fruit', 'Epic', 1, 3567, -1, 0, 0, 0, 0, '[{\"param\":1000,\"id\":82},{\"param\":500,\"id\":87},{\"param\":50,\"id\":99}]', '[]', '[]', '[]'),
(999, 34, 0, 0, 2, 'Kitsune fruit', 'Mythical', 1, 3568, -1, 0, 0, 0, 0, '[{\"param\":2000,\"id\":82},{\"param\":2000,\"id\":87},{\"param\":200,\"id\":99},{\"param\":10,\"id\":58},{\"param\":10,\"id\":94}]', '[]', '[]', '[]'),
(1000, 34, 0, 0, 2, 'Light fruit', 'Epic', 1, 3569, -1, 0, 0, 0, 0, '[{\"param\":1000,\"id\":82},{\"param\":500,\"id\":87},{\"param\":20,\"id\":100}]', '[]', '[]', '[]'),
(1001, 34, 0, 0, 2, 'love fruit', 'Rare', 1, 3570, -1, 0, 0, 0, 0, '[{\"param\":1000,\"id\":82},{\"param\":100,\"id\":84}]', '[]', '[]', '[]'),
(1002, 34, 0, 0, 2, 'Magma fruit', 'Legendary', 1, 3571, -1, 0, 0, 0, 0, '[{\"param\":1000,\"id\":82},{\"param\":1000,\"id\":87},{\"param\":100,\"id\":99},{\"param\":100,\"id\":92}]', '[]', '[]', '[]'),
(1003, 34, 0, 0, 2, 'Portal fruit', 'Epic', 1, 3572, -1, 0, 0, 0, 0, '[{\"param\":1000,\"id\":82},{\"param\":500,\"id\":87},{\"param\":10,\"id\":101}]', '[]', '[]', '[]'),
(1004, 34, 0, 0, 2, 'Revive fruit', 'Legendary', 1, 3573, -1, 0, 0, 0, 0, '[{\"param\":1000,\"id\":82},{\"param\":1000,\"id\":87},{\"param\":100,\"id\":99},{\"param\":100,\"id\":86}]', '[]', '[]', '[]'),
(1005, 34, 0, 0, 2, 'Rocket fruit', 'Uncommon', 1, 3574, -1, 0, 0, 0, 0, '[{\"param\":1000,\"id\":82},{\"param\":100,\"id\":90}]', '[]', '[]', '[]'),
(1006, 34, 0, 0, 2, 'Rubber fruit', 'Rare', 1, 3575, -1, 0, 0, 0, 0, '[{\"param\":1000,\"id\":82},{\"param\":100,\"id\":86}]', '[]', '[]', '[]'),
(1007, 34, 0, 0, 2, 'Sand fruit', 'Epic', 1, 3576, -1, 0, 0, 0, 0, '[{\"param\":1000,\"id\":82},{\"param\":500,\"id\":87},{\"param\":10,\"id\":98}]', '[]', '[]', '[]'),
(1008, 34, 0, 0, 2, 'Shadow fruit', 'Mythical', 1, 3577, -1, 0, 0, 0, 0, '[{\"param\":2000,\"id\":82},{\"param\":2000,\"id\":87},{\"param\":200,\"id\":99},{\"param\":10,\"id\":58},{\"param\":10,\"id\":97}]', '[]', '[]', '[]'),
(1009, 34, 0, 0, 2, 'Sound fruit', 'Rare', 1, 3578, -1, 0, 0, 0, 0, '[{\"param\":1000,\"id\":82},{\"param\":100,\"id\":92}]', '[]', '[]', '[]'),
(1010, 34, 0, 0, 2, 'Spider fruit', 'Legendary', 1, 3579, -1, 0, 0, 0, 0, '[{\"param\":1000,\"id\":82},{\"param\":1000,\"id\":87},{\"param\":100,\"id\":99},{\"param\":100,\"id\":84}]', '[]', '[]', '[]'),
(1011, 34, 0, 0, 2, 'T Rex fruit', 'Mythical', 1, 3580, -1, 0, 0, 0, 0, '[{\"param\":2000,\"id\":82},{\"param\":2000,\"id\":87},{\"param\":200,\"id\":99},{\"param\":10,\"id\":58},{\"param\":200,\"id\":80}]', '[]', '[]', '[]'),
(1012, 34, 0, 0, 2, 'Venom fruit', 'Legendary', 1, 3581, -1, 0, 0, 0, 0, '[{\"param\":1000,\"id\":82},{\"param\":1000,\"id\":87},{\"param\":100,\"id\":99},{\"param\":100,\"id\":81}]', '[]', '[]', '[]'),
(1013, 27, 1, 91, 2, 'Sách võ công KIẾM 125', '', 125, 14113, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(1014, 27, 2, 92, 2, 'Sách võ công TIÊU 125', '', 125, 14114, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(1015, 27, 3, 93, 2, 'Sách võ công KUNAI 125', '', 125, 14115, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(1016, 27, 4, 94, 2, 'Sách võ công CUNG 125', '', 125, 14116, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(1017, 27, 5, 95, 2, 'Sách võ công ĐAO 125', '', 125, 14117, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(1018, 27, 6, 96, 2, 'Sách võ công QUẠT 125', '', 125, 14118, -1, 0, 0, 0, 0, '[]', '[]', '[]', '[]'),
(1019, 33, 0, 0, 2, 'Phượng Hoàng Lửa', '', 1, 14119, -1, 0, 0, 0, 0, '[{\"param\":0,\"id\":65},{\"param\":1000,\"id\":66},{\"param\":20,\"id\":58},{\"param\":50,\"id\":94},{\"param\":100,\"id\":74},{\"param\":20,\"id\":79},{\"param\":10,\"id\":130},{\"param\":10,\"id\":131}]', '[]', '[]', '[]'),
(1020, 33, 0, 0, 2, 'Kim Giác Lân', '', 1, 14121, -1, 0, 0, 0, 0, '[{\"param\":0,\"id\":65},{\"param\":1000,\"id\":66},{\"param\":20,\"id\":58},{\"param\":1,\"id\":152},{\"param\":40,\"id\":94},{\"param\":20,\"id\":79}]\r\n', '[]', '[]', '[]'),
(1021, 33, 0, 0, 2, 'Bạch Hổ NEW', '', 1, 14120, -1, 0, 0, 0, 0, '[{\"param\":0,\"id\":65},{\"param\":1000,\"id\":66},{\"param\":20,\"id\":58},{\"param\":15,\"id\":94}]', '[]', '[]', '[]');

-- --------------------------------------------------------

--
-- Table structure for table `news_posts`
--

CREATE TABLE `news_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `short_content` text DEFAULT NULL,
  `content` text NOT NULL,
  `thumbnail` text NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `news_posts`
--

INSERT INTO `news_posts` (`id`, `user_id`, `category_id`, `slug`, `title`, `short_content`, `content`, `thumbnail`, `views`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '1', '[CHỨC NĂNG] THÔNG TIN VỀ SEVER', '[CHỨC NĂNG] THÔNG TIN VỀ SEVER', '<div class=\"post-date\">20:36:02 12/06/2024</div>\r\n<div class=\"post-content\">\r\n</p><p>wed : nsoyaskawa.com\r\n</p><p>Tên server : NSO yaskawa\r\n</p><p>Free Vô Hạn Acc Không Cần Kích Hoạt\r\n</p><p>Server dame gốc đầy đủ chức năng\r\n</p><p>Máy chủ đang Open BETA  Từ 25.6.2024 đến 18h00 ngày 29.6.2024\r\n</p><p>giftcode : openyaskawa , tanthu (nhập tại NPC  okanechan )\r\n</p><p>Tân Thủ Đăng nhập nhận ngay 50k lượng 1 tỉ yên, 1trxu\r\n</p><p>Chức năng độc quyền mới lạ :\r\n</p><p>nâng cấp bí kíp, nâng cấp yorroi, nâng cấp pet bí dễ hành , chẵn lẻ , năng ấn tộc , khai hoá , tu tiên , trái ác quỷ \r\n</p><p>Map Truyền Kì , Map Kí Huyết …\r\n</div>\r\n', '', 1860, 0, NULL, NULL),
(3, 3, 3, '3', '[HƯỚNG DẪN] TỔNG HỢP LỆNH CHÁT TRONG PHIÊN BẢN JAVA', '[HƯỚNG DẪN] TỔNG HỢP LỆNH CHÁT TRONG PHIÊN BẢN JAVA', '<div class=\"post-date\">20:36:02 29/06/2023</div>\r\n<div class=\"post-content\">\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>ts</strong> : tàn sát all quái trong máp</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>tsn</strong> : tàn sát theo nhóm</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>hsx</strong> : Chỉ hồi sinh xa.</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>bux</strong> : Chỉ buff xa.</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>cn</strong> : Thoát nhóm pt nhóm mới.</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>cy</strong> : Xem thông tin yên up được</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>clv</strong> : Xem thông tin lvl up được</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>gm</strong> + mapID : Bay đến map có id mapID ( ví dụ gm1 sẽ đi đến trường Hirosaki )</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>die</strong> : Tự sát (Trong hành trang cần phải ko có khả di lệnh hay lệnh di chuyển nào).</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>addn</strong> : thêm ng chơi vào ds đánh nhóm</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>tsan</strong> : Tàn sát tất cả boss theo nhóm. Nhóm trưởng chat.</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>tsn + lvboss</strong> : Tàn sát boss theo cấp cả nhóm. Nhóm trưởng chat.</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>attn</strong> : Để làm nv Tà Thú cho nhóm trưởng, thành viên k cùng nhiệm vụ vẫn sẽ bay đến đánh cùng</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>buff</strong> : Để bật buff xa.</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\">Chat riêng <strong>mapup</strong> với người khác : để xem vị trí và map hiện tại đang up.</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\">Chat riêng <strong>yenxu</strong> với người khác : để xem yên và lượng</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\">Chat riêng <strong>level&nbsp;</strong>với người khác : để cem level và % lên cấp</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>kts</strong> : Tàn sát full map</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>ktsX</strong> : Tàn sát với khoảng cách X</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>dcvt</strong> : Bật/tắt đánh chuyển vị trí</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>avt</strong> : Thêm vị trí vào danh sách</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>dvt</strong> : Xóa hết vị trí trong danh sách</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>glv</strong> : Giữ level, trên 98% sẽ tự đăng xuất</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>ak&nbsp;</strong>: Bật/tắt tự đánh, chỉ đánh quái</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>cnhat</strong> : Chuyển cách nhặt từ hút vp sang nhặt xa và ngược lại</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>xX&nbsp;</strong>: Chọn khoảng cách nhặt xa là X, ví dụ chát x150 tầm nhặt xa sẽ là 150, chat x0 sẽ nhặt full map</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>ruong</strong> : Mở hành trang</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>vpnhat</strong> : Mở xem ds vp nhặt</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>sX</strong> : Hack giày tốc độ X</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>rs</strong> : Reset giày về mặc định</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>bang/fz</strong> : Đóng băng</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>pbang/wz</strong> : Phá đóng băng</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>u</strong> : Kinh kông</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>d</strong> : Độn thổ</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>l</strong> : Dịch trái</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>r</strong> : Dịch phải</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>nX</strong> : Chỉnh tầm đánh ngang X</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>cX</strong> : Chỉnh tầm đánh cao X</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>mX&nbsp;</strong>: Chỉnh đánh lan X</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>rsk</strong> : Reset tầm và lan</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>tsX</strong> : Tàn sát boss với level lvboss số X</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>tsa</strong> : Tàn sát all</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>anv</strong> : Auto nvhn</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>att</strong> : Auto tà thú</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>e&nbsp;</strong>: End auto</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>kX</strong> : Chuyển khu X</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>ltd</strong> : Lưu tọa độ khi ở làng or trường</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>nmX</strong> : Next map số X (vd ở làng tone nm0 là next đến ichidai, nm1 next đồi kokoro)</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>npcX</strong> : Act npc id số X (vd npc0 là katana, npc3 là kikiro, npc4 là tabemono, npc5 là kamakura, npc6 là kenshinto,..)</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>hs</strong> : Go to hirosaki</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>hr</strong> : Go to haruna</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>oz</strong> : Go to Oozaka</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>kj</strong> : Go to Kojin</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>sz</strong> : Go to Sanzu</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>tn&nbsp;</strong>: Go to Tone</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>lc&nbsp;</strong>: Go to làng chài</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>ck</strong> : Go to chakumi</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>eg&nbsp;</strong>: Go to echigo</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>os</strong> : Go to oshin</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>mnv</strong> : Đến map làm nv chính</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>mnvp</strong> : Đến map làm nv hàng ngày</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>add</strong> : Thêm item đang chỉ vào ds nhặt</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>del</strong> : Xóa item đang chỉ khỏi ds nhặt</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>aitX</strong> : Thêm item vs id số X</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>ditX</strong> : Xóa item vs id số X</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>dt</strong> : auto làm nhiệm vụ dẫn trẻ ( ra map có jaian chát dt )</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>tb</strong> : auto tìm boss trong map ( đến map xuất hiện boss chát tb )</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>pk</strong> : để bật tắt auto bem những ai bật pk đến gần mình</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>apk tennhatvat</strong> : để thêm người đó vào danh sách pk</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>dpk tennhanvat</strong> : để xóa người đó ra khỏi danh sách pk</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><br></p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>Muốn lật hình auto</strong> trước tiên vào lật tay 1 lần, sau đó mới có thể sài được auto lật hình, cài tốc độ lật về 1 để auto lật nhanh nhất</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>Lỗi bị xóa hết đá trong hành trang&nbsp;</strong>vào MenuAuto chọn tự động, tích vào ô Nhặt N.Liệu (Đá) LV: 7 là sẽ giữ lại đá 7 trở lên, đá 6 trở xuống sẽ xóa hết, muốn giữ lại đá nào thì tự cài</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>Lỗi bị xóa hết trang bị trong hành trang</strong> vào MenuAuto chọn tự động, tích vào ô Nhặt Trang Bị LV: 50 là sẽ giữ lại những trang bị 5x trở lên, các trang bị 1234x sẽ bị xóa</p>\r\n<p style=\"text-align: start;color: rgb(33, 37, 41);background-color: rgb(255, 243, 205);font-size: 14px;\"><strong>Không nên cài auto luyện đá</strong> nếu cố tình cài thì trong khi up sẽ rất gây ra lỗi goback không thể di chuyển lại map đang up</p></div>', '', 1530, 0, NULL, NULL),
(4, 4, 4, '4', '[HƯỚNG DẪN] CẨM NANG TÂN THỦ CHO NGƯỜI CHƠI MỚI', '[HƯỚNG DẪN] CẨM NANG TÂN THỦ CHO NGƯỜI CHƠI MỚI', '<div class=\"post-date\">21:36:02 29/06/2023</div>\r\n<div class=\"post-content\">\r\n  <p><strong>Không kích hoạt có chơi được game không?</strong></p>\r\n  <p>\r\n    Có nhé, nhưng sẽ bị giới hạn tính năng giao dịch, chỉ khi anh em kích hoạt\r\n    thì mới có thể giao dịch với người khác\r\n  </p>\r\n  <p><br /></p>\r\n  <p><strong>Tại sao tôi không Xác Thực Tài Khoản được?</strong></p>\r\n  <p>\r\n    Các bạn vào mục tải về, tải lại bản V148 mới nhất, sau đó vào lại game rồi\r\n    xác thực là được nhé\r\n  </p>\r\n  <p><br /></p>\r\n  <p><strong>Làm sao để nhận quà tân thủ?</strong></p>\r\n  <p>\r\n    Khi vào game, anh em lại NPC Admin ở Làng Tone để nhận quà tân thủ, tiếp đó\r\n    lại NPC Okanechan để nhập code: nsopro để nhận thêm một lần nữa, ngoài ra\r\n    anh em có thể nhận Thưởng Thăng Cấp tại NPC Okanechan mỗi khi đạt một mốc\r\n    cấp độ nào đó\r\n  </p>\r\n  <p><br /></p>\r\n  <p><strong>Hiện tại có những CODE gì cho người mới?</strong></p>\r\n  <p>\r\n    Hiện tại đang có code là <strong>admin</strong> cho những anh em mới\r\n    chơi nhé, để nhận thêm CODE anh em có thể tham gia các hoạt động trên\r\n    Fanpage, chúng mình thường xuyên tổ chức để phát code cho người chơi nè\r\n  </p>\r\n  <p><br /></p>\r\n  <p><strong>Android nên chơi bản nào để ổn định nhất?</strong></p>\r\n  <p>\r\n    Hiện tại để chơi trên Android ổn định nhất các bạn nên chơi bản Java bằng\r\n    cách tải J2ME Loader trên CH PLAY, sau đó tải bản Java Auto về và mở J2ME\r\n    Loader lên để chạy nhé\r\n  </p>\r\n  <p><br /></p>\r\n  <p><strong>PC nên chơi bản nào để ổn định nhất?</strong></p>\r\n  <p>Hiện tại PC các bạn nên chơi giả lập Java là ổn định nhất nhé</p>\r\n  <ul>\r\n    <li>\r\n      B1: Tải Microemulator:\r\n      <a\r\n        href=\"https://angelchip.net/files/share/AngelChipEmulatorEXE.zip\"\r\n        rel=\"noopener noreferrer\"\r\n        target=\"_blank\"\r\n        style=\"color: rgb(0, 102, 204)\"\r\n        >AngelChipEmulator.zip</a\r\n      >\r\n    </li>\r\n    <li>\r\n      B2: Tải Game:<span style=\"color: rgb(0, 102, 204)\"> </span\r\n      ><a\r\n        href=\"https://ninjaschoolpro.com/download\"\r\n        rel=\"noopener noreferrer\"\r\n        target=\"_blank\"\r\n        style=\"color: rgb(0, 102, 204)\"\r\n        >Tại đây</a\r\n      >\r\n      hoặc bạn có thể tải bản khác ở mục TẢI GAME\r\n    </li>\r\n    <li>B3: Giải nén và mở microemulator đã tải về</li>\r\n    <li>B4: Kéo bản java vào microemulator và chạy thôi</li>\r\n  </ul>\r\n  <p><strong>Trên bản IOS tại sao di chuyển lại bị dật lại?</strong></p>\r\n  <p>Các bạn chat s6 để giảm tốc độ chạy là được nhé</p>\r\n  <p><br /></p>\r\n  <p>\r\n    <strong\r\n      >Tại sao nick tôi bị kẹt, đăng nhập không được, hoặc vào Vùng đất ma quỷ\r\n      bị lag game?</strong\r\n>\r\n  </p>\r\n  <p>\r\n    Đối với bản Android và IOS hiện tại đang bị lỗi lag game ở Vùng Đất Ma Quỷ,\r\n    với Android các bạn có thể chơi bằng J2ME Loader như hướng dẫn bên trên, còn\r\n    IOS thì sắp tới chúng mình sẽ fix lại nhé ạ\r\n  </p>\r\n  <p><br /></p>\r\n  <p><strong>Chơi Android không thể gán chiêu, phải làm thế nào?</strong></p>\r\n  <p>\r\n    Tương tự như trên, bản Android cũng đang bị lỗi này, các bạn chơi bằng J2ME\r\n    Loader như hướng dẫn bên trên để ổn định nhé\r\n  </p>\r\n  <p><br /></p>\r\n  <p><strong>Tại sao đánh quái không nhận được kinh nghiệm?</strong></p>\r\n  <p>Có 2 trường hợp xảy ra:</p>\r\n  <ul>\r\n    <li>Do bạn đánh quái nằm ngoài khoảng +/-10 level</li>\r\n    <li>Do bạn tắt nhận EXP ở NPC Admin</li>\r\n  </ul>\r\n  <p>\r\n    <strong\r\n      >Mới chơi GAME, mua bán nick nhưng không biết nên giao dịch thế\r\n      nào?</strong\r\n    >\r\n  </p>\r\n  <p>\r\n    Ở mỗi BOX ZALO bên dưới đều sẽ có GIAO DỊCH VIÊN (KEY BẠC), anh em liên hệ\r\n    những GDV này để làm trung gian tránh lừa đảo khi giao dịch trực tiếp nhé\r\n  </p>\r\n  <p><br /></p>\r\n  <p><strong>Tại sao sử dụng vật phẩm sự kiện không nhận được EXP?</strong></p>\r\n  <p>\r\n    Hiện tại đang có Tái Lập Đua TOP, anh em tạo tài khoản vào thời gian này sẽ\r\n    mặc định đưa vào danh sách đua top, các bạn có thể lại NPC ADMIN hủy đua TOP\r\n    để nhận được EXP khi dùng vật phẩm sự kiện nhé\r\n  </p>\r\n  <p><br /></p>\r\n  <p>\r\n    <strong style=\"color: rgb(94, 98, 120)\"\r\n      >Tại sao đánh quái không rơi vật phẩm?</strong\r\n    >\r\n  </p>\r\n  <p>Các bạn chỉ đánh quái nằm trong khoảng +/-7 level thôi nhé</p>\r\n  <p><br /></p>\r\n  <p><strong>Nsokizz có nhóm cộng đồng nào không?</strong></p>\r\n  <p>Không những có mà là có rất nhiều nha:</p>\r\n  <ul>\r\n    <li>\r\n        Group Zalo 1:\r\n        <a\r\n          href=\"https://zalo.me/g/xrhfwu775\"\r\n          rel=\"noopener noreferrer\"\r\n          target=\"_blank\"\r\n          >https://zalo.me/g/xrhfwu775</a>\r\n      </li>\r\n  </ul>\r\n</div>\r\n', '', 1762, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `news_posts1`
--

CREATE TABLE `news_posts1` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` text NOT NULL,
  `short_content` text DEFAULT NULL,
  `content` text NOT NULL,
  `thumbnail` text NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `news_posts1`
--

INSERT INTO `news_posts1` (`id`, `user_id`, `category_id`, `slug`, `title`, `short_content`, `content`, `thumbnail`, `views`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '4', '[TÍNH NĂNG] THÔNG TIN VỀ BOSS TRONG GAME', '[TÍNH NĂNG] THÔNG TIN VỀ BOSS TRONG GAME', '<div class=\"post-content\">Ninja school là một tựa game tuổi thơ của bao thế hệ 8x 9x, đến nay Ninja School đã hơn 10 năm nhưng độ hot chưa từng giảm\r\n\r\n</p><p>Bạn muốn quay lại với những năm tháng tuổi thơ đó thì không cần đi đâu xa ,tôi sẽ giúp các bạn làm điều đó. Tổng 6 môn phái cho bạn tha hồ lựa chọn:Kunai,Kiếm,Đao,Cung,Tiêu,Quạt với các nhân vật anh hùng nửa tránh nửa tà, có hành tung bí ẩn và các năng lực phi thường\r\n\r\n</p><p>- Ookaza học sinh hệ Thủy gây đóng băng\r\n</p><p>- Haruna học sinh hệ Phong gây choáng váng\r\n</p><p>- Hirosaki học sinh hệ Hỏa gây bỏng rát\r\n</p><p>- Nếu muốn làm bạn thì cùng nhau vô hang động, còn có ý phản động thì cùng nhau vào chiến trường\r\n\r\n</p><p>*Lời nói của ADMIN: Đây là server được mở ra dành cho anh em fangame trải nghiệm tuổi thơ, không nhằm mục đích kinh doanh, lôi kéo người chơi. Các bạn lưu ý kĩ trước khi trải nghiệm !\r\n</div>', '', 188, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ninja`
--

CREATE TABLE `ninja` (
  `id` int(11) NOT NULL COMMENT '\r\n',
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `xu` int(11) NOT NULL DEFAULT 0,
  `xuBox` int(11) NOT NULL DEFAULT 0,
  `gender` tinyint(4) NOT NULL DEFAULT -1,
  `taskId` smallint(6) NOT NULL DEFAULT 0,
  `taskIndex` tinyint(4) NOT NULL DEFAULT -1,
  `taskCount` smallint(6) NOT NULL DEFAULT 0,
  `taskHangNgay` varchar(500) NOT NULL DEFAULT '[-1, -1, -1, -1, -1, 0,0]',
  `taskTaThu` varchar(500) NOT NULL DEFAULT '[-1, -1, -1, -1, -1, 0,0]',
  `taskDanhVong` varchar(500) NOT NULL DEFAULT '[-1,-1,-1,0,20,6]',
  `head` tinyint(4) NOT NULL DEFAULT -1,
  `exp` bigint(20) NOT NULL DEFAULT 0,
  `level` smallint(6) NOT NULL DEFAULT 1,
  `spoint` int(11) NOT NULL DEFAULT 0,
  `ppoint` int(11) NOT NULL DEFAULT 0,
  `potential0` int(11) NOT NULL DEFAULT 15,
  `potential1` int(11) NOT NULL DEFAULT 5,
  `potential2` int(11) NOT NULL DEFAULT 5,
  `potential3` int(11) NOT NULL DEFAULT 5,
  `caiTrang` tinyint(4) NOT NULL DEFAULT -1,
  `speed` tinyint(4) NOT NULL DEFAULT 4,
  `saveBXH` int(11) NOT NULL DEFAULT 1,
  `expdown` bigint(20) NOT NULL DEFAULT 0,
  `expSkillClone` bigint(20) NOT NULL DEFAULT 0,
  `timeRemoveClone` bigint(20) DEFAULT NULL,
  `pk` tinyint(4) NOT NULL DEFAULT 0,
  `class` tinyint(4) NOT NULL DEFAULT 0,
  `skill` varchar(5000) NOT NULL DEFAULT '[]',
  `KSkill` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '[-1,-1,-1]',
  `OSkill` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '[-1,-1,-1,-1,-1]',
  `CSkill` smallint(6) NOT NULL DEFAULT 0,
  `yen` int(11) NOT NULL DEFAULT 0,
  `site` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '[22,1678,264,22,0]',
  `maxluggage` tinyint(4) NOT NULL DEFAULT 30,
  `levelBag` smallint(6) NOT NULL DEFAULT 0,
  `ItemBag` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ItemBox` longtext NOT NULL,
  `ItemBST` longtext NOT NULL,
  `ItemCaiTrang` longtext NOT NULL,
  `ItemBody` longtext NOT NULL,
  `ItemMounts` longtext NOT NULL,
  `friend` varchar(5000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '[]',
  `friends` varchar(5000) NOT NULL DEFAULT '[]',
  `effect` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '[]',
  `clan` varchar(200) NOT NULL DEFAULT '["",0]',
  `newlogin` datetime NOT NULL DEFAULT current_timestamp(),
  `ddClan` tinyint(1) NOT NULL DEFAULT 0,
  `caveID` int(11) NOT NULL DEFAULT -1,
  `naplandau` int(11) NOT NULL DEFAULT 0,
  `nCave` int(11) NOT NULL DEFAULT 1,
  `pointCave` int(11) NOT NULL DEFAULT 0,
  `useCave` int(11) DEFAULT 4,
  `bagCaveMax` int(11) NOT NULL DEFAULT 0,
  `itemIDCaveMax` smallint(6) NOT NULL DEFAULT -1,
  `isHangDong6x` smallint(6) NOT NULL DEFAULT 0,
  `ldgtID` tinyint(4) NOT NULL DEFAULT -1,
  `exptype` tinyint(4) NOT NULL DEFAULT 1,
  `info` varchar(500) NOT NULL DEFAULT '[0,0,[0,0,0,0,0,0,0,0,0],0,1,1]	',
  `char_info` varchar(500) NOT NULL DEFAULT '[0,0,0,0,0,0,0,0,0,0,0,0]',
  `buyX3` tinyint(4) NOT NULL DEFAULT 3,
  `chien_truong` varchar(50) NOT NULL DEFAULT '[-1,0]',
  `maxPointCT` bigint(20) NOT NULL DEFAULT 0,
  `thoi-trang` varchar(500) NOT NULL DEFAULT '[-1,-1,-1,-1,-1,-1,-1,-1,-1,-1]',
  `rankTDB` int(11) NOT NULL DEFAULT 0,
  `isGiftTDB` int(11) NOT NULL DEFAULT 0,
  `countTDB` int(11) NOT NULL DEFAULT 99999,
  `countWin` int(11) NOT NULL DEFAULT 0,
  `quatanthu` tinyint(4) NOT NULL DEFAULT 0,
  `countUseItem` varchar(100) DEFAULT '[0,0,0,0,0,0,0,0]',
  `nvtruyentin` int(11) NOT NULL DEFAULT 0,
  `top` int(11) NOT NULL DEFAULT -1,
  `eventPoint` int(11) NOT NULL DEFAULT 0,
  `trangthai` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '[0,0,0]',
  `vip` int(11) DEFAULT 5,
  `pointMax` int(11) NOT NULL DEFAULT 0,
  `pointQuyDoi` int(11) NOT NULL DEFAULT 0,
  `IsLevel6x` int(11) NOT NULL DEFAULT 0,
  `SoXuDaDat` int(11) NOT NULL DEFAULT 0,
  `Vnd` int(11) NOT NULL DEFAULT 0,
  `PointBoss` int(11) NOT NULL DEFAULT 0,
  `XuTichLuy` bigint(20) NOT NULL DEFAULT 0,
  `isVIP` int(11) NOT NULL DEFAULT 0,
  `quamocvip` int(11) NOT NULL DEFAULT 0,
  `TongVnd` varchar(100) NOT NULL DEFAULT '0',
  `quanaptichluy` int(11) NOT NULL DEFAULT 0,
  `Fruit` longtext NOT NULL,
  `FruitUse` tinyint(4) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `id` int(11) NOT NULL,
  `username` char(15) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `password` char(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `matkhaucap2` int(11) DEFAULT NULL,
  `ban` tinyint(4) DEFAULT 0,
  `luong` bigint(20) NOT NULL DEFAULT 0,
  `ninja` varchar(500) NOT NULL DEFAULT '[]',
  `coin` bigint(20) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `role` int(11) NOT NULL DEFAULT 0,
  `online` tinyint(4) DEFAULT 0,
  `nap` int(11) NOT NULL DEFAULT 0,
  `vip` int(11) DEFAULT 5,
  `phone` int(11) NOT NULL DEFAULT 0,
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `shinwa`
--

CREATE TABLE `shinwa` (
  `id` int(11) NOT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `shinwa`
--

INSERT INTO `shinwa` (`id`, `data`) VALUES
(-1, '[]'),
(0, '[]'),
(1, '[]'),
(2, '[]'),
(3, '[]'),
(4, '[]'),
(5, '[]'),
(6, '[]'),
(7, '[]'),
(8, '[]'),
(9, '[]'),
(10, '[]'),
(11, '[]');

-- --------------------------------------------------------

--
-- Table structure for table `thiendia`
--

CREATE TABLE `thiendia` (
  `id` int(10) UNSIGNED NOT NULL,
  `week` varchar(50) DEFAULT NULL,
  `type` tinyint(4) DEFAULT 0,
  `data` varchar(10000) DEFAULT '[]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `thiendia`
--

INSERT INTO `thiendia` (`id`, `week`, `type`, `data`) VALUES
(1, '2024-06-25 19:06:08', 1, '[]'),
(2, '2024-06-25 19:06:08', 2, '[[\"trumcaychay\",1,1],[\"zdiorr\",1,3],[\"lontham\",1,2]]'),
(7, '2024-06-30 00:00:00', 1, '[[\"maychem\",1,2],[\"sondaica\",1,1],[\"chienthans1\",1,3]]'),
(8, '2024-06-30 00:00:00', 2, '[[\"trumcaychay\",1,1]]'),
(9, '2024-07-07 00:00:01', 1, '[[\"imissyou\",1,4],[\"nhiiim\",1,3],[\"2bandenxi\",1,1],[\"1m2vnd\",1,2],[\"bophanhai\",1,5]]'),
(10, '2024-07-07 00:00:01', 2, '[[\"sakura\",1,2],[\"lindalau\",1,6],[\"hello1\",1,3],[\"devuong\",1,4],[\"legend\",1,1],[\"chienthans1\",1,5]]'),
(11, '2024-07-14 00:00:01', 1, '[[\"2bandenxi\",1,1],[\"1m2vnd\",1,2],[\"ngaivacham\",1,3]]'),
(12, '2024-07-14 00:00:01', 2, '[[\"ammaz\",1,5],[\"wyzkingblue\",1,1],[\"hello1\",1,2],[\"sondaica\",1,4],[\"chienthans1\",1,3]]');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `creator_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` varchar(255) NOT NULL,
  `order_type` varchar(255) NOT NULL,
  `net_amount` int(11) NOT NULL DEFAULT 0,
  `fees` int(11) NOT NULL DEFAULT 0,
  `balance_before` int(11) NOT NULL DEFAULT 0,
  `balance_change` int(11) NOT NULL DEFAULT 0,
  `balance_after` int(11) NOT NULL DEFAULT 0,
  `luong_before` int(10) UNSIGNED DEFAULT 0,
  `luong_change` int(10) UNSIGNED DEFAULT 0,
  `luong_after` int(10) UNSIGNED DEFAULT 0,
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `extras_status` int(11) DEFAULT NULL,
  `extras` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `notes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `checksum` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE `transfer` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `cointruoc` bigint(20) NOT NULL,
  `coinsau` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  `luongtruoc` int(11) NOT NULL,
  `luongsau` int(11) NOT NULL,
  `xutruoc` int(11) NOT NULL,
  `xusau` int(11) NOT NULL,
  `yentruoc` int(11) NOT NULL,
  `yensau` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `transfer`
--

INSERT INTO `transfer` (`id`, `userId`, `soluong`, `cointruoc`, `coinsau`, `time`, `created_at`, `luongtruoc`, `luongsau`, `xutruoc`, `xusau`, `yentruoc`, `yensau`) VALUES
(1, 1204, 1000, 100000, 99000, 1719326987, '2024-06-25 21:49:47', 170520, 170520, 700000, 10700000, 501132450, 501132450),
(2, 1204, 1000, 99000, 98000, 1719327138, '2024-06-25 21:52:18', 168420, 168420, 2700000, 12700000, 501132450, 501132450),
(3, 1204, 8000, 98000, 90000, 1719327175, '2024-06-25 21:52:55', 164420, 164420, 1700000, 81700000, 501132450, 501132450),
(4, 1204, 10000, 90000, 80000, 1719328345, '2024-06-25 22:12:25', 134320, 134320, 18295000, 118295000, 454157820, 454157820),
(5, 1204, 10000, 80000, 70000, 1719328385, '2024-06-25 22:13:05', 85320, 85320, 9295000, 109295000, 454157820, 454157820),
(6, 1204, 10000, 70000, 60000, 1719328394, '2024-06-25 22:13:14', 85320, 95320, 109295000, 109295000, 454157820, 454157820),
(7, 1204, 10000, 60000, 50000, 1719328441, '2024-06-25 22:14:01', 47320, 47320, 3295000, 103295000, 454157820, 454157820),
(8, 1275, 1000, 150000, 149000, 1719331035, '2024-06-25 22:57:15', 166599, 166599, 740000, 10740000, 513186230, 513186230),
(9, 1275, 10000, 149000, 139000, 1719331071, '2024-06-25 22:57:51', 163999, 163999, 1740000, 101740000, 513186230, 513186230),
(10, 1275, 10000, 139000, 129000, 1719331156, '2024-06-25 22:59:16', 124499, 124499, 5740000, 105740000, 513186230, 513186230),
(11, 1223, 10, 50000, 49990, 1719332462, '2024-06-25 23:21:02', 121717, 121717, 173000, 273000, 361247236, 361247236),
(12, 1239, 5000, 5000, 0, 1719332463, '2024-06-25 23:21:03', 196550, 196550, 620000, 50620000, 514944493, 514944493),
(13, 1223, 2000, 49990, 47990, 1719332470, '2024-06-25 23:21:10', 121717, 121717, 273000, 20273000, 361247236, 361247236),
(14, 1223, 10000, 47990, 37990, 1719332552, '2024-06-25 23:22:32', 114917, 114917, 2073000, 102073000, 361247236, 361247236),
(15, 1223, 13000, 37990, 24990, 1719332615, '2024-06-25 23:23:35', 71917, 71917, 1073000, 131073000, 361247236, 361247236),
(16, 1223, 4000, 24990, 20990, 1719332628, '2024-06-25 23:23:48', 71917, 71917, 131073000, 171073000, 361247236, 361247236),
(17, 1223, 10000, 20990, 10990, 1719332745, '2024-06-25 23:25:45', 10317, 20317, 64973000, 64973000, 361247236, 361247236),
(18, 1275, 10000, 129000, 119000, 1719333490, '2024-06-25 23:38:10', 67799, 67799, 2740000, 102740000, 519975712, 519975712),
(19, 1275, 10000, 119000, 109000, 1719333554, '2024-06-25 23:39:14', 26299, 26299, 1740000, 101740000, 519975712, 519975712),
(20, 1275, 20000, 109000, 89000, 1719333601, '2024-06-25 23:40:01', 2799, 2799, 48740000, 248740000, 519975712, 519975712),
(21, 1275, 10000, 89000, 79000, 1719333630, '2024-06-25 23:40:30', 2799, 12799, 248740000, 248740000, 519975712, 519975712),
(22, 1275, 20000, 79000, 59000, 1719333657, '2024-06-25 23:40:57', 3799, 3799, 228740000, 428740000, 519975712, 519975712),
(23, 1275, 20000, 59000, 39000, 1719333664, '2024-06-25 23:41:04', 3799, 23799, 428740000, 428740000, 519975712, 519975712),
(24, 1223, 10000, 10990, 990, 1719334060, '2024-06-25 23:47:40', 1317, 1317, 4673000, 104673000, 53327099, 53327099),
(25, 1223, 990, 990, 0, 1719334070, '2024-06-25 23:47:50', 1317, 2307, 104673000, 104673000, 53327099, 53327099),
(26, 1204, 20000, 50000, 30000, 1719390566, '2024-06-26 15:29:26', 15591, 35591, 136234999, 136234999, 432741089, 432741089),
(27, 1275, 1000, 39000, 38000, 1719470629, '2024-06-27 13:43:49', 43, 1043, 185391000, 185391000, 563122348, 563122348),
(28, 1204, 20000, 30000, 10000, 1719542266, '2024-06-28 09:37:46', 25639, 25639, 136224049, 336224049, 428186864, 428186864),
(29, 1204, 9000, 10000, 1000, 1719542437, '2024-06-28 09:40:37', 25639, 25639, 236224049, 326224049, 428186864, 428186864),
(30, 1275, 5000, 53000, 48000, 1719713276, '2024-06-30 09:07:56', 3488, 3488, 2864085, 52864085, 420202940, 420202940),
(31, 1275, 1000, 48000, 47000, 1719780907, '2024-07-01 03:55:07', 3844, 3844, 44696420, 54696420, 0, 0),
(32, 1275, 1000, 47000, 46000, 1719851822, '2024-07-01 23:37:02', 22898, 22898, 43334894, 53334894, 94232142, 94232142),
(33, 1275, 2000, 46000, 44000, 1719851903, '2024-07-01 23:38:23', 22898, 22898, 43334894, 63334894, 94232142, 94232142),
(34, 1275, 4000, 44000, 40000, 1719852052, '2024-07-01 23:40:52', 22898, 22898, 63334894, 103334894, 94232142, 94232142);

-- --------------------------------------------------------

--
-- Table structure for table `xep_hang_level`
--

CREATE TABLE `xep_hang_level` (
  `id` int(11) NOT NULL,
  `ninja_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `class` varchar(50) DEFAULT NULL,
  `time` datetime DEFAULT '2020-10-10 22:15:12'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `xep_hang_level`
--

INSERT INTO `xep_hang_level` (`id`, `ninja_id`, `name`, `level`, `class`, `time`) VALUES
(86, 193, 'baokelc', 99, 'Ninja Phi Tiêu', '2024-06-26 08:48:11'),
(88, 190, 'tieu110', 99, 'Ninja Phi Tiêu', '2024-06-26 13:45:30'),
(89, 198, 'trumsv', 99, 'Ninja Phi Tiêu', '2024-06-26 19:21:34'),
(90, 189, 'lontham', 99, 'Ninja Kiếm', '2024-06-26 19:57:55'),
(91, 200, 'nhismm', 99, 'Ninja Phi Tiêu', '2024-06-26 20:33:00'),
(92, 223, 'donglivesever', 99, 'Ninja Kunai', '2024-06-26 22:45:06'),
(93, 248, '1vutmatxac', 99, 'Ninja Kunai', '2024-06-26 23:49:43'),
(94, 241, 'lalala', 99, 'Ninja Kiếm', '2024-06-27 00:09:07'),
(95, 232, 'trumcaychay', 99, 'Ninja Quạt', '2024-06-27 01:43:14'),
(96, 228, 'kappa1', 99, 'Ninja Kiếm', '2024-06-27 07:42:42'),
(97, 204, 'napgan1ty', 99, 'Ninja Kiếm', '2024-06-27 12:36:47'),
(98, 192, 'chiasechothaydi', 99, 'Ninja Kunai', '2024-06-27 17:33:34'),
(99, 221, 'top100', 99, 'Ninja Phi Tiêu', '2024-06-27 21:06:00'),
(100, 297, 'hokage', 99, 'Ninja Đao', '2024-06-27 21:32:08'),
(101, 414, 'bolatrum', 99, 'Chưa vào lớp', '2024-06-28 11:23:40'),
(102, 328, 'devil', 99, 'Ninja Kiếm', '2024-06-29 01:07:08'),
(103, 237, 'cavecaocap', 99, 'Ninja Phi Tiêu', '2024-06-29 10:30:30'),
(104, 331, '1dapvelang', 99, 'Ninja Quạt', '2024-06-30 20:51:16'),
(105, 355, 'devil1st', 99, 'Ninja Phi Tiêu', '2024-06-30 21:03:58'),
(106, 497, 'topknife', 99, 'Ninja Đao', '2024-06-30 21:35:33'),
(107, 205, 'yingyu', 99, 'Ninja Kiếm', '2024-07-01 05:20:59'),
(108, 439, 'nhocon1st', 99, 'Ninja Phi Tiêu', '2024-07-01 22:33:04'),
(109, 604, 'aihoudiyi', 99, 'Ninja Kiếm', '2024-07-02 18:41:23'),
(110, 392, 'newber', 99, 'Ninja Cung', '2024-07-03 08:28:37'),
(111, 393, 'onestar', 99, 'Ninja Quạt', '2024-07-04 07:41:17'),
(112, 389, 'loztodan', 99, 'Ninja Phi Tiêu', '2024-07-04 07:46:33'),
(113, 426, '1dapchetcumay', 99, 'Ninja Kunai', '2024-07-05 15:16:59'),
(114, 965, 'sohou98', 99, 'Ninja Cung', '2024-07-05 15:21:05'),
(115, 367, 'huyenthoai', 99, 'Ninja Kiếm', '2024-07-05 22:33:01'),
(116, 371, 'dangcap', 99, 'Ninja Phi Tiêu', '2024-07-05 22:36:51'),
(117, 326, 'trumsv1', 99, 'Ninja Quạt', '2024-07-06 19:01:04'),
(118, 598, 'trumpkanbossslc', 99, 'Ninja Kunai', '2024-07-06 21:47:23'),
(119, 733, 'skill', 99, 'Ninja Phi Tiêu', '2024-07-07 06:53:54'),
(120, 1033, 'skill1', 99, 'Ninja Kiếm', '2024-07-07 08:14:55'),
(121, 1032, 'skill69', 99, 'Ninja Quạt', '2024-07-07 09:28:59'),
(122, 893, 'xuantoi36', 99, 'Ninja Phi Tiêu', '2024-07-07 14:09:12'),
(123, 1044, 'balasat', 99, 'Ninja Quạt', '2024-07-07 14:14:28'),
(124, 811, 'anhtoiday', 99, 'Ninja Cung', '2024-07-07 22:07:05'),
(125, 1584, 'vuatocdo37', 99, 'Chưa vào lớp', '2024-07-08 16:45:28'),
(126, 1582, 'playboy37', 99, 'Chưa vào lớp', '2024-07-08 17:46:37'),
(127, 1610, 'newstar37', 99, 'Chưa vào lớp', '2024-07-08 21:40:23'),
(128, 1611, 'vuatocdo', 99, 'Chưa vào lớp', '2024-07-09 02:30:43'),
(129, 907, 'namkonapxu', 99, 'Ninja Kiếm', '2024-07-09 02:54:56'),
(130, 1364, 'hihiem', 99, 'Ninja Phi Tiêu', '2024-07-09 16:00:59'),
(131, 1164, 'chimto', 99, 'Ninja Kiếm', '2024-07-09 18:48:05'),
(132, 728, 'anhanh', 99, 'Ninja Phi Tiêu', '2024-07-09 19:55:43'),
(133, 784, 'minhcny', 99, 'Ninja Phi Tiêu', '2024-07-09 19:58:51'),
(134, 1409, 'trumquaytay', 99, 'Ninja Kunai', '2024-07-09 22:52:11'),
(135, 1681, 'fangvl', 99, 'Chưa vào lớp', '2024-07-10 04:22:03'),
(136, 1371, 'thuybune', 99, 'Ninja Quạt', '2024-07-10 09:04:27'),
(137, 1369, 'thuychemne', 99, 'Ninja Kunai', '2024-07-10 09:27:26'),
(138, 1405, 'thuydosat', 99, 'Ninja Phi Tiêu', '2024-07-10 09:28:26'),
(139, 992, 'susub', 99, 'Ninja Phi Tiêu', '2024-07-10 18:31:13'),
(140, 1813, '100vnd', 130, 'Ninja Phi Tiêu', '2024-07-10 23:19:28'),
(141, 223, 'donglivesever', 130, 'Ninja Kunai', '2024-07-11 00:32:59'),
(142, 965, 'sohou98', 130, 'Ninja Cung', '2024-07-11 06:24:47'),
(143, 232, 'trumcaychay', 130, 'Ninja Quạt', '2024-07-11 07:41:03'),
(144, 1426, 'donglive', 130, 'Ninja Đao', '2024-07-11 08:36:02'),
(145, 228, 'kappa1', 130, 'Ninja Kiếm', '2024-07-11 10:06:21'),
(146, 1874, 'trumandanh', 130, 'Chưa vào lớp', '2024-07-11 18:44:06'),
(147, 1435, 'cogiaopk', 130, 'Ninja Kunai', '2024-07-12 00:36:53'),
(148, 784, 'minhcny', 130, 'Ninja Phi Tiêu', '2024-07-12 00:47:18'),
(149, 1587, 'messi', 130, 'Ninja Kunai', '2024-07-12 00:50:58'),
(150, 1590, 'perid', 130, 'Ninja Phi Tiêu', '2024-07-12 00:53:32'),
(151, 1589, 'ronaldo', 130, 'Ninja Kunai', '2024-07-12 00:53:34'),
(152, 1409, 'trumquaytay', 130, 'Ninja Kunai', '2024-07-12 01:04:16'),
(153, 1591, 'muiler', 130, 'Ninja Phi Tiêu', '2024-07-12 01:08:20'),
(154, 241, 'lalala', 130, 'Ninja Kiếm', '2024-07-12 11:36:37'),
(155, 2003, 'farmer', 130, 'Ninja Kiếm', '2024-07-12 11:52:40'),
(156, 1168, 'chuawibu', 130, 'Ninja Phi Tiêu', '2024-07-12 12:13:38'),
(157, 733, 'skill', 130, 'Ninja Phi Tiêu', '2024-07-12 12:50:42'),
(158, 3, 'Âm Thầm Bên Em', 130, 'Ninja Kiếm', '2024-07-12 13:38:35'),
(159, 426, '1dapchetcumay', 130, 'Ninja Kunai', '2024-07-12 13:43:54'),
(160, 1, 'admin', 130, 'Ninja Đao', '2024-07-13 00:33:26'),
(161, 326, 'trumsv1st1', 130, 'Ninja Quạt', '2024-07-13 00:45:11'),
(162, 497, 'topknife', 130, 'Ninja Đao', '2024-07-13 00:58:48'),
(163, 198, 'trumsv', 130, 'Ninja Phi Tiêu', '2024-07-13 00:59:16'),
(164, 598, 'trumsv1st2', 130, 'Ninja Kunai', '2024-07-13 00:59:40'),
(165, 439, 'trumsv1st', 130, 'Ninja Phi Tiêu', '2024-07-13 00:59:41'),
(166, 1680, 'trumvh', 130, 'Chưa vào lớp', '2024-07-13 00:59:46'),
(167, 1412, 'trumhoa', 130, 'Ninja Kiếm', '2024-07-13 01:03:26'),
(168, 604, 'aihoudiyi', 130, 'Ninja Phi Tiêu', '2024-07-13 01:07:45'),
(169, 992, 'susub', 130, 'Ninja Phi Tiêu', '2024-07-13 12:19:03'),
(170, 1387, 'quymatngua', 130, 'Ninja Kiếm', '2024-07-13 12:43:26'),
(171, 193, '200vnd', 130, 'Ninja Phi Tiêu', '2024-07-13 20:58:27'),
(172, 189, 'lontham', 130, 'Ninja Kiếm', '2024-07-13 21:32:34'),
(173, 1598, 'aequatdien', 130, 'Ninja Quạt', '2024-07-13 21:33:17'),
(174, 1384, 'quydautrau', 130, 'Ninja Kunai', '2024-07-13 23:04:03'),
(175, 1162, 'trumgamelau', 130, 'Ninja Đao', '2024-07-14 13:43:03'),
(176, 1564, 'mixsu', 130, 'Ninja Kiếm', '2024-07-14 13:54:14'),
(177, 1390, 'winnerx', 130, 'Ninja Kunai', '2024-07-14 22:49:50'),
(178, 1832, 'beuyen', 130, 'Ninja Phi Tiêu', '2024-07-15 13:29:15'),
(179, 2094, 'trumvodanh', 130, 'Ninja Phi Tiêu', '2024-07-15 15:46:08'),
(180, 1565, 'mixsuna', 130, 'Ninja Kunai', '2024-07-15 15:58:38'),
(181, 2395, 'huy37', 130, 'Chưa vào lớp', '2024-07-16 03:14:12'),
(182, 1893, 'onepice', 130, 'Ninja Kiếm', '2024-07-16 21:29:17'),
(183, 2036, 'kizic5', 130, 'Ninja Phi Tiêu', '2024-07-16 22:27:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alert`
--
ALTER TABLE `alert`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `atm_bank`
--
ALTER TABLE `atm_bank`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `user_id` (`user_id`) USING BTREE;

--
-- Indexes for table `clan`
--
ALTER TABLE `clan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `clone_ninja`
--
ALTER TABLE `clone_ninja`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `gift_code`
--
ALTER TABLE `gift_code`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `history_gift`
--
ALTER TABLE `history_gift`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_posts`
--
ALTER TABLE `news_posts`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `news_posts_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `news_posts_category_id_foreign` (`category_id`) USING BTREE;

--
-- Indexes for table `news_posts1`
--
ALTER TABLE `news_posts1`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `news_posts_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `news_posts_category_id_foreign` (`category_id`) USING BTREE;

--
-- Indexes for table `ninja`
--
ALTER TABLE `ninja`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `name` (`name`) USING BTREE;

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `id` (`id`,`username`) USING BTREE,
  ADD KEY `login` (`id`,`username`) USING BTREE;

--
-- Indexes for table `shinwa`
--
ALTER TABLE `shinwa`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `thiendia`
--
ALTER TABLE `thiendia`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `transactions_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `transactions_creator_id_foreign` (`creator_id`) USING BTREE;

--
-- Indexes for table `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `xep_hang_level`
--
ALTER TABLE `xep_hang_level`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `atm_bank`
--
ALTER TABLE `atm_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clan`
--
ALTER TABLE `clan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `gift_code`
--
ALTER TABLE `gift_code`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `history_gift`
--
ALTER TABLE `history_gift`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19527;

--
-- AUTO_INCREMENT for table `news_posts`
--
ALTER TABLE `news_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `news_posts1`
--
ALTER TABLE `news_posts1`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ninja`
--
ALTER TABLE `ninja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '\r\n', AUTO_INCREMENT=2682;

--
-- AUTO_INCREMENT for table `player`
--
ALTER TABLE `player`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4035;

--
-- AUTO_INCREMENT for table `thiendia`
--
ALTER TABLE `thiendia`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfer`
--
ALTER TABLE `transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `xep_hang_level`
--
ALTER TABLE `xep_hang_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
