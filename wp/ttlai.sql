-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2017 at 02:00 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ttlai`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_activity`
--

CREATE TABLE `wp_bp_activity` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `component` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `primary_link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `secondary_item_id` bigint(20) DEFAULT NULL,
  `date_recorded` datetime NOT NULL,
  `hide_sitewide` tinyint(1) DEFAULT '0',
  `mptt_left` int(11) NOT NULL DEFAULT '0',
  `mptt_right` int(11) NOT NULL DEFAULT '0',
  `is_spam` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_bp_activity`
--

INSERT INTO `wp_bp_activity` (`id`, `user_id`, `component`, `type`, `action`, `content`, `primary_link`, `item_id`, `secondary_item_id`, `date_recorded`, `hide_sitewide`, `mptt_left`, `mptt_right`, `is_spam`) VALUES
(1, 1, 'members', 'last_activity', '', '', '', 0, NULL, '2017-03-18 02:09:47', 0, 0, 0, 0),
(2, 1, 'profile', 'new_avatar', '<a href="http://localhost/wp/members/ttlai/">TTLai</a> changed their profile picture', '', 'http://localhost/wp/members/ttlai/', 0, 0, '2017-02-17 07:40:06', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_activity_meta`
--

CREATE TABLE `wp_bp_activity_meta` (
  `id` bigint(20) NOT NULL,
  `activity_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_notifications`
--

CREATE TABLE `wp_bp_notifications` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `secondary_item_id` bigint(20) DEFAULT NULL,
  `component_name` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `component_action` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_notified` datetime NOT NULL,
  `is_new` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_notifications_meta`
--

CREATE TABLE `wp_bp_notifications_meta` (
  `id` bigint(20) NOT NULL,
  `notification_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_xprofile_data`
--

CREATE TABLE `wp_bp_xprofile_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `field_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_bp_xprofile_data`
--

INSERT INTO `wp_bp_xprofile_data` (`id`, `field_id`, `user_id`, `value`, `last_updated`) VALUES
(1, 1, 1, 'TTLai', '2017-02-17 07:42:29');

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_xprofile_fields`
--

CREATE TABLE `wp_bp_xprofile_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `is_default_option` tinyint(1) NOT NULL DEFAULT '0',
  `field_order` bigint(20) NOT NULL DEFAULT '0',
  `option_order` bigint(20) NOT NULL DEFAULT '0',
  `order_by` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `can_delete` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_bp_xprofile_fields`
--

INSERT INTO `wp_bp_xprofile_fields` (`id`, `group_id`, `parent_id`, `type`, `name`, `description`, `is_required`, `is_default_option`, `field_order`, `option_order`, `order_by`, `can_delete`) VALUES
(1, 1, 0, 'textbox', 'Name', '', 1, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_xprofile_groups`
--

CREATE TABLE `wp_bp_xprofile_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_order` bigint(20) NOT NULL DEFAULT '0',
  `can_delete` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_bp_xprofile_groups`
--

INSERT INTO `wp_bp_xprofile_groups` (`id`, `name`, `description`, `group_order`, `can_delete`) VALUES
(1, 'Base', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_bp_xprofile_meta`
--

CREATE TABLE `wp_bp_xprofile_meta` (
  `id` bigint(20) NOT NULL,
  `object_id` bigint(20) NOT NULL,
  `object_type` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_cf7dbplugin_st`
--

CREATE TABLE `wp_cf7dbplugin_st` (
  `submit_time` decimal(16,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_cf7dbplugin_st`
--

INSERT INTO `wp_cf7dbplugin_st` (`submit_time`) VALUES
('1484455134.7812');

-- --------------------------------------------------------

--
-- Table structure for table `wp_cf7dbplugin_submits`
--

CREATE TABLE `wp_cf7dbplugin_submits` (
  `submit_time` decimal(16,4) NOT NULL,
  `form_name` varchar(127) CHARACTER SET utf8 DEFAULT NULL,
  `field_name` varchar(127) CHARACTER SET utf8 DEFAULT NULL,
  `field_value` longtext CHARACTER SET utf8,
  `field_order` int(11) DEFAULT NULL,
  `file` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_cf7dbplugin_submits`
--

INSERT INTO `wp_cf7dbplugin_submits` (`submit_time`, `form_name`, `field_name`, `field_value`, `field_order`, `file`) VALUES
('1484455134.7812', 'Contact form 1', 'your-name', 'truong lai', 0, NULL),
('1484455134.7812', 'Contact form 1', 'your-email', 'truonglaipnv@gmail.com', 1, NULL),
('1484455134.7812', 'Contact form 1', 'dropdown', '2', 2, NULL),
('1484455134.7812', 'Contact form 1', 'your-subject', 'lai', 3, NULL),
('1484455134.7812', 'Contact form 1', 'your-message', '', 4, NULL),
('1484455134.7812', 'Contact form 1', 'Submitted Login', 'TTLai', 9999, NULL),
('1484455134.7812', 'Contact form 1', 'Submitted From', '', 10000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 10, 'rating', '1'),
(2, 10, 'verified', '0'),
(3, 12, 'rating', '5'),
(4, 12, 'verified', '0'),
(5, 13, 'rating', '4'),
(6, 13, 'verified', '1'),
(7, 14, 'rating', '3'),
(8, 14, 'verified', '0'),
(9, 15, 'rating', '5'),
(10, 15, 'verified', '1'),
(11, 16, 'rating', '4'),
(12, 16, 'verified', '1'),
(13, 18, 'rating', '2'),
(14, 18, 'verified', '1'),
(15, 19, 'rating', '3'),
(16, 19, 'verified', '1'),
(17, 20, 'rating', '2'),
(18, 20, 'verified', '1'),
(19, 22, 'rating', '5'),
(20, 22, 'verified', '0'),
(21, 23, 'rating', '4'),
(22, 23, 'verified', '0'),
(23, 24, 'rating', '4'),
(24, 24, 'verified', '0'),
(25, 26, 'rating', '4'),
(26, 26, 'verified', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(4, 143, 'WooCommerce', '', '', '', '2017-01-17 08:01:13', '2017-01-17 08:01:13', 'Payment to be made upon delivery. Order status changed from Pending Payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(5, 146, 'WooCommerce', '', '', '', '2017-01-17 08:17:31', '2017-01-17 08:17:31', 'Payment to be made upon delivery. Order status changed from Pending Payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(7, 148, 'WooCommerce', '', '', '', '2017-01-17 09:42:28', '2017-01-17 09:42:28', 'Payment to be made upon delivery. Order status changed from Pending Payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(8, 149, 'WooCommerce', '', '', '', '2017-01-17 09:47:35', '2017-01-17 09:47:35', 'Payment to be made upon delivery. Order status changed from Pending Payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(9, 152, 'WooCommerce', '', '', '', '2017-01-18 00:53:32', '2017-01-18 00:53:32', 'Payment to be made upon delivery. Order status changed from Pending Payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(10, 122, 'TTLai', 'truonglaipnv@gmail.com', '', '::1', '2017-01-18 03:24:08', '2017-01-18 03:24:08', 'kaka', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36', '', 0, 1),
(11, 160, 'WooCommerce', '', '', '', '2017-01-18 04:11:40', '2017-01-18 04:11:40', 'Payment to be made upon delivery. Order status changed from Pending Payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(12, 56, 'TTLai', 'truonglaipnv@gmail.com', '', '::1', '2017-02-14 06:49:23', '2017-02-14 06:49:23', 'hjjhjh', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', 0, 1),
(13, 54, 'TTLai', 'truonglaipnv@gmail.com', '', '::1', '2017-02-14 06:51:55', '2017-02-14 06:51:55', 'dep', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', 0, 1),
(14, 49, 'TTLai', 'truonglaipnv@gmail.com', '', '::1', '2017-02-14 06:53:44', '2017-02-14 06:53:44', 'hehe', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', 0, 1),
(15, 112, 'TTLai', 'truonglaipnv@gmail.com', '', '::1', '2017-02-16 07:20:00', '2017-02-16 07:20:00', 'sđssđ', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', 0, 1),
(16, 111, 'TTLai', 'truonglaipnv@gmail.com', '', '::1', '2017-02-16 07:20:23', '2017-02-16 07:20:23', 'dsdd', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', 0, 1),
(17, 175, 'WooCommerce', '', '', '', '2017-02-16 10:09:33', '2017-02-16 10:09:33', 'Awaiting BACS payment Order status changed from Pending Payment to On Hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(18, 112, 'TTLai', 'truonglaipnv@gmail.com', '', '::1', '2017-02-16 10:30:16', '2017-02-16 10:30:16', 'jj', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', 0, 1),
(19, 112, 'TTLai', 'truonglaipnv@gmail.com', '', '::1', '2017-02-16 10:36:42', '2017-02-16 10:36:42', 'jujgh', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', 0, 1),
(20, 107, 'TTLai', 'truonglaipnv@gmail.com', '', '::1', '2017-02-16 10:48:14', '2017-02-16 10:48:14', 'đcd', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', 0, 1),
(22, 105, 'TTLai', 'truonglaipnv@gmail.com', '', '::1', '2017-02-17 03:10:57', '2017-02-17 03:10:57', 'ccc', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', 0, 1),
(23, 135, 'TTLai', 'truonglaipnv@gmail.com', '', '::1', '2017-02-17 03:11:35', '2017-02-17 03:11:35', 'ffg', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', 0, 1),
(24, 130, 'TTLai', 'truonglaipnv@gmail.com', '', '::1', '2017-02-17 03:11:50', '2017-02-17 03:11:50', 'fdfdf', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', 0, 1),
(25, 186, 'TTLai', 'truonglaipnv@gmail.com', '', '::1', '2017-02-16 11:07:13', '2017-02-16 11:07:13', 'ghgfjh', 0, '1', '', '', 0, 1),
(26, 123, 'TTLai', 'truonglaipnv@gmail.com', '', '::1', '2017-02-17 07:18:14', '2017-02-17 07:18:14', 'nice', 0, '1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_cptch_images`
--

CREATE TABLE `wp_cptch_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` char(100) NOT NULL,
  `package_id` int(11) NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_cptch_images`
--

INSERT INTO `wp_cptch_images` (`id`, `name`, `package_id`, `number`) VALUES
(1, '0.png', 1, 0),
(2, '1.png', 1, 1),
(3, '2.png', 1, 2),
(4, '3.png', 1, 3),
(5, '4.png', 1, 4),
(6, '5.png', 1, 5),
(7, '6.png', 1, 6),
(8, '7.png', 1, 7),
(9, '8.png', 1, 8),
(10, '9.png', 1, 9),
(11, '0.png', 2, 0),
(12, '1.png', 2, 1),
(13, '2.png', 2, 2),
(14, '3.png', 2, 3),
(15, '4.png', 2, 4),
(16, '5.png', 2, 5),
(17, '6.png', 2, 6),
(18, '7.png', 2, 7),
(19, '8.png', 2, 8),
(20, '9.png', 2, 9),
(21, '0.png', 3, 0),
(22, '1.png', 3, 1),
(23, '2.png', 3, 2),
(24, '3.png', 3, 3),
(25, '4.png', 3, 4),
(26, '5.png', 3, 5),
(27, '6.png', 3, 6),
(28, '7.png', 3, 7),
(29, '8.png', 3, 8),
(30, '9.png', 3, 9),
(31, '0.png', 4, 0),
(32, '1.png', 4, 1),
(33, '2.png', 4, 2),
(34, '3.png', 4, 3),
(35, '4.png', 4, 4),
(36, '5.png', 4, 5),
(37, '6.png', 4, 6),
(38, '7.png', 4, 7),
(39, '8.png', 4, 8),
(40, '9.png', 4, 9),
(41, '1.png', 5, 1),
(42, '2.png', 5, 2),
(43, '3.png', 5, 3),
(44, '4.png', 5, 4),
(45, '5.png', 5, 5),
(46, '6.png', 5, 6),
(47, '7.png', 5, 7),
(48, '8.png', 5, 8),
(49, '9.png', 5, 9),
(50, '1.png', 6, 1),
(51, '2.png', 6, 2),
(52, '3.png', 6, 3),
(53, '4.png', 6, 4),
(54, '5.png', 6, 5),
(55, '6.png', 6, 6),
(56, '7.png', 6, 7),
(57, '8.png', 6, 8),
(58, '9.png', 6, 9),
(59, '1.png', 7, 1),
(60, '2.png', 7, 2),
(61, '3.png', 7, 3),
(62, '4.png', 7, 4),
(63, '5.png', 7, 5),
(64, '6.png', 7, 6),
(65, '7.png', 7, 7),
(66, '8.png', 7, 8),
(67, '9.png', 7, 9),
(68, '1.png', 8, 1),
(69, '2.png', 8, 2),
(70, '3.png', 8, 3),
(71, '4.png', 8, 4),
(72, '5.png', 8, 5),
(73, '6.png', 8, 6),
(74, '7.png', 8, 7),
(75, '8.png', 8, 8),
(76, '9.png', 8, 9),
(77, '1.png', 9, 1),
(78, '2.png', 9, 2),
(79, '3.png', 9, 3),
(80, '4.png', 9, 4),
(81, '5.png', 9, 5),
(82, '6.png', 9, 6),
(83, '7.png', 9, 7),
(84, '8.png', 9, 8),
(85, '9.png', 9, 9),
(86, '1.png', 10, 1),
(87, '2.png', 10, 2),
(88, '3.png', 10, 3),
(89, '4.png', 10, 4),
(90, '5.png', 10, 5),
(91, '6.png', 10, 6),
(92, '7.png', 10, 7),
(93, '8.png', 10, 8),
(94, '9.png', 10, 9),
(95, '1.png', 11, 1),
(96, '2.png', 11, 2),
(97, '3.png', 11, 3),
(98, '4.png', 11, 4),
(99, '5.png', 11, 5),
(100, '6.png', 11, 6),
(101, '7.png', 11, 7),
(102, '8.png', 11, 8),
(103, '9.png', 11, 9),
(104, '1.png', 12, 1),
(105, '2.png', 12, 2),
(106, '3.png', 12, 3),
(107, '4.png', 12, 4),
(108, '5.png', 12, 5),
(109, '6.png', 12, 6),
(110, '7.png', 12, 7),
(111, '8.png', 12, 8),
(112, '9.png', 12, 9);

-- --------------------------------------------------------

--
-- Table structure for table `wp_cptch_packages`
--

CREATE TABLE `wp_cptch_packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` char(100) NOT NULL,
  `folder` char(100) NOT NULL,
  `settings` longtext NOT NULL,
  `user_settings` longtext NOT NULL,
  `add_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_cptch_packages`
--

INSERT INTO `wp_cptch_packages` (`id`, `name`, `folder`, `settings`, `user_settings`, `add_time`) VALUES
(1, 'Arabic ( black numbers - transparent background )', 'arabic_bt', '', '', '2017-03-07 09:47:13'),
(2, 'Arabic ( black numbers - white background )', 'arabic_bw', '', '', '2017-03-07 09:47:13'),
(3, 'Arabic ( white numbers - transparent background )', 'arabic_wt', '', '', '2017-03-07 09:47:13'),
(4, 'Arabic ( white numbers - black background )', 'arabic_wb', '', '', '2017-03-07 09:47:13'),
(5, 'Dots ( black dots - transparent background )', 'dots_bt', '', '', '2017-03-07 09:47:13'),
(6, 'Dots ( black dots - white background )', 'dots_bw', '', '', '2017-03-07 09:47:13'),
(7, 'Dots ( white dots - black background )', 'dots_wb', '', '', '2017-03-07 09:47:13'),
(8, 'Dots ( white dots - transparent background )', 'dots_wt', '', '', '2017-03-07 09:47:13'),
(9, 'Roman ( black numbers - transparent background )', 'roman_bt', '', '', '2017-03-07 09:47:13'),
(10, 'Roman ( black numbers - white background )', 'roman_bw', '', '', '2017-03-07 09:47:13'),
(11, 'Roman ( white numbers - black background )', 'roman_wb', '', '', '2017-03-07 09:47:13'),
(12, 'Roman ( white numbers - transparent background )', 'roman_wt', '', '', '2017-03-07 09:47:13');

-- --------------------------------------------------------

--
-- Table structure for table `wp_cptch_whitelist`
--

CREATE TABLE `wp_cptch_whitelist` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip` char(31) NOT NULL,
  `ip_from_int` bigint(20) DEFAULT NULL,
  `ip_to_int` bigint(20) DEFAULT NULL,
  `add_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_mltlngg_terms_translate`
--

CREATE TABLE `wp_mltlngg_terms_translate` (
  `ID` int(6) UNSIGNED NOT NULL,
  `term_ID` int(6) NOT NULL,
  `name` text NOT NULL,
  `language` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_mltlngg_translate`
--

CREATE TABLE `wp_mltlngg_translate` (
  `ID` int(6) UNSIGNED NOT NULL,
  `post_ID` int(6) NOT NULL,
  `post_content` longtext NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_title` text NOT NULL,
  `language` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_mltlngg_translate`
--

INSERT INTO `wp_mltlngg_translate` (`ID`, `post_ID`, `post_content`, `post_excerpt`, `post_title`, `language`) VALUES
(1, 22, 'Trong giới học sinh, sinh viên Đà thành, nói đến shop quần áo Bồ Công Anh, hầu như ai cũng biết bởi mức giá khá “mềm”, quần áo lại hợp “gu” với cả tuổi teen lẫn công sở. Bích Trâm kể: “Có những hôm shop bán được đến 1.500 áo sơ-mi. Hàng về chưa kịp cho mẫu chụp ảnh thì đã hết veo, đi lấy hàng không kịp”. Thât vậy, bây giờ ra đường hay trên facebook các bạn trẻ ở Đà Nẵng rất nhiều bạn là tín đồ trung thành của shop, giá cả rất phải chăng và mẫu mã hợp thời chính là điểm mạnh của shop.\r\nShop chuyên cung cấp những mặt hàng hợp thời trang, giá cả phải chăng nên được nhiều bạn trẻ lựa chọn. ngoài ra shop còn nhiều chính sách giảm giá liên tục.', '', 'About Us', 'en_US');

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wp', 'yes'),
(2, 'home', 'http://localhost/wp', 'yes'),
(3, 'blogname', 'TRUONG LAI', 'yes'),
(4, 'blogdescription', 'Welcome to My Shop', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'truonglaipnv@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:19:{i:0;s:24:"buddypress/bp-loader.php";i:1;s:19:"captcha/captcha.php";i:2;s:53:"contact-form-7-html-editor/contact-form-7-tinymce.php";i:3;s:58:"contact-form-7-to-database-extension/contact-form-7-db.php";i:4;s:36:"contact-form-7/wp-contact-form-7.php";i:5;s:29:"dw-reactions/dw-reactions.php";i:6;s:57:"google-language-translator/google-language-translator.php";i:7;s:29:"login-logout/login-logout.php";i:8;s:32:"subiz-live-chat/subiz-for-wp.php";i:9;s:61:"woocommerce-grid-list-toggle/woocommerce-grid-list-toggle.php";i:10;s:39:"woocommerce-vietnam-currency/plugin.php";i:11;s:27:"woocommerce/woocommerce.php";i:12;s:41:"wordpress-importer/wordpress-importer.php";i:13;s:29:"wp-mail-smtp/wp_mail_smtp.php";i:14;s:19:"wp-smtp/wp-smtp.php";i:15;s:33:"wp-user-avatar/wp-user-avatar.php";i:16;s:33:"yith-woocommerce-compare/init.php";i:17;s:36:"yith-woocommerce-quick-view/init.php";i:18;s:34:"yith-woocommerce-wishlist/init.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:57:"C:\\xampp\\htdocs\\wp/wp-content/plugins/akismet/akismet.php";i:1;s:0:"";}', 'no'),
(40, 'template', 'sparklestore', 'yes'),
(41, 'stylesheet', 'sparklestore', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:3:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}i:3;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:5:{i:2;a:2:{s:5:"title";s:7:"Find Us";s:4:"text";s:200:"<p><strong>Address</strong><br />123 Main Street<br />New York, NY 10001</p><p><strong>Hours</strong><br />Monday&mdash;Friday: 9:00AM&ndash;5:00PM<br />Saturday &amp; Sunday: 11:00AM&ndash;3:00PM</p>";}i:3;a:2:{s:5:"title";s:15:"About This Site";s:4:"text";s:85:"This may be a good place to introduce yourself and your site or include some credits.";}i:4;a:2:{s:5:"title";s:7:"Find Us";s:4:"text";s:200:"<p><strong>Address</strong><br />123 Main Street<br />New York, NY 10001</p><p><strong>Hours</strong><br />Monday&mdash;Friday: 9:00AM&ndash;5:00PM<br />Saturday &amp; Sunday: 11:00AM&ndash;3:00PM</p>";}i:5;a:2:{s:5:"title";s:15:"About This Site";s:4:"text";s:85:"This may be a good place to introduce yourself and your site or include some credits.";}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:3:{s:31:"multilanguage/multilanguage.php";s:22:"mltlngg_delete_options";s:57:"google-language-translator/google-language-translator.php";s:14:"glt_deactivate";s:19:"captcha/captcha.php";s:20:"cptch_delete_options";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '26', 'yes'),
(84, 'page_on_front', '20', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:132:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;s:12:"access_zopim";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop Manager";s:12:"capabilities";a:110:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:15:"unfiltered_html";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:3:{i:2;a:1:{s:5:"title";s:0:"";}i:3;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:3;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:3:{i:2;a:1:{s:5:"title";s:0:"";}i:3;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:9:{s:19:"wp_inactive_widgets";a:4:{i:0;s:6:"text-2";i:1;s:6:"text-3";i:2;s:6:"text-4";i:3;s:6:"text-5";}s:17:"sparklesidebarone";a:6:{i:0;s:12:"glt_widget-2";i:1;s:14:"login_logout-2";i:2;s:8:"search-2";i:3;s:17:"recent-comments-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:17:"sparklesidebartwo";a:4:{i:0;s:28:"bp_core_whos_online_widget-2";i:1;s:24:"bp_core_members_widget-2";i:2;s:22:"bp_core_login_widget-2";i:3;s:32:"bp_core_recently_active_widget-2";}s:21:"sparklemainwidgetarea";a:4:{i:0;s:46:"sparklestore_cat_collection_tabs_widget_area-2";i:1;s:34:"sparklestore_product_widget_area-2";i:2;s:43:"sparklestore_cat_with_product_widget_area-2";i:3;s:30:"sparklestore_cat_widget_area-2";}s:20:"sparklefooterareaone";a:1:{i:0;s:10:"calendar-2";}s:20:"sparklefooterareatwo";a:2:{i:0;s:10:"archives-3";i:1;s:12:"glt_widget-3";}s:22:"sparklefooterareathree";a:2:{i:0;s:8:"search-3";i:1;s:12:"categories-3";}s:21:"sparklefooterareafour";a:1:{i:0;s:6:"meta-3";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:2:{i:2;a:1:{s:5:"title";s:8:"CALENDAR";}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:11:{i:1489674182;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1489675757;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1489679866;a:1:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1489708800;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1489717066;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1489717383;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1489723094;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1489806587;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1489841758;a:1:{s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1491696000;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(105, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1484368866;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(109, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:3:"4.7";s:12:"last_checked";i:1489633435;}', 'no'),
(114, 'can_compress_scripts', '1', 'no'),
(142, 'current_theme', 'SparkleStore', 'yes'),
(143, 'theme_mods_maxstore', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1484446263;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:4:{i:0;s:6:"text-2";i:1;s:6:"text-3";i:2;s:6:"text-4";i:3;s:6:"text-5";}s:22:"maxstore-right-sidebar";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:21:"maxstore-left-sidebar";a:0:{}s:20:"maxstore-footer-area";a:0:{}}}}', 'yes'),
(144, 'theme_switched', '', 'yes'),
(146, 'theme_mods_e-shop', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1484446110;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:4:{i:0;s:6:"text-2";i:1;s:6:"text-3";i:2;s:6:"text-4";i:3;s:6:"text-5";}s:22:"maxstore-right-sidebar";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:21:"maxstore-left-sidebar";a:0:{}s:20:"maxstore-footer-area";a:0:{}}}}', 'yes'),
(159, 'theme_mods_sparklestore', 'a:25:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:2:{s:14:"sparkleprimary";i:2;s:14:"sparkletopmenu";i:2;}s:31:"sparklestore_banner_all_sliders";s:127:"[{"selectpage":"20","button_text":"Click here","button_url":""},{"selectpage":"22","button_text":"Click here","button_url":""}]";s:11:"custom_logo";i:89;s:52:"sparklestore_woocommerce_single_products_page_layout";s:9:"onsidebar";s:37:"sparklestore_social_facebook_checkbox";i:1;s:28:"sparklestore_social_facebook";s:19:"http://facebook.com";s:27:"sparklestore_social_twitter";s:18:"http://twitter.com";s:36:"sparklestore_social_twitter_checkbox";i:1;s:30:"sparklestore_social_googleplus";s:21:"http://googleplus.com";s:39:"sparklestore_social_googleplus_checkbox";i:1;s:29:"sparklestore_social_pinterest";s:20:"http://pinterest.com";s:38:"sparklestore_social_pinterest_checkbox";i:1;s:28:"sparklestore_social_linkedin";s:19:"http://Linkedin.com";s:37:"sparklestore_social_linkedin_checkbox";i:1;s:27:"sparklestore_social_youtube";s:18:"http://youtube.com";s:36:"sparklestore_social_youtube_checkbox";i:1;s:29:"sparklestore_footer_copyright";s:23:"Truonglai1809@gmail.com";s:21:"paymentlogo_image_one";s:54:"http://localhost/wp/wp-content/uploads/2017/01/211.jpg";s:21:"paymentlogo_image_two";s:54:"http://localhost/wp/wp-content/uploads/2017/01/3-1.jpg";s:23:"paymentlogo_image_three";s:57:"http://localhost/wp/wp-content/uploads/2017/01/paypal.jpg";s:22:"paymentlogo_image_four";s:57:"http://localhost/wp/wp-content/uploads/2017/01/skrill.jpg";s:22:"paymentlogo_image_five";s:54:"http://localhost/wp/wp-content/uploads/2017/01/3-1.jpg";s:21:"paymentlogo_image_six";s:57:"http://localhost/wp/wp-content/uploads/2017/01/paypal.jpg";}', 'yes'),
(160, 'widget_sparklestore_promo_pages_area', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(161, 'widget_sparklestore_full_promo_area', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(162, 'widget_sparklestore_blog_widget_area', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(163, 'widget_sparklestore_contact_info_area', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(167, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(173, 'woocommerce_default_country', 'VN:HOCHIMINH', 'yes'),
(174, 'woocommerce_allowed_countries', 'all', 'yes'),
(175, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(176, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(177, 'woocommerce_ship_to_countries', '', 'yes'),
(178, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(179, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(180, 'woocommerce_calc_taxes', 'yes', 'yes'),
(181, 'woocommerce_demo_store', 'no', 'yes'),
(182, 'woocommerce_demo_store_notice', 'This is a demo store for testing purposes &mdash; no orders shall be fulfilled.', 'no'),
(183, 'woocommerce_currency', 'VND', 'yes'),
(184, 'woocommerce_currency_pos', 'left', 'yes'),
(185, 'woocommerce_price_thousand_sep', ',', 'yes'),
(186, 'woocommerce_price_decimal_sep', '.', 'yes'),
(187, 'woocommerce_price_num_decimals', '2', 'yes'),
(188, 'woocommerce_weight_unit', 'g', 'yes'),
(189, 'woocommerce_dimension_unit', 'mm', 'yes'),
(190, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(191, 'woocommerce_review_rating_required', 'yes', 'no'),
(192, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(193, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(194, 'woocommerce_shop_page_id', '34', 'yes'),
(195, 'woocommerce_shop_page_display', '', 'yes'),
(196, 'woocommerce_category_archive_display', '', 'yes'),
(197, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(198, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(199, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(200, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(201, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(202, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"180";s:6:"height";s:3:"180";s:4:"crop";i:1;}', 'yes'),
(203, 'woocommerce_enable_lightbox', 'yes', 'yes'),
(204, 'woocommerce_manage_stock', 'yes', 'yes'),
(205, 'woocommerce_hold_stock_minutes', '60', 'no'),
(206, 'woocommerce_notify_low_stock', 'yes', 'no'),
(207, 'woocommerce_notify_no_stock', 'yes', 'no'),
(208, 'woocommerce_stock_email_recipient', 'truonglaipnv@gmail.com', 'no'),
(209, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(210, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(211, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(212, 'woocommerce_stock_format', '', 'yes'),
(213, 'woocommerce_file_download_method', 'force', 'no'),
(214, 'woocommerce_downloads_require_login', 'no', 'no'),
(215, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(216, 'woocommerce_prices_include_tax', 'no', 'yes'),
(217, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(218, 'woocommerce_shipping_tax_class', '', 'yes'),
(219, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(220, 'woocommerce_tax_classes', 'Reduced Rate\r\nZero Rate', 'yes'),
(221, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(222, 'woocommerce_tax_display_cart', 'excl', 'no'),
(223, 'woocommerce_price_display_suffix', '', 'yes'),
(224, 'woocommerce_tax_total_display', 'itemized', 'no'),
(225, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(226, 'woocommerce_shipping_cost_requires_address', 'yes', 'no'),
(227, 'woocommerce_ship_to_destination', 'shipping', 'no'),
(228, 'woocommerce_enable_coupons', 'yes', 'yes'),
(229, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(230, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(231, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(232, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(233, 'woocommerce_cart_page_id', '35', 'yes'),
(234, 'woocommerce_checkout_page_id', '36', 'yes'),
(235, 'woocommerce_terms_page_id', '', 'no'),
(236, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(237, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(238, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(239, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(240, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(241, 'woocommerce_myaccount_page_id', '37', 'yes'),
(242, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(243, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(244, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(245, 'woocommerce_registration_generate_username', 'yes', 'no'),
(246, 'woocommerce_registration_generate_password', 'no', 'no'),
(247, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(248, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(249, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(250, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(251, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(252, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(253, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(254, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(255, 'woocommerce_email_from_name', 'Website', 'no'),
(256, 'woocommerce_email_from_address', 'truonglaipnv@gmail.com', 'no'),
(257, 'woocommerce_email_header_image', '', 'no'),
(258, 'woocommerce_email_footer_text', 'Website - Powered by WooCommerce', 'no'),
(259, 'woocommerce_email_base_color', '#557da1', 'no'),
(260, 'woocommerce_email_background_color', '#f5f5f5', 'no'),
(261, 'woocommerce_email_body_background_color', '#fdfdfd', 'no'),
(262, 'woocommerce_email_text_color', '#505050', 'no'),
(263, 'woocommerce_api_enabled', 'yes', 'yes'),
(267, 'woocommerce_db_version', '2.6.11', 'yes'),
(268, 'woocommerce_version', '2.6.11', 'yes'),
(269, 'recently_activated', 'a:0:{}', 'yes'),
(270, 'woocommerce_admin_notices', 'a:1:{i:2;s:30:"paypal-braintree_install_error";}', 'yes'),
(272, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(273, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(274, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(275, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(276, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(277, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(278, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(279, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(280, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(281, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(282, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(283, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(284, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(285, 'widget_sparklestore_product_widget_area', 'a:2:{i:2;a:5:{s:26:"sparklestore_product_title";s:20:"Promotional products";s:31:"sparklestore_product_short_desc";s:0:"";s:25:"sparklestore_product_type";s:7:"on_sale";s:25:"sparklestore_woo_category";s:1:"7";s:27:"sparklestore_product_number";i:8;}s:12:"_multiwidget";i:1;}', 'yes'),
(286, 'widget_sparklestore_cat_with_product_widget_area', 'a:2:{i:2;a:6:{s:30:"sparklestore_cat_product_title";s:12:"New Products";s:35:"sparklestore_cat_product_short_desc";s:0:"";s:31:"sparklestore_cat_image_aligment";s:9:"leftalign";s:25:"sparklestore_woo_category";s:2:"11";s:31:"sparklestore_cat_product_number";i:4;s:33:"sparklestore_cat_cat_product_info";s:1:"1";}s:12:"_multiwidget";i:1;}', 'yes'),
(287, 'widget_sparklestore_cat_widget_area', 'a:2:{i:2;a:3:{s:27:"sparklestore_main_cat_title";s:8:"Category";s:27:"sparklestore_cat_short_desc";s:0:"";s:28:"sparklestore_select_category";a:4:{i:10;s:1:"1";i:9;s:1:"1";i:8;s:1:"1";i:7;s:1:"1";}}s:12:"_multiwidget";i:1;}', 'yes'),
(288, 'widget_sparklestore_cat_collection_tabs_widget_area', 'a:2:{i:2;a:2:{s:28:"sparklestore_select_category";a:4:{i:10;s:1:"1";i:9;s:1:"1";i:8;s:1:"1";i:7;s:1:"1";}s:32:"sparklestore_pro_number_products";i:4;}s:12:"_multiwidget";i:1;}', 'yes'),
(289, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(293, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(354, '_transient_timeout_geoip_::1', '1485051864', 'no'),
(355, '_transient_geoip_::1', '', 'no'),
(356, '_transient_timeout_geoip_0.0.0.0', '1485051873', 'no'),
(357, '_transient_geoip_0.0.0.0', '', 'no'),
(358, 'woocommerce_paypal-braintree_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(359, 'woocommerce_stripe_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(360, 'woocommerce_paypal_settings', 'a:2:{s:7:"enabled";s:3:"yes";s:5:"email";s:22:"truonglaipnv@gmail.com";}', 'yes'),
(361, 'woocommerce_cheque_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(362, 'woocommerce_bacs_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(363, 'woocommerce_cod_settings', 'a:1:{s:7:"enabled";s:3:"yes";}', 'yes'),
(364, 'woocommerce_allow_tracking', 'yes', 'yes'),
(365, 'woocommerce_tracker_last_send', '1489473834', 'yes'),
(367, '_transient_shipping-transient-version', '1484646378', 'yes'),
(371, 'woocommerce_admin_notice_paypal-braintree_install_error', 'PayPal by Braintree could not be installed (An unexpected error occurred. Something may be wrong with WordPress.org or this server&#8217;s configuration. If you continue to have problems, please try the <a href="https://wordpress.org/support/">support forums</a>.). <a href="http://localhost/wp/wp-admin/index.php?wc-install-plugin-redirect=woocommerce-gateway-paypal-powered-by-braintree">Please install it manually by clicking here.</a>', 'yes'),
(398, '_transient_product_query-transient-version', '1484710535', 'yes'),
(399, '_transient_product-transient-version', '1486383181', 'yes'),
(422, '_transient_timeout_wc_related_59', '1484537986', 'no'),
(423, '_transient_wc_related_59', 'a:1:{i:0;s:2:"61";}', 'no'),
(459, '_transient_timeout_wc_related_81', '1484540017', 'no'),
(460, '_transient_wc_related_81', 'a:2:{i:0;s:2:"77";i:1;s:2:"79";}', 'no'),
(473, 'CF7DBPlugin_NoSaveFields', '/.*wpcf7.*/,_wpnonce', 'yes'),
(474, 'CF7DBPlugin__version', '2.10.28', 'yes'),
(475, 'CF7DBPlugin__installed', '1', 'yes'),
(476, 'CF7DBPlugin_IntegrateWithCF7', 'true', 'yes'),
(477, 'CF7DBPlugin_GenerateSubmitTimeInCF7Email', 'false', 'yes'),
(478, 'CF7DBPlugin_IntegrateWithFSCF', 'true', 'yes'),
(479, 'CF7DBPlugin_IntegrateWithJetPackContactForm', 'true', 'yes'),
(480, 'CF7DBPlugin_IntegrateWithGravityForms', 'true', 'yes'),
(481, 'CF7DBPlugin_IntegrateWithFormidableForms', 'true', 'yes'),
(482, 'CF7DBPlugin_IntegrateWithWrContactForms', 'true', 'yes'),
(483, 'CF7DBPlugin_IntegrateWithQuform', 'true', 'yes'),
(484, 'CF7DBPlugin_IntegrateWithNinjaForms', 'true', 'yes'),
(485, 'CF7DBPlugin_IntegrateWithCalderaForms', 'true', 'yes'),
(486, 'CF7DBPlugin_IntegrateWithEnfoldThemForms', 'true', 'yes'),
(487, 'CF7DBPlugin_IntegrateWithCFormsII', 'true', 'yes'),
(488, 'CF7DBPlugin_IntegrateWithFormCraft', 'true', 'yes'),
(489, 'CF7DBPlugin_IntegrateWithVerySimpleContactForm', 'true', 'yes'),
(490, 'CF7DBPlugin_IntegrateWithFMS', 'true', 'yes'),
(491, 'CF7DBPlugin_HideAdminPanelFromNonAdmins', 'true', 'yes'),
(492, 'widget_wp_user_avatar_profile', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(493, 'avatar_default_wp_user_avatar', '', 'yes'),
(494, 'wp_user_avatar_allow_upload', '0', 'yes'),
(495, 'wp_user_avatar_disable_gravatar', '0', 'yes'),
(496, 'wp_user_avatar_edit_avatar', '1', 'yes'),
(497, 'wp_user_avatar_resize_crop', '0', 'yes'),
(498, 'wp_user_avatar_resize_h', '96', 'yes'),
(499, 'wp_user_avatar_resize_upload', '0', 'yes'),
(500, 'wp_user_avatar_resize_w', '96', 'yes'),
(501, 'wp_user_avatar_tinymce', '1', 'yes'),
(502, 'wp_user_avatar_upload_size_limit', '0', 'yes'),
(503, 'wp_user_avatar_default_avatar_updated', '1', 'yes'),
(504, 'wp_user_avatar_users_updated', '1', 'yes'),
(505, 'wp_user_avatar_media_updated', '1', 'yes'),
(506, 'wpcf7', 'a:2:{s:7:"version";s:3:"4.6";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1484454632;s:7:"version";s:3:"4.6";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(510, 'CF7DBPlugin_IntegrateWithCF7SavePageTitle', 'false', 'yes'),
(511, 'CF7DBPlugin_IntegrateWithCF7SavePageUrl', 'false', 'yes'),
(512, 'CF7DBPlugin_SaveCookieData', 'false', 'yes'),
(513, 'CF7DBPlugin_UseDataTablesJS', 'true', 'yes'),
(514, 'CF7DBPlugin_Donated', 'false', 'yes'),
(515, 'CF7DBPlugin_HorizontalScroll', 'true', 'yes'),
(516, 'CF7DBPlugin_MaxRows', '100', 'yes'),
(517, 'CF7DBPlugin_SubmitDateTimeFormat', 'Y-m-d H:i:s P', 'yes'),
(518, 'CF7DBPlugin_ShowQuery', 'false', 'yes'),
(675, '_transient_timeout_wc_related_79', '1484713010', 'no'),
(676, '_transient_wc_related_79', 'a:3:{i:0;s:2:"77";i:1;s:2:"81";i:2;s:2:"85";}', 'no'),
(678, '_transient_orders-transient-version', '1487239781', 'yes'),
(693, 'woocommerce_local_pickup_1_settings', 'a:3:{s:5:"title";s:12:"Local Pickup";s:10:"tax_status";s:7:"taxable";s:4:"cost";s:9:"200000000";}', 'yes'),
(720, 'woocommerce_local_pickup_2_settings', 'a:3:{s:5:"title";s:12:"Local Pickup";s:10:"tax_status";s:7:"taxable";s:4:"cost";s:2:"20";}', 'yes'),
(728, 'woocommerce_local_pickup_3_settings', 'a:3:{s:5:"title";s:12:"Local Pickup";s:10:"tax_status";s:7:"taxable";s:4:"cost";s:2:"20";}', 'yes'),
(739, 'woocommerce_flat_rate_6_settings', 'a:3:{s:5:"title";s:9:"Flat Rate";s:10:"tax_status";s:7:"taxable";s:4:"cost";s:7:"20. 000";}', 'yes'),
(760, 'woocommerce_gateway_order', 'a:4:{s:4:"bacs";i:0;s:6:"cheque";i:1;s:3:"cod";i:2;s:6:"paypal";i:3;}', 'yes'),
(772, 'woocommerce_local_pickup_7_settings', 'a:3:{s:5:"title";s:12:"Local Pickup";s:10:"tax_status";s:7:"taxable";s:4:"cost";s:6:"20.000";}', 'yes'),
(779, 'woocommerce_flat_rate_8_settings', 'a:3:{s:5:"title";s:9:"Flat Rate";s:10:"tax_status";s:7:"taxable";s:4:"cost";s:7:"20. 000";}', 'yes'),
(790, 'mail_from', 'truonglaipnv@gmail.com', 'yes'),
(791, 'mail_from_name', 'Truong Lai', 'yes'),
(792, 'mailer', 'smtp', 'yes'),
(793, 'mail_set_return_path', 'true', 'yes'),
(794, 'smtp_host', 'localhost', 'yes'),
(795, 'smtp_port', '25', 'yes'),
(796, 'smtp_ssl', 'ssl', 'yes'),
(797, 'smtp_auth', 'true', 'yes'),
(798, 'smtp_user', 'truonglaipnv@gmail.com', 'yes'),
(799, 'smtp_pass', 'truonglai1809', 'yes'),
(800, 'pepipost_user', '', 'yes'),
(801, 'pepipost_pass', '', 'yes'),
(802, 'pepipost_port', '2525', 'yes'),
(803, 'pepipost_ssl', 'none', 'yes'),
(814, 'wp_smtp_options', 'a:9:{s:4:"from";s:22:"truonglaipnv@gmail.com";s:8:"fromname";s:10:"Truong Lai";s:4:"host";s:14:"smtp.gmail.com";s:10:"smtpsecure";s:3:"ssl";s:4:"port";s:3:"465";s:8:"smtpauth";s:3:"yes";s:8:"username";s:22:"truonglaipnv@gmail.com";s:8:"password";s:16:"quedwesttfoculoj";s:10:"deactivate";s:0:"";}', 'yes'),
(824, '_transient_woocommerce_cache_excluded_uris', 'a:6:{i:0;s:4:"p=35";i:1;s:6:"/cart/";i:2;s:4:"p=36";i:3;s:10:"/checkout/";i:4;s:4:"p=37";i:5;s:12:"/my-account/";}', 'yes'),
(841, 'yit_recently_activated', 'a:0:{}', 'yes'),
(846, 'yith_wcwl_frontend_css_colors', 's:1159:"a:10:{s:15:"add_to_wishlist";a:3:{s:10:"background";s:7:"#333333";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#333333";}s:21:"add_to_wishlist_hover";a:3:{s:10:"background";s:7:"#4F4F4F";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#4F4F4F";}s:11:"add_to_cart";a:3:{s:10:"background";s:7:"#333333";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#333333";}s:17:"add_to_cart_hover";a:3:{s:10:"background";s:7:"#4F4F4F";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#4F4F4F";}s:14:"button_style_1";a:3:{s:10:"background";s:7:"#333333";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#333333";}s:20:"button_style_1_hover";a:3:{s:10:"background";s:7:"#4F4F4F";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#4F4F4F";}s:14:"button_style_2";a:3:{s:10:"background";s:7:"#FFFFFF";s:5:"color";s:7:"#858484";s:12:"border_color";s:7:"#c6c6c6";}s:20:"button_style_2_hover";a:3:{s:10:"background";s:7:"#4F4F4F";s:5:"color";s:7:"#FFFFFF";s:12:"border_color";s:7:"#4F4F4F";}s:14:"wishlist_table";a:3:{s:10:"background";s:7:"#FFFFFF";s:5:"color";s:7:"#6d6c6c";s:12:"border_color";s:7:"#FFFFFF";}s:7:"headers";a:1:{s:10:"background";s:7:"#F4F4F4";}}";', 'yes'),
(847, 'yith_wcwl_enabled', 'yes', 'yes'),
(848, 'yith_wcwl_wishlist_title', 'My wishlist on TRUONG LAI', 'yes'),
(849, 'yith_wcwl_wishlist_page_id', '151', 'yes'),
(850, 'yith_wcwl_redirect_cart', 'no', 'yes'),
(851, 'yith_wcwl_remove_after_add_to_cart', 'yes', 'yes'),
(852, 'yith_wcwl_add_to_wishlist_text', 'Add to Wishlist', 'yes'),
(853, 'yith_wcwl_browse_wishlist_text', 'Browse Wishlist', 'yes'),
(854, 'yith_wcwl_already_in_wishlist_text', 'The product is already in the wishlist!', 'yes'),
(855, 'yith_wcwl_product_added_text', 'Product added!', 'yes'),
(856, 'yith_wcwl_add_to_cart_text', 'Add to Cart', 'yes'),
(857, 'yith_wcwl_price_show', 'yes', 'yes'),
(858, 'yith_wcwl_add_to_cart_show', 'yes', 'yes'),
(859, 'yith_wcwl_stock_show', 'yes', 'yes'),
(860, 'yith_wcwl_show_dateadded', 'no', 'yes'),
(861, 'yith_wcwl_repeat_remove_button', 'no', 'yes'),
(862, 'yith_wcwl_use_button', 'no', 'yes'),
(863, 'yith_wcwl_custom_css', '', 'yes'),
(864, 'yith_wcwl_frontend_css', 'yes', 'yes'),
(865, 'yith_wcwl_rounded_corners', 'yes', 'yes'),
(866, 'yith_wcwl_add_to_wishlist_icon', 'none', 'yes'),
(867, 'yith_wcwl_add_to_cart_icon', 'fa-shopping-cart', 'yes'),
(868, 'yith_wcwl_share_fb', 'yes', 'yes'),
(869, 'yith_wcwl_share_twitter', 'yes', 'yes'),
(870, 'yith_wcwl_share_pinterest', 'yes', 'yes'),
(871, 'yith_wcwl_share_googleplus', 'yes', 'yes'),
(872, 'yith_wcwl_share_email', 'yes', 'yes'),
(873, 'yith_wcwl_socials_title', 'My wishlist on TRUONG LAI', 'yes'),
(874, 'yith_wcwl_socials_text', '', 'yes'),
(875, 'yith_wcwl_socials_image_url', '', 'yes'),
(876, 'yith_wfbt_enable_integration', 'yes', 'yes'),
(877, 'yith-wcwl-page-id', '151', 'yes'),
(878, 'yith_wcwl_version', '2.0.16', 'yes'),
(879, 'yith_wcwl_db_version', '2.0.0', 'yes'),
(881, 'yith_wcwl_general_videobox', 'a:7:{s:11:"plugin_name";s:25:"YITH WooCommerce Wishlist";s:18:"title_first_column";s:30:"Discover the Advanced Features";s:24:"description_first_column";s:89:"Upgrade to the PREMIUM VERSION\nof YITH WOOCOMMERCE WISHLIST to benefit from all features!";s:5:"video";a:3:{s:8:"video_id";s:9:"118797844";s:15:"video_image_url";s:95:"http://localhost/wp/wp-content/plugins/yith-woocommerce-wishlist//assets/images/video-thumb.jpg";s:17:"video_description";s:0:"";}s:19:"title_second_column";s:28:"Get Support and Pro Features";s:25:"description_second_column";s:205:"By purchasing the premium version of the plugin, you will take advantage of the advanced features of the product and you will get one year of free updates and support through our platform available 24h/24.";s:6:"button";a:2:{s:4:"href";s:78:"http://yithemes.com/themes/plugins/yith-woocommerce-wishlist/?refer_id=1030585";s:5:"title";s:28:"Get Support and Pro Features";}}', 'yes'),
(887, 'wc_glt_default', 'grid', 'yes'),
(890, 'widget_yith-woocompare-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(891, 'yith_woocompare_is_button', 'button', 'yes'),
(892, 'yith_woocompare_button_text', 'Compare', 'yes'),
(893, 'yith_woocompare_compare_button_in_product_page', 'yes', 'yes'),
(894, 'yith_woocompare_compare_button_in_products_list', 'no', 'yes'),
(895, 'yith_woocompare_auto_open', 'yes', 'yes'),
(896, 'yith_woocompare_table_text', 'Compare products', 'yes'),
(897, 'yith_woocompare_fields_attrs', 'all', 'yes'),
(898, 'yith_woocompare_price_end', 'yes', 'yes'),
(899, 'yith_woocompare_add_to_cart_end', 'no', 'yes'),
(900, 'yith_woocompare_image_size', 'a:3:{s:5:"width";i:220;s:6:"height";i:154;s:4:"crop";i:1;}', 'yes'),
(901, 'yith_woocompare_fields', 'a:8:{s:5:"image";b:1;s:5:"title";b:1;s:5:"price";b:1;s:11:"add-to-cart";b:1;s:11:"description";b:1;s:5:"stock";b:1;s:6:"weight";b:1;s:10:"dimensions";b:1;}', 'yes'),
(904, 'yith_wcqv_general_videobox', 'a:7:{s:11:"plugin_name";s:27:"YITH WooCommerce Quick View";s:18:"title_first_column";s:30:"Discover the Advanced Features";s:24:"description_first_column";s:91:"Upgrade to the PREMIUM VERSION of YITH WooCommerce Quick View to benefit from all features!";s:5:"video";a:3:{s:8:"video_id";s:9:"120573971";s:15:"video_image_url";s:117:"http://localhost/wp/wp-content/plugins/yith-woocommerce-quick-view/assets/image/video-yith-woocommerce-quick-view.jpg";s:17:"video_description";s:27:"YITH WooCommerce Quick View";}s:19:"title_second_column";s:28:"Get Support and Pro Features";s:25:"description_second_column";s:205:"By purchasing the premium version of the plugin, you will take advantage of the advanced features of the product and you will get one year of free updates and support through our platform available 24h/24.";s:6:"button";a:2:{s:4:"href";s:81:"https://yithemes.com/themes/plugins/yith-woocommerce-quick-view/?refer_id=1030585";s:5:"title";s:28:"Get Support and Pro Features";}}', 'yes'),
(905, 'yith-wcqv-enable', 'yes', 'yes'),
(906, 'yith-wcqv-enable-mobile', 'yes', 'yes'),
(907, 'yith-wcqv-button-label', 'Quick View', 'yes'),
(908, 'yith-wcqv-enable-lightbox', 'yes', 'yes'),
(909, 'yith-wcqv-background-modal', '#ffffff', 'yes'),
(910, 'yith-wcqv-close-color', '#cdcdcd', 'yes'),
(911, 'yith-wcqv-close-color-hover', '#ff0000', 'yes'),
(929, '_transient_timeout_wc_cbp_05c07f7f8b0050745eff2b4c9e807f1a', '1487301848', 'no'),
(930, '_transient_wc_cbp_05c07f7f8b0050745eff2b4c9e807f1a', 'a:18:{i:0;i:111;i:1;i:107;i:2;i:65;i:3;i:63;i:4;i:111;i:5;i:111;i:6;i:107;i:7;i:111;i:8;i:107;i:9;i:65;i:10;i:63;i:11;i:111;i:12;i:111;i:13;i:107;i:14;i:111;i:15;i:107;i:16;i:112;i:17;i:111;}', 'no'),
(932, '_transient_timeout_wc_related_85', '1484796523', 'no'),
(933, '_transient_wc_related_85', 'a:3:{i:0;s:2:"77";i:1;s:2:"79";i:2;s:2:"81";}', 'no'),
(1010, '_transient_timeout_wc_related_63', '1486712793', 'no'),
(1011, '_transient_wc_related_63', 'a:3:{i:0;s:2:"59";i:1;s:2:"61";i:2;s:2:"65";}', 'no'),
(1020, '_transient_timeout_wc_related_72', '1486712953', 'no'),
(1021, '_transient_wc_related_72', 'a:3:{i:0;s:2:"67";i:1;s:2:"69";i:2;s:2:"75";}', 'no'),
(1031, 'widget_login_logout', 'a:2:{i:2;a:14:{s:5:"title";s:0:"";s:10:"login_text";s:6:"Log in";s:11:"logout_text";s:7:"Log out";s:17:"show_welcome_text";i:0;s:12:"welcome_text";s:18:"Welcome [username]";s:13:"register_link";i:0;s:13:"register_text";s:8:"Register";s:10:"admin_link";i:0;s:10:"admin_text";s:13:"Admin section";s:17:"login_redirect_to";s:0:"";s:18:"logout_redirect_to";s:0:"";s:6:"inline";i:0;s:11:"login_extra";s:0:"";s:12:"logout_extra";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(1070, '_site_transient_timeout_wporg_theme_feature_list', '1487065601', 'no'),
(1071, '_site_transient_wporg_theme_feature_list', 'a:0:{}', 'no'),
(1074, 'widget_facebookwidget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1075, 'widget_sfp_page_plugin_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1078, '_transient_timeout_wc_related_56', '1487154001', 'no'),
(1079, '_transient_wc_related_56', 'a:0:{}', 'no'),
(1080, '_transient_timeout_wc_cbp_e198bc431139a99fc51e83ca5c704f44', '1489646964', 'no'),
(1081, '_transient_wc_cbp_e198bc431139a99fc51e83ca5c704f44', 'a:19:{i:0;i:111;i:1;i:107;i:2;i:65;i:3;i:63;i:4;i:111;i:5;i:111;i:6;i:107;i:7;i:111;i:8;i:107;i:9;i:65;i:10;i:63;i:11;i:111;i:12;i:111;i:13;i:107;i:14;i:111;i:15;i:107;i:16;i:112;i:17;i:111;i:18;i:54;}', 'no'),
(1091, '_transient_timeout_wc_related_54', '1487141516', 'no'),
(1092, '_transient_wc_related_54', 'a:0:{}', 'no'),
(1094, '_transient_timeout_wc_related_49', '1487141625', 'no'),
(1095, '_transient_wc_related_49', 'a:0:{}', 'no'),
(1099, 'widget_facebook_page_plugin_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1104, 'mltlngg_options', 'a:17:{s:21:"plugin_option_version";s:5:"1.2.1";s:17:"plugin_db_version";s:3:"0.3";s:10:"wp_version";s:3:"4.7";s:16:"default_language";s:5:"en_US";s:17:"list_of_languages";a:1:{i:0;a:4:{s:6:"locale";s:5:"en_US";s:4:"name";s:7:"English";s:6:"enable";b:1;s:8:"priority";i:1;}}s:20:"enabled_new_language";b:0;s:23:"autosave_editor_content";b:1;s:15:"wp_localization";b:1;s:17:"language_switcher";s:14:"drop-down-list";s:13:"first_install";i:1487056753;s:23:"display_settings_notice";i:1;s:6:"search";s:6:"single";s:15:"video_providers";a:53:{i:0;s:79:"[(https?://((m|www)\\.)?youtube\\.com/watch)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:1;s:82:"[(https?://((m|www)\\.)?youtube\\.com/playlist)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:2;s:59:"[(https?://youtu\\.be/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:3;s:67:"[(https?://(.+\\.)?vimeo\\.com/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:4;s:74:"[(https?://(www\\.)?dailymotion\\.com/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:5;s:57:"[(https?://dai\\.ly/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:6;s:69:"[(https?://(www\\.)?flickr\\.com/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:7;s:58:"[(https?://flic\\.kr/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:8;s:69:"[(https?://(.+\\.)?smugmug\\.com/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:9;s:73:"[(https?://(www\\.)?hulu\\.com/watch/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:10;s:73:"[(http://i*.photobucket.com/albums/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:11;s:74:"[(http://gi*.photobucket.com/groups/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:12;s:73:"[(https?://(www\\.)?scribd\\.com/doc/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:13;s:63:"[(https?://wordpress\\.tv/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:14;s:71:"[(https?://(.+\\.)?polldaddy\\.com/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:15;s:58:"[(https?://poll\\.fm/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:16;s:80:"[(https?://(www\\.)?funnyordie\\.com/videos/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:17;s:91:"[(https?://(www\\.)?twitter\\.com/\\w{1,15}/status(es)?/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:18;s:82:"[(#https?://(www\\.)?twitter\\.com/\\w{1,15}$#i)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:19;s:88:"[(#https?://(www\\.)?twitter\\.com/\\w{1,15}/likes$#i)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:20;s:85:"[(https?://(www\\.)?twitter\\.com/\\w{1,15}/lists/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:21;s:89:"[(https?://(www\\.)?twitter\\.com/\\w{1,15}/timelines/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:22;s:80:"[(https?://(www\\.)?twitter\\.com/i/moments/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:23;s:60:"[(https?://vine\\.co/v/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:24;s:73:"[(https?://(www\\.)?soundcloud\\.com/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:25;s:73:"[(https?://(.+?\\.)?slideshare\\.net/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:26;s:81:"[(https?://(www\\.)?instagr(\\.am|am\\.com)/p/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:27;s:75:"[(https?://(open|play)\\.spotify\\.com/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:28;s:67:"[(https?://(.+\\.)?imgur\\.com/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:29;s:76:"[(https?://(www\\.)?meetu(\\.ps|p\\.com)/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:30;s:81:"[(#https?://(www\\.)?issuu\\.com/.+/docs/.+#i)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:31;s:81:"[(https?://(www\\.)?collegehumor\\.com/video/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:32;s:71:"[(https?://(www\\.)?mixcloud\\.com/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:33;s:80:"[(https?://(www\\.|embed\\.)?ted\\.com/talks/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:34;s:86:"[(https?://(www\\.)?(animoto|video214)\\.com/play/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:35;s:72:"[(https?://(.+)\\.tumblr\\.com/post/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:36;s:83:"[(https?://(www\\.)?kickstarter\\.com/projects/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:37;s:57:"[(https?://kck\\.st/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:38;s:62:"[(https?://cloudup\\.com/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:39;s:75:"[(https?://(www\\.)?reverbnation\\.com/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:40;s:68:"[(https?://videopress\\.com/v/.)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:41;s:86:"[(https?://(www\\.)?reddit\\.com/r/[^/]+/comments/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:42;s:74:"[(https?://(www\\.)?speakerdeck\\.com/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:43;s:77:"[(https?://www\\.facebook\\.com/.*/posts/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:44;s:80:"[(https?://www\\.facebook\\.com/.*/activity/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:45;s:78:"[(https?://www\\.facebook\\.com/.*/photos/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:46;s:83:"[(https?://www\\.facebook\\.com/photo(s/|\\.php))(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:47;s:82:"[(https?://www\\.facebook\\.com/permalink\\.php)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:48;s:74:"[(https?://www\\.facebook\\.com/media/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:49;s:78:"[(https?://www\\.facebook\\.com/questions/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:50;s:74:"[(https?://www\\.facebook\\.com/notes/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:51;s:78:"[(https?://www\\.facebook\\.com/.*/videos/)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";i:52;s:78:"[(https?://www\\.facebook\\.com/video\\.php)(([^\\s]*)|([^	]*)|([^\n]*)|([^\\<]*))]i";}s:24:"display_alternative_link";b:0;s:14:"hide_link_slug";b:0;s:22:"suggest_feature_banner";i:1;s:20:"hide_premium_options";a:0:{}}', 'yes'),
(1105, 'widget_multi_language_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1106, 'bstwbsftwppdtplgns_options', 'a:1:{s:8:"bws_menu";a:1:{s:7:"version";a:1:{s:19:"captcha/captcha.php";s:5:"1.9.7";}}}', 'yes'),
(1113, 'polylang', 'a:12:{s:7:"browser";i:1;s:7:"rewrite";i:1;s:12:"hide_default";i:0;s:10:"force_lang";i:1;s:13:"redirect_lang";i:0;s:13:"media_support";i:1;s:9:"uninstall";i:0;s:4:"sync";a:0:{}s:10:"post_types";a:0:{}s:10:"taxonomies";a:0:{}s:7:"domains";a:0:{}s:7:"version";s:3:"2.1";}', 'yes'),
(1114, 'polylang_wpml_strings', 'a:0:{}', 'yes'),
(1115, 'widget_polylang', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1135, 'livily_livechat_option', 'all_ag9zfmNsaWNrZGVza2NoYXRyEgsSBXVzZXJzGICAoOrjltsLDA', 'yes'),
(1145, 'rewrite_rules', 'a:199:{s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:47:"(([^/]+/)*wishlist)(/(.*))?/page/([0-9]{1,})/?$";s:76:"index.php?pagename=$matches[1]&wishlist-action=$matches[4]&paged=$matches[5]";s:30:"(([^/]+/)*wishlist)(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&wishlist-action=$matches[4]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:55:"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:50:"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:31:"product-category/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:43:"product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:25:"product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:28:"product-tag/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"product/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"product/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"product_variation/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"product_variation/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"product_variation/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"product_variation/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"product_variation/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"product_variation/([^/]+)/embed/?$";s:50:"index.php?product_variation=$matches[1]&embed=true";s:38:"product_variation/([^/]+)/trackback/?$";s:44:"index.php?product_variation=$matches[1]&tb=1";s:46:"product_variation/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&paged=$matches[2]";s:53:"product_variation/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?product_variation=$matches[1]&cpage=$matches[2]";s:43:"product_variation/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?product_variation=$matches[1]&wc-api=$matches[3]";s:49:"product_variation/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"product_variation/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"product_variation/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?product_variation=$matches[1]&page=$matches[2]";s:34:"product_variation/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"product_variation/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"product_variation/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"product_variation/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"product_variation/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:45:"shop_order_refund/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:55:"shop_order_refund/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:75:"shop_order_refund/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:70:"shop_order_refund/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:51:"shop_order_refund/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:34:"shop_order_refund/([^/]+)/embed/?$";s:50:"index.php?shop_order_refund=$matches[1]&embed=true";s:38:"shop_order_refund/([^/]+)/trackback/?$";s:44:"index.php?shop_order_refund=$matches[1]&tb=1";s:46:"shop_order_refund/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&paged=$matches[2]";s:53:"shop_order_refund/([^/]+)/comment-page-([0-9]{1,})/?$";s:57:"index.php?shop_order_refund=$matches[1]&cpage=$matches[2]";s:43:"shop_order_refund/([^/]+)/wc-api(/(.*))?/?$";s:58:"index.php?shop_order_refund=$matches[1]&wc-api=$matches[3]";s:49:"shop_order_refund/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:60:"shop_order_refund/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"shop_order_refund/([^/]+)(?:/([0-9]+))?/?$";s:56:"index.php?shop_order_refund=$matches[1]&page=$matches[2]";s:34:"shop_order_refund/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"shop_order_refund/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"shop_order_refund/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"shop_order_refund/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"shop_order_refund/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=20&cpage=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:62:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$";s:99:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]";s:62:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:73:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:25:"(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:28:"(.?.+?)/downloads(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&downloads=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:34:"(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:40:"(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:45:"(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(1199, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1489802987;}', 'no'),
(1206, 'dw_reactions', 'a:5:{s:6:"enable";s:2:"on";s:12:"enable_count";s:2:"on";s:18:"anonymous_can_vote";s:2:"on";s:8:"position";a:2:{s:5:"above";s:2:"on";s:5:"below";s:2:"on";}s:5:"pages";a:4:{s:4:"home";s:2:"on";s:7:"archive";s:2:"on";s:5:"posts";s:2:"on";s:5:"pages";s:2:"on";}}', 'yes'),
(1225, 'fbcomments', 'a:19:{s:4:"fbml";s:2:"on";s:9:"opengraph";s:3:"off";s:4:"fbns";s:3:"off";s:5:"html5";s:2:"on";s:5:"posts";s:2:"on";s:5:"pages";s:3:"off";s:8:"homepage";s:3:"off";s:5:"appID";s:0:"";s:4:"mods";s:0:"";s:3:"num";s:1:"5";s:5:"count";s:2:"on";s:8:"countmsg";s:8:"comments";s:5:"title";s:8:"Comments";s:10:"titleclass";s:0:"";s:5:"width";s:4:"100%";s:10:"countstyle";s:0:"";s:8:"linklove";s:3:"off";s:6:"scheme";s:5:"light";s:8:"language";s:5:"en_US";}', 'yes'),
(1226, '_transient_timeout_wc_related_122', '1487206909', 'no'),
(1227, '_transient_wc_related_122', 'a:0:{}', 'no'),
(1238, 'googlelanguagetranslator_active', '1', 'yes'),
(1239, 'googlelanguagetranslator_language', 'en', 'yes'),
(1240, 'googlelanguagetranslator_language_option', 'all', 'yes'),
(1241, 'googlelanguagetranslator_flags', 'show_flags', 'yes'),
(1242, 'language_display_settings', 'a:1:{s:2:"en";i:1;}', 'yes'),
(1243, 'flag_display_settings', 'a:1:{s:7:"flag-en";i:1;}', 'yes'),
(1244, 'googlelanguagetranslator_translatebox', 'yes', 'yes'),
(1245, 'googlelanguagetranslator_display', 'Vertical', 'yes'),
(1246, 'googlelanguagetranslator_toolbar', 'Yes', 'yes'),
(1247, 'googlelanguagetranslator_showbranding', 'Yes', 'yes'),
(1248, 'googlelanguagetranslator_flags_alignment', 'flags_left', 'yes'),
(1249, 'googlelanguagetranslator_analytics', '0', 'yes'),
(1250, 'googlelanguagetranslator_analytics_id', '', 'yes'),
(1251, 'googlelanguagetranslator_css', '', 'yes'),
(1252, 'googlelanguagetranslator_multilanguage', '0', 'yes'),
(1253, 'googlelanguagetranslator_floating_widget', 'yes', 'yes'),
(1254, 'googlelanguagetranslator_flag_size', '18', 'yes'),
(1255, 'googlelanguagetranslator_flags_order', '', 'yes'),
(1256, 'googlelanguagetranslator_english_flag_choice', '', 'yes'),
(1257, 'googlelanguagetranslator_spanish_flag_choice', '', 'yes'),
(1258, 'googlelanguagetranslator_portuguese_flag_choice', '', 'yes'),
(1259, 'googlelanguagetranslator_floating_widget_text', 'Translate &raquo;', 'yes'),
(1260, 'googlelanguagetranslator_floating_widget_text_allow_translation', '0', 'yes'),
(1261, 'widget_glt_widget', 'a:3:{i:2;a:1:{s:5:"title";s:14:"Multy Language";}i:3;a:1:{s:5:"title";s:14:"Multy Language";}s:12:"_multiwidget";i:1;}', 'yes'),
(1276, '_transient_timeout_wc_related_112', '1487328895', 'no'),
(1277, '_transient_wc_related_112', 'a:3:{i:0;s:3:"105";i:1;s:3:"107";i:2;s:3:"111";}', 'no'),
(1290, '_transient_timeout_wc_shipping_method_count_1_1484646378', '1489831684', 'no'),
(1291, '_transient_wc_shipping_method_count_1_1484646378', '1', 'no'),
(1309, '_transient_timeout_wc_cbp_abb29a18309f04517d91de2c93f96175', '1489833017', 'no'),
(1310, '_transient_wc_cbp_abb29a18309f04517d91de2c93f96175', 'a:19:{i:0;i:111;i:1;i:107;i:2;i:65;i:3;i:63;i:4;i:111;i:5;i:111;i:6;i:107;i:7;i:111;i:8;i:107;i:9;i:65;i:10;i:63;i:11;i:111;i:12;i:111;i:13;i:107;i:14;i:111;i:15;i:107;i:16;i:112;i:17;i:111;i:18;i:54;}', 'no'),
(1318, 'sharebar_auto_posts', '1', 'yes'),
(1319, 'sharebar_auto_pages', '1', 'yes'),
(1320, 'sharebar_horizontal', '1', 'yes'),
(1321, 'sharebar_credit', '0', 'yes'),
(1322, 'sharebar_minwidth', '1000', 'yes'),
(1323, 'sharebar_position', 'left', 'yes'),
(1324, 'sharebar_leftoffset', '20', 'yes'),
(1325, 'sharebar_rightoffset', '10', 'yes'),
(1326, 'sharebar_swidth', '65', 'yes'),
(1327, 'sharebar_twitter_username', 'ThinkDevGrow', 'yes'),
(1328, 'sharebar_bg', '#ffffff', 'yes'),
(1329, 'sharebar_border', '#cccccc', 'yes'),
(1330, '_transient_timeout_wc_related_107', '1487328495', 'no'),
(1331, '_transient_wc_related_107', 'a:3:{i:0;s:3:"105";i:1;s:3:"111";i:2;s:3:"112";}', 'no'),
(1362, '_transient_timeout_wc_related_105', '1487387458', 'no'),
(1363, '_transient_wc_related_105', 'a:3:{i:0;s:3:"107";i:1;s:3:"111";i:2;s:3:"112";}', 'no'),
(1365, '_transient_timeout_wc_related_135', '1487387496', 'no'),
(1366, '_transient_wc_related_135', 'a:2:{i:0;s:3:"123";i:1;s:3:"130";}', 'no'),
(1368, '_transient_timeout_wc_related_130', '1487387511', 'no'),
(1369, '_transient_wc_related_130', 'a:2:{i:0;s:3:"123";i:1;s:3:"135";}', 'no'),
(1373, '_transient_timeout_wc_low_stock_count', '1489898632', 'no'),
(1374, '_transient_wc_low_stock_count', '0', 'no'),
(1375, '_transient_timeout_wc_outofstock_count', '1489898633', 'no'),
(1376, '_transient_wc_outofstock_count', '0', 'no'),
(1394, 'category_children', 'a:0:{}', 'yes'),
(1395, 'product_cat_children', 'a:0:{}', 'yes'),
(1407, '_transient_timeout_wc_related_123', '1487402309', 'no'),
(1408, '_transient_wc_related_123', 'a:2:{i:0;s:3:"130";i:1;s:3:"135";}', 'no'),
(1409, '_transient_wc_count_comments', 'O:8:"stdClass":7:{s:8:"approved";s:2:"14";s:14:"total_comments";i:14;s:3:"all";i:14;s:9:"moderated";i:0;s:4:"spam";i:0;s:5:"trash";i:0;s:12:"post-trashed";i:0;}', 'yes'),
(1413, 'bp-deactivated-components', 'a:0:{}', 'yes'),
(1414, 'bb-config-location', 'C:\\xampp\\htdocs\\wp/bb-config.php', 'yes'),
(1415, 'bp-xprofile-base-group-name', 'Base', 'yes'),
(1416, 'bp-xprofile-fullname-field-name', 'Name', 'yes'),
(1417, 'bp-blogs-first-install', '', 'yes'),
(1418, 'bp-disable-profile-sync', '', 'yes'),
(1419, 'hide-loggedout-adminbar', '', 'yes'),
(1420, 'bp-disable-avatar-uploads', '', 'yes'),
(1421, 'bp-disable-cover-image-uploads', '', 'yes'),
(1422, 'bp-disable-group-avatar-uploads', '', 'yes'),
(1423, 'bp-disable-group-cover-image-uploads', '', 'yes'),
(1424, 'bp-disable-account-deletion', '', 'yes'),
(1425, 'bp-disable-blogforum-comments', '1', 'yes'),
(1426, '_bp_theme_package_id', 'legacy', 'yes'),
(1427, 'bp-emails-unsubscribe-salt', 'X2ZsfTxGL3cgQ0o/W0hxa312OmpFPFRDQ2ppdmt8Jll0PVo6I2Q9c3J5Pko+UUF0bjUyfiEvU0plYikhVEskKw==', 'yes'),
(1428, 'bp_restrict_group_creation', '', 'yes'),
(1429, '_bp_enable_akismet', '1', 'yes'),
(1430, '_bp_enable_heartbeat_refresh', '1', 'yes'),
(1431, '_bp_force_buddybar', '', 'yes'),
(1432, '_bp_retain_bp_default', '', 'yes'),
(1433, '_bp_ignore_deprecated_code', '1', 'yes'),
(1434, 'widget_bp_core_login_widget', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(1435, 'widget_bp_core_members_widget', 'a:2:{i:2;a:4:{s:5:"title";s:7:"Members";s:11:"max_members";s:1:"5";s:14:"member_default";s:6:"active";s:10:"link_title";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(1436, 'widget_bp_core_whos_online_widget', 'a:2:{i:2;a:2:{s:5:"title";s:12:"Who''s Online";s:11:"max_members";s:2:"15";}s:12:"_multiwidget";i:1;}', 'yes'),
(1437, 'widget_bp_core_recently_active_widget', 'a:2:{i:2;a:2:{s:5:"title";s:23:"Recently Active Members";s:11:"max_members";s:2:"15";}s:12:"_multiwidget";i:1;}', 'yes'),
(1438, 'widget_bp_groups_widget', '', 'yes'),
(1439, 'widget_bp_messages_sitewide_notices_widget', '', 'yes'),
(1444, 'bp-active-components', 'a:5:{s:8:"activity";i:1;s:7:"members";i:1;s:8:"settings";i:1;s:8:"xprofile";i:1;s:13:"notifications";i:1;}', 'yes'),
(1445, 'bp-pages', 'a:2:{s:8:"activity";i:203;s:7:"members";i:204;}', 'yes'),
(1446, '_bp_db_version', '11105', 'yes'),
(1448, '_transient_bp_active_member_count', '1', 'yes'),
(1519, 'ngg_run_freemius', '1', 'yes'),
(1520, 'fs_active_plugins', 'O:8:"stdClass":2:{s:7:"plugins";a:1:{s:24:"nextgen-gallery/freemius";O:8:"stdClass":3:{s:7:"version";s:5:"1.2.1";s:9:"timestamp";i:1488423681;s:11:"plugin_path";s:9:"hello.php";}}s:6:"newest";O:8:"stdClass":5:{s:11:"plugin_path";s:9:"hello.php";s:8:"sdk_path";s:24:"nextgen-gallery/freemius";s:7:"version";s:5:"1.2.1";s:13:"in_activation";b:1;s:9:"timestamp";i:1488423681;}}', 'yes'),
(1521, 'fs_debug_mode', '', 'yes'),
(1522, 'fs_accounts', 'a:4:{s:11:"plugin_data";a:1:{s:15:"nextgen-gallery";a:11:{s:16:"plugin_main_file";O:8:"stdClass":1:{s:4:"path";s:67:"C:/xampp/htdocs/wp/wp-content/plugins/nextgen-gallery/nggallery.php";}s:17:"install_timestamp";i:1488423681;s:16:"sdk_last_version";N;s:11:"sdk_version";s:5:"1.2.1";s:16:"sdk_upgrade_mode";b:1;s:18:"sdk_downgrade_mode";b:0;s:19:"plugin_last_version";N;s:14:"plugin_version";s:6:"2.1.79";s:19:"plugin_upgrade_mode";b:1;s:21:"plugin_downgrade_mode";b:0;s:21:"is_plugin_new_install";b:1;}}s:13:"file_slug_map";a:1:{s:29:"nextgen-gallery/nggallery.php";s:15:"nextgen-gallery";}s:7:"plugins";a:1:{s:15:"nextgen-gallery";O:9:"FS_Plugin":15:{s:16:"parent_plugin_id";N;s:5:"title";s:15:"NextGEN Gallery";s:4:"slug";s:15:"nextgen-gallery";s:4:"file";s:29:"nextgen-gallery/nggallery.php";s:7:"version";s:6:"2.1.79";s:11:"auto_update";N;s:4:"info";N;s:10:"is_premium";b:0;s:7:"is_live";b:1;s:10:"public_key";s:32:"pk_009356711cd548837f074e1ef60a4";s:10:"secret_key";N;s:2:"id";s:3:"266";s:7:"updated";N;s:7:"created";N;s:22:"\0FS_Entity\0_is_updated";b:1;}}s:9:"unique_id";s:32:"90d6cf8bad8589ad1fbcc76431e00e43";}', 'yes'),
(1523, 'fs_api_cache', 'a:0:{}', 'yes'),
(1524, 'fs_options', 'a:1:{s:14:"api_force_http";b:1;}', 'yes'),
(1529, 'ngg_transient_groups', 'a:3:{s:9:"__counter";i:3;s:15:"col_in_wp_posts";a:2:{s:2:"id";i:2;s:7:"enabled";b:1;}s:21:"col_in_wp_ngg_gallery";a:2:{s:2:"id";i:3;s:7:"enabled";b:1;}}', 'yes'),
(1531, '_transient_timeout_2___1395736393', '1488438474', 'no'),
(1533, '_transient_2___1395736393', '["ID","post_author","post_date","post_date_gmt","post_content","post_title","post_excerpt","post_status","comment_status","ping_status","post_password","post_name","to_ping","pinged","post_modified","post_modified_gmt","post_content_filtered","post_parent","guid","menu_order","post_type","post_mime_type","comment_count"]', 'no'),
(1536, '_transient_timeout_3___1395736393', '1488438596', 'no'),
(1537, '_transient_3___1395736393', '[]', 'no'),
(1540, '_transient_external_ip_address_::1', '0.0.0.0', 'no'),
(1544, '_transient_timeout_yit_panel_sidebar_remote_widgets', '1488966255', 'no'),
(1545, '_transient_yit_panel_sidebar_remote_widgets', 'a:0:{}', 'no'),
(1546, '_transient_timeout_yit_panel_sidebar_remote_widgets_update', '1488966255', 'no'),
(1547, '_transient_yit_panel_sidebar_remote_widgets_update', '1', 'no'),
(1548, '_transient_timeout_wc_report_sales_by_date', '1488966262', 'no'),
(1549, '_transient_wc_report_sales_by_date', 'a:7:{s:32:"c78ffa49b2ed49eeadfd3928c957cc29";a:0:{}s:32:"00ab4d9be196324b45dca71e011c4a9d";a:0:{}s:32:"161bb27f4844095a182ee0b95c1d645a";a:0:{}s:32:"9722f39349be8f952f628ca17acfb76a";N;s:32:"f154d4c0fec4f4f1190b4e2612662e8b";a:0:{}s:32:"e144c08952fdf952e345e0c54ff8f983";a:0:{}s:32:"c1da0af2115abdf20bd3eca2bb497801";a:0:{}}', 'no'),
(1550, '_transient_timeout_wc_admin_report', '1488966262', 'no'),
(1551, '_transient_wc_admin_report', 'a:1:{s:32:"57a9e0c8fbd4bc53f635d8b59972026b";a:0:{}}', 'no'),
(1552, '_transient_timeout_plugin_slugs', '1488966456', 'no'),
(1553, '_transient_plugin_slugs', 'a:23:{i:0;s:19:"akismet/akismet.php";i:1;s:24:"buddypress/bp-loader.php";i:2;s:19:"captcha/captcha.php";i:3;s:36:"contact-form-7/wp-contact-form-7.php";i:4;s:53:"contact-form-7-html-editor/contact-form-7-tinymce.php";i:5;s:58:"contact-form-7-to-database-extension/contact-form-7-db.php";i:6;s:29:"dw-reactions/dw-reactions.php";i:7;s:46:"facebook-comments-plugin/facebook-comments.php";i:8;s:57:"google-language-translator/google-language-translator.php";i:9;s:9:"hello.php";i:10;s:29:"login-logout/login-logout.php";i:11;s:29:"nextgen-gallery/nggallery.php";i:12;s:32:"subiz-live-chat/subiz-for-wp.php";i:13;s:27:"woocommerce/woocommerce.php";i:14;s:61:"woocommerce-grid-list-toggle/woocommerce-grid-list-toggle.php";i:15;s:39:"woocommerce-vietnam-currency/plugin.php";i:16;s:41:"wordpress-importer/wordpress-importer.php";i:17;s:29:"wp-mail-smtp/wp_mail_smtp.php";i:18;s:19:"wp-smtp/wp-smtp.php";i:19;s:33:"wp-user-avatar/wp-user-avatar.php";i:20;s:33:"yith-woocommerce-compare/init.php";i:21;s:36:"yith-woocommerce-quick-view/init.php";i:22;s:34:"yith-woocommerce-wishlist/init.php";}', 'no'),
(1554, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1488923095', 'no'),
(1555, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 28: Operation timed out after 10000 milliseconds with 0 bytes received</p></div><div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 7: Failed to connect to planet.wordpress.org port 443: Timed out</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(1559, 'cptch_options', 'a:29:{s:21:"plugin_option_version";s:5:"4.2.8";s:17:"plugin_db_version";s:3:"1.4";s:7:"str_key";a:2:{s:4:"time";s:0:"";s:3:"key";s:0:"";}s:12:"math_actions";a:3:{i:0;s:4:"plus";i:1;s:5:"minus";i:2;s:15:"multiplications";}s:14:"operand_format";a:3:{i:0;s:7:"numbers";i:1;s:5:"words";i:2;s:6:"images";}s:5:"title";s:0:"";s:15:"required_symbol";s:1:"*";s:21:"display_reload_button";b:1;s:14:"enlarge_images";b:0;s:13:"used_packages";a:4:{i:0;i:2;i:1;i:4;i:2;i:6;i:3;i:7;}s:17:"enable_time_limit";b:0;s:10:"time_limit";i:120;s:9:"no_answer";s:29:"Please enter a CAPTCHA value.";s:12:"wrong_answer";s:35:"Please enter a valid CAPTCHA value.";s:14:"time_limit_off";s:60:"Time limit is exhausted. Please enter a CAPTCHA value again.";s:21:"time_limit_off_notice";s:51:"Time limit is exhausted. Please reload the CAPTCHA.";s:17:"whitelist_message";s:25:"You are in the whitelist.";s:13:"load_via_ajax";b:0;s:28:"use_limit_attempts_whitelist";b:0;s:23:"display_settings_notice";i:1;s:22:"suggest_feature_banner";i:1;s:16:"cptch_label_form";s:0:"";s:21:"cptch_required_symbol";s:1:"*";s:16:"cptch_login_form";s:1:"1";s:19:"cptch_comments_form";s:1:"1";s:19:"cptch_register_form";s:1:"1";s:24:"cptch_lost_password_form";s:1:"1";s:18:"cptch_contact_form";s:1:"0";s:5:"forms";a:5:{s:8:"wp_login";a:2:{s:6:"enable";b:1;s:20:"hide_from_registered";b:0;}s:11:"wp_register";a:2:{s:6:"enable";b:1;s:20:"hide_from_registered";b:0;}s:16:"wp_lost_password";a:2:{s:6:"enable";b:1;s:20:"hide_from_registered";b:0;}s:11:"wp_comments";a:2:{s:6:"enable";b:1;s:20:"hide_from_registered";b:1;}s:11:"bws_contact";a:2:{s:6:"enable";b:0;s:20:"hide_from_registered";b:0;}}}', 'yes'),
(1560, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1489660306;}', 'no'),
(1561, '_transient_is_multi_author', '0', 'yes'),
(1564, '_transient_timeout_wc_related_111', '1488966530', 'no'),
(1565, '_transient_wc_related_111', 'a:3:{i:0;s:3:"105";i:1;s:3:"107";i:2;s:3:"112";}', 'no'),
(1580, '_transient_doing_cron', '1491615719.0937759876251220703125', 'yes'),
(1585, '_transient_timeout_yith_wcwl_user_default_count_1', '1490172752', 'no'),
(1586, '_transient_yith_wcwl_user_default_count_1', '3', 'no'),
(1597, '_transient_timeout_wc_term_counts', '1493178564', 'no'),
(1598, '_transient_wc_term_counts', 'a:5:{i:11;s:1:"3";i:10;s:1:"4";i:9;s:1:"4";i:8;s:1:"4";i:7;s:1:"4";}', 'no'),
(1599, '_site_transient_timeout_theme_roots', '1491617520', 'no'),
(1600, '_site_transient_theme_roots', 'a:6:{s:6:"e-shop";s:7:"/themes";s:8:"maxstore";s:7:"/themes";s:12:"sparklestore";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(29, 16, '_wp_attached_file', '2017/01/sparklestore.1.0.5.zip'),
(30, 16, '_wp_attachment_context', 'upgrader'),
(36, 20, '_edit_last', '1'),
(37, 20, '_edit_lock', '1486634504:1'),
(38, 20, '_wp_page_template', 'template-store.php'),
(39, 20, 'sparklestore_page_layouts', 'rightsidebar'),
(40, 22, '_edit_last', '1'),
(41, 22, '_wp_page_template', 'default'),
(42, 22, 'sparklestore_page_layouts', 'rightsidebar'),
(43, 22, '_edit_lock', '1487811982:1'),
(44, 24, '_edit_last', '1'),
(45, 24, '_wp_page_template', 'default'),
(46, 24, 'sparklestore_page_layouts', 'rightsidebar'),
(47, 24, '_edit_lock', '1484454950:1'),
(48, 26, '_edit_last', '1'),
(49, 26, '_wp_page_template', 'default'),
(50, 26, 'sparklestore_page_layouts', 'rightsidebar'),
(51, 26, '_edit_lock', '1484561005:1'),
(52, 28, '_menu_item_type', 'post_type'),
(53, 28, '_menu_item_menu_item_parent', '0'),
(54, 28, '_menu_item_object_id', '26'),
(55, 28, '_menu_item_object', 'page'),
(56, 28, '_menu_item_target', ''),
(57, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(58, 28, '_menu_item_xfn', ''),
(59, 28, '_menu_item_url', ''),
(61, 29, '_menu_item_type', 'post_type'),
(62, 29, '_menu_item_menu_item_parent', '0'),
(63, 29, '_menu_item_object_id', '24'),
(64, 29, '_menu_item_object', 'page'),
(65, 29, '_menu_item_target', ''),
(66, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(67, 29, '_menu_item_xfn', ''),
(68, 29, '_menu_item_url', ''),
(70, 30, '_menu_item_type', 'post_type'),
(71, 30, '_menu_item_menu_item_parent', '0'),
(72, 30, '_menu_item_object_id', '22'),
(73, 30, '_menu_item_object', 'page'),
(74, 30, '_menu_item_target', ''),
(75, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(76, 30, '_menu_item_xfn', ''),
(77, 30, '_menu_item_url', ''),
(79, 31, '_menu_item_type', 'post_type'),
(80, 31, '_menu_item_menu_item_parent', '0'),
(81, 31, '_menu_item_object_id', '20'),
(82, 31, '_menu_item_object', 'page'),
(83, 31, '_menu_item_target', ''),
(84, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(85, 31, '_menu_item_xfn', ''),
(86, 31, '_menu_item_url', ''),
(94, 40, '_wp_attached_file', '2017/01/slide-img2.jpg'),
(95, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1260;s:6:"height";i:752;s:4:"file";s:22:"2017/01/slide-img2.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"slide-img2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"slide-img2-300x179.jpg";s:5:"width";i:300;s:6:"height";i:179;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"slide-img2-768x458.jpg";s:5:"width";i:768;s:6:"height";i:458;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"slide-img2-1024x611.jpg";s:5:"width";i:1024;s:6:"height";i:611;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"slide-img2-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"slide-img2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:22:"slide-img2-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:19:"sparklestore-slider";a:4:{s:4:"file";s:23:"slide-img2-1260x520.jpg";s:5:"width";i:1260;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:22:"slide-img2-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:22:"slide-img2-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:22:"slide-img2-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:22:"slide-img2-760x385.jpg";s:5:"width";i:760;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(96, 20, '_thumbnail_id', '43'),
(97, 41, '_wp_attached_file', '2017/01/slide-img3.jpg'),
(98, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1260;s:6:"height";i:752;s:4:"file";s:22:"2017/01/slide-img3.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"slide-img3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"slide-img3-300x179.jpg";s:5:"width";i:300;s:6:"height";i:179;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"slide-img3-768x458.jpg";s:5:"width";i:768;s:6:"height";i:458;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"slide-img3-1024x611.jpg";s:5:"width";i:1024;s:6:"height";i:611;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"slide-img3-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"slide-img3-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:22:"slide-img3-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:19:"sparklestore-slider";a:4:{s:4:"file";s:23:"slide-img3-1260x520.jpg";s:5:"width";i:1260;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:22:"slide-img3-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:22:"slide-img3-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:22:"slide-img3-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:22:"slide-img3-760x385.jpg";s:5:"width";i:760;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(99, 42, '_wp_attached_file', '2017/01/slide-img.jpg'),
(100, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1260;s:6:"height";i:752;s:4:"file";s:21:"2017/01/slide-img.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"slide-img-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"slide-img-300x179.jpg";s:5:"width";i:300;s:6:"height";i:179;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"slide-img-768x458.jpg";s:5:"width";i:768;s:6:"height";i:458;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"slide-img-1024x611.jpg";s:5:"width";i:1024;s:6:"height";i:611;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"slide-img-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"slide-img-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:21:"slide-img-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:19:"sparklestore-slider";a:4:{s:4:"file";s:22:"slide-img-1260x520.jpg";s:5:"width";i:1260;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:21:"slide-img-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:21:"slide-img-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:21:"slide-img-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:21:"slide-img-760x385.jpg";s:5:"width";i:760;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(101, 43, '_wp_attached_file', '2017/01/slider_3.jpg'),
(102, 43, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:783;s:6:"height";i:450;s:4:"file";s:20:"2017/01/slider_3.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"slider_3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"slider_3-300x172.jpg";s:5:"width";i:300;s:6:"height";i:172;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"slider_3-768x441.jpg";s:5:"width";i:768;s:6:"height";i:441;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"slider_3-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"slider_3-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"slider_3-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:20:"slider_3-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:20:"slider_3-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:20:"slider_3-300x450.jpg";s:5:"width";i:300;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:20:"slider_3-760x385.jpg";s:5:"width";i:760;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(103, 44, '_wp_attached_file', '2017/01/slider_2.jpg'),
(104, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1092;s:6:"height";i:628;s:4:"file";s:20:"2017/01/slider_2.jpg";s:5:"sizes";a:12:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"slider_2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"slider_2-300x173.jpg";s:5:"width";i:300;s:6:"height";i:173;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"slider_2-768x442.jpg";s:5:"width";i:768;s:6:"height";i:442;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"slider_2-1024x589.jpg";s:5:"width";i:1024;s:6:"height";i:589;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"slider_2-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"slider_2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"slider_2-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:19:"sparklestore-slider";a:4:{s:4:"file";s:21:"slider_2-1092x520.jpg";s:5:"width";i:1092;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:20:"slider_2-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:20:"slider_2-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:20:"slider_2-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:20:"slider_2-760x385.jpg";s:5:"width";i:760;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(105, 26, '_thumbnail_id', '44'),
(114, 22, '_thumbnail_id', '44'),
(117, 49, '_edit_last', '1'),
(118, 49, '_edit_lock', '1484449255:1'),
(119, 50, '_wp_attached_file', '2017/01/0405-6-2.jpg'),
(120, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:345;s:6:"height";i:480;s:4:"file";s:20:"2017/01/0405-6-2.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"0405-6-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"0405-6-2-216x300.jpg";s:5:"width";i:216;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"0405-6-2-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"0405-6-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:20:"0405-6-2-345x230.jpg";s:5:"width";i:345;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:20:"0405-6-2-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:20:"0405-6-2-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:20:"0405-6-2-345x385.jpg";s:5:"width";i:345;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(121, 49, '_visibility', 'visible'),
(122, 49, '_stock_status', 'instock'),
(123, 49, '_thumbnail_id', '50'),
(124, 49, 'total_sales', '0'),
(125, 49, '_downloadable', 'no'),
(126, 49, '_virtual', 'no'),
(127, 49, '_tax_status', 'taxable'),
(128, 49, '_tax_class', ''),
(129, 49, '_purchase_note', ''),
(130, 49, '_featured', 'no'),
(131, 49, '_weight', ''),
(132, 49, '_length', ''),
(133, 49, '_width', ''),
(134, 49, '_height', ''),
(135, 49, '_sku', ''),
(136, 49, '_product_attributes', 'a:0:{}'),
(137, 49, '_regular_price', '1500.000'),
(138, 49, '_sale_price', '1200.000'),
(139, 49, '_sale_price_dates_from', ''),
(140, 49, '_sale_price_dates_to', ''),
(141, 49, '_price', '1200.000'),
(142, 49, '_sold_individually', ''),
(143, 49, '_manage_stock', 'no'),
(144, 49, '_backorders', 'no'),
(145, 49, '_stock', ''),
(146, 49, '_upsell_ids', 'a:0:{}'),
(147, 49, '_crosssell_ids', 'a:0:{}'),
(148, 49, '_product_version', '2.6.11'),
(149, 49, '_product_image_gallery', ''),
(153, 51, '_wp_attached_file', '2017/01/0605-1-3.jpg'),
(154, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:345;s:6:"height";i:480;s:4:"file";s:20:"2017/01/0605-1-3.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"0605-1-3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"0605-1-3-216x300.jpg";s:5:"width";i:216;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"0605-1-3-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"0605-1-3-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:20:"0605-1-3-345x230.jpg";s:5:"width";i:345;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:20:"0605-1-3-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:20:"0605-1-3-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:20:"0605-1-3-345x385.jpg";s:5:"width";i:345;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(157, 53, '_wp_attached_file', '2017/01/0405-4-4.jpg'),
(158, 53, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:344;s:6:"height";i:480;s:4:"file";s:20:"2017/01/0405-4-4.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"0405-4-4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"0405-4-4-215x300.jpg";s:5:"width";i:215;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"0405-4-4-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"0405-4-4-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:20:"0405-4-4-344x230.jpg";s:5:"width";i:344;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:20:"0405-4-4-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:20:"0405-4-4-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:20:"0405-4-4-344x385.jpg";s:5:"width";i:344;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(190, 54, '_edit_last', '1'),
(191, 54, '_edit_lock', '1484450262:1'),
(192, 55, '_wp_attached_file', '2017/01/0405-3-6.jpg'),
(193, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:345;s:6:"height";i:480;s:4:"file";s:20:"2017/01/0405-3-6.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"0405-3-6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"0405-3-6-216x300.jpg";s:5:"width";i:216;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"0405-3-6-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"0405-3-6-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:20:"0405-3-6-345x230.jpg";s:5:"width";i:345;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:20:"0405-3-6-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:20:"0405-3-6-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:20:"0405-3-6-345x385.jpg";s:5:"width";i:345;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(194, 54, '_visibility', 'visible'),
(195, 54, '_stock_status', 'instock'),
(196, 54, '_thumbnail_id', '55'),
(197, 54, 'total_sales', '1'),
(198, 54, '_downloadable', 'no'),
(199, 54, '_virtual', 'no'),
(200, 54, '_tax_status', 'taxable'),
(201, 54, '_tax_class', ''),
(202, 54, '_purchase_note', ''),
(203, 54, '_featured', 'no'),
(204, 54, '_weight', ''),
(205, 54, '_length', ''),
(206, 54, '_width', ''),
(207, 54, '_height', ''),
(208, 54, '_sku', ''),
(209, 54, '_product_attributes', 'a:0:{}'),
(210, 54, '_regular_price', '1200.000'),
(211, 54, '_sale_price', '1000.000'),
(212, 54, '_sale_price_dates_from', ''),
(213, 54, '_sale_price_dates_to', ''),
(214, 54, '_price', '1000.000'),
(215, 54, '_sold_individually', ''),
(216, 54, '_manage_stock', 'no'),
(217, 54, '_backorders', 'no'),
(218, 54, '_stock', ''),
(219, 54, '_upsell_ids', 'a:0:{}'),
(220, 54, '_crosssell_ids', 'a:0:{}'),
(221, 54, '_product_version', '2.6.11'),
(222, 54, '_product_image_gallery', ''),
(226, 56, '_edit_last', '1'),
(227, 56, '_edit_lock', '1484710688:1'),
(228, 57, '_wp_attached_file', '2017/01/0405-2-4.jpg'),
(229, 57, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:345;s:6:"height";i:480;s:4:"file";s:20:"2017/01/0405-2-4.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"0405-2-4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"0405-2-4-216x300.jpg";s:5:"width";i:216;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"0405-2-4-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"0405-2-4-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:20:"0405-2-4-345x230.jpg";s:5:"width";i:345;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:20:"0405-2-4-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:20:"0405-2-4-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:20:"0405-2-4-345x385.jpg";s:5:"width";i:345;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(230, 56, '_visibility', 'visible'),
(231, 56, '_stock_status', 'instock'),
(232, 56, '_thumbnail_id', '57'),
(233, 56, 'total_sales', '0'),
(234, 56, '_downloadable', 'no'),
(235, 56, '_virtual', 'no'),
(236, 56, '_tax_status', 'taxable'),
(237, 56, '_tax_class', ''),
(238, 56, '_purchase_note', ''),
(239, 56, '_featured', 'no'),
(240, 56, '_weight', ''),
(241, 56, '_length', ''),
(242, 56, '_width', ''),
(243, 56, '_height', ''),
(244, 56, '_sku', ''),
(245, 56, '_product_attributes', 'a:0:{}'),
(246, 56, '_regular_price', '2000.000'),
(247, 56, '_sale_price', '1700.000'),
(248, 56, '_sale_price_dates_from', ''),
(249, 56, '_sale_price_dates_to', ''),
(250, 56, '_price', '1700.000'),
(251, 56, '_sold_individually', ''),
(252, 56, '_manage_stock', 'no'),
(253, 56, '_backorders', 'no'),
(254, 56, '_stock', ''),
(255, 56, '_upsell_ids', 'a:0:{}'),
(256, 56, '_crosssell_ids', 'a:0:{}'),
(257, 56, '_product_version', '2.6.11'),
(258, 56, '_product_image_gallery', '157,158,159'),
(261, 58, '_wp_attached_file', '2017/01/1601-2-3-a90476be-ca8d-47a3-af47-2e218661fb1d.jpg'),
(262, 58, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:358;s:6:"height";i:480;s:4:"file";s:57:"2017/01/1601-2-3-a90476be-ca8d-47a3-af47-2e218661fb1d.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:57:"1601-2-3-a90476be-ca8d-47a3-af47-2e218661fb1d-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:57:"1601-2-3-a90476be-ca8d-47a3-af47-2e218661fb1d-224x300.jpg";s:5:"width";i:224;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:57:"1601-2-3-a90476be-ca8d-47a3-af47-2e218661fb1d-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:57:"1601-2-3-a90476be-ca8d-47a3-af47-2e218661fb1d-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:57:"1601-2-3-a90476be-ca8d-47a3-af47-2e218661fb1d-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:57:"1601-2-3-a90476be-ca8d-47a3-af47-2e218661fb1d-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:57:"1601-2-3-a90476be-ca8d-47a3-af47-2e218661fb1d-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:57:"1601-2-3-a90476be-ca8d-47a3-af47-2e218661fb1d-358x385.jpg";s:5:"width";i:358;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(264, 59, '_edit_last', '1'),
(265, 59, '_edit_lock', '1484451333:1'),
(266, 60, '_wp_attached_file', '2017/01/0605-1-3-1.jpg'),
(267, 60, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:345;s:6:"height";i:480;s:4:"file";s:22:"2017/01/0605-1-3-1.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"0605-1-3-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"0605-1-3-1-216x300.jpg";s:5:"width";i:216;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:22:"0605-1-3-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:22:"0605-1-3-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:22:"0605-1-3-1-345x230.jpg";s:5:"width";i:345;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:22:"0605-1-3-1-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:22:"0605-1-3-1-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:22:"0605-1-3-1-345x385.jpg";s:5:"width";i:345;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(268, 59, '_visibility', 'visible'),
(269, 59, '_stock_status', 'instock'),
(270, 59, '_thumbnail_id', '60'),
(271, 59, 'total_sales', '0'),
(272, 59, '_downloadable', 'no'),
(273, 59, '_virtual', 'no'),
(274, 59, '_tax_status', 'taxable'),
(275, 59, '_tax_class', ''),
(276, 59, '_purchase_note', ''),
(277, 59, '_featured', 'no'),
(278, 59, '_weight', ''),
(279, 59, '_length', ''),
(280, 59, '_width', ''),
(281, 59, '_height', ''),
(282, 59, '_sku', ''),
(283, 59, '_product_attributes', 'a:0:{}'),
(284, 59, '_regular_price', '1000.000'),
(285, 59, '_sale_price', ''),
(286, 59, '_sale_price_dates_from', ''),
(287, 59, '_sale_price_dates_to', ''),
(288, 59, '_price', '1000.000'),
(289, 59, '_sold_individually', ''),
(290, 59, '_manage_stock', 'no'),
(291, 59, '_backorders', 'no'),
(292, 59, '_stock', ''),
(293, 59, '_upsell_ids', 'a:0:{}'),
(294, 59, '_crosssell_ids', 'a:0:{}'),
(295, 59, '_product_version', '2.6.11'),
(296, 59, '_product_image_gallery', ''),
(297, 59, '_wc_rating_count', 'a:0:{}'),
(298, 59, '_wc_average_rating', '0'),
(299, 61, '_edit_last', '1'),
(300, 61, '_edit_lock', '1484451524:1'),
(301, 62, '_wp_attached_file', '2017/01/0505-3-1-d61404cd-74a1-41e4-b537-5417aa135992.jpg'),
(302, 62, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:344;s:6:"height";i:480;s:4:"file";s:57:"2017/01/0505-3-1-d61404cd-74a1-41e4-b537-5417aa135992.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:57:"0505-3-1-d61404cd-74a1-41e4-b537-5417aa135992-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:57:"0505-3-1-d61404cd-74a1-41e4-b537-5417aa135992-215x300.jpg";s:5:"width";i:215;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:57:"0505-3-1-d61404cd-74a1-41e4-b537-5417aa135992-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:57:"0505-3-1-d61404cd-74a1-41e4-b537-5417aa135992-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:57:"0505-3-1-d61404cd-74a1-41e4-b537-5417aa135992-344x230.jpg";s:5:"width";i:344;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:57:"0505-3-1-d61404cd-74a1-41e4-b537-5417aa135992-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:57:"0505-3-1-d61404cd-74a1-41e4-b537-5417aa135992-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:57:"0505-3-1-d61404cd-74a1-41e4-b537-5417aa135992-344x385.jpg";s:5:"width";i:344;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(303, 61, '_visibility', 'visible'),
(304, 61, '_stock_status', 'instock'),
(305, 61, '_thumbnail_id', '62'),
(306, 61, 'total_sales', '0'),
(307, 61, '_downloadable', 'no'),
(308, 61, '_virtual', 'no'),
(309, 61, '_tax_status', 'taxable'),
(310, 61, '_tax_class', ''),
(311, 61, '_purchase_note', ''),
(312, 61, '_featured', 'no'),
(313, 61, '_weight', ''),
(314, 61, '_length', ''),
(315, 61, '_width', ''),
(316, 61, '_height', ''),
(317, 61, '_sku', ''),
(318, 61, '_product_attributes', 'a:0:{}'),
(319, 61, '_regular_price', '800.000'),
(320, 61, '_sale_price', ''),
(321, 61, '_sale_price_dates_from', ''),
(322, 61, '_sale_price_dates_to', ''),
(323, 61, '_price', '800.000'),
(324, 61, '_sold_individually', ''),
(325, 61, '_manage_stock', 'no'),
(326, 61, '_backorders', 'no'),
(327, 61, '_stock', ''),
(328, 61, '_upsell_ids', 'a:0:{}'),
(329, 61, '_crosssell_ids', 'a:0:{}'),
(330, 61, '_product_version', '2.6.11'),
(331, 61, '_product_image_gallery', ''),
(332, 61, '_wc_rating_count', 'a:0:{}'),
(333, 61, '_wc_average_rating', '0'),
(334, 59, '_wc_review_count', '0'),
(335, 63, '_edit_last', '1'),
(336, 63, '_edit_lock', '1484451886:1'),
(337, 64, '_wp_attached_file', '2017/01/0505-2-3.jpg'),
(338, 64, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:344;s:6:"height";i:480;s:4:"file";s:20:"2017/01/0505-2-3.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"0505-2-3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"0505-2-3-215x300.jpg";s:5:"width";i:215;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"0505-2-3-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"0505-2-3-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:20:"0505-2-3-344x230.jpg";s:5:"width";i:344;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:20:"0505-2-3-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:20:"0505-2-3-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:20:"0505-2-3-344x385.jpg";s:5:"width";i:344;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(339, 63, '_visibility', 'visible'),
(340, 63, '_stock_status', 'instock'),
(341, 63, '_thumbnail_id', '64'),
(342, 63, 'total_sales', '1'),
(343, 63, '_downloadable', 'no'),
(344, 63, '_virtual', 'no'),
(345, 63, '_tax_status', 'taxable'),
(346, 63, '_tax_class', ''),
(347, 63, '_purchase_note', ''),
(348, 63, '_featured', 'no'),
(349, 63, '_weight', ''),
(350, 63, '_length', ''),
(351, 63, '_width', ''),
(352, 63, '_height', ''),
(353, 63, '_sku', ''),
(354, 63, '_product_attributes', 'a:0:{}'),
(355, 63, '_regular_price', '1400.000'),
(356, 63, '_sale_price', ''),
(357, 63, '_sale_price_dates_from', ''),
(358, 63, '_sale_price_dates_to', ''),
(359, 63, '_price', '1400.000'),
(360, 63, '_sold_individually', ''),
(361, 63, '_manage_stock', 'no'),
(362, 63, '_backorders', 'no'),
(363, 63, '_stock', ''),
(364, 63, '_upsell_ids', 'a:0:{}'),
(365, 63, '_crosssell_ids', 'a:0:{}'),
(366, 63, '_product_version', '2.6.11'),
(367, 63, '_product_image_gallery', ''),
(368, 63, '_wc_rating_count', 'a:0:{}'),
(369, 63, '_wc_average_rating', '0'),
(370, 65, '_edit_last', '1'),
(371, 65, '_edit_lock', '1484451975:1'),
(372, 66, '_wp_attached_file', '2017/01/0605-2-11.jpg'),
(373, 66, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:334;s:6:"height";i:465;s:4:"file";s:21:"2017/01/0605-2-11.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"0605-2-11-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"0605-2-11-215x300.jpg";s:5:"width";i:215;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"0605-2-11-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"0605-2-11-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:21:"0605-2-11-334x230.jpg";s:5:"width";i:334;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:21:"0605-2-11-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:21:"0605-2-11-300x465.jpg";s:5:"width";i:300;s:6:"height";i:465;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:21:"0605-2-11-334x385.jpg";s:5:"width";i:334;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(374, 65, '_visibility', 'visible'),
(375, 65, '_stock_status', 'instock'),
(376, 65, '_thumbnail_id', '66'),
(377, 65, 'total_sales', '1'),
(378, 65, '_downloadable', 'no'),
(379, 65, '_virtual', 'no'),
(380, 65, '_tax_status', 'taxable'),
(381, 65, '_tax_class', ''),
(382, 65, '_purchase_note', ''),
(383, 65, '_featured', 'no'),
(384, 65, '_weight', ''),
(385, 65, '_length', ''),
(386, 65, '_width', ''),
(387, 65, '_height', ''),
(388, 65, '_sku', ''),
(389, 65, '_product_attributes', 'a:0:{}'),
(390, 65, '_regular_price', '300.000'),
(391, 65, '_sale_price', ''),
(392, 65, '_sale_price_dates_from', ''),
(393, 65, '_sale_price_dates_to', ''),
(394, 65, '_price', '300.000'),
(395, 65, '_sold_individually', ''),
(396, 65, '_manage_stock', 'no'),
(397, 65, '_backorders', 'no'),
(398, 65, '_stock', ''),
(399, 65, '_upsell_ids', 'a:0:{}'),
(400, 65, '_crosssell_ids', 'a:0:{}'),
(401, 65, '_product_version', '2.6.11'),
(402, 65, '_product_image_gallery', ''),
(403, 65, '_wc_rating_count', 'a:0:{}'),
(404, 65, '_wc_average_rating', '0'),
(405, 67, '_edit_last', '1'),
(406, 67, '_edit_lock', '1484452164:1'),
(407, 68, '_wp_attached_file', '2017/01/1601-2-3-a90476be-ca8d-47a3-af47-2e218661fb1d-1.jpg'),
(408, 68, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:358;s:6:"height";i:480;s:4:"file";s:59:"2017/01/1601-2-3-a90476be-ca8d-47a3-af47-2e218661fb1d-1.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:59:"1601-2-3-a90476be-ca8d-47a3-af47-2e218661fb1d-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:59:"1601-2-3-a90476be-ca8d-47a3-af47-2e218661fb1d-1-224x300.jpg";s:5:"width";i:224;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:59:"1601-2-3-a90476be-ca8d-47a3-af47-2e218661fb1d-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:59:"1601-2-3-a90476be-ca8d-47a3-af47-2e218661fb1d-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:59:"1601-2-3-a90476be-ca8d-47a3-af47-2e218661fb1d-1-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:59:"1601-2-3-a90476be-ca8d-47a3-af47-2e218661fb1d-1-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:59:"1601-2-3-a90476be-ca8d-47a3-af47-2e218661fb1d-1-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:59:"1601-2-3-a90476be-ca8d-47a3-af47-2e218661fb1d-1-358x385.jpg";s:5:"width";i:358;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(409, 67, '_visibility', 'visible'),
(410, 67, '_stock_status', 'instock'),
(411, 67, '_thumbnail_id', '68'),
(412, 67, 'total_sales', '0'),
(413, 67, '_downloadable', 'no'),
(414, 67, '_virtual', 'no'),
(415, 67, '_tax_status', 'taxable'),
(416, 67, '_tax_class', ''),
(417, 67, '_purchase_note', ''),
(418, 67, '_featured', 'no'),
(419, 67, '_weight', ''),
(420, 67, '_length', ''),
(421, 67, '_width', ''),
(422, 67, '_height', ''),
(423, 67, '_sku', ''),
(424, 67, '_product_attributes', 'a:0:{}'),
(425, 67, '_regular_price', '900.000'),
(426, 67, '_sale_price', ''),
(427, 67, '_sale_price_dates_from', ''),
(428, 67, '_sale_price_dates_to', ''),
(429, 67, '_price', '900.000'),
(430, 67, '_sold_individually', ''),
(431, 67, '_manage_stock', 'no'),
(432, 67, '_backorders', 'no'),
(433, 67, '_stock', ''),
(434, 67, '_upsell_ids', 'a:0:{}'),
(435, 67, '_crosssell_ids', 'a:0:{}'),
(436, 67, '_product_version', '2.6.11'),
(437, 67, '_product_image_gallery', ''),
(438, 67, '_wc_rating_count', 'a:0:{}'),
(439, 67, '_wc_average_rating', '0'),
(441, 69, '_edit_last', '1'),
(442, 69, '_edit_lock', '1484452301:1'),
(443, 70, '_wp_attached_file', '2017/01/1601-4-7-4e888ef9-1f50-464b-b1af-e56300df6dbe.jpg'),
(444, 70, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:358;s:6:"height";i:480;s:4:"file";s:57:"2017/01/1601-4-7-4e888ef9-1f50-464b-b1af-e56300df6dbe.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:57:"1601-4-7-4e888ef9-1f50-464b-b1af-e56300df6dbe-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:57:"1601-4-7-4e888ef9-1f50-464b-b1af-e56300df6dbe-224x300.jpg";s:5:"width";i:224;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:57:"1601-4-7-4e888ef9-1f50-464b-b1af-e56300df6dbe-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:57:"1601-4-7-4e888ef9-1f50-464b-b1af-e56300df6dbe-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:57:"1601-4-7-4e888ef9-1f50-464b-b1af-e56300df6dbe-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:57:"1601-4-7-4e888ef9-1f50-464b-b1af-e56300df6dbe-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:57:"1601-4-7-4e888ef9-1f50-464b-b1af-e56300df6dbe-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:57:"1601-4-7-4e888ef9-1f50-464b-b1af-e56300df6dbe-358x385.jpg";s:5:"width";i:358;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(445, 69, '_visibility', 'visible'),
(446, 69, '_stock_status', 'instock'),
(447, 69, '_thumbnail_id', '70'),
(448, 69, 'total_sales', '0'),
(449, 69, '_downloadable', 'no'),
(450, 69, '_virtual', 'no'),
(451, 69, '_tax_status', 'taxable'),
(452, 69, '_tax_class', ''),
(453, 69, '_purchase_note', ''),
(454, 69, '_featured', 'no'),
(455, 69, '_weight', ''),
(456, 69, '_length', ''),
(457, 69, '_width', ''),
(458, 69, '_height', ''),
(459, 69, '_sku', ''),
(460, 69, '_product_attributes', 'a:0:{}'),
(461, 69, '_regular_price', '1000.000'),
(462, 69, '_sale_price', ''),
(463, 69, '_sale_price_dates_from', ''),
(464, 69, '_sale_price_dates_to', ''),
(465, 69, '_price', '1000.000'),
(466, 69, '_sold_individually', ''),
(467, 69, '_manage_stock', 'no'),
(468, 69, '_backorders', 'no'),
(469, 69, '_stock', ''),
(470, 69, '_upsell_ids', 'a:0:{}'),
(471, 69, '_crosssell_ids', 'a:0:{}'),
(472, 69, '_product_version', '2.6.11'),
(473, 69, '_product_image_gallery', ''),
(474, 69, '_wc_rating_count', 'a:0:{}'),
(475, 69, '_wc_average_rating', '0'),
(476, 72, '_edit_last', '1'),
(477, 72, '_edit_lock', '1484452416:1'),
(478, 73, '_wp_attached_file', '2017/01/1601-3-15.jpg'),
(479, 73, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:359;s:6:"height";i:480;s:4:"file";s:21:"2017/01/1601-3-15.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"1601-3-15-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"1601-3-15-224x300.jpg";s:5:"width";i:224;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"1601-3-15-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"1601-3-15-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:21:"1601-3-15-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:21:"1601-3-15-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:21:"1601-3-15-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:21:"1601-3-15-359x385.jpg";s:5:"width";i:359;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(480, 72, '_visibility', 'visible'),
(481, 72, '_stock_status', 'instock'),
(482, 72, '_thumbnail_id', '73'),
(483, 72, 'total_sales', '0'),
(484, 72, '_downloadable', 'no'),
(485, 72, '_virtual', 'no'),
(486, 72, '_tax_status', 'taxable'),
(487, 72, '_tax_class', ''),
(488, 72, '_purchase_note', ''),
(489, 72, '_featured', 'no'),
(490, 72, '_weight', ''),
(491, 72, '_length', ''),
(492, 72, '_width', ''),
(493, 72, '_height', ''),
(494, 72, '_sku', ''),
(495, 72, '_product_attributes', 'a:0:{}'),
(496, 72, '_regular_price', '1080.000'),
(497, 72, '_sale_price', ''),
(498, 72, '_sale_price_dates_from', ''),
(499, 72, '_sale_price_dates_to', ''),
(500, 72, '_price', '1080.000'),
(501, 72, '_sold_individually', ''),
(502, 72, '_manage_stock', 'no'),
(503, 72, '_backorders', 'no'),
(504, 72, '_stock', ''),
(505, 72, '_upsell_ids', 'a:0:{}'),
(506, 72, '_crosssell_ids', 'a:0:{}'),
(507, 72, '_product_version', '2.6.11'),
(508, 72, '_product_image_gallery', ''),
(509, 72, '_wc_rating_count', 'a:0:{}'),
(510, 72, '_wc_average_rating', '0'),
(511, 74, '_edit_last', '1'),
(512, 74, '_edit_lock', '1484452543:1'),
(513, 75, '_edit_last', '1'),
(514, 75, '_edit_lock', '1484452512:1'),
(515, 76, '_wp_attached_file', '2017/01/1601-5-1.jpg'),
(516, 76, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:358;s:6:"height";i:480;s:4:"file";s:20:"2017/01/1601-5-1.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"1601-5-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"1601-5-1-224x300.jpg";s:5:"width";i:224;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"1601-5-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"1601-5-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:20:"1601-5-1-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:20:"1601-5-1-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:20:"1601-5-1-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:20:"1601-5-1-358x385.jpg";s:5:"width";i:358;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(517, 75, '_visibility', 'visible'),
(518, 75, '_stock_status', 'instock'),
(519, 75, '_thumbnail_id', '76'),
(520, 75, 'total_sales', '0'),
(521, 75, '_downloadable', 'no'),
(522, 75, '_virtual', 'no'),
(523, 75, '_tax_status', 'taxable'),
(524, 75, '_tax_class', ''),
(525, 75, '_purchase_note', ''),
(526, 75, '_featured', 'no'),
(527, 75, '_weight', ''),
(528, 75, '_length', ''),
(529, 75, '_width', ''),
(530, 75, '_height', ''),
(531, 75, '_sku', ''),
(532, 75, '_product_attributes', 'a:0:{}'),
(533, 75, '_regular_price', '2500.000'),
(534, 75, '_sale_price', ''),
(535, 75, '_sale_price_dates_from', ''),
(536, 75, '_sale_price_dates_to', ''),
(537, 75, '_price', '2500.000'),
(538, 75, '_sold_individually', ''),
(539, 75, '_manage_stock', 'no'),
(540, 75, '_backorders', 'no'),
(541, 75, '_stock', ''),
(542, 75, '_upsell_ids', 'a:0:{}'),
(543, 75, '_crosssell_ids', 'a:0:{}'),
(544, 75, '_product_version', '2.6.11'),
(545, 75, '_product_image_gallery', ''),
(546, 75, '_wc_rating_count', 'a:0:{}'),
(547, 75, '_wc_average_rating', '0'),
(548, 77, '_edit_last', '1'),
(549, 77, '_edit_lock', '1484452707:1'),
(550, 78, '_wp_attached_file', '2017/01/2804-3-2.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(551, 78, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:345;s:6:"height";i:480;s:4:"file";s:20:"2017/01/2804-3-2.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"2804-3-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"2804-3-2-216x300.jpg";s:5:"width";i:216;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"2804-3-2-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"2804-3-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:20:"2804-3-2-345x230.jpg";s:5:"width";i:345;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:20:"2804-3-2-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:20:"2804-3-2-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:20:"2804-3-2-345x385.jpg";s:5:"width";i:345;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(552, 77, '_visibility', 'visible'),
(553, 77, '_stock_status', 'instock'),
(554, 77, '_thumbnail_id', '78'),
(555, 77, 'total_sales', '0'),
(556, 77, '_downloadable', 'no'),
(557, 77, '_virtual', 'no'),
(558, 77, '_tax_status', 'taxable'),
(559, 77, '_tax_class', ''),
(560, 77, '_purchase_note', ''),
(561, 77, '_featured', 'no'),
(562, 77, '_weight', ''),
(563, 77, '_length', ''),
(564, 77, '_width', ''),
(565, 77, '_height', ''),
(566, 77, '_sku', ''),
(567, 77, '_product_attributes', 'a:0:{}'),
(568, 77, '_regular_price', '1250.000'),
(569, 77, '_sale_price', ''),
(570, 77, '_sale_price_dates_from', ''),
(571, 77, '_sale_price_dates_to', ''),
(572, 77, '_price', '1250.000'),
(573, 77, '_sold_individually', ''),
(574, 77, '_manage_stock', 'no'),
(575, 77, '_backorders', 'no'),
(576, 77, '_stock', ''),
(577, 77, '_upsell_ids', 'a:0:{}'),
(578, 77, '_crosssell_ids', 'a:0:{}'),
(579, 77, '_product_version', '2.6.11'),
(580, 77, '_product_image_gallery', ''),
(581, 77, '_wc_rating_count', 'a:0:{}'),
(582, 77, '_wc_average_rating', '0'),
(583, 79, '_edit_last', '1'),
(584, 79, '_edit_lock', '1484453362:1'),
(585, 80, '_wp_attached_file', '2017/01/2804-1-3.jpg'),
(586, 80, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:345;s:6:"height";i:480;s:4:"file";s:20:"2017/01/2804-1-3.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"2804-1-3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"2804-1-3-216x300.jpg";s:5:"width";i:216;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"2804-1-3-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"2804-1-3-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:20:"2804-1-3-345x230.jpg";s:5:"width";i:345;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:20:"2804-1-3-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:20:"2804-1-3-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:20:"2804-1-3-345x385.jpg";s:5:"width";i:345;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(587, 79, '_visibility', 'visible'),
(588, 79, '_stock_status', 'instock'),
(589, 79, '_thumbnail_id', '80'),
(590, 79, 'total_sales', '0'),
(591, 79, '_downloadable', 'no'),
(592, 79, '_virtual', 'no'),
(593, 79, '_tax_status', 'taxable'),
(594, 79, '_tax_class', ''),
(595, 79, '_purchase_note', ''),
(596, 79, '_featured', 'no'),
(597, 79, '_weight', ''),
(598, 79, '_length', ''),
(599, 79, '_width', ''),
(600, 79, '_height', ''),
(601, 79, '_sku', ''),
(602, 79, '_product_attributes', 'a:0:{}'),
(603, 79, '_regular_price', '1020.000'),
(604, 79, '_sale_price', ''),
(605, 79, '_sale_price_dates_from', ''),
(606, 79, '_sale_price_dates_to', ''),
(607, 79, '_price', '1020.000'),
(608, 79, '_sold_individually', ''),
(609, 79, '_manage_stock', 'no'),
(610, 79, '_backorders', 'no'),
(611, 79, '_stock', ''),
(612, 79, '_upsell_ids', 'a:0:{}'),
(613, 79, '_crosssell_ids', 'a:0:{}'),
(614, 79, '_product_version', '2.6.11'),
(615, 79, '_product_image_gallery', ''),
(616, 79, '_wc_rating_count', 'a:0:{}'),
(617, 79, '_wc_average_rating', '0'),
(618, 81, '_edit_last', '1'),
(619, 81, '_edit_lock', '1484453483:1'),
(620, 82, '_wp_attached_file', '2017/01/2604-1-5-fd5997ec-58aa-4b48-bcfe-4ad071bbd745.jpg'),
(621, 82, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:345;s:6:"height";i:480;s:4:"file";s:57:"2017/01/2604-1-5-fd5997ec-58aa-4b48-bcfe-4ad071bbd745.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:57:"2604-1-5-fd5997ec-58aa-4b48-bcfe-4ad071bbd745-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:57:"2604-1-5-fd5997ec-58aa-4b48-bcfe-4ad071bbd745-216x300.jpg";s:5:"width";i:216;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:57:"2604-1-5-fd5997ec-58aa-4b48-bcfe-4ad071bbd745-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:57:"2604-1-5-fd5997ec-58aa-4b48-bcfe-4ad071bbd745-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:57:"2604-1-5-fd5997ec-58aa-4b48-bcfe-4ad071bbd745-345x230.jpg";s:5:"width";i:345;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:57:"2604-1-5-fd5997ec-58aa-4b48-bcfe-4ad071bbd745-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:57:"2604-1-5-fd5997ec-58aa-4b48-bcfe-4ad071bbd745-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:57:"2604-1-5-fd5997ec-58aa-4b48-bcfe-4ad071bbd745-345x385.jpg";s:5:"width";i:345;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(622, 81, '_visibility', 'visible'),
(623, 81, '_stock_status', 'instock'),
(624, 81, '_thumbnail_id', '82'),
(625, 81, 'total_sales', '0'),
(626, 81, '_downloadable', 'no'),
(627, 81, '_virtual', 'no'),
(628, 81, '_tax_status', 'taxable'),
(629, 81, '_tax_class', ''),
(630, 81, '_purchase_note', ''),
(631, 81, '_featured', 'no'),
(632, 81, '_weight', ''),
(633, 81, '_length', ''),
(634, 81, '_width', ''),
(635, 81, '_height', ''),
(636, 81, '_sku', ''),
(637, 81, '_product_attributes', 'a:0:{}'),
(638, 81, '_regular_price', '700.000'),
(639, 81, '_sale_price', ''),
(640, 81, '_sale_price_dates_from', ''),
(641, 81, '_sale_price_dates_to', ''),
(642, 81, '_price', '700.000'),
(643, 81, '_sold_individually', ''),
(644, 81, '_manage_stock', 'no'),
(645, 81, '_backorders', 'no'),
(646, 81, '_stock', ''),
(647, 81, '_upsell_ids', 'a:0:{}'),
(648, 81, '_crosssell_ids', 'a:0:{}'),
(649, 81, '_product_version', '2.6.11'),
(650, 81, '_product_image_gallery', ''),
(651, 81, '_wc_rating_count', 'a:0:{}'),
(652, 81, '_wc_average_rating', '0'),
(653, 81, '_wc_review_count', '0'),
(654, 85, '_edit_last', '1'),
(655, 85, '_edit_lock', '1484454290:1'),
(656, 86, '_wp_attached_file', '2017/01/2901-2-5-.jpg'),
(657, 86, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:358;s:6:"height";i:480;s:4:"file";s:21:"2017/01/2901-2-5-.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"2901-2-5--150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"2901-2-5--224x300.jpg";s:5:"width";i:224;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:21:"2901-2-5--180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:21:"2901-2-5--300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:21:"2901-2-5--350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:21:"2901-2-5--285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:21:"2901-2-5--300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:21:"2901-2-5--358x385.jpg";s:5:"width";i:358;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(658, 85, '_visibility', 'visible'),
(659, 85, '_stock_status', 'instock'),
(660, 85, '_thumbnail_id', '86'),
(661, 85, 'total_sales', '0'),
(662, 85, '_downloadable', 'no'),
(663, 85, '_virtual', 'no'),
(664, 85, '_tax_status', 'taxable'),
(665, 85, '_tax_class', ''),
(666, 85, '_purchase_note', ''),
(667, 85, '_featured', 'no'),
(668, 85, '_weight', ''),
(669, 85, '_length', ''),
(670, 85, '_width', ''),
(671, 85, '_height', ''),
(672, 85, '_sku', ''),
(673, 85, '_product_attributes', 'a:0:{}'),
(674, 85, '_regular_price', '4400.000'),
(675, 85, '_sale_price', ''),
(676, 85, '_sale_price_dates_from', ''),
(677, 85, '_sale_price_dates_to', ''),
(678, 85, '_price', '4400.000'),
(679, 85, '_sold_individually', ''),
(680, 85, '_manage_stock', 'no'),
(681, 85, '_backorders', 'no'),
(682, 85, '_stock', ''),
(683, 85, '_upsell_ids', 'a:0:{}'),
(684, 85, '_crosssell_ids', 'a:0:{}'),
(685, 85, '_product_version', '2.6.11'),
(686, 85, '_product_image_gallery', ''),
(687, 85, '_wc_rating_count', 'a:0:{}'),
(688, 85, '_wc_average_rating', '0'),
(689, 85, '_wc_review_count', '0'),
(692, 88, '_wp_attached_file', '2017/01/2014_12_22_13_44_59_1813379.png'),
(693, 88, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:220;s:6:"height";i:220;s:4:"file";s:39:"2017/01/2014_12_22_13_44_59_1813379.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:39:"2014_12_22_13_44_59_1813379-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:39:"2014_12_22_13_44_59_1813379-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(694, 89, '_wp_attached_file', '2017/01/cropped-2014_12_22_13_44_59_1813379.png'),
(695, 89, '_wp_attachment_context', 'custom-logo'),
(696, 89, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:220;s:6:"height";i:70;s:4:"file";s:47:"2017/01/cropped-2014_12_22_13_44_59_1813379.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:46:"cropped-2014_12_22_13_44_59_1813379-150x70.png";s:5:"width";i:150;s:6:"height";i:70;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:46:"cropped-2014_12_22_13_44_59_1813379-180x70.png";s:5:"width";i:180;s:6:"height";i:70;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(699, 91, '_form', '<script src=''//cdn.tinymce.com/4/tinymce.min.js''></script>\n  <script type="text/javascript">\n  tinymce.init({\n    selector: ''textarea''\n  });\n  </script>\n<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n<label> Your Gender\n<select name="dropdown">\n<option value="1" selected>Male</option>\n<option value="2">Female</option>\n</select>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit "Send"]'),
(700, 91, '_mail', 'a:8:{s:7:"subject";s:27:"TRUONG LAI "[your-subject]"";s:6:"sender";s:36:"[your-name] <truonglaipnv@gmail.com>";s:4:"body";s:167:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on TRUONG LAI (http://localhost/wp)";s:9:"recipient";s:22:"truonglaipnv@gmail.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(701, 91, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:27:"TRUONG LAI "[your-subject]"";s:6:"sender";s:35:"TRUONG LAI <truonglaipnv@gmail.com>";s:4:"body";s:109:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on TRUONG LAI (http://localhost/wp)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:32:"Reply-To: truonglaipnv@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(702, 91, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(703, 91, '_additional_settings', ''),
(704, 91, '_locale', 'en_US'),
(705, 96, '_wp_attached_file', '2017/01/IMG_20161216_215022-Copy.jpg'),
(706, 96, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:360;s:6:"height";i:640;s:4:"file";s:36:"2017/01/IMG_20161216_215022-Copy.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"IMG_20161216_215022-Copy-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:36:"IMG_20161216_215022-Copy-169x300.jpg";s:5:"width";i:169;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:36:"IMG_20161216_215022-Copy-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:36:"IMG_20161216_215022-Copy-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:36:"IMG_20161216_215022-Copy-360x600.jpg";s:5:"width";i:360;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:19:"sparklestore-slider";a:4:{s:4:"file";s:36:"IMG_20161216_215022-Copy-360x520.jpg";s:5:"width";i:360;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:36:"IMG_20161216_215022-Copy-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:36:"IMG_20161216_215022-Copy-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:36:"IMG_20161216_215022-Copy-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:36:"IMG_20161216_215022-Copy-360x385.jpg";s:5:"width";i:360;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(707, 97, '_wp_attached_file', '2017/01/12096177_437496769791831_2412451691298845733_n.jpg'),
(708, 97, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:140;s:6:"height";i:140;s:4:"file";s:58:"2017/01/12096177_437496769791831_2412451691298845733_n.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(709, 97, '_wp_attachment_wp_user_avatar', '1'),
(716, 102, '_wp_attached_file', '2017/01/1.png'),
(717, 102, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:584;s:4:"file";s:13:"2017/01/1.png";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:13:"1-300x292.png";s:5:"width";i:300;s:6:"height";i:292;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:13:"1-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:13:"1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:13:"1-600x584.png";s:5:"width";i:600;s:6:"height";i:584;s:9:"mime-type";s:9:"image/png";}s:19:"sparklestore-slider";a:4:{s:4:"file";s:13:"1-600x520.png";s:5:"width";i:600;s:6:"height";i:520;s:9:"mime-type";s:9:"image/png";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:13:"1-350x230.png";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:9:"image/png";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:13:"1-285x370.png";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:9:"image/png";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:13:"1-300x470.png";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:9:"image/png";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:13:"1-600x385.png";s:5:"width";i:600;s:6:"height";i:385;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(718, 103, '_wp_attached_file', '2017/01/mũ-gấu-12.jpg'),
(719, 103, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:650;s:6:"height";i:650;s:4:"file";s:24:"2017/01/mũ-gấu-12.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"mũ-gấu-12-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"mũ-gấu-12-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:24:"mũ-gấu-12-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:24:"mũ-gấu-12-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:24:"mũ-gấu-12-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:19:"sparklestore-slider";a:4:{s:4:"file";s:24:"mũ-gấu-12-650x520.jpg";s:5:"width";i:650;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:24:"mũ-gấu-12-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:24:"mũ-gấu-12-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:24:"mũ-gấu-12-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:24:"mũ-gấu-12-650x385.jpg";s:5:"width";i:650;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(720, 103, '_edit_lock', '1484561485:1'),
(721, 103, '_edit_last', '1'),
(722, 104, '_wp_attached_file', '2017/01/mu-coi-vanh-nho-co-no-xinh-xan-de-thuong.jpg'),
(723, 104, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:550;s:6:"height";i:550;s:4:"file";s:52:"2017/01/mu-coi-vanh-nho-co-no-xinh-xan-de-thuong.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:52:"mu-coi-vanh-nho-co-no-xinh-xan-de-thuong-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:52:"mu-coi-vanh-nho-co-no-xinh-xan-de-thuong-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:52:"mu-coi-vanh-nho-co-no-xinh-xan-de-thuong-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:52:"mu-coi-vanh-nho-co-no-xinh-xan-de-thuong-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:19:"sparklestore-slider";a:4:{s:4:"file";s:52:"mu-coi-vanh-nho-co-no-xinh-xan-de-thuong-550x520.jpg";s:5:"width";i:550;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:52:"mu-coi-vanh-nho-co-no-xinh-xan-de-thuong-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:52:"mu-coi-vanh-nho-co-no-xinh-xan-de-thuong-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:52:"mu-coi-vanh-nho-co-no-xinh-xan-de-thuong-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:52:"mu-coi-vanh-nho-co-no-xinh-xan-de-thuong-550x385.jpg";s:5:"width";i:550;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(724, 105, '_edit_last', '1'),
(725, 105, '_edit_lock', '1484566041:1'),
(726, 106, '_wp_attached_file', '2017/01/21.jpg'),
(727, 106, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:709;s:4:"file";s:14:"2017/01/21.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"21-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:14:"21-300x266.jpg";s:5:"width";i:300;s:6:"height";i:266;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:14:"21-768x681.jpg";s:5:"width";i:768;s:6:"height";i:681;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:14:"21-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:14:"21-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:14:"21-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:19:"sparklestore-slider";a:4:{s:4:"file";s:14:"21-800x520.jpg";s:5:"width";i:800;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:14:"21-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:14:"21-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:14:"21-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:14:"21-760x385.jpg";s:5:"width";i:760;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(728, 105, '_visibility', 'visible'),
(729, 105, '_stock_status', 'instock'),
(730, 105, '_thumbnail_id', '106'),
(731, 105, 'total_sales', '1'),
(732, 105, '_downloadable', 'no'),
(733, 105, '_virtual', 'no'),
(734, 105, '_tax_status', 'taxable'),
(735, 105, '_tax_class', ''),
(736, 105, '_purchase_note', ''),
(737, 105, '_featured', 'no'),
(738, 105, '_weight', ''),
(739, 105, '_length', ''),
(740, 105, '_width', ''),
(741, 105, '_height', ''),
(742, 105, '_sku', ''),
(743, 105, '_product_attributes', 'a:0:{}'),
(744, 105, '_regular_price', '180.000'),
(745, 105, '_sale_price', ''),
(746, 105, '_sale_price_dates_from', ''),
(747, 105, '_sale_price_dates_to', ''),
(748, 105, '_price', '180.000'),
(749, 105, '_sold_individually', ''),
(750, 105, '_manage_stock', 'no'),
(751, 105, '_backorders', 'no'),
(752, 105, '_stock', ''),
(753, 105, '_upsell_ids', 'a:0:{}'),
(754, 105, '_crosssell_ids', 'a:0:{}'),
(755, 105, '_product_version', '2.6.11'),
(756, 105, '_product_image_gallery', ''),
(759, 107, '_edit_last', '1'),
(760, 107, '_edit_lock', '1484566116:1'),
(761, 108, '_wp_attached_file', '2017/01/5.jpg'),
(762, 108, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:800;s:4:"file";s:13:"2017/01/5.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"5-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:13:"5-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:13:"5-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:13:"5-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:13:"5-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:19:"sparklestore-slider";a:4:{s:4:"file";s:13:"5-800x520.jpg";s:5:"width";i:800;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:13:"5-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:13:"5-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:13:"5-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:13:"5-760x385.jpg";s:5:"width";i:760;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(763, 107, '_visibility', 'visible'),
(764, 107, '_stock_status', 'instock'),
(765, 107, '_thumbnail_id', '108'),
(766, 107, 'total_sales', '6'),
(767, 107, '_downloadable', 'no'),
(768, 107, '_virtual', 'no'),
(769, 107, '_tax_status', 'taxable'),
(770, 107, '_tax_class', ''),
(771, 107, '_purchase_note', ''),
(772, 107, '_featured', 'no'),
(773, 107, '_weight', ''),
(774, 107, '_length', ''),
(775, 107, '_width', ''),
(776, 107, '_height', ''),
(777, 107, '_sku', ''),
(778, 107, '_product_attributes', 'a:0:{}'),
(779, 107, '_regular_price', '200.000'),
(780, 107, '_sale_price', ''),
(781, 107, '_sale_price_dates_from', ''),
(782, 107, '_sale_price_dates_to', ''),
(783, 107, '_price', '200.000'),
(784, 107, '_sold_individually', ''),
(785, 107, '_manage_stock', 'no'),
(786, 107, '_backorders', 'no'),
(787, 107, '_stock', ''),
(788, 107, '_upsell_ids', 'a:0:{}'),
(789, 107, '_crosssell_ids', 'a:0:{}'),
(790, 107, '_product_version', '2.6.11'),
(791, 107, '_product_image_gallery', ''),
(796, 110, '_wp_attached_file', '2017/01/3.jpg'),
(797, 110, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:453;s:6:"height";i:340;s:4:"file";s:13:"2017/01/3.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"3-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:13:"3-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:13:"3-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:13:"3-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:13:"3-285x340.jpg";s:5:"width";i:285;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:13:"3-300x340.jpg";s:5:"width";i:300;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(827, 111, '_edit_last', '1'),
(828, 111, '_edit_lock', '1484566584:1'),
(829, 111, '_visibility', 'visible'),
(830, 111, '_stock_status', 'instock'),
(831, 111, '_thumbnail_id', '110'),
(832, 111, 'total_sales', '9'),
(833, 111, '_downloadable', 'no'),
(834, 111, '_virtual', 'no'),
(835, 111, '_tax_status', 'taxable'),
(836, 111, '_tax_class', ''),
(837, 111, '_purchase_note', ''),
(838, 111, '_featured', 'no'),
(839, 111, '_weight', ''),
(840, 111, '_length', ''),
(841, 111, '_width', ''),
(842, 111, '_height', ''),
(843, 111, '_sku', ''),
(844, 111, '_product_attributes', 'a:0:{}'),
(845, 111, '_regular_price', '300.000'),
(846, 111, '_sale_price', ''),
(847, 111, '_sale_price_dates_from', ''),
(848, 111, '_sale_price_dates_to', ''),
(849, 111, '_price', '300.000'),
(850, 111, '_sold_individually', ''),
(851, 111, '_manage_stock', 'no'),
(852, 111, '_backorders', 'no'),
(853, 111, '_stock', ''),
(854, 111, '_upsell_ids', 'a:0:{}'),
(855, 111, '_crosssell_ids', 'a:0:{}'),
(856, 111, '_product_version', '2.6.11'),
(857, 111, '_product_image_gallery', ''),
(860, 112, '_edit_last', '1'),
(861, 112, '_edit_lock', '1484567850:1'),
(862, 113, '_wp_attached_file', '2017/01/1826-2.jpg'),
(863, 113, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:430;s:6:"height";i:430;s:4:"file";s:18:"2017/01/1826-2.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"1826-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"1826-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:18:"1826-2-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:18:"1826-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:18:"1826-2-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:18:"1826-2-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:18:"1826-2-300x430.jpg";s:5:"width";i:300;s:6:"height";i:430;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:18:"1826-2-430x385.jpg";s:5:"width";i:430;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(864, 112, '_visibility', 'visible'),
(865, 112, '_stock_status', 'instock'),
(866, 112, '_thumbnail_id', '113'),
(867, 112, 'total_sales', '4'),
(868, 112, '_downloadable', 'no'),
(869, 112, '_virtual', 'no'),
(870, 112, '_tax_status', 'taxable'),
(871, 112, '_tax_class', ''),
(872, 112, '_purchase_note', ''),
(873, 112, '_featured', 'no'),
(874, 112, '_weight', ''),
(875, 112, '_length', ''),
(876, 112, '_width', ''),
(877, 112, '_height', ''),
(878, 112, '_sku', ''),
(879, 112, '_product_attributes', 'a:0:{}'),
(880, 112, '_regular_price', '200.000'),
(881, 112, '_sale_price', ''),
(882, 112, '_sale_price_dates_from', ''),
(883, 112, '_sale_price_dates_to', ''),
(884, 112, '_price', '200.000'),
(885, 112, '_sold_individually', ''),
(886, 112, '_manage_stock', 'no'),
(887, 112, '_backorders', 'no'),
(888, 112, '_stock', ''),
(889, 112, '_upsell_ids', 'a:0:{}'),
(890, 112, '_crosssell_ids', 'a:0:{}'),
(891, 112, '_product_version', '2.6.11'),
(892, 112, '_product_image_gallery', ''),
(897, 115, '_wp_attached_file', '2017/01/211.jpg'),
(898, 115, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:52;s:6:"height";i:30;s:4:"file";s:15:"2017/01/211.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(899, 117, '_wp_attached_file', '2017/01/3-1.jpg'),
(900, 117, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:52;s:6:"height";i:30;s:4:"file";s:15:"2017/01/3-1.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(901, 118, '_wp_attached_file', '2017/01/paypal.jpg'),
(902, 118, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:52;s:6:"height";i:30;s:4:"file";s:18:"2017/01/paypal.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(903, 119, '_wp_attached_file', '2017/01/skrill.jpg'),
(904, 119, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:52;s:6:"height";i:30;s:4:"file";s:18:"2017/01/skrill.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(916, 122, '_edit_last', '1'),
(917, 122, '_edit_lock', '1484637622:1'),
(918, 122, '_visibility', 'visible'),
(919, 122, '_stock_status', 'instock'),
(920, 122, '_thumbnail_id', '53'),
(921, 122, 'total_sales', '1'),
(922, 122, '_downloadable', 'no'),
(923, 122, '_virtual', 'no'),
(924, 122, '_tax_status', 'taxable'),
(925, 122, '_tax_class', ''),
(926, 122, '_purchase_note', ''),
(927, 122, '_featured', 'no'),
(928, 122, '_weight', ''),
(929, 122, '_length', ''),
(930, 122, '_width', ''),
(931, 122, '_height', ''),
(932, 122, '_sku', ''),
(933, 122, '_product_attributes', 'a:0:{}'),
(934, 122, '_regular_price', '200'),
(935, 122, '_sale_price', '150'),
(936, 122, '_sale_price_dates_from', ''),
(937, 122, '_sale_price_dates_to', ''),
(938, 122, '_price', '150'),
(939, 122, '_sold_individually', ''),
(940, 122, '_manage_stock', 'no'),
(941, 122, '_backorders', 'no'),
(942, 122, '_stock', ''),
(943, 122, '_upsell_ids', 'a:0:{}'),
(944, 122, '_crosssell_ids', 'a:0:{}'),
(945, 122, '_product_version', '2.6.11'),
(946, 122, '_product_image_gallery', '126,127,128'),
(949, 123, '_edit_last', '1'),
(950, 123, '_edit_lock', '1484710345:1'),
(951, 124, '_wp_attached_file', '2017/01/1.jpg'),
(952, 124, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:900;s:4:"file";s:13:"2017/01/1.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"1-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:13:"1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:13:"1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:13:"1-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:19:"sparklestore-slider";a:4:{s:4:"file";s:13:"1-600x520.jpg";s:5:"width";i:600;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:13:"1-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:13:"1-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:13:"1-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:13:"1-600x385.jpg";s:5:"width";i:600;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(953, 123, '_visibility', 'visible'),
(954, 123, '_stock_status', 'instock'),
(955, 123, '_thumbnail_id', '124'),
(956, 123, 'total_sales', '0'),
(957, 123, '_downloadable', 'no'),
(958, 123, '_virtual', 'no'),
(959, 123, '_tax_status', 'taxable'),
(960, 123, '_tax_class', ''),
(961, 123, '_purchase_note', ''),
(962, 123, '_featured', 'no'),
(963, 123, '_weight', ''),
(964, 123, '_length', ''),
(965, 123, '_width', ''),
(966, 123, '_height', ''),
(967, 123, '_sku', ''),
(968, 123, '_product_attributes', 'a:0:{}'),
(969, 123, '_regular_price', '300'),
(970, 123, '_sale_price', ''),
(971, 123, '_sale_price_dates_from', ''),
(972, 123, '_sale_price_dates_to', ''),
(973, 123, '_price', '300'),
(974, 123, '_sold_individually', ''),
(975, 123, '_manage_stock', 'no'),
(976, 123, '_backorders', 'no'),
(977, 123, '_stock', ''),
(978, 123, '_upsell_ids', 'a:0:{}'),
(979, 123, '_crosssell_ids', 'a:0:{}'),
(980, 123, '_product_version', '2.6.11'),
(981, 123, '_product_image_gallery', '154,155,156'),
(982, 126, '_wp_attached_file', '2017/01/2.jpg'),
(983, 126, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:596;s:4:"file";s:13:"2017/01/2.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"2-252x300.jpg";s:5:"width";i:252;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:13:"2-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:13:"2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:19:"sparklestore-slider";a:4:{s:4:"file";s:13:"2-500x520.jpg";s:5:"width";i:500;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:13:"2-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:13:"2-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:13:"2-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:13:"2-500x385.jpg";s:5:"width";i:500;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(984, 127, '_wp_attached_file', '2017/01/4.jpg'),
(985, 127, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:410;s:4:"file";s:13:"2017/01/4.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"4-300x205.jpg";s:5:"width";i:300;s:6:"height";i:205;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:13:"4-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:13:"4-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:13:"4-600x410.jpg";s:5:"width";i:600;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:13:"4-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:13:"4-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:13:"4-300x410.jpg";s:5:"width";i:300;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:13:"4-600x385.jpg";s:5:"width";i:600;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(986, 128, '_wp_attached_file', '2017/01/23.jpg'),
(987, 128, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:750;s:4:"file";s:14:"2017/01/23.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"23-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:14:"23-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:14:"23-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:14:"23-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:14:"23-500x600.jpg";s:5:"width";i:500;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:19:"sparklestore-slider";a:4:{s:4:"file";s:14:"23-500x520.jpg";s:5:"width";i:500;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:14:"23-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:14:"23-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:14:"23-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:14:"23-500x385.jpg";s:5:"width";i:500;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(991, 129, '_wp_attached_file', '2017/01/2083_1435199312.39448.jpg'),
(992, 129, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:906;s:4:"file";s:33:"2017/01/2083_1435199312.39448.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"2083_1435199312.39448-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"2083_1435199312.39448-199x300.jpg";s:5:"width";i:199;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:33:"2083_1435199312.39448-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:33:"2083_1435199312.39448-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:33:"2083_1435199312.39448-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:19:"sparklestore-slider";a:4:{s:4:"file";s:33:"2083_1435199312.39448-600x520.jpg";s:5:"width";i:600;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:33:"2083_1435199312.39448-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:33:"2083_1435199312.39448-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:33:"2083_1435199312.39448-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:33:"2083_1435199312.39448-600x385.jpg";s:5:"width";i:600;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:25:"张凡 布艺文衣 20194";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(993, 130, '_edit_last', '1'),
(994, 130, '_edit_lock', '1484637299:1'),
(995, 131, '_wp_attached_file', '2017/01/vay4-cho-co-nang-chan-to-phunutoday_vn.gif');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(996, 131, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:647;s:4:"file";s:50:"2017/01/vay4-cho-co-nang-chan-to-phunutoday_vn.gif";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:50:"vay4-cho-co-nang-chan-to-phunutoday_vn-150x150.gif";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/gif";}s:6:"medium";a:4:{s:4:"file";s:50:"vay4-cho-co-nang-chan-to-phunutoday_vn-232x300.gif";s:5:"width";i:232;s:6:"height";i:300;s:9:"mime-type";s:9:"image/gif";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:50:"vay4-cho-co-nang-chan-to-phunutoday_vn-180x180.gif";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/gif";}s:12:"shop_catalog";a:4:{s:4:"file";s:50:"vay4-cho-co-nang-chan-to-phunutoday_vn-300x300.gif";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/gif";}s:11:"shop_single";a:4:{s:4:"file";s:50:"vay4-cho-co-nang-chan-to-phunutoday_vn-500x600.gif";s:5:"width";i:500;s:6:"height";i:600;s:9:"mime-type";s:9:"image/gif";}s:19:"sparklestore-slider";a:4:{s:4:"file";s:50:"vay4-cho-co-nang-chan-to-phunutoday_vn-500x520.gif";s:5:"width";i:500;s:6:"height";i:520;s:9:"mime-type";s:9:"image/gif";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:50:"vay4-cho-co-nang-chan-to-phunutoday_vn-350x230.gif";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:9:"image/gif";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:50:"vay4-cho-co-nang-chan-to-phunutoday_vn-285x370.gif";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:9:"image/gif";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:50:"vay4-cho-co-nang-chan-to-phunutoday_vn-300x470.gif";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:9:"image/gif";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:50:"vay4-cho-co-nang-chan-to-phunutoday_vn-500x385.gif";s:5:"width";i:500;s:6:"height";i:385;s:9:"mime-type";s:9:"image/gif";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(997, 130, '_visibility', 'visible'),
(998, 130, '_stock_status', 'instock'),
(1000, 130, 'total_sales', '0'),
(1001, 130, '_downloadable', 'no'),
(1002, 130, '_virtual', 'no'),
(1003, 130, '_tax_status', 'taxable'),
(1004, 130, '_tax_class', ''),
(1005, 130, '_purchase_note', ''),
(1006, 130, '_featured', 'no'),
(1007, 130, '_weight', ''),
(1008, 130, '_length', ''),
(1009, 130, '_width', ''),
(1010, 130, '_height', ''),
(1011, 130, '_sku', ''),
(1012, 130, '_product_attributes', 'a:0:{}'),
(1013, 130, '_regular_price', '900'),
(1014, 130, '_sale_price', ''),
(1015, 130, '_sale_price_dates_from', ''),
(1016, 130, '_sale_price_dates_to', ''),
(1017, 130, '_price', '900'),
(1018, 130, '_sold_individually', ''),
(1019, 130, '_manage_stock', 'no'),
(1020, 130, '_backorders', 'no'),
(1021, 130, '_stock', ''),
(1022, 130, '_upsell_ids', 'a:0:{}'),
(1023, 130, '_crosssell_ids', 'a:0:{}'),
(1024, 130, '_product_version', '2.6.11'),
(1025, 130, '_product_image_gallery', '132,133,134'),
(1028, 132, '_wp_attached_file', '2017/01/dam-xoe-dep-han-quoc-he-2015-phong-cach-tre-trung-cho-ban-gai-tung-tang-dao-pho-1.png'),
(1029, 132, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:690;s:6:"height";i:684;s:4:"file";s:93:"2017/01/dam-xoe-dep-han-quoc-he-2015-phong-cach-tre-trung-cho-ban-gai-tung-tang-dao-pho-1.png";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:93:"dam-xoe-dep-han-quoc-he-2015-phong-cach-tre-trung-cho-ban-gai-tung-tang-dao-pho-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:93:"dam-xoe-dep-han-quoc-he-2015-phong-cach-tre-trung-cho-ban-gai-tung-tang-dao-pho-1-300x297.png";s:5:"width";i:300;s:6:"height";i:297;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:93:"dam-xoe-dep-han-quoc-he-2015-phong-cach-tre-trung-cho-ban-gai-tung-tang-dao-pho-1-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:93:"dam-xoe-dep-han-quoc-he-2015-phong-cach-tre-trung-cho-ban-gai-tung-tang-dao-pho-1-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:93:"dam-xoe-dep-han-quoc-he-2015-phong-cach-tre-trung-cho-ban-gai-tung-tang-dao-pho-1-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}s:19:"sparklestore-slider";a:4:{s:4:"file";s:93:"dam-xoe-dep-han-quoc-he-2015-phong-cach-tre-trung-cho-ban-gai-tung-tang-dao-pho-1-690x520.png";s:5:"width";i:690;s:6:"height";i:520;s:9:"mime-type";s:9:"image/png";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:93:"dam-xoe-dep-han-quoc-he-2015-phong-cach-tre-trung-cho-ban-gai-tung-tang-dao-pho-1-350x230.png";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:9:"image/png";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:93:"dam-xoe-dep-han-quoc-he-2015-phong-cach-tre-trung-cho-ban-gai-tung-tang-dao-pho-1-285x370.png";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:9:"image/png";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:93:"dam-xoe-dep-han-quoc-he-2015-phong-cach-tre-trung-cho-ban-gai-tung-tang-dao-pho-1-300x470.png";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:9:"image/png";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:93:"dam-xoe-dep-han-quoc-he-2015-phong-cach-tre-trung-cho-ban-gai-tung-tang-dao-pho-1-690x385.png";s:5:"width";i:690;s:6:"height";i:385;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1030, 133, '_wp_attached_file', '2017/01/vay-lien-xoe-tieu-thu-dep-cho-nang-diu-dang-nu-tinh-trong-ngay-he-2015-2.jpg'),
(1031, 133, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:740;s:6:"height";i:975;s:4:"file";s:84:"2017/01/vay-lien-xoe-tieu-thu-dep-cho-nang-diu-dang-nu-tinh-trong-ngay-he-2015-2.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:84:"vay-lien-xoe-tieu-thu-dep-cho-nang-diu-dang-nu-tinh-trong-ngay-he-2015-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:84:"vay-lien-xoe-tieu-thu-dep-cho-nang-diu-dang-nu-tinh-trong-ngay-he-2015-2-228x300.jpg";s:5:"width";i:228;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:84:"vay-lien-xoe-tieu-thu-dep-cho-nang-diu-dang-nu-tinh-trong-ngay-he-2015-2-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:84:"vay-lien-xoe-tieu-thu-dep-cho-nang-diu-dang-nu-tinh-trong-ngay-he-2015-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:84:"vay-lien-xoe-tieu-thu-dep-cho-nang-diu-dang-nu-tinh-trong-ngay-he-2015-2-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:19:"sparklestore-slider";a:4:{s:4:"file";s:84:"vay-lien-xoe-tieu-thu-dep-cho-nang-diu-dang-nu-tinh-trong-ngay-he-2015-2-740x520.jpg";s:5:"width";i:740;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:84:"vay-lien-xoe-tieu-thu-dep-cho-nang-diu-dang-nu-tinh-trong-ngay-he-2015-2-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:84:"vay-lien-xoe-tieu-thu-dep-cho-nang-diu-dang-nu-tinh-trong-ngay-he-2015-2-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:84:"vay-lien-xoe-tieu-thu-dep-cho-nang-diu-dang-nu-tinh-trong-ngay-he-2015-2-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:84:"vay-lien-xoe-tieu-thu-dep-cho-nang-diu-dang-nu-tinh-trong-ngay-he-2015-2-740x385.jpg";s:5:"width";i:740;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1032, 134, '_wp_attached_file', '2017/01/vay-ren-xoe-17.jpg'),
(1033, 134, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:750;s:6:"height";i:872;s:4:"file";s:26:"2017/01/vay-ren-xoe-17.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"vay-ren-xoe-17-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"vay-ren-xoe-17-258x300.jpg";s:5:"width";i:258;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:26:"vay-ren-xoe-17-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:26:"vay-ren-xoe-17-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:26:"vay-ren-xoe-17-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:19:"sparklestore-slider";a:4:{s:4:"file";s:26:"vay-ren-xoe-17-750x520.jpg";s:5:"width";i:750;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:26:"vay-ren-xoe-17-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:26:"vay-ren-xoe-17-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:26:"vay-ren-xoe-17-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:26:"vay-ren-xoe-17-750x385.jpg";s:5:"width";i:750;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1035, 130, '_thumbnail_id', '131'),
(1036, 135, '_edit_last', '1'),
(1037, 135, '_edit_lock', '1484639207:1'),
(1038, 136, '_wp_attached_file', '2017/01/3-2.jpg'),
(1039, 136, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:695;s:6:"height";i:869;s:4:"file";s:15:"2017/01/3-2.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"3-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"3-2-240x300.jpg";s:5:"width";i:240;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:15:"3-2-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:15:"3-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:15:"3-2-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:19:"sparklestore-slider";a:4:{s:4:"file";s:15:"3-2-695x520.jpg";s:5:"width";i:695;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:15:"3-2-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:15:"3-2-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:15:"3-2-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:15:"3-2-695x385.jpg";s:5:"width";i:695;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1040, 137, '_wp_attached_file', '2017/01/234.jpg'),
(1041, 137, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:695;s:6:"height";i:869;s:4:"file";s:15:"2017/01/234.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"234-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"234-240x300.jpg";s:5:"width";i:240;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:15:"234-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:15:"234-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:15:"234-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:19:"sparklestore-slider";a:4:{s:4:"file";s:15:"234-695x520.jpg";s:5:"width";i:695;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:15:"234-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:15:"234-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:15:"234-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:15:"234-695x385.jpg";s:5:"width";i:695;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1042, 138, '_wp_attached_file', '2017/01/2334.jpg'),
(1043, 138, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:695;s:6:"height";i:869;s:4:"file";s:16:"2017/01/2334.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"2334-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"2334-240x300.jpg";s:5:"width";i:240;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"2334-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:16:"2334-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:16:"2334-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:19:"sparklestore-slider";a:4:{s:4:"file";s:16:"2334-695x520.jpg";s:5:"width";i:695;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:16:"2334-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:16:"2334-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:16:"2334-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:16:"2334-695x385.jpg";s:5:"width";i:695;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1044, 139, '_wp_attached_file', '2017/01/3333.jpg'),
(1045, 139, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:640;s:6:"height";i:800;s:4:"file";s:16:"2017/01/3333.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"3333-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"3333-240x300.jpg";s:5:"width";i:240;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:16:"3333-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:16:"3333-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:16:"3333-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:19:"sparklestore-slider";a:4:{s:4:"file";s:16:"3333-640x520.jpg";s:5:"width";i:640;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:16:"3333-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:16:"3333-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:16:"3333-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:16:"3333-640x385.jpg";s:5:"width";i:640;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1046, 135, '_visibility', 'visible'),
(1047, 135, '_stock_status', 'instock'),
(1048, 135, '_thumbnail_id', '136'),
(1049, 135, 'total_sales', '1'),
(1050, 135, '_downloadable', 'no'),
(1051, 135, '_virtual', 'no'),
(1052, 135, '_tax_status', 'taxable'),
(1053, 135, '_tax_class', ''),
(1054, 135, '_purchase_note', ''),
(1055, 135, '_featured', 'no'),
(1056, 135, '_weight', ''),
(1057, 135, '_length', ''),
(1058, 135, '_width', ''),
(1059, 135, '_height', ''),
(1060, 135, '_sku', ''),
(1061, 135, '_product_attributes', 'a:0:{}'),
(1062, 135, '_regular_price', '200.000'),
(1063, 135, '_sale_price', ''),
(1064, 135, '_sale_price_dates_from', ''),
(1065, 135, '_sale_price_dates_to', ''),
(1066, 135, '_price', '200.000'),
(1067, 135, '_sold_individually', ''),
(1068, 135, '_manage_stock', 'no'),
(1069, 135, '_backorders', 'no'),
(1070, 135, '_stock', ''),
(1071, 135, '_upsell_ids', 'a:0:{}'),
(1072, 135, '_crosssell_ids', 'a:0:{}'),
(1073, 135, '_product_version', '2.6.11'),
(1074, 135, '_product_image_gallery', '137,138,139'),
(1115, 79, '_wc_review_count', '0'),
(1156, 143, '_order_key', 'wc_order_587dcf4944d38'),
(1157, 143, '_order_currency', 'VND'),
(1158, 143, '_prices_include_tax', 'no'),
(1159, 143, '_customer_ip_address', '::1'),
(1160, 143, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36'),
(1161, 143, '_customer_user', '1'),
(1162, 143, '_created_via', 'checkout'),
(1163, 143, '_cart_hash', '0ee9ad25eb4fb27cae94d3146f0add29'),
(1164, 143, '_order_version', '2.6.11'),
(1165, 143, '_order_shipping', '20'),
(1166, 143, '_billing_first_name', 'Truong'),
(1167, 143, '_billing_last_name', 'Lai'),
(1168, 143, '_billing_company', 'PNV'),
(1169, 143, '_billing_email', 'truonglaipnv@gmail.com'),
(1170, 143, '_billing_phone', '01674815523'),
(1171, 143, '_billing_country', 'VN'),
(1172, 143, '_billing_address_1', 'Hồ Chí Minh'),
(1173, 143, '_billing_address_2', ''),
(1174, 143, '_billing_city', 'Hồ Chí Minh'),
(1175, 143, '_billing_state', 'HOCHIMINH'),
(1176, 143, '_billing_postcode', 'TRRTTRT'),
(1177, 143, '_shipping_first_name', 'Truong'),
(1178, 143, '_shipping_last_name', 'Lai'),
(1179, 143, '_shipping_company', 'PNV'),
(1180, 143, '_shipping_country', 'VN'),
(1181, 143, '_shipping_address_1', 'Hồ Chí Minh'),
(1182, 143, '_shipping_address_2', ''),
(1183, 143, '_shipping_city', 'Hồ Chí Minh'),
(1184, 143, '_shipping_state', 'HOCHIMINH'),
(1185, 143, '_shipping_postcode', 'TRRTTRT'),
(1186, 143, '_payment_method', 'cod'),
(1187, 143, '_payment_method_title', 'Cash on Delivery'),
(1188, 143, '_cart_discount', '0'),
(1189, 143, '_cart_discount_tax', '0'),
(1190, 143, '_order_tax', '140'),
(1191, 143, '_order_shipping_tax', '2'),
(1192, 143, '_order_total', '1562.00'),
(1193, 143, '_download_permissions_granted', '1'),
(1194, 143, '_recorded_sales', 'yes'),
(1195, 143, '_order_stock_reduced', '1'),
(1235, 146, '_order_key', 'wc_order_587dd31b76331'),
(1236, 146, '_order_currency', 'VND'),
(1237, 146, '_prices_include_tax', 'no'),
(1238, 146, '_customer_ip_address', '::1'),
(1239, 146, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36'),
(1240, 146, '_customer_user', '1'),
(1241, 146, '_created_via', 'checkout'),
(1242, 146, '_cart_hash', '8b6a978f699c1e78ab39289d0cc2b7d6'),
(1243, 146, '_order_version', '2.6.11'),
(1244, 146, '_order_shipping', '20'),
(1245, 146, '_billing_first_name', 'Truong'),
(1246, 146, '_billing_last_name', 'Lai'),
(1247, 146, '_billing_company', '1997'),
(1248, 146, '_billing_email', 'truonglaipnv@gmail.com'),
(1249, 146, '_billing_phone', '01674815523'),
(1250, 146, '_billing_country', 'VN'),
(1251, 146, '_billing_address_1', 'Đà Nẵng'),
(1252, 146, '_billing_address_2', ''),
(1253, 146, '_billing_city', 'Đà Nẵng'),
(1254, 146, '_billing_state', 'HOCHIMINH'),
(1255, 146, '_billing_postcode', 'TRRTTRT'),
(1256, 146, '_shipping_first_name', 'Truong'),
(1257, 146, '_shipping_last_name', 'Lai'),
(1258, 146, '_shipping_company', 'PNV'),
(1259, 146, '_shipping_country', 'VN'),
(1260, 146, '_shipping_address_1', 'Hồ Chí Minh'),
(1261, 146, '_shipping_address_2', ''),
(1262, 146, '_shipping_city', 'Hồ Chí Minh'),
(1263, 146, '_shipping_state', 'HOCHIMINH'),
(1264, 146, '_shipping_postcode', 'TRRTTRT'),
(1265, 146, '_payment_method', 'cod'),
(1266, 146, '_payment_method_title', 'Cash on Delivery'),
(1267, 146, '_cart_discount', '0'),
(1268, 146, '_cart_discount_tax', '0'),
(1269, 146, '_order_tax', '200'),
(1270, 146, '_order_shipping_tax', '2'),
(1271, 146, '_order_total', '2222.00'),
(1272, 146, '_download_permissions_granted', '1'),
(1273, 146, '_recorded_sales', 'yes'),
(1274, 146, '_order_stock_reduced', '1'),
(1275, 35, '_edit_lock', '1487239483:1'),
(1278, 148, '_order_key', 'wc_order_587de70449146'),
(1279, 148, '_order_currency', 'VND'),
(1280, 148, '_prices_include_tax', 'no'),
(1281, 148, '_customer_ip_address', '::1'),
(1282, 148, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36'),
(1283, 148, '_customer_user', '1'),
(1284, 148, '_created_via', 'checkout'),
(1285, 148, '_cart_hash', 'fae7a2e6b09a861a30164604e53b2a6c'),
(1286, 148, '_order_version', '2.6.11'),
(1287, 148, '_order_shipping', '20'),
(1288, 148, '_billing_first_name', 'Truong'),
(1289, 148, '_billing_last_name', 'Lai'),
(1290, 148, '_billing_company', '1997'),
(1291, 148, '_billing_email', 'truonglaipnv@gmail.com'),
(1292, 148, '_billing_phone', '01674815523'),
(1293, 148, '_billing_country', 'VN'),
(1294, 148, '_billing_address_1', 'Đà Nẵng'),
(1295, 148, '_billing_address_2', ''),
(1296, 148, '_billing_city', 'Đà Nẵng'),
(1297, 148, '_billing_state', 'HOCHIMINH'),
(1298, 148, '_billing_postcode', 'TRRTTRT'),
(1299, 148, '_shipping_first_name', 'Truong'),
(1300, 148, '_shipping_last_name', 'Lai'),
(1301, 148, '_shipping_company', 'PNV'),
(1302, 148, '_shipping_country', 'VN'),
(1303, 148, '_shipping_address_1', 'Hồ Chí Minh'),
(1304, 148, '_shipping_address_2', ''),
(1305, 148, '_shipping_city', 'Hồ Chí Minh'),
(1306, 148, '_shipping_state', 'HOCHIMINH'),
(1307, 148, '_shipping_postcode', 'TRRTTRT'),
(1308, 148, '_payment_method', 'cod'),
(1309, 148, '_payment_method_title', 'Cash on Delivery'),
(1310, 148, '_cart_discount', '0'),
(1311, 148, '_cart_discount_tax', '0'),
(1312, 148, '_order_tax', '80'),
(1313, 148, '_order_shipping_tax', '2'),
(1314, 148, '_order_total', '902.00'),
(1315, 148, '_download_permissions_granted', '1'),
(1316, 148, '_recorded_sales', 'yes'),
(1317, 148, '_order_stock_reduced', '1'),
(1330, 149, '_order_key', 'wc_order_587de8373d888'),
(1331, 149, '_order_currency', 'VND'),
(1332, 149, '_prices_include_tax', 'no'),
(1333, 149, '_customer_ip_address', '::1'),
(1334, 149, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36'),
(1335, 149, '_customer_user', '1'),
(1336, 149, '_created_via', 'checkout'),
(1337, 149, '_cart_hash', '820e820026a669a09d24ac84691066f9'),
(1338, 149, '_order_version', '2.6.11'),
(1339, 149, '_order_shipping', '20'),
(1340, 149, '_billing_first_name', 'Truong'),
(1341, 149, '_billing_last_name', 'Lai'),
(1342, 149, '_billing_company', '1997'),
(1343, 149, '_billing_email', 'ut.le121297@gmail.com'),
(1344, 149, '_billing_phone', '01674815523'),
(1345, 149, '_billing_country', 'VN'),
(1346, 149, '_billing_address_1', 'Đà Nẵng'),
(1347, 149, '_billing_address_2', ''),
(1348, 149, '_billing_city', 'Đà Nẵng'),
(1349, 149, '_billing_state', 'HOCHIMINH'),
(1350, 149, '_billing_postcode', 'TRRTTRT'),
(1351, 149, '_shipping_first_name', 'Truong'),
(1352, 149, '_shipping_last_name', 'Lai'),
(1353, 149, '_shipping_company', 'PNV'),
(1354, 149, '_shipping_country', 'VN'),
(1355, 149, '_shipping_address_1', 'Hồ Chí Minh'),
(1356, 149, '_shipping_address_2', ''),
(1357, 149, '_shipping_city', 'Hồ Chí Minh'),
(1358, 149, '_shipping_state', 'HOCHIMINH'),
(1359, 149, '_shipping_postcode', 'TRRTTRT'),
(1360, 149, '_payment_method', 'cod'),
(1361, 149, '_payment_method_title', 'Cash on Delivery'),
(1362, 149, '_cart_discount', '0'),
(1363, 149, '_cart_discount_tax', '0'),
(1364, 149, '_order_tax', '50'),
(1365, 149, '_order_shipping_tax', '2'),
(1366, 149, '_order_total', '572.00'),
(1367, 149, '_download_permissions_granted', '1'),
(1368, 149, '_recorded_sales', 'yes'),
(1369, 149, '_order_stock_reduced', '1'),
(1370, 152, '_order_key', 'wc_order_587ebc8c285d0'),
(1371, 152, '_order_currency', 'VND'),
(1372, 152, '_prices_include_tax', 'no'),
(1373, 152, '_customer_ip_address', '::1'),
(1374, 152, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36'),
(1375, 152, '_customer_user', '1'),
(1376, 152, '_created_via', 'checkout'),
(1377, 152, '_cart_hash', 'ebdeaf579d7571ca40522f2a2fcd70de'),
(1378, 152, '_order_version', '2.6.11'),
(1379, 152, '_order_shipping', '20'),
(1380, 152, '_billing_first_name', 'Truong'),
(1381, 152, '_billing_last_name', 'Lai'),
(1382, 152, '_billing_company', '1997'),
(1383, 152, '_billing_email', 'ut.le121297@gmail.com'),
(1384, 152, '_billing_phone', '01674815523'),
(1385, 152, '_billing_country', 'VN'),
(1386, 152, '_billing_address_1', 'Đà Nẵng'),
(1387, 152, '_billing_address_2', ''),
(1388, 152, '_billing_city', 'Đà Nẵng'),
(1389, 152, '_billing_state', 'HOCHIMINH'),
(1390, 152, '_billing_postcode', 'TRRTTRT'),
(1391, 152, '_shipping_first_name', 'Truong'),
(1392, 152, '_shipping_last_name', 'Lai'),
(1393, 152, '_shipping_company', 'PNV'),
(1394, 152, '_shipping_country', 'VN'),
(1395, 152, '_shipping_address_1', 'Hồ Chí Minh'),
(1396, 152, '_shipping_address_2', ''),
(1397, 152, '_shipping_city', 'Hồ Chí Minh'),
(1398, 152, '_shipping_state', 'HOCHIMINH'),
(1399, 152, '_shipping_postcode', 'TRRTTRT'),
(1400, 152, '_payment_method', 'cod'),
(1401, 152, '_payment_method_title', 'Cash on Delivery'),
(1402, 152, '_cart_discount', '0'),
(1403, 152, '_cart_discount_tax', '0'),
(1404, 152, '_order_tax', '50'),
(1405, 152, '_order_shipping_tax', '2'),
(1406, 152, '_order_total', '572.00'),
(1407, 152, '_download_permissions_granted', '1'),
(1408, 152, '_recorded_sales', 'yes'),
(1409, 152, '_order_stock_reduced', '1'),
(1410, 122, '_wc_rating_count', 'a:1:{i:1;s:1:"1";}'),
(1411, 122, '_wc_review_count', '1'),
(1412, 122, '_wc_average_rating', '1.00'),
(1415, 154, '_wp_attached_file', '2017/01/1635736104215966446.jpg'),
(1416, 154, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:490;s:6:"height";i:490;s:4:"file";s:31:"2017/01/1635736104215966446.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"1635736104215966446-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"1635736104215966446-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"yith-woocompare-image";a:4:{s:4:"file";s:31:"1635736104215966446-220x154.jpg";s:5:"width";i:220;s:6:"height";i:154;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:31:"1635736104215966446-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:31:"1635736104215966446-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:31:"1635736104215966446-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:31:"1635736104215966446-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:31:"1635736104215966446-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:31:"1635736104215966446-490x385.jpg";s:5:"width";i:490;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1417, 155, '_wp_attached_file', '2017/01/cach_chon_do_cho_nguoi_gay_chan_vong_kieng_cuc_chuan_14.jpg'),
(1418, 155, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:550;s:6:"height";i:825;s:4:"file";s:67:"2017/01/cach_chon_do_cho_nguoi_gay_chan_vong_kieng_cuc_chuan_14.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:4:{s:4:"file";s:67:"cach_chon_do_cho_nguoi_gay_chan_vong_kieng_cuc_chuan_14-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:67:"cach_chon_do_cho_nguoi_gay_chan_vong_kieng_cuc_chuan_14-200x300.jpg";s:5:"width";i:200;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"yith-woocompare-image";a:4:{s:4:"file";s:67:"cach_chon_do_cho_nguoi_gay_chan_vong_kieng_cuc_chuan_14-220x154.jpg";s:5:"width";i:220;s:6:"height";i:154;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:67:"cach_chon_do_cho_nguoi_gay_chan_vong_kieng_cuc_chuan_14-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:67:"cach_chon_do_cho_nguoi_gay_chan_vong_kieng_cuc_chuan_14-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:67:"cach_chon_do_cho_nguoi_gay_chan_vong_kieng_cuc_chuan_14-550x600.jpg";s:5:"width";i:550;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:19:"sparklestore-slider";a:4:{s:4:"file";s:67:"cach_chon_do_cho_nguoi_gay_chan_vong_kieng_cuc_chuan_14-550x520.jpg";s:5:"width";i:550;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:67:"cach_chon_do_cho_nguoi_gay_chan_vong_kieng_cuc_chuan_14-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:67:"cach_chon_do_cho_nguoi_gay_chan_vong_kieng_cuc_chuan_14-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:67:"cach_chon_do_cho_nguoi_gay_chan_vong_kieng_cuc_chuan_14-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:67:"cach_chon_do_cho_nguoi_gay_chan_vong_kieng_cuc_chuan_14-550x385.jpg";s:5:"width";i:550;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1419, 156, '_wp_attached_file', '2017/01/vay-do-quyen-ru-1-phunutoday_vn.jpg'),
(1420, 156, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:584;s:4:"file";s:43:"2017/01/vay-do-quyen-ru-1-phunutoday_vn.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:43:"vay-do-quyen-ru-1-phunutoday_vn-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:43:"vay-do-quyen-ru-1-phunutoday_vn-257x300.jpg";s:5:"width";i:257;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"yith-woocompare-image";a:4:{s:4:"file";s:43:"vay-do-quyen-ru-1-phunutoday_vn-220x154.jpg";s:5:"width";i:220;s:6:"height";i:154;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:43:"vay-do-quyen-ru-1-phunutoday_vn-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:43:"vay-do-quyen-ru-1-phunutoday_vn-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:19:"sparklestore-slider";a:4:{s:4:"file";s:43:"vay-do-quyen-ru-1-phunutoday_vn-500x520.jpg";s:5:"width";i:500;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:43:"vay-do-quyen-ru-1-phunutoday_vn-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:43:"vay-do-quyen-ru-1-phunutoday_vn-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:43:"vay-do-quyen-ru-1-phunutoday_vn-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:43:"vay-do-quyen-ru-1-phunutoday_vn-500x385.jpg";s:5:"width";i:500;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1421, 157, '_wp_attached_file', '2017/01/cac-ban-gai-khong-nen-bo-qua-nhung-chiec-vay-den-trang-dep-bat-mat-giup-cac-nang-thanh-lich-va-quy-phai-104202.jpg'),
(1422, 157, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:486;s:6:"height";i:583;s:4:"file";s:122:"2017/01/cac-ban-gai-khong-nen-bo-qua-nhung-chiec-vay-den-trang-dep-bat-mat-giup-cac-nang-thanh-lich-va-quy-phai-104202.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:122:"cac-ban-gai-khong-nen-bo-qua-nhung-chiec-vay-den-trang-dep-bat-mat-giup-cac-nang-thanh-lich-va-quy-phai-104202-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:122:"cac-ban-gai-khong-nen-bo-qua-nhung-chiec-vay-den-trang-dep-bat-mat-giup-cac-nang-thanh-lich-va-quy-phai-104202-250x300.jpg";s:5:"width";i:250;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"yith-woocompare-image";a:4:{s:4:"file";s:122:"cac-ban-gai-khong-nen-bo-qua-nhung-chiec-vay-den-trang-dep-bat-mat-giup-cac-nang-thanh-lich-va-quy-phai-104202-220x154.jpg";s:5:"width";i:220;s:6:"height";i:154;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:122:"cac-ban-gai-khong-nen-bo-qua-nhung-chiec-vay-den-trang-dep-bat-mat-giup-cac-nang-thanh-lich-va-quy-phai-104202-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:122:"cac-ban-gai-khong-nen-bo-qua-nhung-chiec-vay-den-trang-dep-bat-mat-giup-cac-nang-thanh-lich-va-quy-phai-104202-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:19:"sparklestore-slider";a:4:{s:4:"file";s:122:"cac-ban-gai-khong-nen-bo-qua-nhung-chiec-vay-den-trang-dep-bat-mat-giup-cac-nang-thanh-lich-va-quy-phai-104202-486x520.jpg";s:5:"width";i:486;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:122:"cac-ban-gai-khong-nen-bo-qua-nhung-chiec-vay-den-trang-dep-bat-mat-giup-cac-nang-thanh-lich-va-quy-phai-104202-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:122:"cac-ban-gai-khong-nen-bo-qua-nhung-chiec-vay-den-trang-dep-bat-mat-giup-cac-nang-thanh-lich-va-quy-phai-104202-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:122:"cac-ban-gai-khong-nen-bo-qua-nhung-chiec-vay-den-trang-dep-bat-mat-giup-cac-nang-thanh-lich-va-quy-phai-104202-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:122:"cac-ban-gai-khong-nen-bo-qua-nhung-chiec-vay-den-trang-dep-bat-mat-giup-cac-nang-thanh-lich-va-quy-phai-104202-486x385.jpg";s:5:"width";i:486;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1423, 158, '_wp_attached_file', '2017/01/cac-ban-gai-khong-nen-bo-qua-nhung-chiec-vay-den-trang-dep-bat-mat-giup-cac-nang-thanh-lich-va-quy-phai-104203.jpg'),
(1424, 158, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:580;s:6:"height";i:722;s:4:"file";s:122:"2017/01/cac-ban-gai-khong-nen-bo-qua-nhung-chiec-vay-den-trang-dep-bat-mat-giup-cac-nang-thanh-lich-va-quy-phai-104203.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:4:{s:4:"file";s:122:"cac-ban-gai-khong-nen-bo-qua-nhung-chiec-vay-den-trang-dep-bat-mat-giup-cac-nang-thanh-lich-va-quy-phai-104203-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:122:"cac-ban-gai-khong-nen-bo-qua-nhung-chiec-vay-den-trang-dep-bat-mat-giup-cac-nang-thanh-lich-va-quy-phai-104203-241x300.jpg";s:5:"width";i:241;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"yith-woocompare-image";a:4:{s:4:"file";s:122:"cac-ban-gai-khong-nen-bo-qua-nhung-chiec-vay-den-trang-dep-bat-mat-giup-cac-nang-thanh-lich-va-quy-phai-104203-220x154.jpg";s:5:"width";i:220;s:6:"height";i:154;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:122:"cac-ban-gai-khong-nen-bo-qua-nhung-chiec-vay-den-trang-dep-bat-mat-giup-cac-nang-thanh-lich-va-quy-phai-104203-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:122:"cac-ban-gai-khong-nen-bo-qua-nhung-chiec-vay-den-trang-dep-bat-mat-giup-cac-nang-thanh-lich-va-quy-phai-104203-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:122:"cac-ban-gai-khong-nen-bo-qua-nhung-chiec-vay-den-trang-dep-bat-mat-giup-cac-nang-thanh-lich-va-quy-phai-104203-580x600.jpg";s:5:"width";i:580;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:19:"sparklestore-slider";a:4:{s:4:"file";s:122:"cac-ban-gai-khong-nen-bo-qua-nhung-chiec-vay-den-trang-dep-bat-mat-giup-cac-nang-thanh-lich-va-quy-phai-104203-580x520.jpg";s:5:"width";i:580;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:122:"cac-ban-gai-khong-nen-bo-qua-nhung-chiec-vay-den-trang-dep-bat-mat-giup-cac-nang-thanh-lich-va-quy-phai-104203-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:122:"cac-ban-gai-khong-nen-bo-qua-nhung-chiec-vay-den-trang-dep-bat-mat-giup-cac-nang-thanh-lich-va-quy-phai-104203-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:122:"cac-ban-gai-khong-nen-bo-qua-nhung-chiec-vay-den-trang-dep-bat-mat-giup-cac-nang-thanh-lich-va-quy-phai-104203-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:122:"cac-ban-gai-khong-nen-bo-qua-nhung-chiec-vay-den-trang-dep-bat-mat-giup-cac-nang-thanh-lich-va-quy-phai-104203-580x385.jpg";s:5:"width";i:580;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1425, 159, '_wp_attached_file', '2017/01/vay-den-trang-1phunutoday-6.jpg'),
(1426, 159, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:1200;s:4:"file";s:39:"2017/01/vay-den-trang-1phunutoday-6.jpg";s:5:"sizes";a:13:{s:9:"thumbnail";a:4:{s:4:"file";s:39:"vay-den-trang-1phunutoday-6-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:39:"vay-den-trang-1phunutoday-6-240x300.jpg";s:5:"width";i:240;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:39:"vay-den-trang-1phunutoday-6-768x960.jpg";s:5:"width";i:768;s:6:"height";i:960;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:40:"vay-den-trang-1phunutoday-6-819x1024.jpg";s:5:"width";i:819;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:21:"yith-woocompare-image";a:4:{s:4:"file";s:39:"vay-den-trang-1phunutoday-6-220x154.jpg";s:5:"width";i:220;s:6:"height";i:154;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:39:"vay-den-trang-1phunutoday-6-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:39:"vay-den-trang-1phunutoday-6-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:39:"vay-den-trang-1phunutoday-6-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:19:"sparklestore-slider";a:4:{s:4:"file";s:39:"vay-den-trang-1phunutoday-6-960x520.jpg";s:5:"width";i:960;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:39:"vay-den-trang-1phunutoday-6-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:39:"vay-den-trang-1phunutoday-6-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:39:"vay-den-trang-1phunutoday-6-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:39:"vay-den-trang-1phunutoday-6-760x385.jpg";s:5:"width";i:760;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1427, 160, '_order_key', 'wc_order_587eeafcc0a9d'),
(1428, 160, '_order_currency', 'VND'),
(1429, 160, '_prices_include_tax', 'no'),
(1430, 160, '_customer_ip_address', '::1'),
(1431, 160, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 Safari/537.36'),
(1432, 160, '_customer_user', '1'),
(1433, 160, '_created_via', 'checkout'),
(1434, 160, '_cart_hash', '7aa6a52526f9d4571ab310dd5c425003'),
(1435, 160, '_order_version', '2.6.11'),
(1436, 160, '_order_shipping', '20'),
(1437, 160, '_billing_first_name', 'Truong'),
(1438, 160, '_billing_last_name', 'Lai'),
(1439, 160, '_billing_company', '1997'),
(1440, 160, '_billing_email', 'nguyet.tran@student.passerellesnumeriques.org'),
(1441, 160, '_billing_phone', '01674815523'),
(1442, 160, '_billing_country', 'VN'),
(1443, 160, '_billing_address_1', 'Đà Nẵng'),
(1444, 160, '_billing_address_2', ''),
(1445, 160, '_billing_city', 'Đà Nẵng'),
(1446, 160, '_billing_state', 'HOCHIMINH'),
(1447, 160, '_billing_postcode', 'TRRTTRT'),
(1448, 160, '_shipping_first_name', 'Truong'),
(1449, 160, '_shipping_last_name', 'Lai'),
(1450, 160, '_shipping_company', 'PNV'),
(1451, 160, '_shipping_country', 'VN'),
(1452, 160, '_shipping_address_1', 'Hồ Chí Minh'),
(1453, 160, '_shipping_address_2', ''),
(1454, 160, '_shipping_city', 'Hồ Chí Minh'),
(1455, 160, '_shipping_state', 'HOCHIMINH'),
(1456, 160, '_shipping_postcode', 'TRRTTRT'),
(1457, 160, '_payment_method', 'cod'),
(1458, 160, '_payment_method_title', 'Cash on Delivery'),
(1459, 160, '_cart_discount', '0'),
(1460, 160, '_cart_discount_tax', '0'),
(1461, 160, '_order_tax', '100'),
(1462, 160, '_order_shipping_tax', '2'),
(1463, 160, '_order_total', '1122.00'),
(1464, 160, '_download_permissions_granted', '1'),
(1465, 160, '_recorded_sales', 'yes'),
(1466, 160, '_order_stock_reduced', '1'),
(1468, 34, '_edit_lock', '1486384148:1'),
(1469, 37, '_edit_lock', '1486384133:1'),
(1470, 36, '_edit_lock', '1486385718:1'),
(1471, 63, '_wc_review_count', '0'),
(1472, 72, '_wc_review_count', '0'),
(1475, 56, '_wc_rating_count', 'a:1:{i:5;s:1:"1";}'),
(1476, 56, '_wc_review_count', '1'),
(1477, 56, '_wc_average_rating', '5.00'),
(1478, 54, '_wc_rating_count', 'a:1:{i:4;s:1:"1";}'),
(1479, 54, '_wc_review_count', '1'),
(1480, 54, '_wc_average_rating', '4.00'),
(1481, 49, '_wc_rating_count', 'a:1:{i:3;s:1:"1";}'),
(1482, 49, '_wc_review_count', '1'),
(1483, 49, '_wc_average_rating', '3.00'),
(1487, 111, '_wc_rating_count', 'a:1:{i:4;s:1:"1";}'),
(1488, 111, '_wc_review_count', '1'),
(1489, 111, '_wc_average_rating', '4.00'),
(1490, 35, '_edit_last', '1'),
(1491, 35, '_wp_page_template', 'default'),
(1492, 35, 'sparklestore_page_layouts', 'rightsidebar'),
(1493, 175, '_order_key', 'wc_order_58a57a5d88c0d'),
(1494, 175, '_order_currency', 'VND'),
(1495, 175, '_prices_include_tax', 'no'),
(1496, 175, '_customer_ip_address', '::1'),
(1497, 175, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36'),
(1498, 175, '_customer_user', '1'),
(1499, 175, '_created_via', 'checkout'),
(1500, 175, '_cart_hash', '6930101d24496b7b822f63c934506703'),
(1501, 175, '_order_version', '2.6.11'),
(1502, 175, '_order_shipping', '20'),
(1503, 175, '_billing_first_name', 'Truong'),
(1504, 175, '_billing_last_name', 'Lai'),
(1505, 175, '_billing_company', '1997'),
(1506, 175, '_billing_email', 'truonglai1809@gmail.com'),
(1507, 175, '_billing_phone', '01674815523'),
(1508, 175, '_billing_country', 'VN'),
(1509, 175, '_billing_address_1', 'Đà Nẵng'),
(1510, 175, '_billing_address_2', ''),
(1511, 175, '_billing_city', 'Đà Nẵng'),
(1512, 175, '_billing_state', 'HOCHIMINH'),
(1513, 175, '_billing_postcode', 'TRRTTRT'),
(1514, 175, '_shipping_first_name', 'Truong'),
(1515, 175, '_shipping_last_name', 'Lai'),
(1516, 175, '_shipping_company', 'PNV'),
(1517, 175, '_shipping_country', 'VN'),
(1518, 175, '_shipping_address_1', 'Hồ Chí Minh'),
(1519, 175, '_shipping_address_2', ''),
(1520, 175, '_shipping_city', 'Hồ Chí Minh'),
(1521, 175, '_shipping_state', 'HOCHIMINH'),
(1522, 175, '_shipping_postcode', 'TRRTTRT'),
(1523, 175, '_payment_method', 'bacs'),
(1524, 175, '_payment_method_title', 'Direct Bank Transfer'),
(1525, 175, '_cart_discount', '0'),
(1526, 175, '_cart_discount_tax', '0'),
(1527, 175, '_order_tax', '173'),
(1528, 175, '_order_shipping_tax', '2'),
(1529, 175, '_order_total', '1925.00'),
(1530, 175, '_recorded_sales', 'yes'),
(1531, 175, '_order_stock_reduced', '1'),
(1532, 177, '_wp_attached_file', '2017/01/vay-trang-du-tiec-cuoi.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1533, 177, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:822;s:4:"file";s:34:"2017/01/vay-trang-du-tiec-cuoi.jpg";s:5:"sizes";a:11:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"vay-trang-du-tiec-cuoi-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:34:"vay-trang-du-tiec-cuoi-219x300.jpg";s:5:"width";i:219;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"yith-woocompare-image";a:4:{s:4:"file";s:34:"vay-trang-du-tiec-cuoi-220x154.jpg";s:5:"width";i:220;s:6:"height";i:154;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:34:"vay-trang-du-tiec-cuoi-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:34:"vay-trang-du-tiec-cuoi-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:34:"vay-trang-du-tiec-cuoi-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:19:"sparklestore-slider";a:4:{s:4:"file";s:34:"vay-trang-du-tiec-cuoi-600x520.jpg";s:5:"width";i:600;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:34:"vay-trang-du-tiec-cuoi-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:34:"vay-trang-du-tiec-cuoi-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:34:"vay-trang-du-tiec-cuoi-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:34:"vay-trang-du-tiec-cuoi-600x385.jpg";s:5:"width";i:600;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1543, 112, '_wc_rating_count', 'a:3:{i:2;s:1:"1";i:3;s:1:"1";i:5;s:1:"1";}'),
(1544, 112, '_wc_review_count', '3'),
(1545, 112, '_wc_average_rating', '3.33'),
(1546, 22, 'dw_reaction_total_liked', '1'),
(1548, 22, 'dw_reaction_like', '1'),
(1552, 151, 'dw_reaction_total_liked', '1'),
(1554, 107, '_wc_rating_count', 'a:1:{i:2;s:1:"1";}'),
(1555, 107, '_wc_review_count', '1'),
(1556, 107, '_wc_average_rating', '2.00'),
(1559, 187, '_wp_attached_file', '2017/02/V3221-1G.jpg'),
(1560, 187, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:780;s:6:"height";i:1100;s:4:"file";s:20:"2017/02/V3221-1G.jpg";s:5:"sizes";a:13:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"V3221-1G-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"V3221-1G-213x300.jpg";s:5:"width";i:213;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"V3221-1G-768x1083.jpg";s:5:"width";i:768;s:6:"height";i:1083;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"V3221-1G-726x1024.jpg";s:5:"width";i:726;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:21:"yith-woocompare-image";a:4:{s:4:"file";s:20:"V3221-1G-220x154.jpg";s:5:"width";i:220;s:6:"height";i:154;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"V3221-1G-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"V3221-1G-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"V3221-1G-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:19:"sparklestore-slider";a:4:{s:4:"file";s:20:"V3221-1G-780x520.jpg";s:5:"width";i:780;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:20:"V3221-1G-350x230.jpg";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:20:"V3221-1G-285x370.jpg";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:20:"V3221-1G-300x470.jpg";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:10:"image/jpeg";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:20:"V3221-1G-760x385.jpg";s:5:"width";i:760;s:6:"height";i:385;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1569, 190, '_wp_attached_file', '2017/02/1_441.gif'),
(1570, 190, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:677;s:4:"file";s:17:"2017/02/1_441.gif";s:5:"sizes";a:11:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"1_441-150x150.gif";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/gif";}s:6:"medium";a:4:{s:4:"file";s:17:"1_441-222x300.gif";s:5:"width";i:222;s:6:"height";i:300;s:9:"mime-type";s:9:"image/gif";}s:21:"yith-woocompare-image";a:4:{s:4:"file";s:17:"1_441-220x154.gif";s:5:"width";i:220;s:6:"height";i:154;s:9:"mime-type";s:9:"image/gif";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:17:"1_441-180x180.gif";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/gif";}s:12:"shop_catalog";a:4:{s:4:"file";s:17:"1_441-300x300.gif";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/gif";}s:11:"shop_single";a:4:{s:4:"file";s:17:"1_441-500x600.gif";s:5:"width";i:500;s:6:"height";i:600;s:9:"mime-type";s:9:"image/gif";}s:19:"sparklestore-slider";a:4:{s:4:"file";s:17:"1_441-500x520.gif";s:5:"width";i:500;s:6:"height";i:520;s:9:"mime-type";s:9:"image/gif";}s:22:"sparklestore-home-blog";a:4:{s:4:"file";s:17:"1_441-350x230.gif";s:5:"width";i:350;s:6:"height";i:230;s:9:"mime-type";s:9:"image/gif";}s:33:"sparklestore-cat-collection-image";a:4:{s:4:"file";s:17:"1_441-285x370.gif";s:5:"width";i:285;s:6:"height";i:370;s:9:"mime-type";s:9:"image/gif";}s:22:"sparklestore-cat-image";a:4:{s:4:"file";s:17:"1_441-300x470.gif";s:5:"width";i:300;s:6:"height";i:470;s:9:"mime-type";s:9:"image/gif";}s:18:"sparklestore-blogs";a:4:{s:4:"file";s:17:"1_441-500x385.gif";s:5:"width";i:500;s:6:"height";i:385;s:9:"mime-type";s:9:"image/gif";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1577, 151, 'dw_reaction_haha', '1'),
(1580, 105, '_wc_rating_count', 'a:1:{i:5;s:1:"1";}'),
(1581, 105, '_wc_review_count', '1'),
(1582, 105, '_wc_average_rating', '5.00'),
(1583, 135, '_wc_rating_count', 'a:1:{i:4;s:1:"1";}'),
(1584, 135, '_wc_review_count', '1'),
(1585, 135, '_wc_average_rating', '4.00'),
(1586, 130, '_wc_rating_count', 'a:1:{i:4;s:1:"1";}'),
(1587, 130, '_wc_review_count', '1'),
(1588, 130, '_wc_average_rating', '4.00'),
(1589, 193, '_wp_trash_meta_status', 'publish'),
(1590, 193, '_wp_trash_meta_time', '1487301860'),
(1606, 186, '_edit_last', '1'),
(1608, 186, 'sparklestore_page_layouts', 'rightsidebar'),
(1609, 186, 'dw_reaction_total_liked', '1'),
(1610, 186, 'dw_reaction_love', '1'),
(1611, 189, '_edit_last', '1'),
(1613, 189, 'sparklestore_page_layouts', 'rightsidebar'),
(1614, 189, 'dw_reaction_total_liked', '1'),
(1618, 186, '_edit_last', '1'),
(1620, 186, 'sparklestore_page_layouts', 'rightsidebar'),
(1621, 186, 'dw_reaction_total_liked', '1'),
(1622, 186, 'dw_reaction_love', '1'),
(1623, 189, '_edit_last', '1'),
(1625, 189, 'sparklestore_page_layouts', 'rightsidebar'),
(1626, 189, 'dw_reaction_total_liked', '1'),
(1628, 189, '_edit_lock', '1487313774:1'),
(1631, 186, '_edit_lock', '1487315981:1'),
(1634, 201, '_wp_trash_meta_status', 'publish'),
(1635, 201, '_wp_trash_meta_time', '1487315674'),
(1638, 123, '_wc_rating_count', 'a:1:{i:4;s:1:"1";}'),
(1639, 123, '_wc_review_count', '1'),
(1640, 123, '_wc_average_rating', '4.00'),
(1641, 189, 'dw_reaction_like', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(16, 1, '2017-01-15 02:09:28', '2017-01-15 02:09:28', 'http://localhost/wp/wp-content/uploads/2017/01/sparklestore.1.0.5.zip', 'sparklestore.1.0.5.zip', '', 'private', 'open', 'closed', '', 'sparklestore-1-0-5-zip', '', '', '2017-01-15 02:09:28', '2017-01-15 02:09:28', '', 0, 'http://localhost/wp/wp-content/uploads/2017/01/sparklestore.1.0.5.zip', 0, 'attachment', '', 0),
(20, 1, '2017-01-15 02:17:58', '2017-01-15 02:17:58', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-02-09 10:01:43', '2017-02-09 10:01:43', '', 0, 'http://localhost/wp/?page_id=20', 0, 'page', '', 0),
(21, 1, '2017-01-15 02:17:58', '2017-01-15 02:17:58', '', 'Home', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2017-01-15 02:17:58', '2017-01-15 02:17:58', '', 20, 'http://localhost/wp/2017/01/15/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2017-01-15 02:18:32', '2017-01-15 02:18:32', 'Look like the ultimate knit girl in our collection of the latest on-trend women''s knitwear. A new season essential that is guaranteed to keep you looking on point whilst fighting off the chill. From chunky cable knits, fine layering pieces and throw on cardigans in oversized and figure flattering silhouettes. Work it like a layer player and team your knits with a statement oversized coat and off-duty denim for every day, or dress them up and pair a roll neck with a high waisted skirt and knee high boots. Ace your layers and never be without a stand out knitted piece this season.<img class="wp-image-177 aligncenter" src="http://localhost/wp/wp-content/uploads/2017/01/vay-trang-du-tiec-cuoi-219x300.jpg" alt="" width="241" height="331" />', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2017-02-23 00:58:26', '2017-02-23 00:58:26', '', 0, 'http://localhost/wp/?page_id=22', 0, 'page', '', 0),
(23, 1, '2017-01-15 02:18:32', '2017-01-15 02:18:32', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2017-01-15 02:18:32', '2017-01-15 02:18:32', '', 22, 'http://localhost/wp/2017/01/15/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2017-01-15 02:18:42', '2017-01-15 02:18:42', '[contact-form-7 id="91" title="Contact form 1"]', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2017-01-15 04:37:11', '2017-01-15 04:37:11', '', 0, 'http://localhost/wp/?page_id=24', 0, 'page', '', 0),
(25, 1, '2017-01-15 02:18:42', '2017-01-15 02:18:42', '', 'Contact us', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2017-01-15 02:18:42', '2017-01-15 02:18:42', '', 24, 'http://localhost/wp/2017/01/15/24-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2017-01-15 02:18:53', '2017-01-15 02:18:53', '', 'Blogs', '', 'publish', 'closed', 'closed', '', 'blogs', '', '', '2017-01-15 02:43:13', '2017-01-15 02:43:13', '', 0, 'http://localhost/wp/?page_id=26', 0, 'page', '', 0),
(27, 1, '2017-01-15 02:18:53', '2017-01-15 02:18:53', '', 'Blogs', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2017-01-15 02:18:53', '2017-01-15 02:18:53', '', 26, 'http://localhost/wp/2017/01/15/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2017-01-15 02:20:36', '2017-01-15 02:20:36', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2017-01-15 02:21:13', '2017-01-15 02:21:13', '', 0, 'http://localhost/wp/?p=28', 4, 'nav_menu_item', '', 0),
(29, 1, '2017-01-15 02:20:35', '2017-01-15 02:20:35', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2017-01-15 02:21:13', '2017-01-15 02:21:13', '', 0, 'http://localhost/wp/?p=29', 3, 'nav_menu_item', '', 0),
(30, 1, '2017-01-15 02:20:35', '2017-01-15 02:20:35', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2017-01-15 02:21:13', '2017-01-15 02:21:13', '', 0, 'http://localhost/wp/?p=30', 2, 'nav_menu_item', '', 0),
(31, 1, '2017-01-15 02:20:35', '2017-01-15 02:20:35', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2017-01-15 02:21:13', '2017-01-15 02:21:13', '', 0, 'http://localhost/wp/?p=31', 1, 'nav_menu_item', '', 0),
(34, 1, '2017-01-15 02:24:09', '2017-01-15 02:24:09', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2017-01-15 02:24:09', '2017-01-15 02:24:09', '', 0, 'http://localhost/wp/shop/', 0, 'page', '', 0),
(35, 1, '2017-01-15 02:24:09', '2017-01-15 02:24:09', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2017-02-16 10:07:04', '2017-02-16 10:07:04', '', 0, 'http://localhost/wp/cart/', 0, 'page', '', 0),
(36, 1, '2017-01-15 02:24:10', '2017-01-15 02:24:10', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2017-01-15 02:24:10', '2017-01-15 02:24:10', '', 0, 'http://localhost/wp/checkout/', 0, 'page', '', 0),
(37, 1, '2017-01-15 02:24:10', '2017-01-15 02:24:10', '[woocommerce_my_account]', 'My Account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2017-01-15 02:24:10', '2017-01-15 02:24:10', '', 0, 'http://localhost/wp/my-account/', 0, 'page', '', 0),
(40, 1, '2017-01-15 02:34:20', '2017-01-15 02:34:20', '', 'slide-img2', '', 'inherit', 'open', 'closed', '', 'slide-img2', '', '', '2017-01-15 02:34:20', '2017-01-15 02:34:20', '', 20, 'http://localhost/wp/wp-content/uploads/2017/01/slide-img2.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2017-01-15 02:36:41', '2017-01-15 02:36:41', '', 'slide-img3', '', 'inherit', 'open', 'closed', '', 'slide-img3', '', '', '2017-01-15 02:36:41', '2017-01-15 02:36:41', '', 20, 'http://localhost/wp/wp-content/uploads/2017/01/slide-img3.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2017-01-15 02:38:17', '2017-01-15 02:38:17', '', 'slide-img', '', 'inherit', 'open', 'closed', '', 'slide-img', '', '', '2017-01-15 02:38:17', '2017-01-15 02:38:17', '', 20, 'http://localhost/wp/wp-content/uploads/2017/01/slide-img.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2017-01-15 02:40:27', '2017-01-15 02:40:27', '', 'slider_3', '', 'inherit', 'open', 'closed', '', 'slider_3', '', '', '2017-01-15 02:40:27', '2017-01-15 02:40:27', '', 20, 'http://localhost/wp/wp-content/uploads/2017/01/slider_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2017-01-15 02:41:13', '2017-01-15 02:41:13', '', 'slider_2', '', 'inherit', 'open', 'closed', '', 'slider_2', '', '', '2017-01-15 02:41:13', '2017-01-15 02:41:13', '', 26, 'http://localhost/wp/wp-content/uploads/2017/01/slider_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2017-01-15 03:00:27', '2017-01-15 03:00:27', '', 'Đầm liền cổ bẻ ko tay dáng xòe kiểu váy organza.', '', 'publish', 'open', 'closed', '', 'dam-lien-co-be-ko-tay-dang-xoe-kieu-vay-organza', '', '', '2017-01-15 03:00:57', '2017-01-15 03:00:57', '', 0, 'http://localhost/wp/?post_type=product&#038;p=49', 0, 'product', '', 1),
(50, 1, '2017-01-15 02:59:11', '2017-01-15 02:59:11', '', '0405-6-2', '', 'inherit', 'open', 'closed', '', '0405-6-2', '', '', '2017-01-15 02:59:11', '2017-01-15 02:59:11', '', 49, 'http://localhost/wp/wp-content/uploads/2017/01/0405-6-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2017-01-15 03:07:15', '2017-01-15 03:07:15', '', '0605-1-3', '', 'inherit', 'open', 'closed', '', '0605-1-3', '', '', '2017-01-15 03:07:15', '2017-01-15 03:07:15', '', 0, 'http://localhost/wp/wp-content/uploads/2017/01/0605-1-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2017-01-15 03:15:28', '2017-01-15 03:15:28', '', '0405-4-4', '', 'inherit', 'open', 'closed', '', '0405-4-4', '', '', '2017-01-15 03:15:28', '2017-01-15 03:15:28', '', 0, 'http://localhost/wp/wp-content/uploads/2017/01/0405-4-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2017-01-15 03:18:25', '2017-01-15 03:18:25', '', 'Đầm liền cổ tròn ko tay dáng xòe, kiểu chấm bi', '', 'publish', 'open', 'closed', '', 'dam-lien-co-tron-ko-tay-dang-xoe-kieu-cham-bi', '', '', '2017-01-15 03:18:25', '2017-01-15 03:18:25', '', 0, 'http://localhost/wp/?post_type=product&#038;p=54', 0, 'product', '', 1),
(55, 1, '2017-01-15 03:18:00', '2017-01-15 03:18:00', '', '0405-3-6', '', 'inherit', 'open', 'closed', '', '0405-3-6', '', '', '2017-01-15 03:18:00', '2017-01-15 03:18:00', '', 54, 'http://localhost/wp/wp-content/uploads/2017/01/0405-3-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2017-01-15 03:20:42', '2017-01-15 03:20:42', '', 'Đầm liền cổ V,vạt lệch hình in đá cẩm thạch', '', 'publish', 'open', 'closed', '', 'dam-lien-co-vvat-lech-hinh-in-da-cam-thach', '', '', '2017-01-18 03:35:35', '2017-01-18 03:35:35', '', 0, 'http://localhost/wp/?post_type=product&#038;p=56', 0, 'product', '', 1),
(57, 1, '2017-01-15 03:20:22', '2017-01-15 03:20:22', '', '0405-2-4', '', 'inherit', 'open', 'closed', '', '0405-2-4', '', '', '2017-01-15 03:20:22', '2017-01-15 03:20:22', '', 56, 'http://localhost/wp/wp-content/uploads/2017/01/0405-2-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2017-01-15 03:29:04', '2017-01-15 03:29:04', '', '1601-2-3-a90476be-ca8d-47a3-af47-2e218661fb1d', '', 'inherit', 'open', 'closed', '', '1601-2-3-a90476be-ca8d-47a3-af47-2e218661fb1d', '', '', '2017-01-15 03:29:04', '2017-01-15 03:29:04', '', 0, 'http://localhost/wp/wp-content/uploads/2017/01/1601-2-3-a90476be-ca8d-47a3-af47-2e218661fb1d.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2017-01-15 03:36:50', '2017-01-15 03:36:50', '', 'Đồng hồ nữ dây da thật,mặt đá thạch anh gắn đá.', '', 'publish', 'open', 'closed', '', 'dong-ho-nu-day-da-thatmat-da-thach-anh-gan-da', '', '', '2017-01-15 03:36:50', '2017-01-15 03:36:50', '', 0, 'http://localhost/wp/?post_type=product&#038;p=59', 0, 'product', '', 0),
(60, 1, '2017-01-15 03:36:20', '2017-01-15 03:36:20', '', '0605-1-3', '', 'inherit', 'open', 'closed', '', '0605-1-3-2', '', '', '2017-01-15 03:36:20', '2017-01-15 03:36:20', '', 59, 'http://localhost/wp/wp-content/uploads/2017/01/0605-1-3-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2017-01-15 03:39:28', '2017-01-15 03:39:28', '', 'Đồng hồ,da thời trang mặt thạch anh gắn đá.', '', 'publish', 'open', 'closed', '', 'dong-hoda-thoi-trang-mat-thach-anh-gan-da', '', '', '2017-01-15 03:39:28', '2017-01-15 03:39:28', '', 0, 'http://localhost/wp/?post_type=product&#038;p=61', 0, 'product', '', 0),
(62, 1, '2017-01-15 03:39:14', '2017-01-15 03:39:14', '', '0505-3-1-d61404cd-74a1-41e4-b537-5417aa135992', '', 'inherit', 'open', 'closed', '', '0505-3-1-d61404cd-74a1-41e4-b537-5417aa135992', '', '', '2017-01-15 03:39:14', '2017-01-15 03:39:14', '', 61, 'http://localhost/wp/wp-content/uploads/2017/01/0505-3-1-d61404cd-74a1-41e4-b537-5417aa135992.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2017-01-15 03:42:01', '2017-01-15 03:42:01', '', 'Đồng hộ nữ thời trang hàn quốc,mặt thạch anh dây da.', '', 'publish', 'open', 'closed', '', 'dong-ho-nu-thoi-trang-han-quocmat-thach-anh-day-da', '', '', '2017-01-15 03:42:01', '2017-01-15 03:42:01', '', 0, 'http://localhost/wp/?post_type=product&#038;p=63', 0, 'product', '', 0),
(64, 1, '2017-01-15 03:41:48', '2017-01-15 03:41:48', '', '0505-2-3', '', 'inherit', 'open', 'closed', '', '0505-2-3', '', '', '2017-01-15 03:41:48', '2017-01-15 03:41:48', '', 63, 'http://localhost/wp/wp-content/uploads/2017/01/0505-2-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2017-01-15 03:47:45', '2017-01-15 03:47:45', '', 'Đồng hồ cơ tự động thời trang,mặt thạch anh đính đá.', '', 'publish', 'open', 'closed', '', 'dong-ho-co-tu-dong-thoi-trangmat-thach-anh-dinh-da', '', '', '2017-01-15 03:47:45', '2017-01-15 03:47:45', '', 0, 'http://localhost/wp/?post_type=product&#038;p=65', 0, 'product', '', 0),
(66, 1, '2017-01-15 03:47:29', '2017-01-15 03:47:29', '', '0605-2-11', '', 'inherit', 'open', 'closed', '', '0605-2-11', '', '', '2017-01-15 03:47:29', '2017-01-15 03:47:29', '', 65, 'http://localhost/wp/wp-content/uploads/2017/01/0605-2-11.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2017-01-15 03:50:43', '2017-01-15 03:50:43', '', 'Chân váy nữ công sở cạp cao kiểu viền lá sen.', '', 'publish', 'open', 'closed', '', 'chan-vay-nu-cong-so-cap-cao-kieu-vien-la-sen', '', '', '2017-01-15 03:50:43', '2017-01-15 03:50:43', '', 0, 'http://localhost/wp/?post_type=product&#038;p=67', 0, 'product', '', 0),
(68, 1, '2017-01-15 03:50:18', '2017-01-15 03:50:18', '', '1601-2-3-a90476be-ca8d-47a3-af47-2e218661fb1d', '', 'inherit', 'open', 'closed', '', '1601-2-3-a90476be-ca8d-47a3-af47-2e218661fb1d-2', '', '', '2017-01-15 03:50:18', '2017-01-15 03:50:18', '', 67, 'http://localhost/wp/wp-content/uploads/2017/01/1601-2-3-a90476be-ca8d-47a3-af47-2e218661fb1d-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2017-01-15 03:52:40', '2017-01-15 03:52:40', '', 'Chân váy nữ cạp cao kiểu dáng bút chì,chất ren.', '', 'publish', 'open', 'closed', '', 'chan-vay-nu-cap-cao-kieu-dang-but-chichat-ren', '', '', '2017-01-15 03:52:40', '2017-01-15 03:52:40', '', 0, 'http://localhost/wp/?post_type=product&#038;p=69', 0, 'product', '', 0),
(70, 1, '2017-01-15 03:52:24', '2017-01-15 03:52:24', '', '1601-4-7-4e888ef9-1f50-464b-b1af-e56300df6dbe', '', 'inherit', 'open', 'closed', '', '1601-4-7-4e888ef9-1f50-464b-b1af-e56300df6dbe', '', '', '2017-01-15 03:52:24', '2017-01-15 03:52:24', '', 69, 'http://localhost/wp/wp-content/uploads/2017/01/1601-4-7-4e888ef9-1f50-464b-b1af-e56300df6dbe.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2017-01-15 03:54:46', '2017-01-15 03:54:46', '', 'Váy ngắn công sở hàn quốc ôm thân,khóa kéo.', '', 'publish', 'open', 'closed', '', 'vay-ngan-cong-so-han-quoc-om-thankhoa-keo', '', '', '2017-01-15 03:54:46', '2017-01-15 03:54:46', '', 0, 'http://localhost/wp/?post_type=product&#038;p=72', 0, 'product', '', 0),
(73, 1, '2017-01-15 03:54:42', '2017-01-15 03:54:42', '', '1601-3-15', '', 'inherit', 'open', 'closed', '', '1601-3-15', '', '', '2017-01-15 03:54:42', '2017-01-15 03:54:42', '', 72, 'http://localhost/wp/wp-content/uploads/2017/01/1601-3-15.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2017-01-15 03:55:43', '0000-00-00 00:00:00', '', 'Chân váy nữ cạp cao dáng ôm thân,màu đỏ.', '', 'draft', 'open', 'closed', '', '', '', '', '2017-01-15 03:55:43', '2017-01-15 03:55:43', '', 0, 'http://localhost/wp/?post_type=product&#038;p=74', 0, 'product', '', 0),
(75, 1, '2017-01-15 03:56:40', '2017-01-15 03:56:40', '', 'Chân váy nữ cạp cao dáng ôm thân,màu đỏ.', '', 'publish', 'open', 'closed', '', 'chan-vay-nu-cap-cao-dang-om-thanmau-do', '', '', '2017-01-15 03:56:40', '2017-01-15 03:56:40', '', 0, 'http://localhost/wp/?post_type=product&#038;p=75', 0, 'product', '', 0),
(76, 1, '2017-01-15 03:56:27', '2017-01-15 03:56:27', '', '1601-5-1', '', 'inherit', 'open', 'closed', '', '1601-5-1', '', '', '2017-01-15 03:56:27', '2017-01-15 03:56:27', '', 75, 'http://localhost/wp/wp-content/uploads/2017/01/1601-5-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2017-01-15 04:00:09', '2017-01-15 04:00:09', '', 'Guốc nữ đế dày,gót cao,quai phối lưới thờii trang Âu mĩ.', '', 'publish', 'open', 'closed', '', 'guoc-nu-de-daygot-caoquai-phoi-luoi-thoii-trang-au-mi', '', '', '2017-01-15 04:00:09', '2017-01-15 04:00:09', '', 0, 'http://localhost/wp/?post_type=product&#038;p=77', 0, 'product', '', 0),
(78, 1, '2017-01-15 04:00:04', '2017-01-15 04:00:04', '', '2804-3-2', '', 'inherit', 'open', 'closed', '', '2804-3-2', '', '', '2017-01-15 04:00:04', '2017-01-15 04:00:04', '', 77, 'http://localhost/wp/wp-content/uploads/2017/01/2804-3-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2017-01-15 04:01:43', '2017-01-15 04:01:43', '', 'Sandals nữ kiểu hàn quốc da PU kiểu đế thô gắn đá.', '', 'publish', 'open', 'closed', '', 'sandals-nu-kieu-han-quoc-da-pu-kieu-de-tho-gan-da', '', '', '2017-01-15 04:01:43', '2017-01-15 04:01:43', '', 0, 'http://localhost/wp/?post_type=product&#038;p=79', 0, 'product', '', 0),
(80, 1, '2017-01-15 04:01:30', '2017-01-15 04:01:30', '', '2804-1-3', '', 'inherit', 'open', 'closed', '', '2804-1-3', '', '', '2017-01-15 04:01:30', '2017-01-15 04:01:30', '', 79, 'http://localhost/wp/wp-content/uploads/2017/01/2804-1-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 1, '2017-01-15 04:13:05', '2017-01-15 04:13:05', '', 'Giày thể thao nữ kiểu nâng chiều cao,gắn cườm.', '', 'publish', 'open', 'closed', '', 'giay-the-thao-nu-kieu-nang-chieu-caogan-cuom', '', '', '2017-01-15 04:13:05', '2017-01-15 04:13:05', '', 0, 'http://localhost/wp/?post_type=product&#038;p=81', 0, 'product', '', 0),
(82, 1, '2017-01-15 04:12:46', '2017-01-15 04:12:46', '', '2604-1-5-fd5997ec-58aa-4b48-bcfe-4ad071bbd745', '', 'inherit', 'open', 'closed', '', '2604-1-5-fd5997ec-58aa-4b48-bcfe-4ad071bbd745', '', '', '2017-01-15 04:12:46', '2017-01-15 04:12:46', '', 81, 'http://localhost/wp/wp-content/uploads/2017/01/2604-1-5-fd5997ec-58aa-4b48-bcfe-4ad071bbd745.jpg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2017-01-15 04:14:33', '2017-01-15 04:14:33', '', 'Giày nữ đế cao gót nhọn,kiểu hở mũi,da bò.', '', 'publish', 'open', 'closed', '', 'giay-nu-de-cao-got-nhonkieu-ho-muida-bo', '', '', '2017-01-15 04:15:12', '2017-01-15 04:15:12', '', 0, 'http://localhost/wp/?post_type=product&#038;p=85', 0, 'product', '', 0),
(86, 1, '2017-01-15 04:14:17', '2017-01-15 04:14:17', '', '2901-2-5-', '', 'inherit', 'open', 'closed', '', '2901-2-5', '', '', '2017-01-15 04:14:17', '2017-01-15 04:14:17', '', 85, 'http://localhost/wp/wp-content/uploads/2017/01/2901-2-5-.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2017-01-15 04:23:28', '2017-01-15 04:23:28', '', '2014_12_22_13_44_59_1813379', '', 'inherit', 'open', 'closed', '', '2014_12_22_13_44_59_1813379', '', '', '2017-01-15 04:23:28', '2017-01-15 04:23:28', '', 0, 'http://localhost/wp/wp-content/uploads/2017/01/2014_12_22_13_44_59_1813379.png', 0, 'attachment', 'image/png', 0),
(89, 1, '2017-01-15 04:23:31', '2017-01-15 04:23:31', 'http://localhost/wp/wp-content/uploads/2017/01/cropped-2014_12_22_13_44_59_1813379.png', 'cropped-2014_12_22_13_44_59_1813379.png', '', 'inherit', 'open', 'closed', '', 'cropped-2014_12_22_13_44_59_1813379-png', '', '', '2017-01-15 04:23:31', '2017-01-15 04:23:31', '', 0, 'http://localhost/wp/wp-content/uploads/2017/01/cropped-2014_12_22_13_44_59_1813379.png', 0, 'attachment', 'image/png', 0),
(91, 1, '2017-01-15 04:30:32', '2017-01-15 04:30:32', '<script src=''//cdn.tinymce.com/4/tinymce.min.js''></script>\r\n  <script type="text/javascript">\r\n  tinymce.init({\r\n    selector: ''textarea''\r\n  });\r\n  </script>\r\n<label> Your Name (required)\r\n    [text* your-name] </label>\r\n\r\n<label> Your Email (required)\r\n    [email* your-email] </label>\r\n<label> Your Gender\r\n<select name="dropdown">\r\n<option value="1" selected>Male</option>\r\n<option value="2">Female</option>\r\n</select>\r\n\r\n<label> Subject\r\n    [text your-subject] </label>\r\n\r\n<label> Your Message\r\n    [textarea your-message] </label>\r\n\r\n[submit "Send"]\nTRUONG LAI "[your-subject]"\n[your-name] <truonglaipnv@gmail.com>\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on TRUONG LAI (http://localhost/wp)\ntruonglaipnv@gmail.com\nReply-To: [your-email]\n\n\n\n\nTRUONG LAI "[your-subject]"\nTRUONG LAI <truonglaipnv@gmail.com>\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on TRUONG LAI (http://localhost/wp)\n[your-email]\nReply-To: truonglaipnv@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2017-01-15 04:36:46', '2017-01-15 04:36:46', '', 0, 'http://localhost/wp/?post_type=wpcf7_contact_form&#038;p=91', 0, 'wpcf7_contact_form', '', 0),
(92, 1, '2017-01-15 04:33:00', '2017-01-15 04:33:00', '&lt;div class="contact-quote"&gt; We are also active in social media. You can find uson below adresses. &lt;/div&gt;\r\n&lt;div class="contact-details clearfix"&gt;\r\n&lt;div class="contact-detail-block"&gt;\r\n&lt;div class="contact-icon"&gt; &lt;i class="fa fa-map-marker"&gt; &lt;/i&gt; &lt;/div&gt;\r\n&lt;div class="contact-text"&gt; Baluwatar &lt;br/&gt; Kathmandu, Nepal &lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class="contact-detail-block"&gt;\r\n&lt;div class="contact-icon"&gt; &lt;i class="fa fa-clock-o"&gt; &lt;/i&gt; &lt;/div&gt;\r\n&lt;div class="contact-text"&gt; Opening Hour &lt;br/&gt; 8:00 AM - 10:00 PM &lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class="contact-detail-block"&gt;\r\n&lt;div class="contact-icon"&gt; &lt;i class="fa fa-envelope"&gt; &lt;/i&gt; &lt;/div&gt;\r\n&lt;div class="contact-text"&gt; Email &lt;br/&gt; truonglai@gmail.com &lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class="contact-map"&gt;\r\n&lt;iframe frameborder="0" src="https://www.google.com/maps/embed/v1/place?q=Shivapuri+Higher+Secondary+School,+Thirbam+Sadak,+Kathmandu,+Central+Region,+Nepal&amp;key=AIzaSyAN0om9mFmy1QN6Wf54tXAowK4eT0ZUPrU"&gt;&lt;/iframe&gt;\r\n&lt;/div&gt;', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2017-01-15 04:33:00', '2017-01-15 04:33:00', '', 24, 'http://localhost/wp/2017/01/15/24-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2017-01-15 04:34:04', '2017-01-15 04:34:04', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2017-01-15 04:34:04', '2017-01-15 04:34:04', '', 24, 'http://localhost/wp/2017/01/15/24-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2017-01-15 04:34:46', '2017-01-15 04:34:46', '[contact-form-7 id="91" title="Contact form 1"]', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2017-01-15 04:34:46', '2017-01-15 04:34:46', '', 24, 'http://localhost/wp/2017/01/15/24-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2017-01-15 04:37:50', '2017-01-15 04:37:50', '', 'IMG_20161216_215022 - Copy', '', 'inherit', 'open', 'closed', '', 'img_20161216_215022-copy', '', '', '2017-01-15 04:37:50', '2017-01-15 04:37:50', '', 0, 'http://localhost/wp/wp-content/uploads/2017/01/IMG_20161216_215022-Copy.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2017-01-15 04:38:05', '2017-01-15 04:38:05', '', '12096177_437496769791831_2412451691298845733_n', '', 'inherit', 'open', 'closed', '', '12096177_437496769791831_2412451691298845733_n', '', '', '2017-01-15 04:38:05', '2017-01-15 04:38:05', '', 0, 'http://localhost/wp/wp-content/uploads/2017/01/12096177_437496769791831_2412451691298845733_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2017-01-16 10:07:38', '2017-01-16 10:07:38', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2017-01-16 10:07:38', '2017-01-16 10:07:38', '', 0, 'http://localhost/wp/wp-content/uploads/2017/01/1.png', 0, 'attachment', 'image/png', 0),
(103, 1, '2017-01-16 10:12:17', '2017-01-16 10:12:17', '', 'mũ-gấu-(12)', '', 'inherit', 'open', 'closed', '', 'mu-gau-12', '', '', '2017-01-16 10:12:29', '2017-01-16 10:12:29', '', 0, 'http://localhost/wp/wp-content/uploads/2017/01/mũ-gấu-12.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2017-01-16 10:13:58', '2017-01-16 10:13:58', '', 'mu-coi-vanh-nho-co-no-xinh-xan-de-thuong', '', 'inherit', 'open', 'closed', '', 'mu-coi-vanh-nho-co-no-xinh-xan-de-thuong', '', '', '2017-01-16 10:13:58', '2017-01-16 10:13:58', '', 0, 'http://localhost/wp/wp-content/uploads/2017/01/mu-coi-vanh-nho-co-no-xinh-xan-de-thuong.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2017-01-16 11:29:41', '2017-01-16 11:29:41', '', 'Mũ rộng vành', '', 'publish', 'open', 'closed', '', 'mu-rong-vanh', '', '', '2017-01-16 11:29:41', '2017-01-16 11:29:41', '', 0, 'http://localhost/wp/?post_type=product&#038;p=105', 0, 'product', '', 1),
(106, 1, '2017-01-16 11:29:37', '2017-01-16 11:29:37', '', '21', '', 'inherit', 'open', 'closed', '', '21', '', '', '2017-01-16 11:29:37', '2017-01-16 11:29:37', '', 105, 'http://localhost/wp/wp-content/uploads/2017/01/21.jpg', 0, 'attachment', 'image/jpeg', 0),
(107, 1, '2017-01-16 11:30:45', '2017-01-16 11:30:45', '', 'Mũ lưỡi trai cá tính', '', 'publish', 'open', 'closed', '', 'mu-luoi-trai-ca-tinh', '', '', '2017-01-16 11:30:45', '2017-01-16 11:30:45', '', 0, 'http://localhost/wp/?post_type=product&#038;p=107', 0, 'product', '', 1),
(108, 1, '2017-01-16 11:30:32', '2017-01-16 11:30:32', '', '5', '', 'inherit', 'open', 'closed', '', '5', '', '', '2017-01-16 11:30:32', '2017-01-16 11:30:32', '', 107, 'http://localhost/wp/wp-content/uploads/2017/01/5.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2017-01-16 11:31:27', '2017-01-16 11:31:27', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2017-01-16 11:31:27', '2017-01-16 11:31:27', '', 0, 'http://localhost/wp/wp-content/uploads/2017/01/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2017-01-16 11:32:30', '2017-01-16 11:32:30', '', 'Mũ rộng vành thời trang', '', 'publish', 'open', 'closed', '', 'mu-rong-vanh-thoi-trang', '', '', '2017-01-16 11:32:30', '2017-01-16 11:32:30', '', 0, 'http://localhost/wp/?post_type=product&#038;p=111', 0, 'product', '', 1),
(112, 1, '2017-01-16 11:39:26', '2017-01-16 11:39:26', '', 'Mũ lưỡi trai nam nữ thời trang', '', 'publish', 'open', 'closed', '', 'mu-luoi-trai-nam-nu-thoi-trang', '', '', '2017-01-16 11:59:14', '2017-01-16 11:59:14', '', 0, 'http://localhost/wp/?post_type=product&#038;p=112', 0, 'product', '', 3),
(113, 1, '2017-01-16 11:39:19', '2017-01-16 11:39:19', '', '1826-2', '', 'inherit', 'open', 'closed', '', '1826-2', '', '', '2017-01-16 11:39:19', '2017-01-16 11:39:19', '', 112, 'http://localhost/wp/wp-content/uploads/2017/01/1826-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2017-01-16 11:51:25', '2017-01-16 11:51:25', '', '211', '', 'inherit', 'open', 'closed', '', '211', '', '', '2017-01-16 11:51:25', '2017-01-16 11:51:25', '', 0, 'http://localhost/wp/wp-content/uploads/2017/01/211.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2017-01-16 11:51:35', '2017-01-16 11:51:35', '', '3', '', 'inherit', 'open', 'closed', '', '3-2', '', '', '2017-01-16 11:51:35', '2017-01-16 11:51:35', '', 0, 'http://localhost/wp/wp-content/uploads/2017/01/3-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2017-01-16 11:51:57', '2017-01-16 11:51:57', '', 'paypal', '', 'inherit', 'open', 'closed', '', 'paypal', '', '', '2017-01-16 11:51:57', '2017-01-16 11:51:57', '', 0, 'http://localhost/wp/wp-content/uploads/2017/01/paypal.jpg', 0, 'attachment', 'image/jpeg', 0),
(119, 1, '2017-01-16 11:52:08', '2017-01-16 11:52:08', '', 'skrill', '', 'inherit', 'open', 'closed', '', 'skrill', '', '', '2017-01-16 11:52:08', '2017-01-16 11:52:08', '', 0, 'http://localhost/wp/wp-content/uploads/2017/01/skrill.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2017-01-17 03:28:57', '2017-01-17 03:28:57', '', 'Váy dạ hội hợp thời trang', '', 'publish', 'open', 'closed', '', 'vay-da-hoi-hop-thoi-trang', '', '', '2017-01-17 07:19:47', '2017-01-17 07:19:47', '', 0, 'http://localhost/wp/?post_type=product&#038;p=122', 0, 'product', '', 1),
(123, 1, '2017-01-17 03:36:19', '2017-01-17 03:36:19', '', 'Váy màu đỏ thời trang liền thân xinh xắn', '', 'publish', 'open', 'closed', '', 'vay-mau-do-thoi-trang-lien-than-xinh-xan', '', '', '2017-01-18 03:32:51', '2017-01-18 03:32:51', '', 0, 'http://localhost/wp/?post_type=product&#038;p=123', 0, 'product', '', 1),
(124, 1, '2017-01-17 03:36:03', '2017-01-17 03:36:03', '', '1', '', 'inherit', 'open', 'closed', '', '1-2', '', '', '2017-01-17 03:36:03', '2017-01-17 03:36:03', '', 123, 'http://localhost/wp/wp-content/uploads/2017/01/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(126, 1, '2017-01-17 03:43:09', '2017-01-17 03:43:09', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2017-01-17 03:43:09', '2017-01-17 03:43:09', '', 122, 'http://localhost/wp/wp-content/uploads/2017/01/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(127, 1, '2017-01-17 03:43:10', '2017-01-17 03:43:10', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2017-01-17 03:43:10', '2017-01-17 03:43:10', '', 122, 'http://localhost/wp/wp-content/uploads/2017/01/4.jpg', 0, 'attachment', 'image/jpeg', 0),
(128, 1, '2017-01-17 03:43:10', '2017-01-17 03:43:10', '', '23', '', 'inherit', 'open', 'closed', '', '23', '', '', '2017-01-17 03:43:10', '2017-01-17 03:43:10', '', 122, 'http://localhost/wp/wp-content/uploads/2017/01/23.jpg', 0, 'attachment', 'image/jpeg', 0),
(129, 1, '2017-01-17 03:49:52', '2017-01-17 03:49:52', '', '张凡 布艺文衣 20194', '', 'inherit', 'open', 'closed', '', '%e5%bc%a0%e5%87%a1-%e5%b8%83%e8%89%ba%e6%96%87%e8%a1%a3-20194', '', '', '2017-01-17 03:49:52', '2017-01-17 03:49:52', '', 0, 'http://localhost/wp/wp-content/uploads/2017/01/2083_1435199312.39448.jpg', 0, 'attachment', 'image/jpeg', 0),
(130, 1, '2017-01-17 03:51:48', '2017-01-17 03:51:48', '', 'Váy bông thời trang xinh xắn', '', 'publish', 'open', 'closed', '', 'vay-bong-thoi-trang-xinh-xan', '', '', '2017-01-17 07:17:05', '2017-01-17 07:17:05', '', 0, 'http://localhost/wp/?post_type=product&#038;p=130', 0, 'product', '', 1),
(131, 1, '2017-01-17 03:51:26', '2017-01-17 03:51:26', '', 'vay4-cho-co-nang-chan-to-phunutoday_vn', '', 'inherit', 'open', 'closed', '', 'vay4-cho-co-nang-chan-to-phunutoday_vn', '', '', '2017-01-17 03:51:26', '2017-01-17 03:51:26', '', 130, 'http://localhost/wp/wp-content/uploads/2017/01/vay4-cho-co-nang-chan-to-phunutoday_vn.gif', 0, 'attachment', 'image/gif', 0),
(132, 1, '2017-01-17 03:53:05', '2017-01-17 03:53:05', '', 'dam-xoe-dep-han-quoc-he-2015-phong-cach-tre-trung-cho-ban-gai-tung-tang-dao-pho-1', '', 'inherit', 'open', 'closed', '', 'dam-xoe-dep-han-quoc-he-2015-phong-cach-tre-trung-cho-ban-gai-tung-tang-dao-pho-1', '', '', '2017-01-17 03:53:05', '2017-01-17 03:53:05', '', 130, 'http://localhost/wp/wp-content/uploads/2017/01/dam-xoe-dep-han-quoc-he-2015-phong-cach-tre-trung-cho-ban-gai-tung-tang-dao-pho-1.png', 0, 'attachment', 'image/png', 0),
(133, 1, '2017-01-17 03:53:07', '2017-01-17 03:53:07', '', 'vay-lien-xoe-tieu-thu-dep-cho-nang-diu-dang-nu-tinh-trong-ngay-he-2015-2', '', 'inherit', 'open', 'closed', '', 'vay-lien-xoe-tieu-thu-dep-cho-nang-diu-dang-nu-tinh-trong-ngay-he-2015-2', '', '', '2017-01-17 03:53:07', '2017-01-17 03:53:07', '', 130, 'http://localhost/wp/wp-content/uploads/2017/01/vay-lien-xoe-tieu-thu-dep-cho-nang-diu-dang-nu-tinh-trong-ngay-he-2015-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(134, 1, '2017-01-17 03:53:08', '2017-01-17 03:53:08', '', 'vay-ren-xoe-17', '', 'inherit', 'open', 'closed', '', 'vay-ren-xoe-17', '', '', '2017-01-17 03:53:08', '2017-01-17 03:53:08', '', 130, 'http://localhost/wp/wp-content/uploads/2017/01/vay-ren-xoe-17.jpg', 0, 'attachment', 'image/jpeg', 0),
(135, 1, '2017-01-17 03:57:07', '2017-01-17 03:57:07', '', 'Đầm hoa nhẹ nhàng phù hợp với các bạn nữ', '', 'publish', 'open', 'closed', '', 'dam-hoa-nhe-nhang-phu-hop-voi-cac-ban-nu', '', '', '2017-01-17 07:49:03', '2017-01-17 07:49:03', '', 0, 'http://localhost/wp/?post_type=product&#038;p=135', 0, 'product', '', 1),
(136, 1, '2017-01-17 03:56:45', '2017-01-17 03:56:45', '', '3', '', 'inherit', 'open', 'closed', '', '3-3', '', '', '2017-01-17 03:56:45', '2017-01-17 03:56:45', '', 135, 'http://localhost/wp/wp-content/uploads/2017/01/3-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(137, 1, '2017-01-17 03:56:59', '2017-01-17 03:56:59', '', '234', '', 'inherit', 'open', 'closed', '', '234', '', '', '2017-01-17 03:56:59', '2017-01-17 03:56:59', '', 135, 'http://localhost/wp/wp-content/uploads/2017/01/234.jpg', 0, 'attachment', 'image/jpeg', 0),
(138, 1, '2017-01-17 03:57:00', '2017-01-17 03:57:00', '', '2334', '', 'inherit', 'open', 'closed', '', '2334', '', '', '2017-01-17 03:57:00', '2017-01-17 03:57:00', '', 135, 'http://localhost/wp/wp-content/uploads/2017/01/2334.jpg', 0, 'attachment', 'image/jpeg', 0),
(139, 1, '2017-01-17 03:57:01', '2017-01-17 03:57:01', '', '3333', '', 'inherit', 'open', 'closed', '', '3333', '', '', '2017-01-17 03:57:01', '2017-01-17 03:57:01', '', 135, 'http://localhost/wp/wp-content/uploads/2017/01/3333.jpg', 0, 'attachment', 'image/jpeg', 0),
(143, 1, '2017-01-17 08:01:13', '2017-01-17 08:01:13', '', 'Order &ndash; January 17, 2017 @ 08:01 AM', '', 'wc-processing', 'open', 'closed', 'order_587dcf493d420', 'order-jan-17-2017-0801-am', '', '', '2017-01-17 08:01:13', '2017-01-17 08:01:13', '', 0, 'http://localhost/wp/?post_type=shop_order&#038;p=143', 0, 'shop_order', '', 1),
(146, 1, '2017-01-17 08:17:31', '2017-01-17 08:17:31', '', 'Order &ndash; January 17, 2017 @ 08:17 AM', '', 'wc-processing', 'open', 'closed', 'order_587dd31b65991', 'order-jan-17-2017-0817-am', '', '', '2017-01-17 08:17:31', '2017-01-17 08:17:31', '', 0, 'http://localhost/wp/?post_type=shop_order&#038;p=146', 0, 'shop_order', '', 1),
(148, 1, '2017-01-17 09:42:28', '2017-01-17 09:42:28', '', 'Order &ndash; January 17, 2017 @ 09:42 AM', '', 'wc-processing', 'open', 'closed', 'order_587de7044376b', 'order-jan-17-2017-0942-am', '', '', '2017-01-17 09:42:28', '2017-01-17 09:42:28', '', 0, 'http://localhost/wp/?post_type=shop_order&#038;p=148', 0, 'shop_order', '', 1),
(149, 1, '2017-01-17 09:47:35', '2017-01-17 09:47:35', '', 'Order &ndash; January 17, 2017 @ 09:47 AM', '', 'wc-processing', 'open', 'closed', 'order_587de83734fcd', 'order-jan-17-2017-0947-am', '', '', '2017-01-17 09:47:35', '2017-01-17 09:47:35', '', 0, 'http://localhost/wp/?post_type=shop_order&#038;p=149', 0, 'shop_order', '', 1),
(151, 1, '2017-01-17 10:11:47', '2017-01-17 10:11:47', '[yith_wcwl_wishlist]', 'Wishlist', '', 'publish', 'closed', 'closed', '', 'wishlist', '', '', '2017-01-17 10:11:47', '2017-01-17 10:11:47', '', 0, 'http://localhost/wp/wishlist/', 0, 'page', '', 0),
(152, 1, '2017-01-18 00:53:32', '2017-01-18 00:53:32', '', 'Order &ndash; January 18, 2017 @ 12:53 AM', '', 'wc-processing', 'open', 'closed', 'order_587ebc8c1c249', 'order-jan-18-2017-1253-am', '', '', '2017-01-18 00:53:32', '2017-01-18 00:53:32', '', 0, 'http://localhost/wp/?post_type=shop_order&#038;p=152', 0, 'shop_order', '', 1),
(154, 1, '2017-01-18 03:32:43', '2017-01-18 03:32:43', '', '1635736104215966446', '', 'inherit', 'open', 'closed', '', '1635736104215966446', '', '', '2017-01-18 03:32:43', '2017-01-18 03:32:43', '', 123, 'http://localhost/wp/wp-content/uploads/2017/01/1635736104215966446.jpg', 0, 'attachment', 'image/jpeg', 0),
(155, 1, '2017-01-18 03:32:43', '2017-01-18 03:32:43', '', 'cach_chon_do_cho_nguoi_gay_chan_vong_kieng_cuc_chuan_14', '', 'inherit', 'open', 'closed', '', 'cach_chon_do_cho_nguoi_gay_chan_vong_kieng_cuc_chuan_14', '', '', '2017-01-18 03:32:43', '2017-01-18 03:32:43', '', 123, 'http://localhost/wp/wp-content/uploads/2017/01/cach_chon_do_cho_nguoi_gay_chan_vong_kieng_cuc_chuan_14.jpg', 0, 'attachment', 'image/jpeg', 0),
(156, 1, '2017-01-18 03:32:44', '2017-01-18 03:32:44', '', 'vay-do-quyen-ru-1-phunutoday_vn', '', 'inherit', 'open', 'closed', '', 'vay-do-quyen-ru-1-phunutoday_vn', '', '', '2017-01-18 03:32:44', '2017-01-18 03:32:44', '', 123, 'http://localhost/wp/wp-content/uploads/2017/01/vay-do-quyen-ru-1-phunutoday_vn.jpg', 0, 'attachment', 'image/jpeg', 0),
(157, 1, '2017-01-18 03:35:25', '2017-01-18 03:35:25', '', 'cac-ban-gai-khong-nen-bo-qua-nhung-chiec-vay-den-trang-dep-bat-mat-giup-cac-nang-thanh-lich-va-quy-phai-104202', '', 'inherit', 'open', 'closed', '', 'cac-ban-gai-khong-nen-bo-qua-nhung-chiec-vay-den-trang-dep-bat-mat-giup-cac-nang-thanh-lich-va-quy-phai-104202', '', '', '2017-01-18 03:35:25', '2017-01-18 03:35:25', '', 56, 'http://localhost/wp/wp-content/uploads/2017/01/cac-ban-gai-khong-nen-bo-qua-nhung-chiec-vay-den-trang-dep-bat-mat-giup-cac-nang-thanh-lich-va-quy-phai-104202.jpg', 0, 'attachment', 'image/jpeg', 0),
(158, 1, '2017-01-18 03:35:26', '2017-01-18 03:35:26', '', 'cac-ban-gai-khong-nen-bo-qua-nhung-chiec-vay-den-trang-dep-bat-mat-giup-cac-nang-thanh-lich-va-quy-phai-104203', '', 'inherit', 'open', 'closed', '', 'cac-ban-gai-khong-nen-bo-qua-nhung-chiec-vay-den-trang-dep-bat-mat-giup-cac-nang-thanh-lich-va-quy-phai-104203', '', '', '2017-01-18 03:35:26', '2017-01-18 03:35:26', '', 56, 'http://localhost/wp/wp-content/uploads/2017/01/cac-ban-gai-khong-nen-bo-qua-nhung-chiec-vay-den-trang-dep-bat-mat-giup-cac-nang-thanh-lich-va-quy-phai-104203.jpg', 0, 'attachment', 'image/jpeg', 0),
(159, 1, '2017-01-18 03:35:27', '2017-01-18 03:35:27', '', 'vay-den-trang-1phunutoday (6)', '', 'inherit', 'open', 'closed', '', 'vay-den-trang-1phunutoday-6', '', '', '2017-01-18 03:35:27', '2017-01-18 03:35:27', '', 56, 'http://localhost/wp/wp-content/uploads/2017/01/vay-den-trang-1phunutoday-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(160, 1, '2017-01-18 04:11:40', '2017-01-18 04:11:40', '', 'Order &ndash; January 18, 2017 @ 04:11 AM', '', 'wc-processing', 'open', 'closed', 'order_587eeafcbdfa4', 'order-jan-18-2017-0411-am', '', '', '2017-01-18 04:11:40', '2017-01-18 04:11:40', '', 0, 'http://localhost/wp/?post_type=shop_order&#038;p=160', 0, 'shop_order', '', 1),
(166, 1, '2017-02-09 10:01:30', '2017-02-09 10:01:30', '<pre id="pre-scrollable" class="pre-scrollable">&lt;script type=''text/javascript''&gt;window._sbzq||function(e){e._sbzq=[];var t=e._sbzq;t.push(["_setAccount",58467]);var n=e.location.protocol=="https:"?"https:":"http:";var r=document.createElement("script");r.type="text/javascript";r.async=true;r.src=n+"//static.subiz.com/public/js/loader.js";var i=document.getElementsByTagName("script")[0];i.parentNode.insertBefore(r,i)}(window);&lt;/script&gt;</pre>', 'Home', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2017-02-09 10:01:30', '2017-02-09 10:01:30', '', 20, 'http://localhost/wp/2017/02/09/20-revision-v1/', 0, 'revision', '', 0),
(167, 1, '2017-02-09 10:01:43', '2017-02-09 10:01:43', '', 'Home', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2017-02-09 10:01:43', '2017-02-09 10:01:43', '', 20, 'http://localhost/wp/2017/02/09/20-revision-v1/', 0, 'revision', '', 0),
(173, 1, '2017-02-14 07:22:49', '2017-02-14 07:22:49', 'Trong giới học sinh, sinh viên Đà thành, nói đến shop quần áo Bồ Công Anh, hầu như ai cũng biết bởi mức giá khá “mềm”, quần áo lại hợp “gu” với cả tuổi teen lẫn công sở. Bích Trâm kể: “Có những hôm shop bán được đến 1.500 áo sơ-mi. Hàng về chưa kịp cho mẫu chụp ảnh thì đã hết veo, đi lấy hàng không kịp”. Thât vậy, bây giờ ra đường hay trên facebook các bạn trẻ ở Đà Nẵng rất nhiều bạn là tín đồ trung thành của shop, giá cả rất phải chăng và mẫu mã hợp thời chính là điểm mạnh của shop.\r\nShop chuyên cung cấp những mặt hàng hợp thời trang, giá cả phải chăng nên được nhiều bạn trẻ lựa chọn. ngoài ra shop còn nhiều chính sách giảm giá liên tục.', 'About Us', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2017-02-14 07:22:49', '2017-02-14 07:22:49', '', 22, 'http://localhost/wp/2017/02/14/22-revision-v1/', 0, 'revision', '', 0),
(174, 1, '2017-02-16 10:07:04', '2017-02-16 10:07:04', '[woocommerce_cart]', 'Cart', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2017-02-16 10:07:04', '2017-02-16 10:07:04', '', 35, 'http://localhost/wp/2017/02/16/35-revision-v1/', 0, 'revision', '', 0),
(175, 1, '2017-02-16 10:09:33', '2017-02-16 10:09:33', '', 'Order &ndash; February 16, 2017 @ 10:09 AM', '', 'wc-on-hold', 'open', 'closed', 'order_58a57a5d7a966', 'order-feb-16-2017-1009-am', '', '', '2017-02-16 10:09:33', '2017-02-16 10:09:33', '', 0, 'http://localhost/wp/?post_type=shop_order&#038;p=175', 0, 'shop_order', '', 1),
(176, 1, '2017-02-16 10:12:52', '2017-02-16 10:12:52', 'Look like the ultimate knit girl in our collection of the latest on-trend women''s knitwear. A new season essential that is guaranteed to keep you looking on point whilst fighting off the chill. From chunky cable knits, fine layering pieces and throw on cardigans in oversized and figure flattering silhouettes. Work it like a layer player and team your knits with a statement oversized coat and off-duty denim for every day, or dress them up and pair a roll neck with a high waisted skirt and knee high boots. Ace your layers and never be without a stand out knitted piece this season.', 'About Us', '', 'inherit', 'closed', 'closed', '', '22-autosave-v1', '', '', '2017-02-16 10:12:52', '2017-02-16 10:12:52', '', 22, 'http://localhost/wp/2017/02/16/22-autosave-v1/', 0, 'revision', '', 0),
(177, 1, '2017-02-16 10:13:11', '2017-02-16 10:13:11', '', 'vay-trang-du-tiec-cuoi', '', 'inherit', 'open', 'closed', '', 'vay-trang-du-tiec-cuoi', '', '', '2017-02-16 10:13:11', '2017-02-16 10:13:11', '', 22, 'http://localhost/wp/wp-content/uploads/2017/01/vay-trang-du-tiec-cuoi.jpg', 0, 'attachment', 'image/jpeg', 0),
(178, 1, '2017-02-16 10:14:10', '2017-02-16 10:14:10', 'Look like the ultimate knit girl in our collection of the latest on-trend women''s knitwear. A new season essential that is guaranteed to keep you looking on point whilst fighting off the chill. From chunky cable knits, fine layering pieces and throw on cardigans <img class="alignnone  wp-image-177" src="http://localhost/wp/wp-content/uploads/2017/01/vay-trang-du-tiec-cuoi-219x300.jpg" alt="" width="207" height="284" />in oversized and figure flattering silhouettes. Work it like a layer player and team your knits with a statement oversized coat and off-duty denim for every day, or dress them up and pair a roll neck with a high waisted skirt and knee high boots. Ace your layers and never be without a stand out knitted piece this season.', 'About Us', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2017-02-16 10:14:10', '2017-02-16 10:14:10', '', 22, 'http://localhost/wp/2017/02/16/22-revision-v1/', 0, 'revision', '', 0),
(179, 1, '2017-02-16 10:14:57', '2017-02-16 10:14:57', 'Look like the ultimate knit girl in our collection of the latest on-trend women''s knitwear. A new season essential that is guaranteed to keep you looking on point whilst fighting off the chill. From chunky cable knits, fine layering pieces and throw on cardigans <img class="wp-image-177 alignleft" src="http://localhost/wp/wp-content/uploads/2017/01/vay-trang-du-tiec-cuoi-219x300.jpg" alt="" width="241" height="331" />in oversized and figure flattering silhouettes. Work it like a layer player and team your knits with a statement oversized coat and off-duty denim for every day, or dress them up and pair a roll neck with a high waisted skirt and knee high boots. Ace your layers and never be without a stand out knitted piece this season.', 'About Us', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2017-02-16 10:14:57', '2017-02-16 10:14:57', '', 22, 'http://localhost/wp/2017/02/16/22-revision-v1/', 0, 'revision', '', 0),
(186, 1, '2017-02-16 11:06:22', '2017-02-16 11:06:22', 'Look like the ultimate knit girl in our collection of the latest on-trend women''s knitwear. A new season essential that is guaranteed to keep you looking on point whilst fighting off the chill. From chunky cable knits, fine layering pieces and throw on cardigans in oversized and figure flattering silhouettes. Work it like a layer player and team your knits with a statement oversized coat and off-duty denim for every day, or dress them up and pair a roll neck with a high waisted skirt and knee high boots. Ace your layers and never be without a stand out knitted piece this season.\r\n\r\n<img class="size-medium wp-image-187 aligncenter" src="http://localhost/wp/wp-content/uploads/2017/02/V3221-1G-213x300.jpg" alt="" width="213" height="300" />', 'Váy đám cưới', '', 'publish', 'open', 'open', '', '186', '', '', '2017-02-17 07:17:49', '2017-02-17 07:17:49', '', 0, 'http://localhost/wp/?p=186', 0, 'post', '', 1),
(187, 1, '2017-02-16 11:06:16', '2017-02-16 11:06:16', '', 'V3221-1G', '', 'inherit', 'open', 'closed', '', 'v3221-1g', '', '', '2017-02-17 06:45:33', '2017-02-17 06:45:33', '', 186, 'http://localhost/wp/wp-content/uploads/2017/02/V3221-1G.jpg', 0, 'attachment', 'image/jpeg', 0),
(189, 1, '2017-02-16 11:08:09', '2017-02-16 11:08:09', 'Look like the ultimate knit girl in our collection of the latest on-trend women''s knitwear. A new season essential that is guaranteed to keep you looking on point whilst fighting off the chill. From chunky cable knits, fine layering pieces and throw on cardigans in oversized and figure flattering silhouettes. Work it like a layer player and team your knits with a statement oversized coat and off-duty denim for every day, or dress them up and pair a roll neck with a high waisted skirt and knee high boots. Ace your layers and never be without a stand out knitted piece this season.\r\n\r\n<img class="size-medium wp-image-190 aligncenter" src="http://localhost/wp/wp-content/uploads/2017/02/1_441-222x300.gif" alt="" width="222" height="300" />', 'Thời trang dạ hội mới', '', 'publish', 'open', 'open', '', 'thoi-trang-da-hoi-moi', '', '', '2017-02-17 06:44:54', '2017-02-17 06:44:54', '', 0, 'http://localhost/wp/?p=189', 0, 'post', '', 0),
(190, 1, '2017-02-16 11:07:52', '2017-02-16 11:07:52', '', '1_441', '', 'inherit', 'open', 'closed', '', '1_441', '', '', '2017-02-17 06:44:37', '2017-02-17 06:44:37', '', 189, 'http://localhost/wp/wp-content/uploads/2017/02/1_441.gif', 0, 'attachment', 'image/gif', 0),
(193, 1, '2017-02-17 03:24:20', '2017-02-17 03:24:20', '{\n    "widget_calendar[2]": {\n        "value": {\n            "encoded_serialized_instance": "YToxOntzOjU6InRpdGxlIjtzOjg6IkNBTEVOREFSIjt9",\n            "title": "CALENDAR",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "fffa6a48570128fc71d4779bf33bd37c"\n        },\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'dd9f9156-bc06-49ad-af5f-4ab864525811', '', '', '2017-02-17 03:24:20', '2017-02-17 03:24:20', '', 0, 'http://localhost/wp/2017/02/17/dd9f9156-bc06-49ad-af5f-4ab864525811/', 0, 'customize_changeset', '', 0),
(199, 1, '2017-02-17 06:44:54', '2017-02-17 06:44:54', 'Look like the ultimate knit girl in our collection of the latest on-trend women''s knitwear. A new season essential that is guaranteed to keep you looking on point whilst fighting off the chill. From chunky cable knits, fine layering pieces and throw on cardigans in oversized and figure flattering silhouettes. Work it like a layer player and team your knits with a statement oversized coat and off-duty denim for every day, or dress them up and pair a roll neck with a high waisted skirt and knee high boots. Ace your layers and never be without a stand out knitted piece this season.\r\n\r\n<img class="size-medium wp-image-190 aligncenter" src="http://localhost/wp/wp-content/uploads/2017/02/1_441-222x300.gif" alt="" width="222" height="300" />', 'Thời trang dạ hội mới', '', 'inherit', 'closed', 'closed', '', '189-revision-v1', '', '', '2017-02-17 06:44:54', '2017-02-17 06:44:54', '', 189, 'http://localhost/wp/2017/02/17/189-revision-v1/', 0, 'revision', '', 0),
(200, 1, '2017-02-17 06:45:45', '2017-02-17 06:45:45', 'Look like the ultimate knit girl in our collection of the latest on-trend women''s knitwear. A new season essential that is guaranteed to keep you looking on point whilst fighting off the chill. From chunky cable knits, fine layering pieces and throw on cardigans in oversized and figure flattering silhouettes. Work it like a layer player and team your knits with a statement oversized coat and off-duty denim for every day, or dress them up and pair a roll neck with a high waisted skirt and knee high boots. Ace your layers and never be without a stand out knitted piece this season.\r\n\r\n<img class="size-medium wp-image-187 aligncenter" src="http://localhost/wp/wp-content/uploads/2017/02/V3221-1G-213x300.jpg" alt="" width="213" height="300" />', 'Váy đám cưới', '', 'inherit', 'closed', 'closed', '', '186-revision-v1', '', '', '2017-02-17 06:45:45', '2017-02-17 06:45:45', '', 186, 'http://localhost/wp/2017/02/17/186-revision-v1/', 0, 'revision', '', 0),
(201, 1, '2017-02-17 07:14:33', '2017-02-17 07:14:33', '{\n    "sparklestore::sparklestore_banner_all_sliders": {\n        "value": "[{\\"selectpage\\":\\"20\\",\\"button_text\\":\\"Click here\\",\\"button_url\\":\\"\\"},{\\"selectpage\\":\\"22\\",\\"button_text\\":\\"Click here\\",\\"button_url\\":\\"\\"}]",\n        "type": "theme_mod",\n        "user_id": 1\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c9ae5b59-e370-4710-a24b-5add6924ab38', '', '', '2017-02-17 07:14:33', '2017-02-17 07:14:33', '', 0, 'http://localhost/wp/2017/02/17/c9ae5b59-e370-4710-a24b-5add6924ab38/', 0, 'customize_changeset', '', 0),
(203, 1, '2017-02-17 07:36:12', '2017-02-17 07:36:12', '', 'Activity', '', 'publish', 'closed', 'closed', '', 'activity', '', '', '2017-02-17 07:36:12', '2017-02-17 07:36:12', '', 0, 'http://localhost/wp/activity/', 0, 'page', '', 0),
(204, 1, '2017-02-17 07:36:12', '2017-02-17 07:36:12', '', 'Members', '', 'publish', 'closed', 'closed', '', 'members', '', '', '2017-02-17 07:36:12', '2017-02-17 07:36:12', '', 0, 'http://localhost/wp/members/', 0, 'page', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(205, 1, '2017-02-17 07:36:12', '2017-02-17 07:36:12', '{{poster.name}} replied to one of your updates:\n\n<blockquote>&quot;{{usermessage}}&quot;</blockquote>\n\n<a href="{{{thread.url}}}">Go to the discussion</a> to reply or catch up on the conversation.', '[{{{site.name}}}] {{poster.name}} replied to one of your updates', '{{poster.name}} replied to one of your updates:\n\n"{{usermessage}}"\n\nGo to the discussion to reply or catch up on the conversation: {{{thread.url}}}', 'publish', 'closed', 'closed', '', 'site-name-poster-name-replied-to-one-of-your-updates', '', '', '2017-02-17 07:36:12', '2017-02-17 07:36:12', '', 0, 'http://localhost/wp/?post_type=bp-email&p=205', 0, 'bp-email', '', 0),
(206, 1, '2017-02-17 07:36:13', '2017-02-17 07:36:13', '{{poster.name}} replied to one of your comments:\n\n<blockquote>&quot;{{usermessage}}&quot;</blockquote>\n\n<a href="{{{thread.url}}}">Go to the discussion</a> to reply or catch up on the conversation.', '[{{{site.name}}}] {{poster.name}} replied to one of your comments', '{{poster.name}} replied to one of your comments:\n\n"{{usermessage}}"\n\nGo to the discussion to reply or catch up on the conversation: {{{thread.url}}}', 'publish', 'closed', 'closed', '', 'site-name-poster-name-replied-to-one-of-your-comments', '', '', '2017-02-17 07:36:13', '2017-02-17 07:36:13', '', 0, 'http://localhost/wp/?post_type=bp-email&p=206', 0, 'bp-email', '', 0),
(207, 1, '2017-02-17 07:36:13', '2017-02-17 07:36:13', '{{poster.name}} mentioned you in a status update:\n\n<blockquote>&quot;{{usermessage}}&quot;</blockquote>\n\n<a href="{{{mentioned.url}}}">Go to the discussion</a> to reply or catch up on the conversation.', '[{{{site.name}}}] {{poster.name}} mentioned you in a status update', '{{poster.name}} mentioned you in a status update:\n\n"{{usermessage}}"\n\nGo to the discussion to reply or catch up on the conversation: {{{mentioned.url}}}', 'publish', 'closed', 'closed', '', 'site-name-poster-name-mentioned-you-in-a-status-update', '', '', '2017-02-17 07:36:13', '2017-02-17 07:36:13', '', 0, 'http://localhost/wp/?post_type=bp-email&p=207', 0, 'bp-email', '', 0),
(208, 1, '2017-02-17 07:36:13', '2017-02-17 07:36:13', '{{poster.name}} mentioned you in the group "{{group.name}}":\n\n<blockquote>&quot;{{usermessage}}&quot;</blockquote>\n\n<a href="{{{mentioned.url}}}">Go to the discussion</a> to reply or catch up on the conversation.', '[{{{site.name}}}] {{poster.name}} mentioned you in an update', '{{poster.name}} mentioned you in the group "{{group.name}}":\n\n"{{usermessage}}"\n\nGo to the discussion to reply or catch up on the conversation: {{{mentioned.url}}}', 'publish', 'closed', 'closed', '', 'site-name-poster-name-mentioned-you-in-an-update', '', '', '2017-02-17 07:36:13', '2017-02-17 07:36:13', '', 0, 'http://localhost/wp/?post_type=bp-email&p=208', 0, 'bp-email', '', 0),
(209, 1, '2017-02-17 07:36:14', '2017-02-17 07:36:14', 'Thanks for registering!\n\nTo complete the activation of your account, go to the following link: <a href="{{{activate.url}}}">{{{activate.url}}}</a>', '[{{{site.name}}}] Activate your account', 'Thanks for registering!\n\nTo complete the activation of your account, go to the following link: {{{activate.url}}}', 'publish', 'closed', 'closed', '', 'site-name-activate-your-account', '', '', '2017-02-17 07:36:14', '2017-02-17 07:36:14', '', 0, 'http://localhost/wp/?post_type=bp-email&p=209', 0, 'bp-email', '', 0),
(210, 1, '2017-02-17 07:36:15', '2017-02-17 07:36:15', 'Thanks for registering!\n\nTo complete the activation of your account and site, go to the following link: <a href="{{{activate-site.url}}}">{{{activate-site.url}}}</a>.\n\nAfter you activate, you can visit your site at <a href="{{{user-site.url}}}">{{{user-site.url}}}</a>.', '[{{{site.name}}}] Activate {{{user-site.url}}}', 'Thanks for registering!\n\nTo complete the activation of your account and site, go to the following link: {{{activate-site.url}}}\n\nAfter you activate, you can visit your site at {{{user-site.url}}}.', 'publish', 'closed', 'closed', '', 'site-name-activate-user-site-url', '', '', '2017-02-17 07:36:15', '2017-02-17 07:36:15', '', 0, 'http://localhost/wp/?post_type=bp-email&p=210', 0, 'bp-email', '', 0),
(211, 1, '2017-02-17 07:36:16', '2017-02-17 07:36:16', '<a href="{{{initiator.url}}}">{{initiator.name}}</a> wants to add you as a friend.\n\nTo accept this request and manage all of your pending requests, visit: <a href="{{{friend-requests.url}}}">{{{friend-requests.url}}}</a>', '[{{{site.name}}}] New friendship request from {{initiator.name}}', '{{initiator.name}} wants to add you as a friend.\n\nTo accept this request and manage all of your pending requests, visit: {{{friend-requests.url}}}\n\nTo view {{initiator.name}}''s profile, visit: {{{initiator.url}}}', 'publish', 'closed', 'closed', '', 'site-name-new-friendship-request-from-initiator-name', '', '', '2017-02-17 07:36:16', '2017-02-17 07:36:16', '', 0, 'http://localhost/wp/?post_type=bp-email&p=211', 0, 'bp-email', '', 0),
(212, 1, '2017-02-17 07:36:17', '2017-02-17 07:36:17', '<a href="{{{friendship.url}}}">{{friend.name}}</a> accepted your friend request.', '[{{{site.name}}}] {{friend.name}} accepted your friendship request', '{{friend.name}} accepted your friend request.\n\nTo learn more about them, visit their profile: {{{friendship.url}}}', 'publish', 'closed', 'closed', '', 'site-name-friend-name-accepted-your-friendship-request', '', '', '2017-02-17 07:36:17', '2017-02-17 07:36:17', '', 0, 'http://localhost/wp/?post_type=bp-email&p=212', 0, 'bp-email', '', 0),
(213, 1, '2017-02-17 07:36:18', '2017-02-17 07:36:18', 'Group details for the group &quot;<a href="{{{group.url}}}">{{group.name}}</a>&quot; were updated:\n<blockquote>{{changed_text}}</blockquote>', '[{{{site.name}}}] Group details updated', 'Group details for the group "{{group.name}}" were updated:\n\n{{changed_text}}\n\nTo view the group, visit: {{{group.url}}}', 'publish', 'closed', 'closed', '', 'site-name-group-details-updated', '', '', '2017-02-17 07:36:18', '2017-02-17 07:36:18', '', 0, 'http://localhost/wp/?post_type=bp-email&p=213', 0, 'bp-email', '', 0),
(214, 1, '2017-02-17 07:36:18', '2017-02-17 07:36:18', '<a href="{{{inviter.url}}}">{{inviter.name}}</a> has invited you to join the group: &quot;{{group.name}}&quot;.\n<a href="{{{invites.url}}}">Go here to accept your invitation</a> or <a href="{{{group.url}}}">visit the group</a> to learn more.', '[{{{site.name}}}] You have an invitation to the group: "{{group.name}}"', '{{inviter.name}} has invited you to join the group: "{{group.name}}".\n\nTo accept your invitation, visit: {{{invites.url}}}\n\nTo learn more about the group, visit: {{{group.url}}}.\nTo view {{inviter.name}}''s profile, visit: {{{inviter.url}}}', 'publish', 'closed', 'closed', '', 'site-name-you-have-an-invitation-to-the-group-group-name', '', '', '2017-02-17 07:36:18', '2017-02-17 07:36:18', '', 0, 'http://localhost/wp/?post_type=bp-email&p=214', 0, 'bp-email', '', 0),
(215, 1, '2017-02-17 07:36:19', '2017-02-17 07:36:19', 'You have been promoted to <b>{{promoted_to}}</b> in the group &quot;<a href="{{{group.url}}}">{{group.name}}</a>&quot;.', '[{{{site.name}}}] You have been promoted in the group: "{{group.name}}"', 'You have been promoted to {{promoted_to}} in the group: "{{group.name}}".\n\nTo visit the group, go to: {{{group.url}}}', 'publish', 'closed', 'closed', '', 'site-name-you-have-been-promoted-in-the-group-group-name', '', '', '2017-02-17 07:36:19', '2017-02-17 07:36:19', '', 0, 'http://localhost/wp/?post_type=bp-email&p=215', 0, 'bp-email', '', 0),
(216, 1, '2017-02-17 07:36:19', '2017-02-17 07:36:19', '<a href="{{{profile.url}}}">{{requesting-user.name}}</a> wants to join the group &quot;{{group.name}}&quot;. As you are an administrator of this group, you must either accept or reject the membership request.\n\n<a href="{{{group-requests.url}}}">Go here to manage this</a> and all other pending requests.', '[{{{site.name}}}] Membership request for group: {{group.name}}', '{{requesting-user.name}} wants to join the group "{{group.name}}". As you are the administrator of this group, you must either accept or reject the membership request.\n\nTo manage this and all other pending requests, visit: {{{group-requests.url}}}\n\nTo view {{requesting-user.name}}''s profile, visit: {{{profile.url}}}', 'publish', 'closed', 'closed', '', 'site-name-membership-request-for-group-group-name', '', '', '2017-02-17 07:36:19', '2017-02-17 07:36:19', '', 0, 'http://localhost/wp/?post_type=bp-email&p=216', 0, 'bp-email', '', 0),
(217, 1, '2017-02-17 07:36:20', '2017-02-17 07:36:20', '{{sender.name}} sent you a new message: &quot;{{usersubject}}&quot;\n\n<blockquote>&quot;{{usermessage}}&quot;</blockquote>\n\n<a href="{{{message.url}}}">Go to the discussion</a> to reply or catch up on the conversation.', '[{{{site.name}}}] New message from {{sender.name}}', '{{sender.name}} sent you a new message: "{{usersubject}}"\n\n"{{usermessage}}"\n\nGo to the discussion to reply or catch up on the conversation: {{{message.url}}}', 'publish', 'closed', 'closed', '', 'site-name-new-message-from-sender-name', '', '', '2017-02-17 07:36:20', '2017-02-17 07:36:20', '', 0, 'http://localhost/wp/?post_type=bp-email&p=217', 0, 'bp-email', '', 0),
(218, 1, '2017-02-17 07:36:20', '2017-02-17 07:36:20', 'You recently changed the email address associated with your account on {{site.name}} to {{user.email}}. If this is correct, <a href="{{{verify.url}}}">go here to confirm the change</a>.\n\nOtherwise, you can safely ignore and delete this email if you have changed your mind, or if you think you have received this email in error.', '[{{{site.name}}}] Verify your new email address', 'You recently changed the email address associated with your account on {{site.name}} to {{user.email}}. If this is correct, go to the following link to confirm the change: {{{verify.url}}}\n\nOtherwise, you can safely ignore and delete this email if you have changed your mind, or if you think you have received this email in error.', 'publish', 'closed', 'closed', '', 'site-name-verify-your-new-email-address', '', '', '2017-02-17 07:36:20', '2017-02-17 07:36:20', '', 0, 'http://localhost/wp/?post_type=bp-email&p=218', 0, 'bp-email', '', 0),
(219, 1, '2017-02-17 07:36:20', '2017-02-17 07:36:20', 'Your membership request for the group &quot;<a href="{{{group.url}}}">{{group.name}}</a>&quot; has been accepted.', '[{{{site.name}}}] Membership request for group "{{group.name}}" accepted', 'Your membership request for the group "{{group.name}}" has been accepted.\n\nTo view the group, visit: {{{group.url}}}', 'publish', 'closed', 'closed', '', 'site-name-membership-request-for-group-group-name-accepted', '', '', '2017-02-17 07:36:20', '2017-02-17 07:36:20', '', 0, 'http://localhost/wp/?post_type=bp-email&p=219', 0, 'bp-email', '', 0),
(220, 1, '2017-02-17 07:36:21', '2017-02-17 07:36:21', 'Your membership request for the group &quot;<a href="{{{group.url}}}">{{group.name}}</a>&quot; has been rejected.', '[{{{site.name}}}] Membership request for group "{{group.name}}" rejected', 'Your membership request for the group "{{group.name}}" has been rejected.\n\nTo request membership again, visit: {{{group.url}}}', 'publish', 'closed', 'closed', '', 'site-name-membership-request-for-group-group-name-rejected', '', '', '2017-02-17 07:36:21', '2017-02-17 07:36:21', '', 0, 'http://localhost/wp/?post_type=bp-email&p=220', 0, 'bp-email', '', 0),
(221, 1, '2017-02-23 00:58:26', '2017-02-23 00:58:26', 'Look like the ultimate knit girl in our collection of the latest on-trend women''s knitwear. A new season essential that is guaranteed to keep you looking on point whilst fighting off the chill. From chunky cable knits, fine layering pieces and throw on cardigans in oversized and figure flattering silhouettes. Work it like a layer player and team your knits with a statement oversized coat and off-duty denim for every day, or dress them up and pair a roll neck with a high waisted skirt and knee high boots. Ace your layers and never be without a stand out knitted piece this season.<img class="wp-image-177 aligncenter" src="http://localhost/wp/wp-content/uploads/2017/01/vay-trang-du-tiec-cuoi-219x300.jpg" alt="" width="241" height="331" />', 'About Us', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2017-02-23 00:58:26', '2017-02-23 00:58:26', '', 22, 'http://localhost/wp/2017/02/23/22-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_sharebar`
--

CREATE TABLE `wp_sharebar` (
  `id` mediumint(9) NOT NULL,
  `position` mediumint(9) NOT NULL,
  `enabled` int(1) NOT NULL,
  `name` varchar(80) NOT NULL,
  `big` text NOT NULL,
  `small` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_sharebar`
--

INSERT INTO `wp_sharebar` (`id`, `position`, `enabled`, `name`, `big`, `small`) VALUES
(1, 1, 1, 'facebook', '<div id="fb-root"></div><script>(function(d, s, id) { var js, fjs = d.getElementsByTagName(s)[0]; if (d.getElementById(id)) return; js = d.createElement(s); js.id = id; js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.3"; fjs.parentNode.insertBefore(js, fjs); }(document, ''script'', ''facebook-jssdk''));</script><div class="fb-like" data-width="60" data-layout="box_count" data-action="like" data-show-faces="false" data-share="false"></div>', '<div id="fb-root"></div><script>(function(d, s, id) { var js, fjs = d.getElementsByTagName(s)[0]; if (d.getElementById(id)) return; js = d.createElement(s); js.id = id; js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.3"; fjs.parentNode.insertBefore(js, fjs); }(document, ''script'', ''facebook-jssdk''));</script><div class="fb-like" data-width="80" data-layout="button_count" data-action="like" data-show-faces="false" data-share="false"></div>'),
(2, 2, 1, 'twitter', '<a class="twitter-share-button" href="https://twitter.com/share" data-count="vertical">Tweet</a><script>window.twttr=(function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],t=window.twttr||{};if(d.getElementById(id))return t;js=d.createElement(s);js.id=id;js.src="https://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);t._e=[];t.ready=function(f){t._e.push(f);};return t;}(document,"script","twitter-wjs"));</script>', '<a class="twitter-share-button" href="https://twitter.com/share">Tweet</a><script>window.twttr=(function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],t=window.twttr||{};if(d.getElementById(id))return t;js=d.createElement(s);js.id=id;js.src="https://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);t._e=[];t.ready=function(f){t._e.push(f);};return t;}(document,"script","twitter-wjs"));</script>'),
(3, 3, 0, 'pinterest', '<a href="//www.pinterest.com/pin/create/button/" data-pin-do="buttonBookmark"  data-pin-color="red" data-pin-height="28"><img src="//assets.pinterest.com/images/pidgets/pinit_fg_en_rect_red_28.png" /></a>\r\n		<!-- Please call pinit.js only once per page -->\r\n		<script type="text/javascript" async defer src="//assets.pinterest.com/js/pinit.js"></script>', '<a href="//www.pinterest.com/pin/create/button/" data-pin-do="buttonBookmark"  data-pin-color="red"><img src="//assets.pinterest.com/images/pidgets/pinit_fg_en_rect_red_20.png" /></a>\r\n		<!-- Please call pinit.js only once per page -->\r\n		<script type="text/javascript" async defer src="//assets.pinterest.com/js/pinit.js"></script>'),
(4, 4, 0, 'reddit', '<script type="text/javascript" src="http://reddit.com/static/button/button2.js"></script>', '<script type="text/javascript" src="http://reddit.com/static/button/button1.js"></script>'),
(5, 5, 0, 'stumbleupon', '<script src="http://www.stumbleupon.com/hostedbadge.php?s=5"></script>', '<script src="http://www.stumbleupon.com/hostedbadge.php?s=2"></script>'),
(6, 6, 1, 'email', '<a href="mailto:?subject=[url]" class="sharebar-button email">Email</a>', '<a href="mailto:?subject=[url]" class="sharebar-button email">Email</a>');

-- --------------------------------------------------------

--
-- Table structure for table `wp_signups`
--

CREATE TABLE `wp_signups` (
  `signup_id` bigint(20) NOT NULL,
  `domain` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `activation_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `meta` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 7, 'order', '0'),
(2, 7, 'display_type', ''),
(3, 7, 'thumbnail_id', '51'),
(4, 8, 'order', '0'),
(5, 8, 'display_type', ''),
(6, 8, 'thumbnail_id', '58'),
(7, 7, 'product_count_product_cat', '4'),
(8, 8, 'product_count_product_cat', '4'),
(9, 9, 'order', '0'),
(10, 9, 'display_type', ''),
(11, 9, 'thumbnail_id', '102'),
(12, 9, 'product_count_product_cat', '4'),
(13, 10, 'order', '0'),
(14, 10, 'display_type', ''),
(15, 10, 'thumbnail_id', '104'),
(16, 10, 'product_count_product_cat', '4'),
(17, 11, 'order', '0'),
(18, 11, 'display_type', ''),
(19, 11, 'thumbnail_id', '129'),
(20, 11, 'product_count_product_cat', '3');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Đông hồ', 'dong-ho', 0),
(2, 'header', 'header', 0),
(3, 'simple', 'simple', 0),
(4, 'grouped', 'grouped', 0),
(5, 'variable', 'variable', 0),
(6, 'external', 'external', 0),
(7, 'Watch', 'dong-ho', 0),
(8, 'Skirt', 'skirt', 0),
(9, 'Shoes', 'shoes', 0),
(10, 'Hat and cap', 'hat', 0),
(11, 'Blue dress', 'new-products', 0),
(17, 'Uncategorized', 'uncategorized-en', 0),
(21, 'Uncategorized', 'uncategorized-fr', 0),
(25, 'Uncategorized', 'uncategorized-pt', 0),
(26, 'activity-comment', 'activity-comment', 0),
(27, 'activity-comment-author', 'activity-comment-author', 0),
(28, 'activity-at-message', 'activity-at-message', 0),
(29, 'groups-at-message', 'groups-at-message', 0),
(30, 'core-user-registration', 'core-user-registration', 0),
(31, 'core-user-registration-with-blog', 'core-user-registration-with-blog', 0),
(32, 'friends-request', 'friends-request', 0),
(33, 'friends-request-accepted', 'friends-request-accepted', 0),
(34, 'groups-details-updated', 'groups-details-updated', 0),
(35, 'groups-invitation', 'groups-invitation', 0),
(36, 'groups-member-promoted', 'groups-member-promoted', 0),
(37, 'groups-membership-request', 'groups-membership-request', 0),
(38, 'messages-unread', 'messages-unread', 0),
(39, 'settings-verify-email-change', 'settings-verify-email-change', 0),
(40, 'groups-membership-request-accepted', 'groups-membership-request-accepted', 0),
(41, 'groups-membership-request-rejected', 'groups-membership-request-rejected', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 14, 0),
(28, 2, 0),
(29, 2, 0),
(30, 2, 0),
(31, 2, 0),
(49, 3, 0),
(54, 3, 0),
(56, 3, 0),
(59, 3, 0),
(59, 7, 0),
(61, 3, 0),
(61, 7, 0),
(63, 3, 0),
(63, 7, 0),
(65, 3, 0),
(65, 7, 0),
(67, 3, 0),
(67, 8, 0),
(69, 3, 0),
(69, 8, 0),
(72, 3, 0),
(72, 8, 0),
(75, 3, 0),
(75, 8, 0),
(77, 3, 0),
(77, 9, 0),
(79, 3, 0),
(79, 9, 0),
(81, 3, 0),
(81, 9, 0),
(85, 3, 0),
(85, 9, 0),
(105, 3, 0),
(105, 10, 0),
(107, 3, 0),
(107, 10, 0),
(111, 3, 0),
(111, 10, 0),
(112, 3, 0),
(112, 10, 0),
(122, 3, 0),
(123, 3, 0),
(123, 11, 0),
(130, 3, 0),
(130, 11, 0),
(135, 3, 0),
(135, 11, 0),
(186, 1, 0),
(189, 1, 0),
(205, 26, 0),
(206, 27, 0),
(207, 28, 0),
(208, 29, 0),
(209, 30, 0),
(210, 31, 0),
(211, 32, 0),
(212, 33, 0),
(213, 34, 0),
(214, 35, 0),
(215, 36, 0),
(216, 37, 0),
(217, 38, 0),
(218, 39, 0),
(219, 40, 0),
(220, 41, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'product_type', '', 0, 23),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_type', '', 0, 0),
(7, 7, 'product_cat', '', 0, 4),
(8, 8, 'product_cat', '', 0, 4),
(9, 9, 'product_cat', '', 0, 4),
(10, 10, 'product_cat', '', 0, 4),
(11, 11, 'product_cat', '', 0, 3),
(17, 17, 'category', '', 0, 0),
(21, 21, 'category', '', 0, 0),
(25, 25, 'category', '', 0, 0),
(26, 26, 'bp-email-type', 'A member has replied to an activity update that the recipient posted.', 0, 1),
(27, 27, 'bp-email-type', 'A member has replied to a comment on an activity update that the recipient posted.', 0, 1),
(28, 28, 'bp-email-type', 'Recipient was mentioned in an activity update.', 0, 1),
(29, 29, 'bp-email-type', 'Recipient was mentioned in a group activity update.', 0, 1),
(30, 30, 'bp-email-type', 'Recipient has registered for an account.', 0, 1),
(31, 31, 'bp-email-type', 'Recipient has registered for an account and site.', 0, 1),
(32, 32, 'bp-email-type', 'A member has sent a friend request to the recipient.', 0, 1),
(33, 33, 'bp-email-type', 'Recipient has had a friend request accepted by a member.', 0, 1),
(34, 34, 'bp-email-type', 'A group''s details were updated.', 0, 1),
(35, 35, 'bp-email-type', 'A member has sent a group invitation to the recipient.', 0, 1),
(36, 36, 'bp-email-type', 'Recipient''s status within a group has changed.', 0, 1),
(37, 37, 'bp-email-type', 'A member has requested permission to join a group.', 0, 1),
(38, 38, 'bp-email-type', 'Recipient has received a private message.', 0, 1),
(39, 39, 'bp-email-type', 'Recipient has changed their email address.', 0, 1),
(40, 40, 'bp-email-type', 'Recipient had requested to join a group, which was accepted.', 0, 1),
(41, 41, 'bp-email-type', 'Recipient had requested to join a group, which was rejected.', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'TTLai'),
(2, 1, 'first_name', 'TTLai'),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', 'bws_shortcode_button_tooltip'),
(14, 1, 'show_welcome_panel', '1'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '224'),
(17, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(19, 1, 'manageedit-shop_ordercolumnshidden', 'a:1:{i:0;s:15:"billing_address";}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse'),
(22, 1, 'wp_user-settings-time', '1484561259'),
(23, 1, 'nav_menu_recently_edited', '2'),
(24, 1, 'wp_user_avatar', '97'),
(25, 1, 'billing_first_name', 'Truong'),
(26, 1, 'billing_last_name', 'Lai'),
(27, 1, 'billing_company', '1997'),
(28, 1, 'billing_address_1', 'Đà Nẵng'),
(29, 1, 'billing_address_2', ''),
(30, 1, 'billing_city', 'Đà Nẵng'),
(31, 1, 'billing_postcode', 'TRRTTRT'),
(32, 1, 'billing_country', 'VN'),
(33, 1, 'billing_state', 'HOCHIMINH'),
(34, 1, 'billing_phone', '01674815523'),
(35, 1, 'billing_email', 'truonglai1809@gmail.com'),
(36, 1, 'shipping_first_name', 'Truong'),
(37, 1, 'shipping_last_name', 'Lai'),
(38, 1, 'shipping_company', 'PNV'),
(39, 1, 'shipping_address_1', 'Hồ Chí Minh'),
(40, 1, 'shipping_address_2', ''),
(41, 1, 'shipping_city', 'Hồ Chí Minh'),
(42, 1, 'shipping_postcode', 'TRRTTRT'),
(43, 1, 'shipping_country', 'VN'),
(44, 1, 'shipping_state', 'HOCHIMINH'),
(45, 1, 'last_update', '1487317350'),
(46, 1, 'closedpostboxes_product', 'a:0:{}'),
(47, 1, 'metaboxhidden_product', 'a:2:{i:0;s:10:"postcustom";i:1;s:7:"slugdiv";}'),
(51, 1, 'session_tokens', 'a:1:{s:64:"b48cd16929b4381447997cebf3b5f8e3585300a771aa06de1913a66ebe52a40f";a:4:{s:10:"expiration";i:1490089449;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36";s:5:"login";i:1488879849;}}'),
(52, 1, '_woocommerce_persistent_cart', 'a:1:{s:4:"cart";a:0:{}}'),
(53, 1, 'last_activity', '2017-03-18 02:09:47'),
(54, 1, 'bp_xprofile_visibility_levels', 'a:1:{i:1;s:6:"public";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'TTLai', '$P$B8e5iFWSZ3ullSai6PQEP0wjjGOSBb/', 'ttlai', 'truonglaipnv@gmail.com', '', '2017-01-14 03:57:44', '1488879671:$P$BVSjzRI1G4tQjYi7.Pw/vsFDEZR0SW0', 0, 'TTLai');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` longtext COLLATE utf8mb4_unicode_ci,
  `attribute_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) NOT NULL,
  `download_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) NOT NULL,
  `order_item_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(37, 5, '_qty', '1'),
(38, 5, '_tax_class', ''),
(39, 5, '_product_id', '79'),
(40, 5, '_variation_id', '0'),
(41, 5, '_line_subtotal', '1020'),
(42, 5, '_line_total', '1020'),
(43, 5, '_line_subtotal_tax', '0'),
(44, 5, '_line_tax', '0'),
(45, 5, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(46, 6, '_qty', '1'),
(47, 6, '_tax_class', ''),
(48, 6, '_product_id', '122'),
(49, 6, '_variation_id', '0'),
(50, 6, '_line_subtotal', '1500'),
(51, 6, '_line_total', '1500'),
(52, 6, '_line_subtotal_tax', '0'),
(53, 6, '_line_tax', '0'),
(54, 6, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(55, 7, '_qty', '1'),
(56, 7, '_tax_class', ''),
(57, 7, '_product_id', '130'),
(58, 7, '_variation_id', '0'),
(59, 7, '_line_subtotal', '900'),
(60, 7, '_line_total', '900'),
(61, 7, '_line_subtotal_tax', '0'),
(62, 7, '_line_tax', '0'),
(63, 7, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(64, 8, '_qty', '1'),
(65, 8, '_tax_class', ''),
(66, 8, '_product_id', '112'),
(67, 8, '_variation_id', '0'),
(68, 8, '_line_subtotal', '200'),
(69, 8, '_line_total', '200'),
(70, 8, '_line_subtotal_tax', '0'),
(71, 8, '_line_tax', '0'),
(72, 8, '_line_tax_data', 'a:2:{s:5:"total";a:0:{}s:8:"subtotal";a:0:{}}'),
(73, 9, '_qty', '2'),
(74, 9, '_tax_class', ''),
(75, 9, '_product_id', '111'),
(76, 9, '_variation_id', '0'),
(77, 9, '_line_subtotal', '600'),
(78, 9, '_line_total', '600'),
(79, 9, '_line_subtotal_tax', '60'),
(80, 9, '_line_tax', '60'),
(81, 9, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:2:"60";}s:8:"subtotal";a:1:{i:1;s:2:"60";}}'),
(82, 10, '_qty', '4'),
(83, 10, '_tax_class', ''),
(84, 10, '_product_id', '107'),
(85, 10, '_variation_id', '0'),
(86, 10, '_line_subtotal', '800'),
(87, 10, '_line_total', '800'),
(88, 10, '_line_subtotal_tax', '80'),
(89, 10, '_line_tax', '80'),
(90, 10, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:2:"80";}s:8:"subtotal";a:1:{i:1;s:2:"80";}}'),
(91, 11, 'method_id', 'flat_rate:8'),
(92, 11, 'cost', '20.00'),
(93, 11, 'taxes', 'a:1:{i:1;s:1:"2";}'),
(94, 11, 'Items', 'Mũ rộng vành thời trang &times; 2, Mũ lưỡi trai cá tính &times; 4'),
(95, 12, 'rate_id', '1'),
(96, 12, 'label', 'State Tax'),
(97, 12, 'compound', '0'),
(98, 12, 'tax_amount', '140'),
(99, 12, 'shipping_tax_amount', '2'),
(100, 13, '_qty', '2'),
(101, 13, '_tax_class', ''),
(102, 13, '_product_id', '111'),
(103, 13, '_variation_id', '0'),
(104, 13, '_line_subtotal', '600'),
(105, 13, '_line_total', '600'),
(106, 13, '_line_subtotal_tax', '60'),
(107, 13, '_line_tax', '60'),
(108, 13, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:2:"60";}s:8:"subtotal";a:1:{i:1;s:2:"60";}}'),
(109, 14, '_qty', '4'),
(110, 14, '_tax_class', ''),
(111, 14, '_product_id', '107'),
(112, 14, '_variation_id', '0'),
(113, 14, '_line_subtotal', '800'),
(114, 14, '_line_total', '800'),
(115, 14, '_line_subtotal_tax', '80'),
(116, 14, '_line_tax', '80'),
(117, 14, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:2:"80";}s:8:"subtotal";a:1:{i:1;s:2:"80";}}'),
(118, 15, 'method_id', 'flat_rate:8'),
(119, 15, 'cost', '20.00'),
(120, 15, 'taxes', 'a:1:{i:1;s:1:"2";}'),
(121, 15, 'Items', 'Mũ rộng vành thời trang &times; 2, Mũ lưỡi trai cá tính &times; 4'),
(122, 16, 'rate_id', '1'),
(123, 16, 'label', 'State Tax'),
(124, 16, 'compound', '0'),
(125, 16, 'tax_amount', '140'),
(126, 16, 'shipping_tax_amount', '2'),
(127, 17, '_qty', '1'),
(128, 17, '_tax_class', ''),
(129, 17, '_product_id', '65'),
(130, 17, '_variation_id', '0'),
(131, 17, '_line_subtotal', '300'),
(132, 17, '_line_total', '300'),
(133, 17, '_line_subtotal_tax', '30'),
(134, 17, '_line_tax', '30'),
(135, 17, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:2:"30";}s:8:"subtotal";a:1:{i:1;s:2:"30";}}'),
(136, 18, '_qty', '1'),
(137, 18, '_tax_class', ''),
(138, 18, '_product_id', '63'),
(139, 18, '_variation_id', '0'),
(140, 18, '_line_subtotal', '1400'),
(141, 18, '_line_total', '1400'),
(142, 18, '_line_subtotal_tax', '140'),
(143, 18, '_line_tax', '140'),
(144, 18, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:3:"140";}s:8:"subtotal";a:1:{i:1;s:3:"140";}}'),
(145, 19, 'method_id', 'flat_rate:8'),
(146, 19, 'cost', '20.00'),
(147, 19, 'taxes', 'a:1:{i:1;s:1:"2";}'),
(148, 19, 'Items', 'Đồng hồ cơ tự động thời trang,mặt thạch anh đính đá. &times; 1, Đồng hộ nữ thời trang hàn quốc,mặt thạch anh dây da. &times; 1'),
(149, 20, 'rate_id', '1'),
(150, 20, 'label', 'State Tax'),
(151, 20, 'compound', '0'),
(152, 20, 'tax_amount', '170'),
(153, 20, 'shipping_tax_amount', '2'),
(154, 21, '_qty', '1'),
(155, 21, '_tax_class', ''),
(156, 21, '_product_id', '65'),
(157, 21, '_variation_id', '0'),
(158, 21, '_line_subtotal', '300'),
(159, 21, '_line_total', '300'),
(160, 21, '_line_subtotal_tax', '30'),
(161, 21, '_line_tax', '30'),
(162, 21, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:2:"30";}s:8:"subtotal";a:1:{i:1;s:2:"30";}}'),
(163, 22, '_qty', '1'),
(164, 22, '_tax_class', ''),
(165, 22, '_product_id', '63'),
(166, 22, '_variation_id', '0'),
(167, 22, '_line_subtotal', '1400'),
(168, 22, '_line_total', '1400'),
(169, 22, '_line_subtotal_tax', '140'),
(170, 22, '_line_tax', '140'),
(171, 22, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:3:"140";}s:8:"subtotal";a:1:{i:1;s:3:"140";}}'),
(172, 23, '_qty', '1'),
(173, 23, '_tax_class', ''),
(174, 23, '_product_id', '111'),
(175, 23, '_variation_id', '0'),
(176, 23, '_line_subtotal', '300'),
(177, 23, '_line_total', '300'),
(178, 23, '_line_subtotal_tax', '30'),
(179, 23, '_line_tax', '30'),
(180, 23, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:2:"30";}s:8:"subtotal";a:1:{i:1;s:2:"30";}}'),
(181, 24, 'method_id', 'flat_rate:8'),
(182, 24, 'cost', '20.00'),
(183, 24, 'taxes', 'a:1:{i:1;s:1:"2";}'),
(184, 24, 'Items', 'Đồng hồ cơ tự động thời trang,mặt thạch anh đính đá. &times; 1, Đồng hộ nữ thời trang hàn quốc,mặt thạch anh dây da. &times; 1, Mũ rộng vành thời trang &times; 1'),
(185, 25, 'rate_id', '1'),
(186, 25, 'label', 'State Tax'),
(187, 25, 'compound', '0'),
(188, 25, 'tax_amount', '200'),
(189, 25, 'shipping_tax_amount', '2'),
(190, 26, '_qty', '2'),
(191, 26, '_tax_class', ''),
(192, 26, '_product_id', '111'),
(193, 26, '_variation_id', '0'),
(194, 26, '_line_subtotal', '600'),
(195, 26, '_line_total', '600'),
(196, 26, '_line_subtotal_tax', '60'),
(197, 26, '_line_tax', '60'),
(198, 26, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:2:"60";}s:8:"subtotal";a:1:{i:1;s:2:"60";}}'),
(199, 27, '_qty', '1'),
(200, 27, '_tax_class', ''),
(201, 27, '_product_id', '107'),
(202, 27, '_variation_id', '0'),
(203, 27, '_line_subtotal', '200'),
(204, 27, '_line_total', '200'),
(205, 27, '_line_subtotal_tax', '20'),
(206, 27, '_line_tax', '20'),
(207, 27, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:2:"20";}s:8:"subtotal";a:1:{i:1;s:2:"20";}}'),
(208, 28, 'method_id', 'flat_rate:8'),
(209, 28, 'cost', '20.00'),
(210, 28, 'taxes', 'a:1:{i:1;s:1:"2";}'),
(211, 28, 'Items', 'Mũ rộng vành thời trang &times; 2, Mũ lưỡi trai cá tính &times; 1'),
(212, 29, 'rate_id', '1'),
(213, 29, 'label', 'State Tax'),
(214, 29, 'compound', '0'),
(215, 29, 'tax_amount', '80'),
(216, 29, 'shipping_tax_amount', '2'),
(217, 30, '_qty', '1'),
(218, 30, '_tax_class', ''),
(219, 30, '_product_id', '111'),
(220, 30, '_variation_id', '0'),
(221, 30, '_line_subtotal', '300'),
(222, 30, '_line_total', '300'),
(223, 30, '_line_subtotal_tax', '30'),
(224, 30, '_line_tax', '30'),
(225, 30, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:2:"30";}s:8:"subtotal";a:1:{i:1;s:2:"30";}}'),
(226, 31, '_qty', '1'),
(227, 31, '_tax_class', ''),
(228, 31, '_product_id', '107'),
(229, 31, '_variation_id', '0'),
(230, 31, '_line_subtotal', '200'),
(231, 31, '_line_total', '200'),
(232, 31, '_line_subtotal_tax', '20'),
(233, 31, '_line_tax', '20'),
(234, 31, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:2:"20";}s:8:"subtotal";a:1:{i:1;s:2:"20";}}'),
(235, 32, 'method_id', 'local_pickup:7'),
(236, 32, 'cost', '20.00'),
(237, 32, 'taxes', 'a:1:{i:1;s:1:"2";}'),
(238, 32, 'Items', 'Mũ rộng vành thời trang &times; 1, Mũ lưỡi trai cá tính &times; 1'),
(239, 33, 'rate_id', '1'),
(240, 33, 'label', 'State Tax'),
(241, 33, 'compound', '0'),
(242, 33, 'tax_amount', '50'),
(243, 33, 'shipping_tax_amount', '2'),
(244, 34, '_qty', '1'),
(245, 34, '_tax_class', ''),
(246, 34, '_product_id', '112'),
(247, 34, '_variation_id', '0'),
(248, 34, '_line_subtotal', '200'),
(249, 34, '_line_total', '200'),
(250, 34, '_line_subtotal_tax', '20'),
(251, 34, '_line_tax', '20'),
(252, 34, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:2:"20";}s:8:"subtotal";a:1:{i:1;s:2:"20";}}'),
(253, 35, '_qty', '1'),
(254, 35, '_tax_class', ''),
(255, 35, '_product_id', '111'),
(256, 35, '_variation_id', '0'),
(257, 35, '_line_subtotal', '300'),
(258, 35, '_line_total', '300'),
(259, 35, '_line_subtotal_tax', '30'),
(260, 35, '_line_tax', '30'),
(261, 35, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:2:"30";}s:8:"subtotal";a:1:{i:1;s:2:"30";}}'),
(262, 36, 'method_id', 'local_pickup:7'),
(263, 36, 'cost', '20.00'),
(264, 36, 'taxes', 'a:1:{i:1;s:1:"2";}'),
(265, 36, 'Items', 'Mũ lưỡi trai nam nữ thời trang &times; 1, Mũ rộng vành thời trang &times; 1'),
(266, 37, 'rate_id', '1'),
(267, 37, 'label', 'State Tax'),
(268, 37, 'compound', '0'),
(269, 37, 'tax_amount', '50'),
(270, 37, 'shipping_tax_amount', '2'),
(271, 38, '_qty', '1'),
(272, 38, '_tax_class', ''),
(273, 38, '_product_id', '54'),
(274, 38, '_variation_id', '0'),
(275, 38, '_line_subtotal', '1000'),
(276, 38, '_line_total', '1000'),
(277, 38, '_line_subtotal_tax', '100'),
(278, 38, '_line_tax', '100'),
(279, 38, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:3:"100";}s:8:"subtotal";a:1:{i:1;s:3:"100";}}'),
(280, 39, 'method_id', 'local_pickup:7'),
(281, 39, 'cost', '20.00'),
(282, 39, 'taxes', 'a:1:{i:1;s:1:"2";}'),
(283, 39, 'Items', 'Đầm liền cổ tròn ko tay dáng xòe, kiểu chấm bi &times; 1'),
(284, 40, 'rate_id', '1'),
(285, 40, 'label', 'State Tax'),
(286, 40, 'compound', '0'),
(287, 40, 'tax_amount', '100'),
(288, 40, 'shipping_tax_amount', '2'),
(289, 41, '_qty', '2'),
(290, 41, '_tax_class', ''),
(291, 41, '_product_id', '111'),
(292, 41, '_variation_id', '0'),
(293, 41, '_line_subtotal', '600'),
(294, 41, '_line_total', '600'),
(295, 41, '_line_subtotal_tax', '60'),
(296, 41, '_line_tax', '60'),
(297, 41, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:2:"60";}s:8:"subtotal";a:1:{i:1;s:2:"60";}}'),
(298, 42, '_qty', '3'),
(299, 42, '_tax_class', ''),
(300, 42, '_product_id', '112'),
(301, 42, '_variation_id', '0'),
(302, 42, '_line_subtotal', '600'),
(303, 42, '_line_total', '600'),
(304, 42, '_line_subtotal_tax', '60'),
(305, 42, '_line_tax', '60'),
(306, 42, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:2:"60";}s:8:"subtotal";a:1:{i:1;s:2:"60";}}'),
(307, 43, '_qty', '1'),
(308, 43, '_tax_class', ''),
(309, 43, '_product_id', '135'),
(310, 43, '_variation_id', '0'),
(311, 43, '_line_subtotal', '200'),
(312, 43, '_line_total', '200'),
(313, 43, '_line_subtotal_tax', '20'),
(314, 43, '_line_tax', '20'),
(315, 43, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:2:"20";}s:8:"subtotal";a:1:{i:1;s:2:"20";}}'),
(316, 44, '_qty', '1'),
(317, 44, '_tax_class', ''),
(318, 44, '_product_id', '122'),
(319, 44, '_variation_id', '0'),
(320, 44, '_line_subtotal', '150'),
(321, 44, '_line_total', '150'),
(322, 44, '_line_subtotal_tax', '15'),
(323, 44, '_line_tax', '15'),
(324, 44, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:2:"15";}s:8:"subtotal";a:1:{i:1;s:2:"15";}}'),
(325, 45, '_qty', '1'),
(326, 45, '_tax_class', ''),
(327, 45, '_product_id', '105'),
(328, 45, '_variation_id', '0'),
(329, 45, '_line_subtotal', '180'),
(330, 45, '_line_total', '180'),
(331, 45, '_line_subtotal_tax', '18'),
(332, 45, '_line_tax', '18'),
(333, 45, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:2:"18";}s:8:"subtotal";a:1:{i:1;s:2:"18";}}'),
(334, 46, 'method_id', 'local_pickup:7'),
(335, 46, 'cost', '20.00'),
(336, 46, 'taxes', 'a:1:{i:1;s:1:"2";}'),
(337, 46, 'Items', 'Mũ rộng vành thời trang &times; 2, Mũ lưỡi trai nam nữ thời trang &times; 3, Đầm hoa nhẹ nhàng phù hợp với các bạn nữ &times; 1, Váy dạ hội hợp thời trang &times; 1, Mũ rộng vành &times; 1'),
(338, 47, 'rate_id', '1'),
(339, 47, 'label', 'State Tax'),
(340, 47, 'compound', '0'),
(341, 47, 'tax_amount', '173'),
(342, 47, 'shipping_tax_amount', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) NOT NULL,
  `order_item_name` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(5, 'Sandals nữ kiểu hàn quốc da PU kiểu đế thô gắn đá.', 'line_item', 140),
(6, 'Váy dạ hội hợp thời trang', 'line_item', 140),
(7, 'Váy bông thời trang xinh xắn', 'line_item', 140),
(8, 'Mũ lưỡi trai nam nữ thời trang', 'line_item', 140),
(9, 'Mũ rộng vành thời trang', 'line_item', 142),
(10, 'Mũ lưỡi trai cá tính', 'line_item', 142),
(11, 'Flat Rate', 'shipping', 142),
(12, 'VN-STATE TAX-1', 'tax', 142),
(13, 'Mũ rộng vành thời trang', 'line_item', 143),
(14, 'Mũ lưỡi trai cá tính', 'line_item', 143),
(15, 'Flat Rate', 'shipping', 143),
(16, 'VN-STATE TAX-1', 'tax', 143),
(17, 'Đồng hồ cơ tự động thời trang,mặt thạch anh đính đá.', 'line_item', 144),
(18, 'Đồng hộ nữ thời trang hàn quốc,mặt thạch anh dây da.', 'line_item', 144),
(19, 'Flat Rate', 'shipping', 144),
(20, 'VN-STATE TAX-1', 'tax', 144),
(21, 'Đồng hồ cơ tự động thời trang,mặt thạch anh đính đá.', 'line_item', 146),
(22, 'Đồng hộ nữ thời trang hàn quốc,mặt thạch anh dây da.', 'line_item', 146),
(23, 'Mũ rộng vành thời trang', 'line_item', 146),
(24, 'Flat Rate', 'shipping', 146),
(25, 'VN-STATE TAX-1', 'tax', 146),
(26, 'Mũ rộng vành thời trang', 'line_item', 148),
(27, 'Mũ lưỡi trai cá tính', 'line_item', 148),
(28, 'Flat Rate', 'shipping', 148),
(29, 'VN-STATE TAX-1', 'tax', 148),
(30, 'Mũ rộng vành thời trang', 'line_item', 149),
(31, 'Mũ lưỡi trai cá tính', 'line_item', 149),
(32, 'Local Pickup', 'shipping', 149),
(33, 'VN-STATE TAX-1', 'tax', 149),
(34, 'Mũ lưỡi trai nam nữ thời trang', 'line_item', 152),
(35, 'Mũ rộng vành thời trang', 'line_item', 152),
(36, 'Local Pickup', 'shipping', 152),
(37, 'VN-STATE TAX-1', 'tax', 152),
(38, 'Đầm liền cổ tròn ko tay dáng xòe, kiểu chấm bi', 'line_item', 160),
(39, 'Local Pickup', 'shipping', 160),
(40, 'VN-STATE TAX-1', 'tax', 160),
(41, 'Mũ rộng vành thời trang', 'line_item', 175),
(42, 'Mũ lưỡi trai nam nữ thời trang', 'line_item', 175),
(43, 'Đầm hoa nhẹ nhàng phù hợp với các bạn nữ', 'line_item', 175),
(44, 'Váy dạ hội hợp thời trang', 'line_item', 175),
(45, 'Mũ rộng vành', 'line_item', 175),
(46, 'Local Pickup', 'shipping', 175),
(47, 'VN-STATE TAX-1', 'tax', 175);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) NOT NULL,
  `payment_token_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) NOT NULL,
  `gateway_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(201, '1', 'a:18:{s:4:"cart";s:6:"a:0:{}";s:15:"applied_coupons";s:6:"a:0:{}";s:23:"coupon_discount_amounts";s:6:"a:0:{}";s:27:"coupon_discount_tax_amounts";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:19:"cart_contents_total";i:0;s:5:"total";i:0;s:8:"subtotal";i:0;s:15:"subtotal_ex_tax";i:0;s:9:"tax_total";i:0;s:5:"taxes";s:6:"a:0:{}";s:14:"shipping_taxes";s:6:"a:0:{}";s:13:"discount_cart";i:0;s:17:"discount_cart_tax";i:0;s:14:"shipping_total";i:0;s:18:"shipping_tax_total";i:0;s:9:"fee_total";i:0;s:4:"fees";s:6:"a:0:{}";}', 1489646389);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) NOT NULL,
  `zone_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(6, 'VietNam', 1),
(7, 'Everywhere', 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) NOT NULL,
  `zone_id` bigint(20) NOT NULL,
  `location_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(9, 6, 'VN', 'country');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) NOT NULL,
  `instance_id` bigint(20) NOT NULL,
  `method_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(6, 7, 'local_pickup', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) NOT NULL,
  `tax_rate_country` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_tax_rates`
--

INSERT INTO `wp_woocommerce_tax_rates` (`tax_rate_id`, `tax_rate_country`, `tax_rate_state`, `tax_rate`, `tax_rate_name`, `tax_rate_priority`, `tax_rate_compound`, `tax_rate_shipping`, `tax_rate_order`, `tax_rate_class`) VALUES
(1, 'VN', '', '10.0000', 'State Tax', 1, 0, 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) NOT NULL,
  `location_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yith_wcwl`
--

CREATE TABLE `wp_yith_wcwl` (
  `ID` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `wishlist_id` int(11) DEFAULT NULL,
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_yith_wcwl`
--

INSERT INTO `wp_yith_wcwl` (`ID`, `prod_id`, `quantity`, `user_id`, `wishlist_id`, `dateadded`) VALUES
(2, 112, 1, 1, 1, '2017-01-17 20:23:31'),
(3, 111, 1, 1, 1, '2017-01-19 01:44:03'),
(5, 107, 1, 1, 1, '2017-02-15 04:25:13');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yith_wcwl_lists`
--

CREATE TABLE `wp_yith_wcwl_lists` (
  `ID` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `wishlist_slug` varchar(200) NOT NULL,
  `wishlist_name` text,
  `wishlist_token` varchar(64) NOT NULL,
  `wishlist_privacy` tinyint(1) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_yith_wcwl_lists`
--

INSERT INTO `wp_yith_wcwl_lists` (`ID`, `user_id`, `wishlist_slug`, `wishlist_name`, `wishlist_token`, `wishlist_privacy`, `is_default`) VALUES
(1, 1, '', '', 'ITBA9RXVM399', 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_bp_activity`
--
ALTER TABLE `wp_bp_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_recorded` (`date_recorded`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `secondary_item_id` (`secondary_item_id`),
  ADD KEY `component` (`component`),
  ADD KEY `type` (`type`),
  ADD KEY `mptt_left` (`mptt_left`),
  ADD KEY `mptt_right` (`mptt_right`),
  ADD KEY `hide_sitewide` (`hide_sitewide`),
  ADD KEY `is_spam` (`is_spam`);

--
-- Indexes for table `wp_bp_activity_meta`
--
ALTER TABLE `wp_bp_activity_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_id` (`activity_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_bp_notifications`
--
ALTER TABLE `wp_bp_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `secondary_item_id` (`secondary_item_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `is_new` (`is_new`),
  ADD KEY `component_name` (`component_name`),
  ADD KEY `component_action` (`component_action`),
  ADD KEY `useritem` (`user_id`,`is_new`);

--
-- Indexes for table `wp_bp_notifications_meta`
--
ALTER TABLE `wp_bp_notifications_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_id` (`notification_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_bp_xprofile_data`
--
ALTER TABLE `wp_bp_xprofile_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `field_id` (`field_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_bp_xprofile_fields`
--
ALTER TABLE `wp_bp_xprofile_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `field_order` (`field_order`),
  ADD KEY `can_delete` (`can_delete`),
  ADD KEY `is_required` (`is_required`);

--
-- Indexes for table `wp_bp_xprofile_groups`
--
ALTER TABLE `wp_bp_xprofile_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `can_delete` (`can_delete`);

--
-- Indexes for table `wp_bp_xprofile_meta`
--
ALTER TABLE `wp_bp_xprofile_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_cf7dbplugin_st`
--
ALTER TABLE `wp_cf7dbplugin_st`
  ADD PRIMARY KEY (`submit_time`);

--
-- Indexes for table `wp_cf7dbplugin_submits`
--
ALTER TABLE `wp_cf7dbplugin_submits`
  ADD KEY `submit_time_idx` (`submit_time`),
  ADD KEY `form_name_idx` (`form_name`),
  ADD KEY `field_name_idx` (`field_name`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_cptch_images`
--
ALTER TABLE `wp_cptch_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_cptch_packages`
--
ALTER TABLE `wp_cptch_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_cptch_whitelist`
--
ALTER TABLE `wp_cptch_whitelist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ip` (`ip`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_mltlngg_terms_translate`
--
ALTER TABLE `wp_mltlngg_terms_translate`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `wp_mltlngg_translate`
--
ALTER TABLE `wp_mltlngg_translate`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_sharebar`
--
ALTER TABLE `wp_sharebar`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_signups`
--
ALTER TABLE `wp_signups`
  ADD PRIMARY KEY (`signup_id`),
  ADD KEY `activation_key` (`activation_key`),
  ADD KEY `user_email` (`user_email`),
  ADD KEY `user_login_email` (`user_login`,`user_email`),
  ADD KEY `domain_path` (`domain`(140),`path`(51));

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(191));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(191),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type` (`location_type`),
  ADD KEY `location_type_code` (`location_type`,`location_code`(90));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`(191)),
  ADD KEY `tax_rate_state` (`tax_rate_state`(191)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(191)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type` (`location_type`),
  ADD KEY `location_type_code` (`location_type`,`location_code`(90));

--
-- Indexes for table `wp_yith_wcwl`
--
ALTER TABLE `wp_yith_wcwl`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `prod_id` (`prod_id`);

--
-- Indexes for table `wp_yith_wcwl_lists`
--
ALTER TABLE `wp_yith_wcwl_lists`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `wishlist_token` (`wishlist_token`),
  ADD KEY `wishlist_slug` (`wishlist_slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_bp_activity`
--
ALTER TABLE `wp_bp_activity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_bp_activity_meta`
--
ALTER TABLE `wp_bp_activity_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_bp_notifications`
--
ALTER TABLE `wp_bp_notifications`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_bp_notifications_meta`
--
ALTER TABLE `wp_bp_notifications_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_bp_xprofile_data`
--
ALTER TABLE `wp_bp_xprofile_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_bp_xprofile_fields`
--
ALTER TABLE `wp_bp_xprofile_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_bp_xprofile_groups`
--
ALTER TABLE `wp_bp_xprofile_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_bp_xprofile_meta`
--
ALTER TABLE `wp_bp_xprofile_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `wp_cptch_images`
--
ALTER TABLE `wp_cptch_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT for table `wp_cptch_packages`
--
ALTER TABLE `wp_cptch_packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `wp_cptch_whitelist`
--
ALTER TABLE `wp_cptch_whitelist`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_mltlngg_terms_translate`
--
ALTER TABLE `wp_mltlngg_terms_translate`
  MODIFY `ID` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_mltlngg_translate`
--
ALTER TABLE `wp_mltlngg_translate`
  MODIFY `ID` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1601;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1642;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;
--
-- AUTO_INCREMENT for table `wp_sharebar`
--
ALTER TABLE `wp_sharebar`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `wp_signups`
--
ALTER TABLE `wp_signups`
  MODIFY `signup_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=343;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_yith_wcwl`
--
ALTER TABLE `wp_yith_wcwl`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `wp_yith_wcwl_lists`
--
ALTER TABLE `wp_yith_wcwl_lists`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
