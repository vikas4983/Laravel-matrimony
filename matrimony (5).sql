-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2023 at 10:45 AM
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
-- Database: `matrimony`
--

-- --------------------------------------------------------

--
-- Table structure for table `basic_details`
--

CREATE TABLE `basic_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gender` int(50) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `height` int(11) NOT NULL,
  `religion` int(11) NOT NULL,
  `mother_tongue` int(11) NOT NULL,
  `caste` int(11) NOT NULL,
  `marital_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `body_types`
--

CREATE TABLE `body_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `body_type` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `body_types`
--

INSERT INTO `body_types` (`id`, `body_type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Slim', 1, NULL, NULL),
(2, 'Average', 1, NULL, NULL),
(3, 'Athletic', 1, NULL, NULL),
(4, 'Heavy', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carrier_details`
--

CREATE TABLE `carrier_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city` int(11) NOT NULL,
  `education` int(11) NOT NULL,
  `employee` int(11) NOT NULL,
  `occupation` int(11) NOT NULL,
  `income` int(11) NOT NULL,
  `about_you` varchar(255) NOT NULL,
  `school_name` varchar(255) NOT NULL,
  `college_name` varchar(255) NOT NULL,
  `organization_name` varchar(255) NOT NULL,
  `interested_abroad` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `castes`
--

CREATE TABLE `castes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `religion_id` bigint(20) UNSIGNED NOT NULL,
  `caste` varchar(255) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `castes`
--

INSERT INTO `castes` (`id`, `religion_id`, `caste`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ad Dharmi', NULL, NULL, NULL),
(2, 1, 'Adi Andhra', NULL, NULL, NULL),
(3, 1, 'Adi Dravida', NULL, NULL, NULL),
(4, 1, 'Adi-karnataka', NULL, NULL, NULL),
(5, 1, 'Agarwal', NULL, NULL, NULL),
(6, 1, 'Agnikula Kshatriya', NULL, NULL, NULL),
(7, 1, 'Agri', NULL, NULL, NULL),
(8, 1, 'Ahir Shimpi', NULL, NULL, NULL),
(9, 1, 'Ahom', NULL, NULL, NULL),
(10, 1, 'Ambalavasi', NULL, NULL, NULL),
(11, 1, 'Arekatica', NULL, NULL, NULL),
(12, 1, 'Arora', NULL, NULL, NULL),
(13, 1, 'Arunthathiyar', NULL, NULL, NULL),
(14, 1, 'Arya Vysya', NULL, NULL, NULL),
(15, 1, 'Ayyaraka', NULL, NULL, NULL),
(16, 1, 'Badaga', NULL, NULL, NULL),
(17, 1, 'Bagdi', NULL, NULL, NULL),
(18, 1, 'Baidya', NULL, NULL, NULL),
(19, 1, 'Baishnab', NULL, NULL, NULL),
(20, 1, 'Baishya', NULL, NULL, NULL),
(21, 1, 'Bajantri', NULL, NULL, NULL),
(22, 1, 'Balija', NULL, NULL, NULL),
(23, 1, 'Banayat Oriya', NULL, NULL, NULL),
(24, 1, 'Banik', NULL, NULL, NULL),
(25, 1, 'Baniya', NULL, NULL, NULL),
(26, 1, 'Baniya - Bania', NULL, NULL, NULL),
(27, 1, 'Baniya - Kumuti', NULL, NULL, NULL),
(28, 1, 'Banjara', NULL, NULL, NULL),
(29, 1, 'Barai', NULL, NULL, NULL),
(30, 1, 'Bari', NULL, NULL, NULL),
(31, 1, 'Baria', NULL, NULL, NULL),
(32, 1, 'Barujibi', NULL, NULL, NULL),
(33, 1, 'Besta', NULL, NULL, NULL),
(34, 1, 'Bhandari', NULL, NULL, NULL),
(35, 1, 'Bhatia', NULL, NULL, NULL),
(36, 1, 'Bhatraju', NULL, NULL, NULL),
(37, 1, 'Bhavasar Kshatriya', NULL, NULL, NULL),
(38, 1, 'Bhoi', NULL, NULL, NULL),
(39, 1, 'Bhovi', NULL, NULL, NULL),
(40, 1, 'Bhoyar', NULL, NULL, NULL),
(41, 1, 'Billava', NULL, NULL, NULL),
(42, 1, 'Bishnoi/Vishnoi', NULL, NULL, NULL),
(43, 1, 'Bondili', NULL, NULL, NULL),
(44, 1, 'Boyer', NULL, NULL, NULL),
(45, 1, 'Brahmbatt', NULL, NULL, NULL),
(46, 1, 'Brahmin', NULL, NULL, NULL),
(47, 1, 'Brahmin - Anavil', NULL, NULL, NULL),
(48, 1, 'Brahmin - Audichya', NULL, NULL, NULL),
(49, 1, 'Brahmin - Barendra', NULL, NULL, NULL),
(50, 1, 'Brahmin - Bhatt', NULL, NULL, NULL),
(51, 1, 'Brahmin - Bhumihar', NULL, NULL, NULL),
(52, 1, 'Brahmin - Daivadnya', NULL, NULL, NULL),
(53, 1, 'Brahmin - Danua', NULL, NULL, NULL),
(54, 1, 'Brahmin - Deshastha', NULL, NULL, NULL),
(55, 1, 'Brahmin - Dhiman', NULL, NULL, NULL),
(56, 1, 'Brahmin - Dravida', NULL, NULL, NULL),
(57, 1, 'Brahmin - Embrandiri', NULL, NULL, NULL),
(58, 1, 'Brahmin - Garhwali', NULL, NULL, NULL),
(59, 1, 'Brahmin - Gaur', NULL, NULL, NULL),
(60, 1, 'Brahmin - Goswami', NULL, NULL, NULL),
(61, 1, 'Brahmin - Gujar Gaur', NULL, NULL, NULL),
(62, 1, 'Brahmin - Gurukkal', NULL, NULL, NULL),
(63, 1, 'Brahmin - Halua', NULL, NULL, NULL),
(64, 1, 'Brahmin - Havyaka', NULL, NULL, NULL),
(65, 1, 'Brahmin - Hoysala', NULL, NULL, NULL),
(66, 1, 'Brahmin - Iyengar', NULL, NULL, NULL),
(67, 1, 'Brahmin - Iyer', NULL, NULL, NULL),
(68, 1, 'Brahmin - Jangid', NULL, NULL, NULL),
(69, 1, 'Brahmin - Jhadua', NULL, NULL, NULL),
(70, 1, 'Brahmin - Jyotish', NULL, NULL, NULL),
(71, 1, 'Brahmin - Kanyakubj', NULL, NULL, NULL),
(72, 1, 'Brahmin - Karhade', NULL, NULL, NULL),
(73, 1, 'Brahmin - Khandelwal', NULL, NULL, NULL),
(74, 1, 'Brahmin - Kokanastha', NULL, NULL, NULL),
(75, 1, 'Brahmin - Kota', NULL, NULL, NULL),
(76, 1, 'Brahmin - Kulin', NULL, NULL, NULL),
(77, 1, 'Brahmin - Kumoani', NULL, NULL, NULL),
(78, 1, 'Brahmin - Madhwa', NULL, NULL, NULL),
(79, 1, 'Brahmin - Maithil', NULL, NULL, NULL),
(80, 1, 'Brahmin - Modh', NULL, NULL, NULL),
(81, 1, 'Brahmin - Mohyal', NULL, NULL, NULL),
(82, 1, 'Brahmin - Nagar', NULL, NULL, NULL),
(83, 1, 'Brahmin - Namboodiri', NULL, NULL, NULL),
(84, 1, 'Brahmin - Narmadiya', NULL, NULL, NULL),
(85, 1, 'Brahmin - Niyogi', NULL, NULL, NULL),
(86, 1, 'Brahmin - Paliwal', NULL, NULL, NULL),
(87, 1, 'Brahmin - Panda', NULL, NULL, NULL),
(88, 1, 'Brahmin - Pandit', NULL, NULL, NULL),
(89, 1, 'Brahmin - Pareek', NULL, NULL, NULL),
(90, 1, 'Brahmin - Pushkarna', NULL, NULL, NULL),
(91, 1, 'Brahmin -arhi', NULL, NULL, NULL),
(92, 1, 'Brahmin -igvedi', NULL, NULL, NULL),
(93, 1, 'Brahmin -udraj', NULL, NULL, NULL),
(94, 1, 'Brahmin - Sakaldwipi', NULL, NULL, NULL),
(95, 1, 'Brahmin - Sanadya', NULL, NULL, NULL),
(96, 1, 'Brahmin - Sanketi', NULL, NULL, NULL),
(97, 1, 'Brahmin - Saraswat', NULL, NULL, NULL),
(98, 1, 'Brahmin - Saryuparin', NULL, NULL, NULL),
(99, 1, 'Brahmin - Shivhalli', NULL, NULL, NULL),
(100, 1, 'Brahmin - Shrimali', NULL, NULL, NULL),
(101, 1, 'Brahmin - Sikhwal', NULL, NULL, NULL),
(102, 1, 'Brahmin - Smartha', NULL, NULL, NULL),
(103, 1, 'Brahmin - Sri Vishnava', NULL, NULL, NULL),
(104, 1, 'Brahmin - Stanika', NULL, NULL, NULL),
(105, 1, 'Brahmin - Tyagi', NULL, NULL, NULL),
(106, 1, 'Brahmin - Vaidiki', NULL, NULL, NULL),
(107, 1, 'Brahmin - Vaikhanasa', NULL, NULL, NULL),
(108, 1, 'Brahmin - Velanadu', NULL, NULL, NULL),
(109, 1, 'Brahmin - Vyas', NULL, NULL, NULL),
(110, 1, 'Brajastha Maithil', NULL, NULL, NULL),
(111, 1, 'Brajastha Maithil', NULL, NULL, NULL),
(112, 1, 'Bunt (Shetty)', NULL, NULL, NULL),
(113, 1, 'Chalawadi and Holeya', NULL, NULL, NULL),
(114, 1, 'Chambhar', NULL, NULL, NULL),
(115, 1, 'Chandravanshi Kahar', NULL, NULL, NULL),
(116, 1, 'Chasa', NULL, NULL, NULL),
(117, 1, 'Chattada Sri Vaishnava', NULL, NULL, NULL),
(118, 1, 'Chaudary', NULL, NULL, NULL),
(119, 1, 'Chaurasia', NULL, NULL, NULL),
(120, 1, 'Chennadasar', NULL, NULL, NULL),
(121, 1, 'Chettiar', NULL, NULL, NULL),
(122, 1, 'Chhetri', NULL, NULL, NULL),
(123, 1, 'Chippolu (Mera)', NULL, NULL, NULL),
(124, 1, 'Coorgi', NULL, NULL, NULL),
(125, 1, 'Devadiga', NULL, NULL, NULL),
(126, 1, 'Devandra Kula Vellalar', NULL, NULL, NULL),
(127, 1, 'Devang Koshthi', NULL, NULL, NULL),
(128, 1, 'Devanga', NULL, NULL, NULL),
(129, 1, 'Devrukhe Brahmin', NULL, NULL, NULL),
(130, 1, 'Dhangar', NULL, NULL, NULL),
(131, 1, 'Dheevara', NULL, NULL, NULL),
(132, 1, 'Dhiman', NULL, NULL, NULL),
(133, 1, 'Dhoba', NULL, NULL, NULL),
(134, 1, 'Dhobi', NULL, NULL, NULL),
(135, 1, 'Dhor / Kakkayya', NULL, NULL, NULL),
(136, 1, 'Dommala', NULL, NULL, NULL),
(137, 1, 'Dumal', NULL, NULL, NULL),
(138, 1, 'Dusadh (Paswan)', NULL, NULL, NULL),
(139, 1, 'Ediga', NULL, NULL, NULL),
(140, 1, 'Ezhava', NULL, NULL, NULL),
(141, 1, 'Ezhuthachan', NULL, NULL, NULL),
(142, 1, 'Gabit', NULL, NULL, NULL),
(143, 1, 'Ganda', NULL, NULL, NULL),
(144, 1, 'Gandla', NULL, NULL, NULL),
(145, 1, 'Ganiga', NULL, NULL, NULL),
(146, 1, 'Garhwali', NULL, NULL, NULL),
(147, 1, 'Gatti', NULL, NULL, NULL),
(148, 1, 'Gavara', NULL, NULL, NULL),
(149, 1, 'Gawali', NULL, NULL, NULL),
(150, 1, 'Ghisadi', NULL, NULL, NULL),
(151, 1, 'Ghumar', NULL, NULL, NULL),
(152, 1, 'Goala', NULL, NULL, NULL),
(153, 1, 'Goan', NULL, NULL, NULL),
(154, 1, 'Gomantak', NULL, NULL, NULL),
(155, 1, 'Gondhali', NULL, NULL, NULL),
(156, 1, 'Goud', NULL, NULL, NULL),
(157, 1, 'Gounder', NULL, NULL, NULL),
(158, 1, 'Gowda', NULL, NULL, NULL),
(159, 1, 'Gramani', NULL, NULL, NULL),
(160, 1, 'Gudia', NULL, NULL, NULL),
(161, 1, 'Gujjar', NULL, NULL, NULL),
(162, 1, 'Gupta', NULL, NULL, NULL),
(163, 1, 'Guptan', NULL, NULL, NULL),
(164, 1, 'Gurav', NULL, NULL, NULL),
(165, 1, 'Gurjar', NULL, NULL, NULL),
(166, 1, 'Halba Koshti', NULL, NULL, NULL),
(167, 1, 'Helava', NULL, NULL, NULL),
(168, 1, 'Hugar (Jeer)', NULL, NULL, NULL),
(169, 1, 'Intercaste', NULL, NULL, NULL),
(170, 1, 'Irani', NULL, NULL, NULL),
(171, 1, 'Jaalari', NULL, NULL, NULL),
(172, 1, 'Jaiswal', NULL, NULL, NULL),
(173, 1, 'Jandra', NULL, NULL, NULL),
(174, 1, 'Jangam', NULL, NULL, NULL),
(175, 1, 'Jangra - Brahmin', NULL, NULL, NULL),
(176, 1, 'Jat', NULL, NULL, NULL),
(177, 1, 'Jatav', NULL, NULL, NULL),
(178, 1, 'Jetty/Malla', NULL, NULL, NULL),
(179, 1, 'Jogi (Nath)', NULL, NULL, NULL),
(180, 1, 'Kachara', NULL, NULL, NULL),
(181, 1, 'Kadava Patel', NULL, NULL, NULL),
(182, 1, 'Kahar', NULL, NULL, NULL),
(183, 1, 'Kaibarta', NULL, NULL, NULL),
(184, 1, 'Kalal', NULL, NULL, NULL),
(185, 1, 'Kalanji', NULL, NULL, NULL),
(186, 1, 'Kalar', NULL, NULL, NULL),
(187, 1, 'Kalinga', NULL, NULL, NULL),
(188, 1, 'Kalinga Vysya', NULL, NULL, NULL),
(189, 1, 'Kalita', NULL, NULL, NULL),
(190, 1, 'Kalwar', NULL, NULL, NULL),
(191, 1, 'Kamboj', NULL, NULL, NULL),
(192, 1, 'Kamma', NULL, NULL, NULL),
(193, 1, 'Kansari', NULL, NULL, NULL),
(194, 1, 'Kapu', NULL, NULL, NULL),
(195, 1, 'Karana', NULL, NULL, NULL),
(196, 1, 'Karmakar', NULL, NULL, NULL),
(197, 1, 'Karuneegar', NULL, NULL, NULL),
(198, 1, 'Kasar', NULL, NULL, NULL),
(199, 1, 'Kashyap', NULL, NULL, NULL),
(200, 1, 'Katiya', NULL, NULL, NULL),
(201, 1, 'Kavuthiyya/Ezhavathy', NULL, NULL, NULL),
(202, 1, 'Kayastha', NULL, NULL, NULL),
(203, 1, 'Khandayat', NULL, NULL, NULL),
(204, 1, 'Khandelwal', NULL, NULL, NULL),
(205, 1, 'Kharwa', NULL, NULL, NULL),
(206, 1, 'Kharwar', NULL, NULL, NULL),
(207, 1, 'Khatri', NULL, NULL, NULL),
(208, 1, 'Kirar', NULL, NULL, NULL),
(209, 1, 'Kokanastha Maratha', NULL, NULL, NULL),
(210, 1, 'Koli', NULL, NULL, NULL),
(211, 1, 'Koli Mahadev', NULL, NULL, NULL),
(212, 1, 'Koli Patel', NULL, NULL, NULL),
(213, 1, 'Kongu Vellala Gounder', NULL, NULL, NULL),
(214, 1, 'Konkani', NULL, NULL, NULL),
(215, 1, 'Korama', NULL, NULL, NULL),
(216, 1, 'Kori', NULL, NULL, NULL),
(217, 1, 'Kosthi', NULL, NULL, NULL),
(218, 1, 'Krishnavaka', NULL, NULL, NULL),
(219, 1, 'Kshatriya', NULL, NULL, NULL),
(220, 1, 'Kudumbi', NULL, NULL, NULL),
(221, 1, 'Kulal', NULL, NULL, NULL),
(222, 1, 'Kulalar', NULL, NULL, NULL),
(223, 1, 'Kulita', NULL, NULL, NULL),
(224, 1, 'Kumawat', NULL, NULL, NULL),
(225, 1, 'Kumbhakar', NULL, NULL, NULL),
(226, 1, 'Kumbhar', NULL, NULL, NULL),
(227, 1, 'Kumhar', NULL, NULL, NULL),
(228, 1, 'Kummari', NULL, NULL, NULL),
(229, 1, 'Kunbi', NULL, NULL, NULL),
(230, 1, 'Kuravan', NULL, NULL, NULL),
(231, 1, 'Kurmi', NULL, NULL, NULL),
(232, 1, 'Kurmi Kshatriya', NULL, NULL, NULL),
(233, 1, 'Kuruba', NULL, NULL, NULL),
(234, 1, 'Kuruhina Shetty', NULL, NULL, NULL),
(235, 1, 'Kurumbar', NULL, NULL, NULL),
(236, 1, 'Kushwaha (Koiri)', NULL, NULL, NULL),
(237, 1, 'Kutchi', NULL, NULL, NULL),
(238, 1, 'Lambadi', NULL, NULL, NULL),
(239, 1, 'Leva patel', NULL, NULL, NULL),
(240, 1, 'Leva patil', NULL, NULL, NULL),
(241, 1, 'Lingayath', NULL, NULL, NULL),
(242, 1, 'Lodhiajput', NULL, NULL, NULL),
(243, 1, 'Lohana', NULL, NULL, NULL),
(244, 1, 'Lohar', NULL, NULL, NULL),
(245, 1, 'Loniya', NULL, NULL, NULL),
(246, 1, 'Lubana', NULL, NULL, NULL),
(247, 1, 'Madiga', NULL, NULL, NULL),
(248, 1, 'Mahajan', NULL, NULL, NULL),
(249, 1, 'Mahar', NULL, NULL, NULL),
(250, 1, 'Mahendra', NULL, NULL, NULL),
(251, 1, 'Maheshwari', NULL, NULL, NULL),
(252, 1, 'Mahishya', NULL, NULL, NULL),
(253, 1, 'Majabi', NULL, NULL, NULL),
(254, 1, 'Mala', NULL, NULL, NULL),
(255, 1, 'Mali', NULL, NULL, NULL),
(256, 1, 'Malla', NULL, NULL, NULL),
(257, 1, 'Malviya Brahmin', NULL, NULL, NULL),
(258, 1, 'Mangalorean', NULL, NULL, NULL),
(259, 1, 'Manipuri', NULL, NULL, NULL),
(260, 1, 'Mapila', NULL, NULL, NULL),
(261, 1, 'Maratha', NULL, NULL, NULL),
(262, 1, 'Maruthuvar', NULL, NULL, NULL),
(263, 1, 'Matang', NULL, NULL, NULL),
(264, 1, 'Mathur', NULL, NULL, NULL),
(265, 1, 'Maurya / Shakya', NULL, NULL, NULL),
(266, 1, 'Meena', NULL, NULL, NULL),
(267, 1, 'Meenavar', NULL, NULL, NULL),
(268, 1, 'Mehra', NULL, NULL, NULL),
(269, 1, 'Meru Darji', NULL, NULL, NULL),
(270, 1, 'Mochi', NULL, NULL, NULL),
(271, 1, 'Modak', NULL, NULL, NULL),
(272, 1, 'Mogaveera', NULL, NULL, NULL),
(273, 1, 'Mudaliyar', NULL, NULL, NULL),
(274, 1, 'Mudiraj', NULL, NULL, NULL),
(275, 1, 'Mukkulathor', NULL, NULL, NULL),
(276, 1, 'Munnuru Kapu', NULL, NULL, NULL),
(277, 1, 'Muthuraja', NULL, NULL, NULL),
(278, 1, 'Naagavamsam', NULL, NULL, NULL),
(279, 1, 'Nadar', NULL, NULL, NULL),
(280, 1, 'Nagaralu', NULL, NULL, NULL),
(281, 1, 'Nai', NULL, NULL, NULL),
(282, 1, 'Naicker', NULL, NULL, NULL),
(283, 1, 'Naidu', NULL, NULL, NULL),
(284, 1, 'Naik', NULL, NULL, NULL),
(285, 1, 'Nair', NULL, NULL, NULL),
(286, 1, 'Nambiar', NULL, NULL, NULL),
(287, 1, 'Namosudra', NULL, NULL, NULL),
(288, 1, 'Napit', NULL, NULL, NULL),
(289, 1, 'Nayaka', NULL, NULL, NULL),
(290, 1, 'Neeli', NULL, NULL, NULL),
(291, 1, 'Nepali', NULL, NULL, NULL),
(292, 1, 'Nhavi', NULL, NULL, NULL),
(293, 1, 'Oswal', NULL, NULL, NULL),
(294, 1, 'Otari', NULL, NULL, NULL),
(295, 1, 'Padmasali', NULL, NULL, NULL),
(296, 1, 'Pal', NULL, NULL, NULL),
(297, 1, 'Panchal', NULL, NULL, NULL),
(298, 1, 'Pandaram', NULL, NULL, NULL),
(299, 1, 'Panicker', NULL, NULL, NULL),
(300, 1, 'Parkava Kulam', NULL, NULL, NULL),
(301, 1, 'Parsi', NULL, NULL, NULL),
(302, 1, 'Partraj', NULL, NULL, NULL),
(303, 1, 'Pasi', NULL, NULL, NULL),
(304, 1, 'Patel', NULL, NULL, NULL),
(305, 1, 'Pathare Prabhu', NULL, NULL, NULL),
(306, 1, 'Patnaick', NULL, NULL, NULL),
(307, 1, 'Patra', NULL, NULL, NULL),
(308, 1, 'Perika', NULL, NULL, NULL),
(309, 1, 'Pillai', NULL, NULL, NULL),
(310, 1, 'Poosala', NULL, NULL, NULL),
(311, 1, 'Porwal', NULL, NULL, NULL),
(312, 1, 'Prajapati', NULL, NULL, NULL),
(313, 1, 'Raigar', NULL, NULL, NULL),
(314, 1, 'Rajaka', NULL, NULL, NULL),
(315, 1, 'Rajastani', NULL, NULL, NULL),
(316, 1, 'Rajbhar', NULL, NULL, NULL),
(317, 1, 'Rajbonshi', NULL, NULL, NULL),
(318, 1, 'Rajpurohit', NULL, NULL, NULL),
(319, 1, 'Rajput', NULL, NULL, NULL),
(320, 1, 'Ramanandi', NULL, NULL, NULL),
(321, 1, 'Ramdasia', NULL, NULL, NULL),
(322, 1, 'Ramgariah', NULL, NULL, NULL),
(323, 1, 'Ramoshi', NULL, NULL, NULL),
(324, 1, 'Ravidasia', NULL, NULL, NULL),
(325, 1, 'Rawat', NULL, NULL, NULL),
(326, 1, 'Reddy', NULL, NULL, NULL),
(327, 1, 'Relli', NULL, NULL, NULL),
(328, 1, 'Ror', NULL, NULL, NULL),
(329, 1, 'SC', NULL, NULL, NULL),
(330, 1, 'ST', NULL, NULL, NULL),
(331, 1, 'Sadgope', NULL, NULL, NULL),
(332, 1, 'Saha', NULL, NULL, NULL),
(333, 1, 'Sahu', NULL, NULL, NULL),
(334, 1, 'Saini', NULL, NULL, NULL),
(335, 1, 'Saliya', NULL, NULL, NULL),
(336, 1, 'Sathwara', NULL, NULL, NULL),
(337, 1, 'Savji', NULL, NULL, NULL),
(338, 1, 'Senai Thalaivar', NULL, NULL, NULL),
(339, 1, 'Senguntha Mudaliyar', NULL, NULL, NULL),
(340, 1, 'Settibalija', NULL, NULL, NULL),
(341, 1, 'Shimpi', NULL, NULL, NULL),
(342, 1, 'Sindhi', NULL, NULL, NULL),
(343, 1, 'Sindhi-Amil', NULL, NULL, NULL),
(344, 1, 'Sindhi-Baibhand', NULL, NULL, NULL),
(345, 1, 'Sindhi-Bhanusali', NULL, NULL, NULL),
(346, 1, 'Sindhi-Bhatia', NULL, NULL, NULL),
(347, 1, 'Sindhi-Chhapru', NULL, NULL, NULL),
(348, 1, 'Sindhi-Dadu', NULL, NULL, NULL),
(349, 1, 'Sindhi-Hyderabadi', NULL, NULL, NULL),
(350, 1, 'Sindhi-Larai', NULL, NULL, NULL),
(351, 1, 'Sindhi-Larkana', NULL, NULL, NULL),
(352, 1, 'Sindhi-Lohana', NULL, NULL, NULL),
(353, 1, 'Sindhi-Rohiri', NULL, NULL, NULL),
(354, 1, 'Sindhi-Sahiti', NULL, NULL, NULL),
(355, 1, 'Sindhi-Sakkhar', NULL, NULL, NULL),
(356, 1, 'Sindhi-Sehwani', NULL, NULL, NULL),
(357, 1, 'Sindhi-Shikarpuri', NULL, NULL, NULL),
(358, 1, 'Sindhi-Thatai', NULL, NULL, NULL),
(359, 1, 'Sonar', NULL, NULL, NULL),
(360, 1, 'Soni', NULL, NULL, NULL),
(361, 1, 'Sourashtra', NULL, NULL, NULL),
(362, 1, 'Sozhiya Vellalar', NULL, NULL, NULL),
(363, 1, 'Srisayana', NULL, NULL, NULL),
(364, 1, 'Sugali (Naika)', NULL, NULL, NULL),
(365, 1, 'Sunari', NULL, NULL, NULL),
(366, 1, 'Sundhi', NULL, NULL, NULL),
(367, 1, 'Surya Balija', NULL, NULL, NULL),
(368, 1, 'Suthar', NULL, NULL, NULL),
(369, 1, 'Swakula Sali', NULL, NULL, NULL),
(370, 1, 'Tamboli', NULL, NULL, NULL),
(371, 1, 'Tanti', NULL, NULL, NULL),
(372, 1, 'Tantubai', NULL, NULL, NULL),
(373, 1, 'Telaga', NULL, NULL, NULL),
(374, 1, 'Teli', NULL, NULL, NULL),
(375, 1, 'Thakkar', NULL, NULL, NULL),
(376, 1, 'Thakore', NULL, NULL, NULL),
(377, 1, 'Thakur', NULL, NULL, NULL),
(378, 1, 'Thigala', NULL, NULL, NULL),
(379, 1, 'Thiyya', NULL, NULL, NULL),
(380, 1, 'Tili', NULL, NULL, NULL),
(381, 1, 'Togata', NULL, NULL, NULL),
(382, 1, 'Tonk Kshatriya', NULL, NULL, NULL),
(383, 1, 'Turupu Kapu', NULL, NULL, NULL),
(384, 1, 'Uppara', NULL, NULL, NULL),
(385, 1, 'Urali Gounder', NULL, NULL, NULL),
(386, 1, 'Urs', NULL, NULL, NULL),
(387, 1, 'Vada Balija', NULL, NULL, NULL),
(388, 1, 'Vaddera', NULL, NULL, NULL),
(389, 1, 'Vaish', NULL, NULL, NULL),
(390, 1, 'Vaishnav', NULL, NULL, NULL),
(391, 1, 'Vaishnava', NULL, NULL, NULL),
(392, 1, 'Vaishya', NULL, NULL, NULL),
(393, 1, 'Vaishya Vani', NULL, NULL, NULL),
(394, 1, 'Valluvan', NULL, NULL, NULL),
(395, 1, 'Valmiki', NULL, NULL, NULL),
(396, 1, 'Vania', NULL, NULL, NULL),
(397, 1, 'Vanika Vyshya', NULL, NULL, NULL),
(398, 1, 'Vaniya', NULL, NULL, NULL),
(399, 1, 'Vanjara', NULL, NULL, NULL),
(400, 1, 'Vanjari', NULL, NULL, NULL),
(401, 1, 'Vankar', NULL, NULL, NULL),
(402, 1, 'Vannar', NULL, NULL, NULL),
(403, 1, 'Vannia Kula Kshatriyar', NULL, NULL, NULL),
(404, 1, 'Variar', NULL, NULL, NULL),
(405, 1, 'Varshney', NULL, NULL, NULL),
(406, 1, 'Veera Saivam', NULL, NULL, NULL),
(407, 1, 'Velaan', NULL, NULL, NULL),
(408, 1, 'Velama', NULL, NULL, NULL),
(409, 1, 'Vellalar', NULL, NULL, NULL),
(410, 1, 'Veluthedathu Nair', NULL, NULL, NULL),
(411, 1, 'Vettuva Gounder', NULL, NULL, NULL),
(412, 1, 'Vilakkithala Nair', NULL, NULL, NULL),
(413, 1, 'Viswabrahmin', NULL, NULL, NULL),
(414, 1, 'Viswakarma', NULL, NULL, NULL),
(415, 1, 'Vokkaliga', NULL, NULL, NULL),
(416, 1, 'Vysya', NULL, NULL, NULL),
(417, 1, 'Yadav', NULL, NULL, NULL),
(418, 1, 'Yellapu', NULL, NULL, NULL),
(419, 1, 'Others', NULL, NULL, NULL),
(420, 2, 'Shia - Isma ilis (Seveners)', NULL, NULL, NULL),
(421, 2, 'Shia - Ithna Asharis (Twelvers)', NULL, NULL, NULL),
(422, 2, 'Shia - Zaidis (Fivers)', NULL, NULL, NULL),
(423, 2, 'Shia - Ansari', NULL, NULL, NULL),
(424, 2, 'Shia - Arain', NULL, NULL, NULL),
(425, 2, 'Shia - Awan', NULL, NULL, NULL),
(426, 2, 'Shia - Bohra', NULL, NULL, NULL),
(427, 2, 'Shia - Dakhini', NULL, NULL, NULL),
(428, 2, 'Shia - Dudekula', NULL, NULL, NULL),
(429, 2, 'Shia - Hanafi', NULL, NULL, NULL),
(430, 2, 'Shia - Jat', NULL, NULL, NULL),
(431, 2, 'Shia - Khoja', NULL, NULL, NULL),
(432, 2, 'Shia - Labbay', NULL, NULL, NULL),
(433, 2, 'Shia - Malik', NULL, NULL, NULL),
(434, 2, 'Shia - Mappila', NULL, NULL, NULL),
(435, 2, 'Shia - Marakayar', NULL, NULL, NULL),
(436, 2, 'Shia - Memon', NULL, NULL, NULL),
(437, 2, 'Shia - Mughal', NULL, NULL, NULL),
(438, 2, 'Shia - Pathan', NULL, NULL, NULL),
(439, 2, 'Shia - Qureshi', NULL, NULL, NULL),
(440, 2, 'Shia - Rajput', NULL, NULL, NULL),
(441, 2, 'Shia - Rowther', NULL, NULL, NULL),
(442, 2, 'Shia - Shafi', NULL, NULL, NULL),
(443, 2, 'Shia - Sheikh', NULL, NULL, NULL),
(444, 2, 'Shia - Siddiqui', NULL, NULL, NULL),
(445, 2, 'Shia - Syed', NULL, NULL, NULL),
(446, 2, 'Shia - UnSpecified', NULL, NULL, NULL),
(447, 2, 'Shia - Others', NULL, NULL, NULL),
(448, 2, 'Sunni Hanabali', NULL, NULL, NULL),
(449, 2, 'Sunni Hanafi', NULL, NULL, NULL),
(450, 2, 'Sunni Maliki', NULL, NULL, NULL),
(451, 2, 'Sunni Shafii', NULL, NULL, NULL),
(452, 2, 'Sunni - Ansari', NULL, NULL, NULL),
(453, 2, 'Sunni - Arain', NULL, NULL, NULL),
(454, 2, 'Sunni - Awan', NULL, NULL, NULL),
(455, 2, 'Sunni - Bohra', NULL, NULL, NULL),
(456, 2, 'Sunni - Dakhini', NULL, NULL, NULL),
(457, 2, 'Sunni - Dudekula', NULL, NULL, NULL),
(458, 2, 'Sunni - Hanafi', NULL, NULL, NULL),
(459, 2, 'Sunni - Jat', NULL, NULL, NULL),
(460, 2, 'Sunni - Khoja', NULL, NULL, NULL),
(461, 2, 'Sunni - Labbay', NULL, NULL, NULL),
(462, 2, 'Sunni - Malik', NULL, NULL, NULL),
(463, 2, 'Sunni - Mappila', NULL, NULL, NULL),
(464, 2, 'Sunni - Marakayar', NULL, NULL, NULL),
(465, 2, 'Sunni - Memon', NULL, NULL, NULL),
(466, 2, 'Sunni - Mughal', NULL, NULL, NULL),
(467, 2, 'Sunni - Pathan', NULL, NULL, NULL),
(468, 2, 'Sunni - Qureshi', NULL, NULL, NULL),
(469, 2, 'Sunni - Rajput', NULL, NULL, NULL),
(470, 2, 'Sunni - Rowther', NULL, NULL, NULL),
(471, 2, 'Sunni - Shafi', NULL, NULL, NULL),
(472, 2, 'Sunni - Sheikh', NULL, NULL, NULL),
(473, 2, 'Sunni - Siddiqui', NULL, NULL, NULL),
(474, 2, 'Sunni - Syed', NULL, NULL, NULL),
(475, 2, 'Sunni - UnSpecified', NULL, NULL, NULL),
(476, 2, 'Sunni - Others', NULL, NULL, NULL),
(477, 3, 'jain', NULL, NULL, NULL),
(478, 3, 'Digambar', NULL, NULL, NULL),
(479, 3, 'Digambar - Agarwal', NULL, NULL, NULL),
(480, 3, 'Digambar - Bania', NULL, NULL, NULL),
(481, 3, 'Digambar - Intercaste', NULL, NULL, NULL),
(482, 3, 'Digambar - Jaiswal', NULL, NULL, NULL),
(483, 3, 'Digambar - Khandelwal', NULL, NULL, NULL),
(484, 3, 'Digambar - Kutchi', NULL, NULL, NULL),
(485, 3, 'Digambar - No Bar', NULL, NULL, NULL),
(486, 3, 'Digambar - Oswal', NULL, NULL, NULL),
(487, 3, 'Digambar - Porwal', NULL, NULL, NULL),
(488, 3, 'Digambar - Unspecified', NULL, NULL, NULL),
(489, 3, 'Digambar - Vaishya', NULL, NULL, NULL),
(490, 3, 'Digambar - KVO', NULL, NULL, NULL),
(491, 3, 'Digambar - Others', NULL, NULL, NULL),
(492, 3, 'Shwetamber', NULL, NULL, NULL),
(493, 3, 'Shwetamber - Agarwal', NULL, NULL, NULL),
(494, 3, 'Shwetamber - Bania', NULL, NULL, NULL),
(495, 3, 'Shwetamber - Intercaste', NULL, NULL, NULL),
(496, 3, 'Shwetamber - Jaiswal', NULL, NULL, NULL),
(497, 3, 'Shwetamber - Khandelwal', NULL, NULL, NULL),
(498, 3, 'Shwetamber - Kutchi', NULL, NULL, NULL),
(499, 3, 'Shwetamber - No Bar', NULL, NULL, NULL),
(500, 3, 'Shwetamber - Oswal', NULL, NULL, NULL),
(501, 3, 'Shwetamber - Porwal', NULL, NULL, NULL),
(502, 3, 'Shwetamber - Unspecified', NULL, NULL, NULL),
(503, 3, 'Shwetamber - Vaishya', NULL, NULL, NULL),
(504, 3, 'Shwetamber - KVO', NULL, NULL, NULL),
(505, 3, 'Shwetamber - Others', NULL, NULL, NULL),
(506, 3, 'Jain- Others', NULL, NULL, NULL),
(507, 7, 'Parsi', NULL, NULL, NULL),
(508, 4, 'Sikh - Ahluwalia', NULL, NULL, NULL),
(509, 4, 'Sikh - Arora', NULL, NULL, NULL),
(510, 4, 'Sikh - Bhatia', NULL, NULL, NULL),
(511, 4, 'Sikh - Ghumar', NULL, NULL, NULL),
(512, 4, 'Sikh - Intercaste', NULL, NULL, NULL),
(513, 4, 'Sikh - Jat', NULL, NULL, NULL),
(514, 4, 'Sikh - Kamboj', NULL, NULL, NULL),
(515, 4, 'Sikh - Khatri', NULL, NULL, NULL),
(516, 4, 'Sikh - Kshatriya', NULL, NULL, NULL),
(517, 4, 'Sikh - Lubana', NULL, NULL, NULL),
(518, 4, 'Sikh - Majabi', NULL, NULL, NULL),
(519, 4, 'Sikh - Nai', NULL, NULL, NULL),
(520, 4, 'Sikh - No Bar', NULL, NULL, NULL),
(521, 4, 'Sikh - Rajput', NULL, NULL, NULL),
(522, 4, 'Sikh - Ramdasia', NULL, NULL, NULL),
(523, 4, 'Sikh - Ramgharia', NULL, NULL, NULL),
(524, 4, 'Sikh - Saini', NULL, NULL, NULL),
(525, 4, 'Sikh - Ravidasia', NULL, NULL, NULL),
(526, 4, 'Sikh - Bhatra', NULL, NULL, NULL),
(527, 4, 'Sikh - Tonk Kshatriya', NULL, NULL, NULL),
(528, 4, 'Sikh - Unspecified', NULL, NULL, NULL),
(529, 4, 'Sikh - Others', NULL, NULL, NULL),
(530, 5, 'Adventist', NULL, NULL, NULL),
(531, 5, 'Anglican / Episcopal', NULL, NULL, NULL),
(532, 5, 'Apostolic', NULL, NULL, NULL),
(533, 5, 'Assyrian', NULL, NULL, NULL),
(534, 5, 'Assembly of God (AG)', NULL, NULL, NULL),
(535, 5, 'Baptist', NULL, NULL, NULL),
(536, 5, 'Calvinist', NULL, NULL, NULL),
(537, 5, 'Christian - Born Again', NULL, NULL, NULL),
(538, 5, 'Christian - Bretheren', NULL, NULL, NULL),
(539, 5, 'Christian - Church of South India', NULL, NULL, NULL),
(540, 5, 'Christian - Evangelist', NULL, NULL, NULL),
(541, 5, 'Christian - Jacobite', NULL, NULL, NULL),
(542, 5, 'Christian - Knanaya', NULL, NULL, NULL),
(543, 5, 'Christian - Knanaya Catholic', NULL, NULL, NULL),
(544, 5, 'Christian - Knanaya Jacobite', NULL, NULL, NULL),
(545, 5, 'Christian - Latin Catholic', NULL, NULL, NULL),
(546, 5, 'Christian - Malankara', NULL, NULL, NULL),
(547, 5, 'Christian - Marthoma', NULL, NULL, NULL),
(548, 5, 'Christian - Pentacost', NULL, NULL, NULL),
(549, 5, 'Christian - Roman Catholic', NULL, NULL, NULL),
(550, 5, 'Christian - Syrian Catholic', NULL, NULL, NULL),
(551, 5, 'Christian - Syrian Jacobite', NULL, NULL, NULL),
(552, 5, 'Christian - Syrian Orthodox', NULL, NULL, NULL),
(553, 5, 'Christian - Syro Malabar', NULL, NULL, NULL),
(554, 5, 'Christian - Unspecified', NULL, NULL, NULL),
(555, 5, 'Church of God', NULL, NULL, NULL),
(556, 5, 'Church of Christ', NULL, NULL, NULL),
(557, 5, 'Church of North India', NULL, NULL, NULL),
(558, 5, 'Congregational', NULL, NULL, NULL),
(559, 5, 'East Indian Catholic', NULL, NULL, NULL),
(560, 5, 'Jehovah\'s Witnesses', NULL, NULL, NULL),
(561, 5, 'Latter day saints', NULL, NULL, NULL),
(562, 5, 'Lutheran', NULL, NULL, NULL),
(563, 5, 'Melkite', NULL, NULL, NULL),
(564, 5, 'Malabar Independent Syrian Church', NULL, NULL, NULL),
(565, 5, 'Mennonite', NULL, NULL, NULL),
(566, 5, 'Methodist', NULL, NULL, NULL),
(567, 5, 'Moravian', NULL, NULL, NULL),
(568, 5, 'Protestant', NULL, NULL, NULL),
(569, 5, 'Presbyterian', NULL, NULL, NULL),
(570, 5, 'Seventh-day Adventist', NULL, NULL, NULL),
(571, 5, 'Reformed Baptist', NULL, NULL, NULL),
(572, 5, 'Reformed Presbyterian', NULL, NULL, NULL),
(573, 5, 'Knanaya', NULL, NULL, NULL),
(574, 5, 'Knanaya Catholic', NULL, NULL, NULL),
(575, 5, 'Knanaya Jacobite', NULL, NULL, NULL),
(576, 5, 'St. Thomas Evangelical', NULL, NULL, NULL),
(577, 5, 'Syrian Jacobite', NULL, NULL, NULL),
(578, 5, 'Syrian Orthodox', NULL, NULL, NULL),
(579, 5, 'Others', NULL, NULL, NULL),
(580, 6, 'Buddhist', NULL, NULL, NULL),
(581, 8, 'Bahai', NULL, NULL, NULL),
(582, 9, 'Jewish', NULL, NULL, NULL),
(584, 1, 'a', '1', '2023-10-03 13:26:28', '2023-10-03 13:26:28');

-- --------------------------------------------------------

--
-- Table structure for table `challenges`
--

CREATE TABLE `challenges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `challenge` varchar(255) NOT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `challenges`
--

INSERT INTO `challenges` (`id`, `challenge`, `status`, `created_at`, `updated_at`) VALUES
(1, 'None', 1, NULL, NULL),
(2, 'Physically-from birth', 1, NULL, NULL),
(3, 'Physically-due accident', 1, NULL, NULL),
(4, 'Mental-from birth', 1, NULL, NULL),
(5, 'Mental- due to accident', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `city` varchar(255) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `state_id`, `city`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Port Blair', NULL, NULL, NULL),
(2, 2, 'Visakhapatnam', NULL, NULL, NULL),
(3, 2, 'Vijayawada', NULL, NULL, NULL),
(4, 2, 'Guntur', NULL, NULL, NULL),
(5, 2, 'Nellore', NULL, NULL, NULL),
(6, 2, 'Kurnool', NULL, NULL, NULL),
(7, 2, 'Rajahmundry', NULL, NULL, NULL),
(8, 2, 'Kakinada', NULL, NULL, NULL),
(9, 2, 'Tirupati', NULL, NULL, NULL),
(10, 2, 'Anantapur', NULL, NULL, NULL),
(11, 2, 'Kadapa', NULL, NULL, NULL),
(12, 2, 'Vizianagaram', NULL, NULL, NULL),
(13, 2, 'Eluru', NULL, NULL, NULL),
(14, 2, 'Ongole', NULL, NULL, NULL),
(15, 2, 'Nandyal', NULL, NULL, NULL),
(16, 2, 'Machilipatnam', NULL, NULL, NULL),
(17, 2, 'Adoni', NULL, NULL, NULL),
(18, 2, 'Tenali', NULL, NULL, NULL),
(19, 2, 'Chittoor', NULL, NULL, NULL),
(20, 2, 'Hindupur', NULL, NULL, NULL),
(21, 2, 'Proddatur', NULL, NULL, NULL),
(22, 2, 'Bhimavaram', NULL, NULL, NULL),
(23, 2, 'Madanapalle', NULL, NULL, NULL),
(24, 2, 'Guntakal', NULL, NULL, NULL),
(25, 2, 'Dharmavaram', NULL, NULL, NULL),
(26, 2, 'Gudivada', NULL, NULL, NULL),
(27, 2, 'Srikakulam', NULL, NULL, NULL),
(28, 2, 'Narasaraopet', NULL, NULL, NULL),
(29, 2, 'Rajampet', NULL, NULL, NULL),
(30, 2, 'Tadpatri', NULL, NULL, NULL),
(31, 2, 'Tadepalligudem', NULL, NULL, NULL),
(32, 2, 'Chilakaluripet', NULL, NULL, NULL),
(33, 2, 'Yemmiganur', NULL, NULL, NULL),
(34, 2, 'Kadiri', NULL, NULL, NULL),
(35, 2, 'Chirala', NULL, NULL, NULL),
(36, 2, 'Anakapalle', NULL, NULL, NULL),
(37, 2, 'Kavali', NULL, NULL, NULL),
(38, 2, 'Palacole', NULL, NULL, NULL),
(39, 2, 'Sullurpeta', NULL, NULL, NULL),
(40, 2, 'Tanuku', NULL, NULL, NULL),
(41, 2, 'Rayachoti', NULL, NULL, NULL),
(42, 2, 'Srikalahasti', NULL, NULL, NULL),
(43, 2, 'Bapatla', NULL, NULL, NULL),
(44, 2, 'Naidupet', NULL, NULL, NULL),
(45, 2, 'Nagari', NULL, NULL, NULL),
(46, 2, 'Gudur', NULL, NULL, NULL),
(47, 2, 'Vinukonda', NULL, NULL, NULL),
(48, 2, 'Narasapuram', NULL, NULL, NULL),
(49, 2, 'Nuzvid', NULL, NULL, NULL),
(50, 2, 'Markapur', NULL, NULL, NULL),
(51, 2, 'Ponnur', NULL, NULL, NULL),
(52, 2, 'Kandukur', NULL, NULL, NULL),
(53, 2, 'Bobbili', NULL, NULL, NULL),
(54, 2, 'Rayadurg', NULL, NULL, NULL),
(55, 2, 'Samalkot', NULL, NULL, NULL),
(56, 2, 'Jaggaiahpet', NULL, NULL, NULL),
(57, 2, 'Tuni', NULL, NULL, NULL),
(58, 2, 'Amalapuram', NULL, NULL, NULL),
(59, 2, 'Bheemunipatnam', NULL, NULL, NULL),
(60, 2, 'Venkatagiri', NULL, NULL, NULL),
(61, 2, 'Sattenapalle', NULL, NULL, NULL),
(62, 2, 'Pithapuram', NULL, NULL, NULL),
(63, 2, 'Palasa Kasibugga', NULL, NULL, NULL),
(64, 2, 'Parvathipuram', NULL, NULL, NULL),
(65, 2, 'Macherla', NULL, NULL, NULL),
(66, 2, 'Gooty', NULL, NULL, NULL),
(67, 2, 'Salur', NULL, NULL, NULL),
(68, 2, 'Mandapeta', NULL, NULL, NULL),
(69, 2, 'Jammalamadugu', NULL, NULL, NULL),
(70, 2, 'Peddapuram', NULL, NULL, NULL),
(71, 2, 'Punganur', NULL, NULL, NULL),
(72, 2, 'Nidadavole', NULL, NULL, NULL),
(73, 2, 'Repalle', NULL, NULL, NULL),
(74, 2, 'Ramachandrapuram', NULL, NULL, NULL),
(75, 2, 'Kovvur', NULL, NULL, NULL),
(76, 2, 'Tiruvuru', NULL, NULL, NULL),
(77, 2, 'Uravakonda', NULL, NULL, NULL),
(78, 2, 'Narsipatnam', NULL, NULL, NULL),
(79, 2, 'Yerraguntla', NULL, NULL, NULL),
(80, 2, 'Pedana', NULL, NULL, NULL),
(81, 2, 'Puttur', NULL, NULL, NULL),
(82, 2, 'Renigunta', NULL, NULL, NULL),
(83, 2, 'Rajam', NULL, NULL, NULL),
(84, 2, 'Srisailam Project (Right Flank Colony) Township', NULL, NULL, NULL),
(85, 3, 'Naharlagun', NULL, NULL, NULL),
(86, 3, 'Pasighat', NULL, NULL, NULL),
(87, 4, 'Guwahati', NULL, NULL, NULL),
(88, 4, 'Silchar', NULL, NULL, NULL),
(89, 4, 'Dibrugarh', NULL, NULL, NULL),
(90, 4, 'Nagaon', NULL, NULL, NULL),
(91, 4, 'Tinsukia', NULL, NULL, NULL),
(92, 4, 'Jorhat', NULL, NULL, NULL),
(93, 4, 'Bongaigaon City', NULL, NULL, NULL),
(94, 4, 'Dhubri', NULL, NULL, NULL),
(95, 4, 'Diphu', NULL, NULL, NULL),
(96, 4, 'North Lakhimpur', NULL, NULL, NULL),
(97, 4, 'Tezpur', NULL, NULL, NULL),
(98, 4, 'Karimganj', NULL, NULL, NULL),
(99, 4, 'Sibsagar', NULL, NULL, NULL),
(100, 4, 'Goalpara', NULL, NULL, NULL),
(101, 4, 'Barpeta', NULL, NULL, NULL),
(102, 4, 'Lanka', NULL, NULL, NULL),
(103, 4, 'Lumding', NULL, NULL, NULL),
(104, 4, 'Mankachar', NULL, NULL, NULL),
(105, 4, 'Nalbari', NULL, NULL, NULL),
(106, 4, 'Rangia', NULL, NULL, NULL),
(107, 4, 'Margherita', NULL, NULL, NULL),
(108, 4, 'Mangaldoi', NULL, NULL, NULL),
(109, 4, 'Silapathar', NULL, NULL, NULL),
(110, 4, 'Mariani', NULL, NULL, NULL),
(111, 4, 'Marigaon', NULL, NULL, NULL),
(112, 5, 'Patna', NULL, NULL, NULL),
(113, 5, 'Gaya', NULL, NULL, NULL),
(114, 5, 'Bhagalpur', NULL, NULL, NULL),
(115, 5, 'Muzaffarpur', NULL, NULL, NULL),
(116, 5, 'Darbhanga', NULL, NULL, NULL),
(117, 5, 'Arrah', NULL, NULL, NULL),
(118, 5, 'Begusarai', NULL, NULL, NULL),
(119, 5, 'Chhapra', NULL, NULL, NULL),
(120, 5, 'Katihar', NULL, NULL, NULL),
(121, 5, 'Munger', NULL, NULL, NULL),
(122, 5, 'Purnia', NULL, NULL, NULL),
(123, 5, 'Saharsa', NULL, NULL, NULL),
(124, 5, 'Sasaram', NULL, NULL, NULL),
(125, 5, 'Hajipur', NULL, NULL, NULL),
(126, 5, 'Dehri-on-Sone', NULL, NULL, NULL),
(127, 5, 'Bettiah', NULL, NULL, NULL),
(128, 5, 'Motihari', NULL, NULL, NULL),
(129, 5, 'Bagaha', NULL, NULL, NULL),
(130, 5, 'Siwan', NULL, NULL, NULL),
(131, 5, 'Kishanganj', NULL, NULL, NULL),
(132, 5, 'Jamalpur', NULL, NULL, NULL),
(133, 5, 'Buxar', NULL, NULL, NULL),
(134, 5, 'Jehanabad', NULL, NULL, NULL),
(135, 5, 'Aurangabad', NULL, NULL, NULL),
(136, 5, 'Lakhisarai', NULL, NULL, NULL),
(137, 5, 'Nawada', NULL, NULL, NULL),
(138, 5, 'Jamui', NULL, NULL, NULL),
(139, 5, 'Sitamarhi', NULL, NULL, NULL),
(140, 5, 'Araria', NULL, NULL, NULL),
(141, 5, 'Gopalganj', NULL, NULL, NULL),
(142, 5, 'Madhubani', NULL, NULL, NULL),
(143, 5, 'Masaurhi', NULL, NULL, NULL),
(144, 5, 'Samastipur', NULL, NULL, NULL),
(145, 5, 'Mokameh', NULL, NULL, NULL),
(146, 5, 'Supaul', NULL, NULL, NULL),
(147, 5, 'Dumraon', NULL, NULL, NULL),
(148, 5, 'Arwal', NULL, NULL, NULL),
(149, 5, 'Forbesganj', NULL, NULL, NULL),
(150, 5, 'BhabUrban Agglomeration', NULL, NULL, NULL),
(151, 5, 'Narkatiaganj', NULL, NULL, NULL),
(152, 5, 'Naugachhia', NULL, NULL, NULL),
(153, 5, 'Madhepura', NULL, NULL, NULL),
(154, 5, 'Sheikhpura', NULL, NULL, NULL),
(155, 5, 'Sultanganj', NULL, NULL, NULL),
(156, 5, 'Raxaul Bazar', NULL, NULL, NULL),
(157, 5, 'Ramnagar', NULL, NULL, NULL),
(158, 5, 'Mahnar Bazar', NULL, NULL, NULL),
(159, 5, 'Warisaliganj', NULL, NULL, NULL),
(160, 5, 'Revelganj', NULL, NULL, NULL),
(161, 5, 'Rajgir', NULL, NULL, NULL),
(162, 5, 'Sonepur', NULL, NULL, NULL),
(163, 5, 'Sherghati', NULL, NULL, NULL),
(164, 5, 'Sugauli', NULL, NULL, NULL),
(165, 5, 'Makhdumpur', NULL, NULL, NULL),
(166, 5, 'Maner', NULL, NULL, NULL),
(167, 5, 'Rosera', NULL, NULL, NULL),
(168, 5, 'Nokha', NULL, NULL, NULL),
(169, 5, 'Piro', NULL, NULL, NULL),
(170, 5, 'Rafiganj', NULL, NULL, NULL),
(171, 5, 'Marhaura', NULL, NULL, NULL),
(172, 5, 'Mirganj', NULL, NULL, NULL),
(173, 5, 'Lalganj', NULL, NULL, NULL),
(174, 5, 'Murliganj', NULL, NULL, NULL),
(175, 5, 'Motipur', NULL, NULL, NULL),
(176, 5, 'Manihari', NULL, NULL, NULL),
(177, 5, 'Sheohar', NULL, NULL, NULL),
(178, 5, 'Maharajganj', NULL, NULL, NULL),
(179, 5, 'Silao', NULL, NULL, NULL),
(180, 5, 'Barh', NULL, NULL, NULL),
(181, 5, 'Asarganj', NULL, NULL, NULL),
(182, 6, 'Chandigarh', NULL, NULL, NULL),
(183, 8, 'Silvassa', NULL, NULL, NULL),
(184, 7, 'Raipur', NULL, NULL, NULL),
(185, 7, 'Bhilai Nagar', NULL, NULL, NULL),
(186, 7, 'Korba', NULL, NULL, NULL),
(187, 7, 'Bilaspur', NULL, NULL, NULL),
(188, 7, 'Durg', NULL, NULL, NULL),
(189, 7, 'Rajnandgaon', NULL, NULL, NULL),
(190, 7, 'Jagdalpur', NULL, NULL, NULL),
(191, 7, 'Raigarh', NULL, NULL, NULL),
(192, 7, 'Ambikapur', NULL, NULL, NULL),
(193, 7, 'Mahasamund', NULL, NULL, NULL),
(194, 7, 'Dhamtari', NULL, NULL, NULL),
(195, 7, 'Chirmiri', NULL, NULL, NULL),
(196, 7, 'Bhatapara', NULL, NULL, NULL),
(197, 7, 'Dalli-Rajhara', NULL, NULL, NULL),
(198, 7, 'Naila Janjgir', NULL, NULL, NULL),
(199, 7, 'Tilda Newra', NULL, NULL, NULL),
(200, 7, 'Mungeli', NULL, NULL, NULL),
(201, 7, 'Manendragarh', NULL, NULL, NULL),
(202, 7, 'Sakti', NULL, NULL, NULL),
(203, 9, 'New Delhi', NULL, NULL, NULL),
(204, 9, 'Delhi', NULL, NULL, NULL),
(205, 10, 'Marmagao', NULL, NULL, NULL),
(206, 10, 'Panaji', NULL, NULL, NULL),
(207, 10, 'Margao', NULL, NULL, NULL),
(208, 10, 'Mapusa', NULL, NULL, NULL),
(209, 10, 'Panaji', NULL, NULL, NULL),
(210, 10, 'Margao', NULL, NULL, NULL),
(211, 10, 'Vasco-Mormugao', NULL, NULL, NULL),
(212, 10, 'Mapusa', NULL, NULL, NULL),
(213, 10, 'Ponda', NULL, NULL, NULL),
(214, 10, 'Bicholim', NULL, NULL, NULL),
(215, 10, 'Valpoi', NULL, NULL, NULL),
(216, 11, 'Ahmedabad', NULL, NULL, NULL),
(217, 11, 'Surat', NULL, NULL, NULL),
(218, 11, 'Vadodara', NULL, NULL, NULL),
(219, 11, 'Rajkot', NULL, NULL, NULL),
(220, 11, 'Bhavnagar', NULL, NULL, NULL),
(221, 11, 'Jamnagar', NULL, NULL, NULL),
(222, 11, 'Nadiad', NULL, NULL, NULL),
(223, 11, 'Porbandar', NULL, NULL, NULL),
(224, 11, 'Anand', NULL, NULL, NULL),
(225, 11, 'Morvi', NULL, NULL, NULL),
(226, 11, 'Mahesana', NULL, NULL, NULL),
(227, 11, 'Bharuch', NULL, NULL, NULL),
(228, 11, 'Vapi', NULL, NULL, NULL),
(229, 11, 'Navsari', NULL, NULL, NULL),
(230, 11, 'Veraval', NULL, NULL, NULL),
(231, 11, 'Bhuj', NULL, NULL, NULL),
(232, 11, 'Godhra', NULL, NULL, NULL),
(233, 11, 'Palanpur', NULL, NULL, NULL),
(234, 11, 'Valsad', NULL, NULL, NULL),
(235, 11, 'Patan', NULL, NULL, NULL),
(236, 11, 'Deesa', NULL, NULL, NULL),
(237, 11, 'Amreli', NULL, NULL, NULL),
(238, 11, 'Anjar', NULL, NULL, NULL),
(239, 11, 'Dhoraji', NULL, NULL, NULL),
(240, 11, 'Khambhat', NULL, NULL, NULL),
(241, 11, 'Mahuva', NULL, NULL, NULL),
(242, 11, 'Keshod', NULL, NULL, NULL),
(243, 11, 'Wadhwan', NULL, NULL, NULL),
(244, 11, 'Ankleshwar', NULL, NULL, NULL),
(245, 11, 'Savarkundla', NULL, NULL, NULL),
(246, 11, 'Kadi', NULL, NULL, NULL),
(247, 11, 'Visnagar', NULL, NULL, NULL),
(248, 11, 'Upleta', NULL, NULL, NULL),
(249, 11, 'Una', NULL, NULL, NULL),
(250, 11, 'Sidhpur', NULL, NULL, NULL),
(251, 11, 'Unjha', NULL, NULL, NULL),
(252, 11, 'Mangrol', NULL, NULL, NULL),
(253, 11, 'Viramgam', NULL, NULL, NULL),
(254, 11, 'Modasa', NULL, NULL, NULL),
(255, 11, 'Palitana', NULL, NULL, NULL),
(256, 11, 'Petlad', NULL, NULL, NULL),
(257, 11, 'Kapadvanj', NULL, NULL, NULL),
(258, 11, 'Sihor', NULL, NULL, NULL),
(259, 11, 'Wankaner', NULL, NULL, NULL),
(260, 11, 'Limbdi', NULL, NULL, NULL),
(261, 11, 'Mandvi', NULL, NULL, NULL),
(262, 11, 'Thangadh', NULL, NULL, NULL),
(263, 11, 'Vyara', NULL, NULL, NULL),
(264, 11, 'Padra', NULL, NULL, NULL),
(265, 11, 'Lunawada', NULL, NULL, NULL),
(266, 11, 'Rajpipla', NULL, NULL, NULL),
(267, 11, 'Vapi', NULL, NULL, NULL),
(268, 11, 'Umreth', NULL, NULL, NULL),
(269, 11, 'Sanand', NULL, NULL, NULL),
(270, 11, 'Rajula', NULL, NULL, NULL),
(271, 11, 'Radhanpur', NULL, NULL, NULL),
(272, 11, 'Mahemdabad', NULL, NULL, NULL),
(273, 11, 'Ranavav', NULL, NULL, NULL),
(274, 11, 'Tharad', NULL, NULL, NULL),
(275, 11, 'Mansa', NULL, NULL, NULL),
(276, 11, 'Umbergaon', NULL, NULL, NULL),
(277, 11, 'Talaja', NULL, NULL, NULL),
(278, 11, 'Vadnagar', NULL, NULL, NULL),
(279, 11, 'Manavadar', NULL, NULL, NULL),
(280, 11, 'Salaya', NULL, NULL, NULL),
(281, 11, 'Vijapur', NULL, NULL, NULL),
(282, 11, 'Pardi', NULL, NULL, NULL),
(283, 11, 'Rapar', NULL, NULL, NULL),
(284, 11, 'Songadh', NULL, NULL, NULL),
(285, 11, 'Lathi', NULL, NULL, NULL),
(286, 11, 'Adalaj', NULL, NULL, NULL),
(287, 11, 'Chhapra', NULL, NULL, NULL),
(288, 11, 'Gandhinagar', NULL, NULL, NULL),
(289, 12, 'Faridabad', NULL, NULL, NULL),
(290, 12, 'Gurgaon', NULL, NULL, NULL),
(291, 12, 'Hisar', NULL, NULL, NULL),
(292, 12, 'Rohtak', NULL, NULL, NULL),
(293, 12, 'Panipat', NULL, NULL, NULL),
(294, 12, 'Karnal', NULL, NULL, NULL),
(295, 12, 'Sonipat', NULL, NULL, NULL),
(296, 12, 'Yamunanagar', NULL, NULL, NULL),
(297, 12, 'Panchkula', NULL, NULL, NULL),
(298, 12, 'Bhiwani', NULL, NULL, NULL),
(299, 12, 'Bahadurgarh', NULL, NULL, NULL),
(300, 12, 'Jind', NULL, NULL, NULL),
(301, 12, 'Sirsa', NULL, NULL, NULL),
(302, 12, 'Thanesar', NULL, NULL, NULL),
(303, 12, 'Kaithal', NULL, NULL, NULL),
(304, 12, 'Palwal', NULL, NULL, NULL),
(305, 12, 'Rewari', NULL, NULL, NULL),
(306, 12, 'Hansi', NULL, NULL, NULL),
(307, 12, 'Narnaul', NULL, NULL, NULL),
(308, 12, 'Fatehabad', NULL, NULL, NULL),
(309, 12, 'Gohana', NULL, NULL, NULL),
(310, 12, 'Tohana', NULL, NULL, NULL),
(311, 12, 'Narwana', NULL, NULL, NULL),
(312, 12, 'Mandi Dabwali', NULL, NULL, NULL),
(313, 12, 'Charkhi Dadri', NULL, NULL, NULL),
(314, 12, 'Shahbad', NULL, NULL, NULL),
(315, 12, 'Pehowa', NULL, NULL, NULL),
(316, 12, 'Samalkha', NULL, NULL, NULL),
(317, 12, 'Pinjore', NULL, NULL, NULL),
(318, 12, 'Ladwa', NULL, NULL, NULL),
(319, 12, 'Sohna', NULL, NULL, NULL),
(320, 12, 'Safidon', NULL, NULL, NULL),
(321, 12, 'Taraori', NULL, NULL, NULL),
(322, 12, 'Mahendragarh', NULL, NULL, NULL),
(323, 12, 'Ratia', NULL, NULL, NULL),
(324, 12, 'Rania', NULL, NULL, NULL),
(325, 12, 'Sarsod', NULL, NULL, NULL),
(326, 13, 'Shimla', NULL, NULL, NULL),
(327, 13, 'Dharamsala ', NULL, NULL, NULL),
(328, 13, 'Solan ', NULL, NULL, NULL),
(329, 13, 'Mandi ', NULL, NULL, NULL),
(330, 13, 'Palampur ', NULL, NULL, NULL),
(331, 13, 'Baddi ', NULL, NULL, NULL),
(332, 13, 'Nahan ', NULL, NULL, NULL),
(333, 13, 'Paonta Sahib ', NULL, NULL, NULL),
(334, 13, 'Sundarnagar ', NULL, NULL, NULL),
(335, 13, 'Chamba ', NULL, NULL, NULL),
(336, 13, 'Una ', NULL, NULL, NULL),
(337, 13, 'Kullu', NULL, NULL, NULL),
(338, 13, 'Hamirpur ', NULL, NULL, NULL),
(339, 13, 'Bilaspur ', NULL, NULL, NULL),
(340, 13, 'Yol Cantonment ', NULL, NULL, NULL),
(341, 13, 'Nalagarh ', NULL, NULL, NULL),
(342, 13, 'Nurpur ', NULL, NULL, NULL),
(343, 13, 'Kangra ', NULL, NULL, NULL),
(344, 13, 'Baijnath Paprola ', NULL, NULL, NULL),
(345, 13, 'Santokhgarh ', NULL, NULL, NULL),
(346, 13, 'Mehatpur Basdehra ', NULL, NULL, NULL),
(347, 13, 'Shamshi', NULL, NULL, NULL),
(348, 13, 'Parwanoo ', NULL, NULL, NULL),
(349, 13, 'Manali ', NULL, NULL, NULL),
(350, 13, 'Tira Sujanpur ', NULL, NULL, NULL),
(351, 13, 'Ghumarwin ', NULL, NULL, NULL),
(352, 13, 'Dalhousie ', NULL, NULL, NULL),
(353, 13, 'Rohru ', NULL, NULL, NULL),
(354, 13, 'Nagrota Bagwan ', NULL, NULL, NULL),
(355, 13, 'Rampur ', NULL, NULL, NULL),
(356, 13, 'Jawalamukhi ', NULL, NULL, NULL),
(357, 13, 'Jogindernagar ', NULL, NULL, NULL),
(358, 13, 'Dera Gopipur ', NULL, NULL, NULL),
(359, 13, 'Sarkaghat ', NULL, NULL, NULL),
(360, 13, 'Jhakhri', NULL, NULL, NULL),
(361, 13, 'Indora ', NULL, NULL, NULL),
(362, 13, 'Bhuntar ', NULL, NULL, NULL),
(363, 13, 'Nadaun ', NULL, NULL, NULL),
(364, 13, 'Theog ', NULL, NULL, NULL),
(365, 13, 'Kasauli Cantonment ', NULL, NULL, NULL),
(366, 13, 'Gagret ', NULL, NULL, NULL),
(367, 13, 'Chuari Khas ', NULL, NULL, NULL),
(368, 13, 'Daulatpur ', NULL, NULL, NULL),
(369, 13, 'Sabathu Cantonment ', NULL, NULL, NULL),
(370, 13, 'Dalhousie Cantonment ', NULL, NULL, NULL),
(371, 13, 'Rajgarh ', NULL, NULL, NULL),
(372, 13, 'Arki ', NULL, NULL, NULL),
(373, 13, 'Dagshai Cantonment ', NULL, NULL, NULL),
(374, 13, 'Seoni ', NULL, NULL, NULL),
(375, 13, 'Talai ', NULL, NULL, NULL),
(376, 13, 'Jutogh Cantonment ', NULL, NULL, NULL),
(377, 13, 'Chaupal ', NULL, NULL, NULL),
(378, 13, 'Rewalsar ', NULL, NULL, NULL),
(379, 13, 'Bakloh Cantonment ', NULL, NULL, NULL),
(380, 13, 'Jubbal ', NULL, NULL, NULL),
(381, 13, 'Bhota ', NULL, NULL, NULL),
(382, 13, 'Banjar ', NULL, NULL, NULL),
(383, 13, 'Naina Devi ', NULL, NULL, NULL),
(384, 13, 'Kotkhai ', NULL, NULL, NULL),
(385, 13, 'Narkanda', NULL, NULL, NULL),
(386, 14, 'Dhanbad', NULL, NULL, NULL),
(387, 14, 'Ranchi', NULL, NULL, NULL),
(388, 14, 'Jamshedpur', NULL, NULL, NULL),
(389, 14, 'Bokaro Steel City', NULL, NULL, NULL),
(390, 14, 'Deoghar', NULL, NULL, NULL),
(391, 14, 'Phusro', NULL, NULL, NULL),
(392, 14, 'Adityapur', NULL, NULL, NULL),
(393, 14, 'Hazaribag', NULL, NULL, NULL),
(394, 14, 'Giridih', NULL, NULL, NULL),
(395, 14, 'Ramgarh', NULL, NULL, NULL),
(396, 14, 'Jhumri Tilaiya', NULL, NULL, NULL),
(397, 14, 'Saunda', NULL, NULL, NULL),
(398, 14, 'Sahibganj', NULL, NULL, NULL),
(399, 14, 'Medininagar (Daltonganj)', NULL, NULL, NULL),
(400, 14, 'Chaibasa', NULL, NULL, NULL),
(401, 14, 'Chatra', NULL, NULL, NULL),
(402, 14, 'Gumia', NULL, NULL, NULL),
(403, 14, 'Dumka', NULL, NULL, NULL),
(404, 14, 'Madhupur', NULL, NULL, NULL),
(405, 14, 'Chirkunda', NULL, NULL, NULL),
(406, 14, 'Pakaur', NULL, NULL, NULL),
(407, 14, 'Simdega', NULL, NULL, NULL),
(408, 14, 'Musabani', NULL, NULL, NULL),
(409, 14, 'Mihijam', NULL, NULL, NULL),
(410, 14, 'Patratu', NULL, NULL, NULL),
(411, 14, 'Lohardaga', NULL, NULL, NULL),
(412, 14, 'Tenu dam-cum-Kathhara', NULL, NULL, NULL),
(413, 15, 'Bengaluru', NULL, NULL, NULL),
(414, 15, 'Hubli-Dharwad', NULL, NULL, NULL),
(415, 15, 'Belagavi', NULL, NULL, NULL),
(416, 15, 'Mangaluru', NULL, NULL, NULL),
(417, 15, 'Davanagere', NULL, NULL, NULL),
(418, 15, 'Ballari', NULL, NULL, NULL),
(419, 15, 'Mysore', NULL, NULL, NULL),
(420, 15, 'Tumkur', NULL, NULL, NULL),
(421, 15, 'Shivamogga', NULL, NULL, NULL),
(422, 15, 'Raayachuru', NULL, NULL, NULL),
(423, 15, 'Robertson Pet', NULL, NULL, NULL),
(424, 15, 'Kolar', NULL, NULL, NULL),
(425, 15, 'Mandya', NULL, NULL, NULL),
(426, 15, 'Udupi', NULL, NULL, NULL),
(427, 15, 'Chikkamagaluru', NULL, NULL, NULL),
(428, 15, 'Karwar', NULL, NULL, NULL),
(429, 15, 'Ranebennuru', NULL, NULL, NULL),
(430, 15, 'Ranibennur', NULL, NULL, NULL),
(431, 15, 'Ramanagaram', NULL, NULL, NULL),
(432, 15, 'Gokak', NULL, NULL, NULL),
(433, 15, 'Yadgir', NULL, NULL, NULL),
(434, 15, 'Rabkavi Banhatti', NULL, NULL, NULL),
(435, 15, 'Shahabad', NULL, NULL, NULL),
(436, 15, 'Sirsi', NULL, NULL, NULL),
(437, 15, 'Sindhnur', NULL, NULL, NULL),
(438, 15, 'Tiptur', NULL, NULL, NULL),
(439, 15, 'Arsikere', NULL, NULL, NULL),
(440, 15, 'Nanjangud', NULL, NULL, NULL),
(441, 15, 'Sagara', NULL, NULL, NULL),
(442, 15, 'Sira', NULL, NULL, NULL),
(443, 15, 'Puttur', NULL, NULL, NULL),
(444, 15, 'Athni', NULL, NULL, NULL),
(445, 15, 'Mulbagal', NULL, NULL, NULL),
(446, 15, 'Surapura', NULL, NULL, NULL),
(447, 15, 'Siruguppa', NULL, NULL, NULL),
(448, 15, 'Mudhol', NULL, NULL, NULL),
(449, 15, 'Sidlaghatta', NULL, NULL, NULL),
(450, 15, 'Shahpur', NULL, NULL, NULL),
(451, 15, 'Saundatti-Yellamma', NULL, NULL, NULL),
(452, 15, 'Wadi', NULL, NULL, NULL),
(453, 15, 'Manvi', NULL, NULL, NULL),
(454, 15, 'Nelamangala', NULL, NULL, NULL),
(455, 15, 'Lakshmeshwar', NULL, NULL, NULL),
(456, 15, 'Ramdurg', NULL, NULL, NULL),
(457, 15, 'Nargund', NULL, NULL, NULL),
(458, 15, 'Tarikere', NULL, NULL, NULL),
(459, 15, 'Malavalli', NULL, NULL, NULL),
(460, 15, 'Savanur', NULL, NULL, NULL),
(461, 15, 'Lingsugur', NULL, NULL, NULL),
(462, 15, 'Vijayapura', NULL, NULL, NULL),
(463, 15, 'Sankeshwara', NULL, NULL, NULL),
(464, 15, 'Madikeri', NULL, NULL, NULL),
(465, 15, 'Talikota', NULL, NULL, NULL),
(466, 15, 'Sedam', NULL, NULL, NULL),
(467, 15, 'Shikaripur', NULL, NULL, NULL),
(468, 15, 'Mahalingapura', NULL, NULL, NULL),
(469, 15, 'Mudalagi', NULL, NULL, NULL),
(470, 15, 'Muddebihal', NULL, NULL, NULL),
(471, 15, 'Pavagada', NULL, NULL, NULL),
(472, 15, 'Malur', NULL, NULL, NULL),
(473, 15, 'Sindhagi', NULL, NULL, NULL),
(474, 15, 'Sanduru', NULL, NULL, NULL),
(475, 15, 'Afzalpur', NULL, NULL, NULL),
(476, 15, 'Maddur', NULL, NULL, NULL),
(477, 15, 'Madhugiri', NULL, NULL, NULL),
(478, 15, 'Tekkalakote', NULL, NULL, NULL),
(479, 15, 'Terdal', NULL, NULL, NULL),
(480, 15, 'Mudabidri', NULL, NULL, NULL),
(481, 15, 'Magadi', NULL, NULL, NULL),
(482, 15, 'Navalgund', NULL, NULL, NULL),
(483, 15, 'Shiggaon', NULL, NULL, NULL),
(484, 15, 'Shrirangapattana', NULL, NULL, NULL),
(485, 15, 'Sindagi', NULL, NULL, NULL),
(486, 15, 'Sakaleshapura', NULL, NULL, NULL),
(487, 15, 'Srinivaspur', NULL, NULL, NULL),
(488, 15, 'Ron', NULL, NULL, NULL),
(489, 15, 'Mundargi', NULL, NULL, NULL),
(490, 15, 'Sadalagi', NULL, NULL, NULL),
(491, 15, 'Piriyapatna', NULL, NULL, NULL),
(492, 15, 'Adyar', NULL, NULL, NULL),
(493, 16, 'Thiruvananthapuram', NULL, NULL, NULL),
(494, 16, 'Kochi', NULL, NULL, NULL),
(495, 16, 'Kozhikode', NULL, NULL, NULL),
(496, 16, 'Kollam', NULL, NULL, NULL),
(497, 16, 'Thrissur', NULL, NULL, NULL),
(498, 16, 'Palakkad', NULL, NULL, NULL),
(499, 16, 'Alappuzha', NULL, NULL, NULL),
(500, 16, 'Malappuram', NULL, NULL, NULL),
(501, 16, 'Ponnani', NULL, NULL, NULL),
(502, 16, 'Vatakara', NULL, NULL, NULL),
(503, 16, 'Kanhangad', NULL, NULL, NULL),
(504, 16, 'Taliparamba', NULL, NULL, NULL),
(505, 16, 'Koyilandy', NULL, NULL, NULL),
(506, 16, 'Neyyattinkara', NULL, NULL, NULL),
(507, 16, 'Kayamkulam', NULL, NULL, NULL),
(508, 16, 'Nedumangad', NULL, NULL, NULL),
(509, 16, 'Kannur', NULL, NULL, NULL),
(510, 16, 'Tirur', NULL, NULL, NULL),
(511, 16, 'Kottayam', NULL, NULL, NULL),
(512, 16, 'Kasaragod', NULL, NULL, NULL),
(513, 16, 'Kunnamkulam', NULL, NULL, NULL),
(514, 16, 'Ottappalam', NULL, NULL, NULL),
(515, 16, 'Thiruvalla', NULL, NULL, NULL),
(516, 16, 'Thodupuzha', NULL, NULL, NULL),
(517, 16, 'Chalakudy', NULL, NULL, NULL),
(518, 16, 'Changanassery', NULL, NULL, NULL),
(519, 16, 'Punalur', NULL, NULL, NULL),
(520, 16, 'Nilambur', NULL, NULL, NULL),
(521, 16, 'Cherthala', NULL, NULL, NULL),
(522, 16, 'Perinthalmanna', NULL, NULL, NULL),
(523, 16, 'Mattannur', NULL, NULL, NULL),
(524, 16, 'Shoranur', NULL, NULL, NULL),
(525, 16, 'Varkala', NULL, NULL, NULL),
(526, 16, 'Paravoor', NULL, NULL, NULL),
(527, 16, 'Pathanamthitta', NULL, NULL, NULL),
(528, 16, 'Peringathur', NULL, NULL, NULL),
(529, 16, 'Attingal', NULL, NULL, NULL),
(530, 16, 'Kodungallur', NULL, NULL, NULL),
(531, 16, 'Pappinisseri', NULL, NULL, NULL),
(532, 16, 'Chittur-Thathamangalam', NULL, NULL, NULL),
(533, 16, 'Muvattupuzha', NULL, NULL, NULL),
(534, 16, 'Adoor', NULL, NULL, NULL),
(535, 16, 'Mavelikkara', NULL, NULL, NULL),
(536, 16, 'Mavoor', NULL, NULL, NULL),
(537, 16, 'Perumbavoor', NULL, NULL, NULL),
(538, 16, 'Vaikom', NULL, NULL, NULL),
(539, 16, 'Palai', NULL, NULL, NULL),
(540, 16, 'Panniyannur', NULL, NULL, NULL),
(541, 16, 'Guruvayoor', NULL, NULL, NULL),
(542, 16, 'Puthuppally', NULL, NULL, NULL),
(543, 16, 'Panamattom', NULL, NULL, NULL),
(544, 17, 'Minicoy Island', NULL, NULL, NULL),
(545, 17, ' Kavaratti', NULL, NULL, NULL),
(546, 17, ' Amini', NULL, NULL, NULL),
(547, 17, ' Minicoy', NULL, NULL, NULL),
(548, 18, 'Indore', NULL, NULL, NULL),
(549, 18, 'Bhopal', NULL, NULL, NULL),
(550, 18, 'Jabalpur', NULL, NULL, NULL),
(551, 18, 'Gwalior', NULL, NULL, NULL),
(552, 18, 'Ujjain', NULL, NULL, NULL),
(553, 18, 'Sagar', NULL, NULL, NULL),
(554, 18, 'Ratlam', NULL, NULL, NULL),
(555, 18, 'Satna', NULL, NULL, NULL),
(556, 18, 'Murwara (Katni)', NULL, NULL, NULL),
(557, 18, 'Morena', NULL, NULL, NULL),
(558, 18, 'Singrauli', NULL, NULL, NULL),
(559, 18, 'Rewa', NULL, NULL, NULL),
(560, 18, 'Vidisha', NULL, NULL, NULL),
(561, 18, 'Ganjbasoda', NULL, NULL, NULL),
(562, 18, 'Shivpuri', NULL, NULL, NULL),
(563, 18, 'Mandsaur', NULL, NULL, NULL),
(564, 18, 'Neemuch', NULL, NULL, NULL),
(565, 18, 'Nagda', NULL, NULL, NULL),
(566, 18, 'Itarsi', NULL, NULL, NULL),
(567, 18, 'Sarni', NULL, NULL, NULL),
(568, 18, 'Sehore', NULL, NULL, NULL),
(569, 18, 'Mhow Cantonment', NULL, NULL, NULL),
(570, 18, 'Seoni', NULL, NULL, NULL),
(571, 18, 'Balaghat', NULL, NULL, NULL),
(572, 18, 'Ashok Nagar', NULL, NULL, NULL),
(573, 18, 'Tikamgarh', NULL, NULL, NULL),
(574, 18, 'Shahdol', NULL, NULL, NULL),
(575, 18, 'Pithampur', NULL, NULL, NULL),
(576, 18, 'Alirajpur', NULL, NULL, NULL),
(577, 18, 'Mandla', NULL, NULL, NULL),
(578, 18, 'Sheopur', NULL, NULL, NULL),
(579, 18, 'Shajapur', NULL, NULL, NULL),
(580, 18, 'Panna', NULL, NULL, NULL),
(581, 18, 'Raghogarh-Vijaypur', NULL, NULL, NULL),
(582, 18, 'Sendhwa', NULL, NULL, NULL),
(583, 18, 'Sidhi', NULL, NULL, NULL),
(584, 18, 'Pipariya', NULL, NULL, NULL),
(585, 18, 'Shujalpur', NULL, NULL, NULL),
(586, 18, 'Sironj', NULL, NULL, NULL),
(587, 18, 'Pandhurna', NULL, NULL, NULL),
(588, 18, 'Nowgong', NULL, NULL, NULL),
(589, 18, 'Mandideep', NULL, NULL, NULL),
(590, 18, 'Sihora', NULL, NULL, NULL),
(591, 18, 'Raisen', NULL, NULL, NULL),
(592, 18, 'Lahar', NULL, NULL, NULL),
(593, 18, 'Maihar', NULL, NULL, NULL),
(594, 18, 'Sanawad', NULL, NULL, NULL),
(595, 18, 'Sabalgarh', NULL, NULL, NULL),
(596, 18, 'Umaria', NULL, NULL, NULL),
(597, 18, 'Porsa', NULL, NULL, NULL),
(598, 18, 'Narsinghgarh', NULL, NULL, NULL),
(599, 18, 'Malaj Khand', NULL, NULL, NULL),
(600, 18, 'Sarangpur', NULL, NULL, NULL),
(601, 18, 'Mundi', NULL, NULL, NULL),
(602, 18, 'Nepanagar', NULL, NULL, NULL),
(603, 18, 'Pasan', NULL, NULL, NULL),
(604, 18, 'Mahidpur', NULL, NULL, NULL),
(605, 18, 'Seoni-Malwa', NULL, NULL, NULL),
(606, 18, 'Rehli', NULL, NULL, NULL),
(607, 18, 'Manawar', NULL, NULL, NULL),
(608, 18, 'Rahatgarh', NULL, NULL, NULL),
(609, 18, 'Panagar', NULL, NULL, NULL),
(610, 18, 'Wara Seoni', NULL, NULL, NULL),
(611, 18, 'Tarana', NULL, NULL, NULL),
(612, 18, 'Sausar', NULL, NULL, NULL),
(613, 18, 'Rajgarh', NULL, NULL, NULL),
(614, 18, 'Niwari', NULL, NULL, NULL),
(615, 18, 'Mauganj', NULL, NULL, NULL),
(616, 18, 'Manasa', NULL, NULL, NULL),
(617, 18, 'Nainpur', NULL, NULL, NULL),
(618, 18, 'Prithvipur', NULL, NULL, NULL),
(619, 18, 'Sohagpur', NULL, NULL, NULL),
(620, 18, 'Nowrozabad (Khodargama)', NULL, NULL, NULL),
(621, 18, 'Shamgarh', NULL, NULL, NULL),
(622, 18, 'Maharajpur', NULL, NULL, NULL),
(623, 18, 'Multai', NULL, NULL, NULL),
(624, 18, 'Pali', NULL, NULL, NULL),
(625, 18, 'Pachore', NULL, NULL, NULL),
(626, 18, 'Rau', NULL, NULL, NULL),
(627, 18, 'Mhowgaon', NULL, NULL, NULL),
(628, 18, 'Vijaypur', NULL, NULL, NULL),
(629, 18, 'Narsinghgarh', NULL, NULL, NULL),
(630, 19, 'Mumbai', NULL, NULL, NULL),
(631, 19, 'Pune', NULL, NULL, NULL),
(632, 19, 'Nagpur', NULL, NULL, NULL),
(633, 19, 'Thane', NULL, NULL, NULL),
(634, 19, 'Nashik', NULL, NULL, NULL),
(635, 19, 'Kalyan-Dombivali', NULL, NULL, NULL),
(636, 19, 'Vasai-Virar', NULL, NULL, NULL),
(637, 19, 'Solapur', NULL, NULL, NULL),
(638, 19, 'Mira-Bhayandar', NULL, NULL, NULL),
(639, 19, 'Bhiwandi', NULL, NULL, NULL),
(640, 19, 'Amravati', NULL, NULL, NULL),
(641, 19, 'Nanded-Waghala', NULL, NULL, NULL),
(642, 19, 'Sangli', NULL, NULL, NULL),
(643, 19, 'Malegaon', NULL, NULL, NULL),
(644, 19, 'Akola', NULL, NULL, NULL),
(645, 19, 'Latur', NULL, NULL, NULL),
(646, 19, 'Dhule', NULL, NULL, NULL),
(647, 19, 'Ahmednagar', NULL, NULL, NULL),
(648, 19, 'Ichalkaranji', NULL, NULL, NULL),
(649, 19, 'Parbhani', NULL, NULL, NULL),
(650, 19, 'Panvel', NULL, NULL, NULL),
(651, 19, 'Yavatmal', NULL, NULL, NULL),
(652, 19, 'Achalpur', NULL, NULL, NULL),
(653, 19, 'Osmanabad', NULL, NULL, NULL),
(654, 19, 'Nandurbar', NULL, NULL, NULL),
(655, 19, 'Satara', NULL, NULL, NULL),
(656, 19, 'Wardha', NULL, NULL, NULL),
(657, 19, 'Udgir', NULL, NULL, NULL),
(658, 19, 'Aurangabad', NULL, NULL, NULL),
(659, 19, 'Amalner', NULL, NULL, NULL),
(660, 19, 'Akot', NULL, NULL, NULL),
(661, 19, 'Pandharpur', NULL, NULL, NULL),
(662, 19, 'Shrirampur', NULL, NULL, NULL),
(663, 19, 'Parli', NULL, NULL, NULL),
(664, 19, 'Washim', NULL, NULL, NULL),
(665, 19, 'Ambejogai', NULL, NULL, NULL),
(666, 19, 'Manmad', NULL, NULL, NULL),
(667, 19, 'Ratnagiri', NULL, NULL, NULL),
(668, 19, 'Uran Islampur', NULL, NULL, NULL),
(669, 19, 'Pusad', NULL, NULL, NULL),
(670, 19, 'Sangamner', NULL, NULL, NULL),
(671, 19, 'Shirpur-Warwade', NULL, NULL, NULL),
(672, 19, 'Malkapur', NULL, NULL, NULL),
(673, 19, 'Wani', NULL, NULL, NULL),
(674, 19, 'Lonavla', NULL, NULL, NULL),
(675, 19, 'Talegaon Dabhade', NULL, NULL, NULL),
(676, 19, 'Anjangaon', NULL, NULL, NULL),
(677, 19, 'Umred', NULL, NULL, NULL),
(678, 19, 'Palghar', NULL, NULL, NULL),
(679, 19, 'Shegaon', NULL, NULL, NULL),
(680, 19, 'Ozar', NULL, NULL, NULL),
(681, 19, 'Phaltan', NULL, NULL, NULL),
(682, 19, 'Yevla', NULL, NULL, NULL),
(683, 19, 'Shahade', NULL, NULL, NULL),
(684, 19, 'Vita', NULL, NULL, NULL),
(685, 19, 'Umarkhed', NULL, NULL, NULL),
(686, 19, 'Warora', NULL, NULL, NULL),
(687, 19, 'Pachora', NULL, NULL, NULL),
(688, 19, 'Tumsar', NULL, NULL, NULL),
(689, 19, 'Manjlegaon', NULL, NULL, NULL),
(690, 19, 'Sillod', NULL, NULL, NULL),
(691, 19, 'Arvi', NULL, NULL, NULL),
(692, 19, 'Nandura', NULL, NULL, NULL),
(693, 19, 'Vaijapur', NULL, NULL, NULL),
(694, 19, 'Wadgaon Road', NULL, NULL, NULL),
(695, 19, 'Sailu', NULL, NULL, NULL),
(696, 19, 'Murtijapur', NULL, NULL, NULL),
(697, 19, 'Tasgaon', NULL, NULL, NULL),
(698, 19, 'Mehkar', NULL, NULL, NULL),
(699, 19, 'Yawal', NULL, NULL, NULL),
(700, 19, 'Pulgaon', NULL, NULL, NULL),
(701, 19, 'Nilanga', NULL, NULL, NULL),
(702, 19, 'Wai', NULL, NULL, NULL),
(703, 19, 'Umarga', NULL, NULL, NULL),
(704, 19, 'Paithan', NULL, NULL, NULL),
(705, 19, 'Rahuri', NULL, NULL, NULL),
(706, 19, 'Nawapur', NULL, NULL, NULL),
(707, 19, 'Tuljapur', NULL, NULL, NULL),
(708, 19, 'Morshi', NULL, NULL, NULL),
(709, 19, 'Purna', NULL, NULL, NULL),
(710, 19, 'Satana', NULL, NULL, NULL),
(711, 19, 'Pathri', NULL, NULL, NULL),
(712, 19, 'Sinnar', NULL, NULL, NULL),
(713, 19, 'Uchgaon', NULL, NULL, NULL),
(714, 19, 'Uran', NULL, NULL, NULL),
(715, 19, 'Pen', NULL, NULL, NULL),
(716, 19, 'Karjat', NULL, NULL, NULL),
(717, 19, 'Manwath', NULL, NULL, NULL),
(718, 19, 'Partur', NULL, NULL, NULL),
(719, 19, 'Sangole', NULL, NULL, NULL),
(720, 19, 'Mangrulpir', NULL, NULL, NULL),
(721, 19, 'Risod', NULL, NULL, NULL),
(722, 19, 'Shirur', NULL, NULL, NULL),
(723, 19, 'Savner', NULL, NULL, NULL),
(724, 19, 'Sasvad', NULL, NULL, NULL),
(725, 19, 'Pandharkaoda', NULL, NULL, NULL),
(726, 19, 'Talode', NULL, NULL, NULL),
(727, 19, 'Shrigonda', NULL, NULL, NULL),
(728, 19, 'Shirdi', NULL, NULL, NULL),
(729, 19, 'Raver', NULL, NULL, NULL),
(730, 19, 'Mukhed', NULL, NULL, NULL),
(731, 19, 'Rajura', NULL, NULL, NULL),
(732, 19, 'Vadgaon Kasba', NULL, NULL, NULL),
(733, 19, 'Tirora', NULL, NULL, NULL),
(734, 19, 'Mahad', NULL, NULL, NULL),
(735, 19, 'Lonar', NULL, NULL, NULL),
(736, 19, 'Sawantwadi', NULL, NULL, NULL),
(737, 19, 'Pathardi', NULL, NULL, NULL),
(738, 19, 'Pauni', NULL, NULL, NULL),
(739, 19, 'Ramtek', NULL, NULL, NULL),
(740, 19, 'Mul', NULL, NULL, NULL),
(741, 19, 'Soyagaon', NULL, NULL, NULL),
(742, 19, 'Mangalvedhe', NULL, NULL, NULL),
(743, 19, 'Narkhed', NULL, NULL, NULL),
(744, 19, 'Shendurjana', NULL, NULL, NULL),
(745, 19, 'Patur', NULL, NULL, NULL),
(746, 19, 'Mhaswad', NULL, NULL, NULL),
(747, 19, 'Loha', NULL, NULL, NULL),
(748, 19, 'Nandgaon', NULL, NULL, NULL),
(749, 19, 'Warud', NULL, NULL, NULL),
(750, 20, 'Imphal', NULL, NULL, NULL),
(751, 20, 'Thoubal', NULL, NULL, NULL),
(752, 20, 'Lilong', NULL, NULL, NULL),
(753, 20, 'Mayang Imphal', NULL, NULL, NULL),
(754, 20, 'Imphal', NULL, NULL, NULL),
(755, 20, 'Thoubal', NULL, NULL, NULL),
(756, 20, 'Lilong', NULL, NULL, NULL),
(757, 20, 'Mayang Imphal', NULL, NULL, NULL),
(758, 21, 'Shillong', NULL, NULL, NULL),
(759, 21, 'Tura', NULL, NULL, NULL),
(760, 21, 'Nongstoin', NULL, NULL, NULL),
(761, 22, 'Aizawl', NULL, NULL, NULL),
(762, 22, 'Lunglei', NULL, NULL, NULL),
(763, 22, 'Saiha', NULL, NULL, NULL),
(764, 23, 'Dimapur', NULL, NULL, NULL),
(765, 23, 'Kohima', NULL, NULL, NULL),
(766, 23, 'Zunheboto', NULL, NULL, NULL),
(767, 23, 'Tuensang', NULL, NULL, NULL),
(768, 23, 'Wokha', NULL, NULL, NULL),
(769, 23, 'Mokokchung', NULL, NULL, NULL),
(770, 24, 'Bhubaneswar', NULL, NULL, NULL),
(771, 24, 'Cuttack', NULL, NULL, NULL),
(772, 24, 'Raurkela', NULL, NULL, NULL),
(773, 24, 'Brahmapur', NULL, NULL, NULL),
(774, 24, 'Sambalpur', NULL, NULL, NULL),
(775, 24, 'Puri', NULL, NULL, NULL),
(776, 24, 'Baleshwar Town', NULL, NULL, NULL),
(777, 24, 'Baripada Town', NULL, NULL, NULL),
(778, 24, 'Bhadrak', NULL, NULL, NULL),
(779, 24, 'Balangir', NULL, NULL, NULL),
(780, 24, 'Jharsuguda', NULL, NULL, NULL),
(781, 24, 'Bargarh', NULL, NULL, NULL),
(782, 24, 'Paradip', NULL, NULL, NULL),
(783, 24, 'Bhawanipatna', NULL, NULL, NULL),
(784, 24, 'Dhenkanal', NULL, NULL, NULL),
(785, 24, 'Barbil', NULL, NULL, NULL),
(786, 24, 'Kendujhar', NULL, NULL, NULL),
(787, 24, 'Sunabeda', NULL, NULL, NULL),
(788, 24, 'Rayagada', NULL, NULL, NULL),
(789, 24, 'Jatani', NULL, NULL, NULL),
(790, 24, 'Byasanagar', NULL, NULL, NULL),
(791, 24, 'Kendrapara', NULL, NULL, NULL),
(792, 24, 'Rajagangapur', NULL, NULL, NULL),
(793, 24, 'Parlakhemundi', NULL, NULL, NULL),
(794, 24, 'Talcher', NULL, NULL, NULL),
(795, 24, 'Sundargarh', NULL, NULL, NULL),
(796, 24, 'Phulabani', NULL, NULL, NULL),
(797, 24, 'Pattamundai', NULL, NULL, NULL),
(798, 24, 'Titlagarh', NULL, NULL, NULL),
(799, 24, 'Nabarangapur', NULL, NULL, NULL),
(800, 24, 'Soro', NULL, NULL, NULL),
(801, 24, 'Malkangiri', NULL, NULL, NULL),
(802, 24, 'Rairangpur', NULL, NULL, NULL),
(803, 24, 'Tarbha', NULL, NULL, NULL),
(804, 25, 'Pondicherry', NULL, NULL, NULL),
(805, 25, 'Karaikal', NULL, NULL, NULL),
(806, 25, 'Yanam', NULL, NULL, NULL),
(807, 25, 'Mahe', NULL, NULL, NULL),
(808, 26, 'Ludhiana', NULL, NULL, NULL),
(809, 26, 'Patiala', NULL, NULL, NULL),
(810, 26, 'Amritsar', NULL, NULL, NULL),
(811, 26, 'Jalandhar', NULL, NULL, NULL),
(812, 26, 'Bathinda', NULL, NULL, NULL),
(813, 26, 'Pathankot', NULL, NULL, NULL),
(814, 26, 'Hoshiarpur', NULL, NULL, NULL),
(815, 26, 'Batala', NULL, NULL, NULL),
(816, 26, 'Moga', NULL, NULL, NULL),
(817, 26, 'Malerkotla', NULL, NULL, NULL),
(818, 26, 'Khanna', NULL, NULL, NULL),
(819, 26, 'Mohali', NULL, NULL, NULL),
(820, 26, 'Barnala', NULL, NULL, NULL),
(821, 26, 'Firozpur', NULL, NULL, NULL),
(822, 26, 'Phagwara', NULL, NULL, NULL),
(823, 26, 'Kapurthala', NULL, NULL, NULL),
(824, 26, 'Zirakpur', NULL, NULL, NULL),
(825, 26, 'Kot Kapura', NULL, NULL, NULL),
(826, 26, 'Faridkot', NULL, NULL, NULL),
(827, 26, 'Muktsar', NULL, NULL, NULL),
(828, 26, 'Rajpura', NULL, NULL, NULL),
(829, 26, 'Sangrur', NULL, NULL, NULL),
(830, 26, 'Fazilka', NULL, NULL, NULL),
(831, 26, 'Gurdaspur', NULL, NULL, NULL),
(832, 26, 'Kharar', NULL, NULL, NULL),
(833, 26, 'Gobindgarh', NULL, NULL, NULL),
(834, 26, 'Mansa', NULL, NULL, NULL),
(835, 26, 'Malout', NULL, NULL, NULL),
(836, 26, 'Nabha', NULL, NULL, NULL),
(837, 26, 'Tarn Taran', NULL, NULL, NULL),
(838, 26, 'Jagraon', NULL, NULL, NULL),
(839, 26, 'Sunam', NULL, NULL, NULL),
(840, 26, 'Dhuri', NULL, NULL, NULL),
(841, 26, 'Firozpur Cantt.', NULL, NULL, NULL),
(842, 26, 'Sirhind Fatehgarh Sahib', NULL, NULL, NULL),
(843, 26, 'Rupnagar', NULL, NULL, NULL),
(844, 26, 'Jalandhar Cantt.', NULL, NULL, NULL),
(845, 26, 'Samana', NULL, NULL, NULL),
(846, 26, 'Nawanshahr', NULL, NULL, NULL),
(847, 26, 'Rampura Phul', NULL, NULL, NULL),
(848, 26, 'Nangal', NULL, NULL, NULL),
(849, 26, 'Nakodar', NULL, NULL, NULL),
(850, 26, 'Zira', NULL, NULL, NULL),
(851, 26, 'Patti', NULL, NULL, NULL),
(852, 26, 'Raikot', NULL, NULL, NULL),
(853, 26, 'Longowal', NULL, NULL, NULL),
(854, 26, 'Urmar Tanda', NULL, NULL, NULL),
(855, 26, 'Morinda, India', NULL, NULL, NULL),
(856, 26, 'Phillaur', NULL, NULL, NULL),
(857, 26, 'Pattran', NULL, NULL, NULL),
(858, 26, 'Qadian', NULL, NULL, NULL),
(859, 26, 'Sujanpur', NULL, NULL, NULL),
(860, 26, 'Mukerian', NULL, NULL, NULL),
(861, 26, 'Talwara', NULL, NULL, NULL),
(862, 27, 'Jaipur', NULL, NULL, NULL),
(863, 27, 'Jodhpur', NULL, NULL, NULL),
(864, 27, 'Bikaner', NULL, NULL, NULL),
(865, 27, 'Udaipur', NULL, NULL, NULL),
(866, 27, 'Ajmer', NULL, NULL, NULL),
(867, 27, 'Bhilwara', NULL, NULL, NULL),
(868, 27, 'Alwar', NULL, NULL, NULL),
(869, 27, 'Bharatpur', NULL, NULL, NULL),
(870, 27, 'Pali', NULL, NULL, NULL),
(871, 27, 'Barmer', NULL, NULL, NULL),
(872, 27, 'Sikar', NULL, NULL, NULL),
(873, 27, 'Tonk', NULL, NULL, NULL),
(874, 27, 'Sadulpur', NULL, NULL, NULL),
(875, 27, 'Sawai Madhopur', NULL, NULL, NULL),
(876, 27, 'Nagaur', NULL, NULL, NULL),
(877, 27, 'Makrana', NULL, NULL, NULL),
(878, 27, 'Sujangarh', NULL, NULL, NULL),
(879, 27, 'Sardarshahar', NULL, NULL, NULL),
(880, 27, 'Ladnu', NULL, NULL, NULL),
(881, 27, 'Ratangarh', NULL, NULL, NULL),
(882, 27, 'Nokha', NULL, NULL, NULL),
(883, 27, 'Nimbahera', NULL, NULL, NULL),
(884, 27, 'Suratgarh', NULL, NULL, NULL),
(885, 27, 'Rajsamand', NULL, NULL, NULL),
(886, 27, 'Lachhmangarh', NULL, NULL, NULL),
(887, 27, 'Rajgarh (Churu)', NULL, NULL, NULL),
(888, 27, 'Nasirabad', NULL, NULL, NULL),
(889, 27, 'Nohar', NULL, NULL, NULL),
(890, 27, 'Phalodi', NULL, NULL, NULL),
(891, 27, 'Nathdwara', NULL, NULL, NULL),
(892, 27, 'Pilani', NULL, NULL, NULL),
(893, 27, 'Merta City', NULL, NULL, NULL),
(894, 27, 'Sojat', NULL, NULL, NULL),
(895, 27, 'Neem-Ka-Thana', NULL, NULL, NULL),
(896, 27, 'Sirohi', NULL, NULL, NULL),
(897, 27, 'Pratapgarh', NULL, NULL, NULL),
(898, 27, 'Rawatbhata', NULL, NULL, NULL),
(899, 27, 'Sangaria', NULL, NULL, NULL),
(900, 27, 'Lalsot', NULL, NULL, NULL),
(901, 27, 'Pilibanga', NULL, NULL, NULL),
(902, 27, 'Pipar City', NULL, NULL, NULL),
(903, 27, 'Taranagar', NULL, NULL, NULL),
(904, 27, 'Vijainagar, Ajmer', NULL, NULL, NULL),
(905, 27, 'Sumerpur', NULL, NULL, NULL),
(906, 27, 'Sagwara', NULL, NULL, NULL),
(907, 27, 'Ramganj Mandi', NULL, NULL, NULL),
(908, 27, 'Lakheri', NULL, NULL, NULL),
(909, 27, 'Udaipurwati', NULL, NULL, NULL),
(910, 27, 'Losal', NULL, NULL, NULL),
(911, 27, 'Sri Madhopur', NULL, NULL, NULL),
(912, 27, 'Ramngarh', NULL, NULL, NULL),
(913, 27, 'Rawatsar', NULL, NULL, NULL),
(914, 27, 'Rajakhera', NULL, NULL, NULL),
(915, 27, 'Shahpura', NULL, NULL, NULL),
(916, 27, 'Shahpura', NULL, NULL, NULL),
(917, 27, 'Raisinghnagar', NULL, NULL, NULL),
(918, 27, 'Malpura', NULL, NULL, NULL),
(919, 27, 'Nadbai', NULL, NULL, NULL),
(920, 27, 'Sanchore', NULL, NULL, NULL),
(921, 27, 'Nagar', NULL, NULL, NULL),
(922, 27, 'Rajgarh (Alwar)', NULL, NULL, NULL),
(923, 27, 'Sheoganj', NULL, NULL, NULL),
(924, 27, 'Sadri', NULL, NULL, NULL),
(925, 27, 'Todaraisingh', NULL, NULL, NULL),
(926, 27, 'Todabhim', NULL, NULL, NULL),
(927, 27, 'Reengus', NULL, NULL, NULL),
(928, 27, 'Rajaldesar', NULL, NULL, NULL),
(929, 27, 'Sadulshahar', NULL, NULL, NULL),
(930, 27, 'Sambhar', NULL, NULL, NULL),
(931, 27, 'Prantij', NULL, NULL, NULL),
(932, 27, 'Mount Abu', NULL, NULL, NULL),
(933, 27, 'Mangrol', NULL, NULL, NULL),
(934, 27, 'Phulera', NULL, NULL, NULL),
(935, 27, 'Mandawa', NULL, NULL, NULL),
(936, 27, 'Pindwara', NULL, NULL, NULL),
(937, 27, 'Mandalgarh', NULL, NULL, NULL),
(938, 27, 'Takhatgarh', NULL, NULL, NULL),
(939, 28, 'Gangtok', NULL, NULL, NULL),
(940, 28, 'Mangan', NULL, NULL, NULL),
(941, 28, 'Namchi', NULL, NULL, NULL),
(942, 28, 'Gyalshing', NULL, NULL, NULL),
(943, 28, 'Pakyong', NULL, NULL, NULL),
(944, 28, 'Soreng', NULL, NULL, NULL),
(945, 29, 'Chennai', NULL, NULL, NULL),
(946, 29, 'Coimbatore', NULL, NULL, NULL),
(947, 29, 'Madurai', NULL, NULL, NULL),
(948, 29, 'Tiruchirappalli', NULL, NULL, NULL),
(949, 29, 'Salem', NULL, NULL, NULL),
(950, 29, 'Tirunelveli', NULL, NULL, NULL),
(951, 29, 'Tiruppur', NULL, NULL, NULL),
(952, 29, 'Ranipet', NULL, NULL, NULL),
(953, 29, 'Nagercoil', NULL, NULL, NULL),
(954, 29, 'Thanjavur', NULL, NULL, NULL),
(955, 29, 'Vellore', NULL, NULL, NULL),
(956, 29, 'Kancheepuram', NULL, NULL, NULL),
(957, 29, 'Erode', NULL, NULL, NULL),
(958, 29, 'Tiruvannamalai', NULL, NULL, NULL),
(959, 29, 'Pollachi', NULL, NULL, NULL),
(960, 29, 'Rajapalayam', NULL, NULL, NULL),
(961, 29, 'Sivakasi', NULL, NULL, NULL),
(962, 29, 'Pudukkottai', NULL, NULL, NULL),
(963, 29, 'Neyveli (TS)', NULL, NULL, NULL),
(964, 29, 'Nagapattinam', NULL, NULL, NULL),
(965, 29, 'Viluppuram', NULL, NULL, NULL),
(966, 29, 'Tiruchengode', NULL, NULL, NULL),
(967, 29, 'Vaniyambadi', NULL, NULL, NULL),
(968, 29, 'Theni Allinagaram', NULL, NULL, NULL),
(969, 29, 'Udhagamandalam', NULL, NULL, NULL),
(970, 29, 'Aruppukkottai', NULL, NULL, NULL),
(971, 29, 'Paramakudi', NULL, NULL, NULL),
(972, 29, 'Arakkonam', NULL, NULL, NULL),
(973, 29, 'Virudhachalam', NULL, NULL, NULL),
(974, 29, 'Srivilliputhur', NULL, NULL, NULL),
(975, 29, 'Tindivanam', NULL, NULL, NULL),
(976, 29, 'Virudhunagar', NULL, NULL, NULL),
(977, 29, 'Karur', NULL, NULL, NULL),
(978, 29, 'Valparai', NULL, NULL, NULL),
(979, 29, 'Sankarankovil', NULL, NULL, NULL),
(980, 29, 'Tenkasi', NULL, NULL, NULL),
(981, 29, 'Palani', NULL, NULL, NULL),
(982, 29, 'Pattukkottai', NULL, NULL, NULL),
(983, 29, 'Tirupathur', NULL, NULL, NULL),
(984, 29, 'Ramanathapuram', NULL, NULL, NULL),
(985, 29, 'Udumalaipettai', NULL, NULL, NULL),
(986, 29, 'Gobichettipalayam', NULL, NULL, NULL),
(987, 29, 'Thiruvarur', NULL, NULL, NULL),
(988, 29, 'Thiruvallur', NULL, NULL, NULL),
(989, 29, 'Panruti', NULL, NULL, NULL),
(990, 29, 'Namakkal', NULL, NULL, NULL),
(991, 29, 'Thirumangalam', NULL, NULL, NULL),
(992, 29, 'Vikramasingapuram', NULL, NULL, NULL),
(993, 29, 'Nellikuppam', NULL, NULL, NULL),
(994, 29, 'Rasipuram', NULL, NULL, NULL),
(995, 29, 'Tiruttani', NULL, NULL, NULL),
(996, 29, 'Nandivaram-Guduvancheri', NULL, NULL, NULL),
(997, 29, 'Periyakulam', NULL, NULL, NULL),
(998, 29, 'Pernampattu', NULL, NULL, NULL),
(999, 29, 'Vellakoil', NULL, NULL, NULL),
(1000, 29, 'Sivaganga', NULL, NULL, NULL),
(1001, 29, 'Vadalur', NULL, NULL, NULL),
(1002, 29, 'Rameshwaram', NULL, NULL, NULL),
(1003, 29, 'Tiruvethipuram', NULL, NULL, NULL),
(1004, 29, 'Perambalur', NULL, NULL, NULL),
(1005, 29, 'Usilampatti', NULL, NULL, NULL),
(1006, 29, 'Vedaranyam', NULL, NULL, NULL),
(1007, 29, 'Sathyamangalam', NULL, NULL, NULL),
(1008, 29, 'Puliyankudi', NULL, NULL, NULL),
(1009, 29, 'Nanjikottai', NULL, NULL, NULL),
(1010, 29, 'Thuraiyur', NULL, NULL, NULL),
(1011, 29, 'Sirkali', NULL, NULL, NULL),
(1012, 29, 'Tiruchendur', NULL, NULL, NULL),
(1013, 29, 'Periyasemur', NULL, NULL, NULL),
(1014, 29, 'Sattur', NULL, NULL, NULL),
(1015, 29, 'Vandavasi', NULL, NULL, NULL),
(1016, 29, 'Tharamangalam', NULL, NULL, NULL),
(1017, 29, 'Tirukkoyilur', NULL, NULL, NULL),
(1018, 29, 'Oddanchatram', NULL, NULL, NULL),
(1019, 29, 'Palladam', NULL, NULL, NULL),
(1020, 29, 'Vadakkuvalliyur', NULL, NULL, NULL),
(1021, 29, 'Tirukalukundram', NULL, NULL, NULL),
(1022, 29, 'Uthamapalayam', NULL, NULL, NULL),
(1023, 29, 'Surandai', NULL, NULL, NULL),
(1024, 29, 'Sankari', NULL, NULL, NULL),
(1025, 29, 'Shenkottai', NULL, NULL, NULL),
(1026, 29, 'Vadipatti', NULL, NULL, NULL),
(1027, 29, 'Sholingur', NULL, NULL, NULL),
(1028, 29, 'Tirupathur', NULL, NULL, NULL),
(1029, 29, 'Manachanallur', NULL, NULL, NULL),
(1030, 29, 'Viswanatham', NULL, NULL, NULL),
(1031, 29, 'Polur', NULL, NULL, NULL),
(1032, 29, 'Panagudi', NULL, NULL, NULL),
(1033, 29, 'Uthiramerur', NULL, NULL, NULL),
(1034, 29, 'Thiruthuraipoondi', NULL, NULL, NULL),
(1035, 29, 'Pallapatti', NULL, NULL, NULL),
(1036, 29, 'Ponneri', NULL, NULL, NULL),
(1037, 29, 'Lalgudi', NULL, NULL, NULL),
(1038, 29, 'Natham', NULL, NULL, NULL),
(1039, 29, 'Unnamalaikadai', NULL, NULL, NULL),
(1040, 29, 'P.N.Patti', NULL, NULL, NULL),
(1041, 29, 'Tharangambadi', NULL, NULL, NULL),
(1042, 29, 'Tittakudi', NULL, NULL, NULL),
(1043, 29, 'Pacode', NULL, NULL, NULL),
(1044, 29, 'O Valley', NULL, NULL, NULL),
(1045, 29, 'Suriyampalayam', NULL, NULL, NULL),
(1046, 29, 'Sholavandan', NULL, NULL, NULL),
(1047, 29, 'Thammampatti', NULL, NULL, NULL),
(1048, 29, 'Namagiripettai', NULL, NULL, NULL),
(1049, 29, 'Peravurani', NULL, NULL, NULL),
(1050, 29, 'Parangipettai', NULL, NULL, NULL),
(1051, 29, 'Pudupattinam', NULL, NULL, NULL),
(1052, 29, 'Pallikonda', NULL, NULL, NULL),
(1053, 29, 'Sivagiri', NULL, NULL, NULL),
(1054, 29, 'Punjaipugalur', NULL, NULL, NULL),
(1055, 29, 'Padmanabhapuram', NULL, NULL, NULL),
(1056, 29, 'Thirupuvanam', NULL, NULL, NULL),
(1057, 30, 'Hyderabad', NULL, NULL, NULL),
(1058, 30, 'Warangal', NULL, NULL, NULL),
(1059, 30, 'Nizamabad', NULL, NULL, NULL),
(1060, 30, 'Karimnagar', NULL, NULL, NULL),
(1061, 30, 'Ramagundam', NULL, NULL, NULL),
(1062, 30, 'Khammam', NULL, NULL, NULL),
(1063, 30, 'Mahbubnagar', NULL, NULL, NULL),
(1064, 30, 'Mancherial', NULL, NULL, NULL),
(1065, 30, 'Adilabad', NULL, NULL, NULL),
(1066, 30, 'Suryapet', NULL, NULL, NULL),
(1067, 30, 'Jagtial', NULL, NULL, NULL),
(1068, 30, 'Miryalaguda', NULL, NULL, NULL),
(1069, 30, 'Nirmal', NULL, NULL, NULL),
(1070, 30, 'Kamareddy', NULL, NULL, NULL),
(1071, 30, 'Kothagudem', NULL, NULL, NULL),
(1072, 30, 'Bodhan', NULL, NULL, NULL),
(1073, 30, 'Palwancha', NULL, NULL, NULL),
(1074, 30, 'Mandamarri', NULL, NULL, NULL),
(1075, 30, 'Koratla', NULL, NULL, NULL),
(1076, 30, 'Sircilla', NULL, NULL, NULL),
(1077, 30, 'Tandur', NULL, NULL, NULL),
(1078, 30, 'Siddipet', NULL, NULL, NULL),
(1079, 30, 'Wanaparthy', NULL, NULL, NULL),
(1080, 30, 'Kagaznagar', NULL, NULL, NULL),
(1081, 30, 'Gadwal', NULL, NULL, NULL),
(1082, 30, 'Sangareddy', NULL, NULL, NULL),
(1083, 30, 'Bellampalle', NULL, NULL, NULL),
(1084, 30, 'Bhongir', NULL, NULL, NULL),
(1085, 30, 'Vikarabad', NULL, NULL, NULL),
(1086, 30, 'Jangaon', NULL, NULL, NULL),
(1087, 30, 'Bhadrachalam', NULL, NULL, NULL),
(1088, 30, 'Bhainsa', NULL, NULL, NULL),
(1089, 30, 'Farooqnagar', NULL, NULL, NULL),
(1090, 30, 'Medak', NULL, NULL, NULL),
(1091, 30, 'Narayanpet', NULL, NULL, NULL),
(1092, 30, 'Sadasivpet', NULL, NULL, NULL),
(1093, 30, 'Yellandu', NULL, NULL, NULL),
(1094, 30, 'Manuguru', NULL, NULL, NULL),
(1095, 30, 'Kyathampalle', NULL, NULL, NULL),
(1096, 30, 'Nagarkurnool', NULL, NULL, NULL),
(1097, 31, 'Agartala', NULL, NULL, NULL),
(1098, 31, 'Udaipur', NULL, NULL, NULL),
(1099, 31, 'Dharmanagar', NULL, NULL, NULL),
(1100, 31, 'Pratapgarh', NULL, NULL, NULL),
(1101, 31, 'Kailasahar', NULL, NULL, NULL),
(1102, 31, 'Belonia', NULL, NULL, NULL),
(1103, 31, 'Khowai', NULL, NULL, NULL),
(1104, 32, 'Lucknow', NULL, NULL, NULL),
(1105, 32, 'Kanpur', NULL, NULL, NULL),
(1106, 32, 'Firozabad', NULL, NULL, NULL),
(1107, 32, 'Agra', NULL, NULL, NULL),
(1108, 32, 'Meerut', NULL, NULL, NULL),
(1109, 32, 'Varanasi', NULL, NULL, NULL),
(1110, 32, 'Allahabad', NULL, NULL, NULL),
(1111, 32, 'Amroha', NULL, NULL, NULL),
(1112, 32, 'Moradabad', NULL, NULL, NULL),
(1113, 32, 'Aligarh', NULL, NULL, NULL),
(1114, 32, 'Saharanpur', NULL, NULL, NULL),
(1115, 32, 'Noida', NULL, NULL, NULL),
(1116, 32, 'Loni', NULL, NULL, NULL),
(1117, 32, 'Jhansi', NULL, NULL, NULL),
(1118, 32, 'Shahjahanpur', NULL, NULL, NULL),
(1119, 32, 'Rampur', NULL, NULL, NULL),
(1120, 32, 'Modinagar', NULL, NULL, NULL),
(1121, 32, 'Hapur', NULL, NULL, NULL),
(1122, 32, 'Etawah', NULL, NULL, NULL),
(1123, 32, 'Sambhal', NULL, NULL, NULL),
(1124, 32, 'Orai', NULL, NULL, NULL),
(1125, 32, 'Bahraich', NULL, NULL, NULL),
(1126, 32, 'Unnao', NULL, NULL, NULL),
(1127, 32, 'Rae Bareli', NULL, NULL, NULL),
(1128, 32, 'Lakhimpur', NULL, NULL, NULL),
(1129, 32, 'Sitapur', NULL, NULL, NULL),
(1130, 32, 'Lalitpur', NULL, NULL, NULL),
(1131, 32, 'Pilibhit', NULL, NULL, NULL),
(1132, 32, 'Chandausi', NULL, NULL, NULL),
(1133, 32, 'Hardoi ', NULL, NULL, NULL),
(1134, 32, 'Azamgarh', NULL, NULL, NULL),
(1135, 32, 'Khair', NULL, NULL, NULL),
(1136, 32, 'Sultanpur', NULL, NULL, NULL),
(1137, 32, 'Tanda', NULL, NULL, NULL),
(1138, 32, 'Nagina', NULL, NULL, NULL),
(1139, 32, 'Shamli', NULL, NULL, NULL),
(1140, 32, 'Najibabad', NULL, NULL, NULL),
(1141, 32, 'Shikohabad', NULL, NULL, NULL),
(1142, 32, 'Sikandrabad', NULL, NULL, NULL),
(1143, 32, 'Shahabad, Hardoi', NULL, NULL, NULL),
(1144, 32, 'Pilkhuwa', NULL, NULL, NULL),
(1145, 32, 'Renukoot', NULL, NULL, NULL),
(1146, 32, 'Vrindavan', NULL, NULL, NULL),
(1147, 32, 'Ujhani', NULL, NULL, NULL),
(1148, 32, 'Laharpur', NULL, NULL, NULL),
(1149, 32, 'Tilhar', NULL, NULL, NULL),
(1150, 32, 'Sahaswan', NULL, NULL, NULL),
(1151, 32, 'Rath', NULL, NULL, NULL),
(1152, 32, 'Sherkot', NULL, NULL, NULL),
(1153, 32, 'Kalpi', NULL, NULL, NULL),
(1154, 32, 'Tundla', NULL, NULL, NULL),
(1155, 32, 'Sandila', NULL, NULL, NULL),
(1156, 32, 'Nanpara', NULL, NULL, NULL),
(1157, 32, 'Sardhana', NULL, NULL, NULL),
(1158, 32, 'Nehtaur', NULL, NULL, NULL),
(1159, 32, 'Seohara', NULL, NULL, NULL),
(1160, 32, 'Padrauna', NULL, NULL, NULL),
(1161, 32, 'Mathura', NULL, NULL, NULL),
(1162, 32, 'Thakurdwara', NULL, NULL, NULL),
(1163, 32, 'Nawabganj', NULL, NULL, NULL),
(1164, 32, 'Siana', NULL, NULL, NULL),
(1165, 32, 'Noorpur', NULL, NULL, NULL),
(1166, 32, 'Sikandra Rao', NULL, NULL, NULL),
(1167, 32, 'Puranpur', NULL, NULL, NULL),
(1168, 32, 'Rudauli', NULL, NULL, NULL),
(1169, 32, 'Thana Bhawan', NULL, NULL, NULL),
(1170, 32, 'Palia Kalan', NULL, NULL, NULL),
(1171, 32, 'Zaidpur', NULL, NULL, NULL),
(1172, 32, 'Nautanwa', NULL, NULL, NULL),
(1173, 32, 'Zamania', NULL, NULL, NULL),
(1174, 32, 'Shikarpur, Bulandshahr', NULL, NULL, NULL),
(1175, 32, 'Naugawan Sadat', NULL, NULL, NULL),
(1176, 32, 'Fatehpur Sikri', NULL, NULL, NULL),
(1177, 32, 'Shahabad, Rampur', NULL, NULL, NULL),
(1178, 32, 'Robertsganj', NULL, NULL, NULL),
(1179, 32, 'Utraula', NULL, NULL, NULL),
(1180, 32, 'Sadabad', NULL, NULL, NULL),
(1181, 32, 'Rasra', NULL, NULL, NULL),
(1182, 32, 'Lar', NULL, NULL, NULL),
(1183, 32, 'Lal Gopalganj Nindaura', NULL, NULL, NULL),
(1184, 32, 'Sirsaganj', NULL, NULL, NULL),
(1185, 32, 'Pihani', NULL, NULL, NULL),
(1186, 32, 'Shamsabad, Agra', NULL, NULL, NULL),
(1187, 32, 'Rudrapur', NULL, NULL, NULL),
(1188, 32, 'Soron', NULL, NULL, NULL),
(1189, 32, 'SUrban Agglomerationr', NULL, NULL, NULL),
(1190, 32, 'Samdhan', NULL, NULL, NULL),
(1191, 32, 'Sahjanwa', NULL, NULL, NULL),
(1192, 32, 'Rampur Maniharan', NULL, NULL, NULL),
(1193, 32, 'Sumerpur', NULL, NULL, NULL),
(1194, 32, 'Shahganj', NULL, NULL, NULL),
(1195, 32, 'Tulsipur', NULL, NULL, NULL),
(1196, 32, 'Tirwaganj', NULL, NULL, NULL),
(1197, 32, 'PurqUrban Agglomerationzi', NULL, NULL, NULL),
(1198, 32, 'Shamsabad, Farrukhabad', NULL, NULL, NULL),
(1199, 32, 'Warhapur', NULL, NULL, NULL),
(1200, 32, 'Powayan', NULL, NULL, NULL),
(1201, 32, 'Sandi', NULL, NULL, NULL),
(1202, 32, 'Achhnera', NULL, NULL, NULL),
(1203, 32, 'Naraura', NULL, NULL, NULL),
(1204, 32, 'Nakur', NULL, NULL, NULL),
(1205, 32, 'Sahaspur', NULL, NULL, NULL),
(1206, 32, 'Safipur', NULL, NULL, NULL),
(1207, 32, 'Reoti', NULL, NULL, NULL),
(1208, 32, 'Sikanderpur', NULL, NULL, NULL),
(1209, 32, 'Saidpur', NULL, NULL, NULL),
(1210, 32, 'Sirsi', NULL, NULL, NULL),
(1211, 32, 'Purwa', NULL, NULL, NULL),
(1212, 32, 'Parasi', NULL, NULL, NULL),
(1213, 32, 'Lalganj', NULL, NULL, NULL),
(1214, 32, 'Phulpur', NULL, NULL, NULL),
(1215, 32, 'Shishgarh', NULL, NULL, NULL),
(1216, 32, 'Sahawar', NULL, NULL, NULL),
(1217, 32, 'Samthar', NULL, NULL, NULL),
(1218, 32, 'Pukhrayan', NULL, NULL, NULL),
(1219, 32, 'Obra', NULL, NULL, NULL),
(1220, 32, 'Niwai', NULL, NULL, NULL),
(1221, 32, 'Mirzapur', NULL, NULL, NULL),
(1222, 33, 'Dehradun', NULL, NULL, NULL),
(1223, 33, 'Haridwar', NULL, NULL, NULL),
(1224, 33, 'Roorkee', NULL, NULL, NULL),
(1225, 33, 'Haldwani', NULL, NULL, NULL),
(1226, 33, 'Rudrapur', NULL, NULL, NULL),
(1227, 33, 'Kashipur', NULL, NULL, NULL),
(1228, 33, 'Rishikesh', NULL, NULL, NULL),
(1229, 33, 'Pithoragarh', NULL, NULL, NULL),
(1230, 33, 'Ramnagar', NULL, NULL, NULL),
(1231, 33, 'Kichha', NULL, NULL, NULL),
(1232, 33, 'Manglaur', NULL, NULL, NULL),
(1233, 33, 'Jaspur', NULL, NULL, NULL),
(1234, 33, 'Kotdwara', NULL, NULL, NULL),
(1235, 33, 'Nainital', NULL, NULL, NULL),
(1236, 33, 'Almora', NULL, NULL, NULL),
(1237, 33, 'Mussoorie', NULL, NULL, NULL),
(1238, 33, 'Sitarganj', NULL, NULL, NULL),
(1239, 33, 'Bazpur', NULL, NULL, NULL),
(1240, 33, 'Pauri', NULL, NULL, NULL),
(1241, 33, 'Tehri', NULL, NULL, NULL),
(1242, 33, 'Nagla', NULL, NULL, NULL),
(1243, 33, 'Laksar', NULL, NULL, NULL),
(1244, 33, 'Chamoli Gopeshwar', NULL, NULL, NULL),
(1245, 33, 'Umru Khurd', NULL, NULL, NULL),
(1246, 33, 'Srinagar', NULL, NULL, NULL),
(1247, 34, 'Kolkata', NULL, NULL, NULL),
(1248, 34, 'Siliguri', NULL, NULL, NULL),
(1249, 34, 'Asansol', NULL, NULL, NULL),
(1250, 34, 'Raghunathganj', NULL, NULL, NULL),
(1251, 34, 'Kharagpur', NULL, NULL, NULL),
(1252, 34, 'Naihati', NULL, NULL, NULL),
(1253, 34, 'English Bazar', NULL, NULL, NULL),
(1254, 34, 'Baharampur', NULL, NULL, NULL),
(1255, 34, 'Hugli-Chinsurah', NULL, NULL, NULL),
(1256, 34, 'Raiganj', NULL, NULL, NULL),
(1257, 34, 'Jalpaiguri', NULL, NULL, NULL),
(1258, 34, 'Santipur', NULL, NULL, NULL),
(1259, 34, 'Balurghat', NULL, NULL, NULL),
(1260, 34, 'Medinipur', NULL, NULL, NULL),
(1261, 34, 'Habra', NULL, NULL, NULL),
(1262, 34, 'Ranaghat', NULL, NULL, NULL),
(1263, 34, 'Bankura', NULL, NULL, NULL),
(1264, 34, 'Nabadwip', NULL, NULL, NULL),
(1265, 34, 'Darjiling', NULL, NULL, NULL),
(1266, 34, 'Purulia', NULL, NULL, NULL);
INSERT INTO `cities` (`id`, `state_id`, `city`, `status`, `created_at`, `updated_at`) VALUES
(1267, 34, 'Arambagh', NULL, NULL, NULL),
(1268, 34, 'Tamluk', NULL, NULL, NULL),
(1269, 34, 'AlipurdUrban Agglomerationr', NULL, NULL, NULL),
(1270, 34, 'Suri', NULL, NULL, NULL),
(1271, 34, 'Jhargram', NULL, NULL, NULL),
(1272, 34, 'Gangarampur', NULL, NULL, NULL),
(1273, 34, 'Rampurhat', NULL, NULL, NULL),
(1274, 34, 'Kalimpong', NULL, NULL, NULL),
(1275, 34, 'Sainthia', NULL, NULL, NULL),
(1276, 34, 'Taki', NULL, NULL, NULL),
(1277, 34, 'Murshidabad', NULL, NULL, NULL),
(1278, 34, 'Memari', NULL, NULL, NULL),
(1279, 34, 'Paschim Punropara', NULL, NULL, NULL),
(1280, 34, 'Tarakeswar', NULL, NULL, NULL),
(1281, 34, 'Sonamukhi', NULL, NULL, NULL),
(1282, 34, 'PandUrban Agglomeration', NULL, NULL, NULL),
(1283, 34, 'Mainaguri', NULL, NULL, NULL),
(1284, 34, 'Malda', NULL, NULL, NULL),
(1285, 34, 'Panchla', NULL, NULL, NULL),
(1286, 34, 'Raghunathpur', NULL, NULL, NULL),
(1287, 34, 'Mathabhanga', NULL, NULL, NULL),
(1288, 34, 'Monoharpur', NULL, NULL, NULL),
(1289, 34, 'Srirampore', NULL, NULL, NULL),
(1290, 34, 'Adra', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `complextions`
--

CREATE TABLE `complextions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `complextion` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complextions`
--

INSERT INTO `complextions` (`id`, `complextion`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Very fair', 1, NULL, NULL),
(2, 'Fair', 1, NULL, NULL),
(3, 'Wheatish', 1, NULL, NULL),
(4, 'Wheatish-Brown', 1, NULL, NULL),
(5, 'Dark', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `alternate_email` varchar(255) NOT NULL,
  `name_of_owner_primary_number` varchar(255) NOT NULL,
  `relationship_primary_number` int(11) NOT NULL,
  `alternate_number` int(11) NOT NULL,
  `landline_number` varchar(255) NOT NULL,
  `name_of_owner_alternate_number` int(11) NOT NULL,
  `relationship_alternate_number` int(11) NOT NULL,
  `call_time` varchar(255) NOT NULL,
  `pin_code` varchar(255) NOT NULL,
  `parent_address` varchar(255) NOT NULL,
  `parent_pin_code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(255) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country`, `status`, `created_at`, `updated_at`) VALUES
(1, 'India', '1', NULL, NULL),
(2, 'Afghanistann', '1', NULL, '2023-10-08 10:37:37'),
(3, 'Albania', NULL, NULL, NULL),
(4, 'Algeria', NULL, NULL, NULL),
(5, 'Andorra', NULL, NULL, NULL),
(6, 'Angola', NULL, NULL, NULL),
(7, 'Antigua and Barbuda', NULL, NULL, NULL),
(8, 'Argentina', NULL, NULL, NULL),
(9, 'Armenia', NULL, NULL, NULL),
(10, 'Australia', NULL, NULL, NULL),
(11, 'Austria', NULL, NULL, NULL),
(12, 'Azerbaijan', NULL, NULL, NULL),
(13, 'Bahamas', NULL, NULL, NULL),
(14, 'Bahrain', NULL, NULL, NULL),
(15, 'Bangladesh', NULL, NULL, NULL),
(16, 'Barbados', NULL, NULL, NULL),
(17, 'Belarus', NULL, NULL, NULL),
(18, 'Belgium', NULL, NULL, NULL),
(19, 'Belize', NULL, NULL, NULL),
(20, 'Benin', NULL, NULL, NULL),
(21, 'Bhutan', NULL, NULL, NULL),
(22, 'Bolivia', NULL, NULL, NULL),
(23, 'Bosnia and Herzegovina', NULL, NULL, NULL),
(24, 'Botswana', NULL, NULL, NULL),
(25, 'Brazil', NULL, NULL, NULL),
(26, 'Brunei', NULL, NULL, NULL),
(27, 'Bulgaria', NULL, NULL, NULL),
(28, 'Burkina Faso', NULL, NULL, NULL),
(29, 'Burundi', NULL, NULL, NULL),
(30, 'Cabo Verde', NULL, NULL, NULL),
(31, 'Cambodia', NULL, NULL, NULL),
(32, 'Cameroon', NULL, NULL, NULL),
(33, 'Canada', NULL, NULL, NULL),
(34, 'Central African Republic', NULL, NULL, NULL),
(35, 'Chad', NULL, NULL, NULL),
(36, 'Chile', NULL, NULL, NULL),
(37, 'China', NULL, NULL, NULL),
(38, 'Colombia', NULL, NULL, NULL),
(39, 'Comoros', NULL, NULL, NULL),
(40, 'Congo (Brazzaville)', NULL, NULL, NULL),
(41, 'Congo (Kinshasa)', NULL, NULL, NULL),
(42, 'Costa Rica', NULL, NULL, NULL),
(43, 'Croatia', NULL, NULL, NULL),
(44, 'Cuba', NULL, NULL, NULL),
(45, 'Cyprus', NULL, NULL, NULL),
(46, 'Czechia', NULL, NULL, NULL),
(47, 'Denmark', NULL, NULL, NULL),
(48, 'Djibouti', NULL, NULL, NULL),
(49, 'Dominica', NULL, NULL, NULL),
(50, 'Dominican Republic', NULL, NULL, NULL),
(51, 'East Timor', NULL, NULL, NULL),
(52, 'Ecuador', NULL, NULL, NULL),
(53, 'Egypt', NULL, NULL, NULL),
(54, 'El Salvador', NULL, NULL, NULL),
(55, 'Equatorial Guinea', NULL, NULL, NULL),
(56, 'Eritrea', NULL, NULL, NULL),
(57, 'Estonia', NULL, NULL, NULL),
(58, 'Eswatini', NULL, NULL, NULL),
(59, 'Ethiopia', NULL, NULL, NULL),
(60, 'Fiji', NULL, NULL, NULL),
(61, 'Finland', NULL, NULL, NULL),
(62, 'France', NULL, NULL, NULL),
(63, 'Gabon', NULL, NULL, NULL),
(64, 'Gambia', NULL, NULL, NULL),
(65, 'Georgia', NULL, NULL, NULL),
(66, 'Germany', NULL, NULL, NULL),
(67, 'Ghana', NULL, NULL, NULL),
(68, 'Greece', NULL, NULL, NULL),
(69, 'Grenada', NULL, NULL, NULL),
(70, 'Guatemala', NULL, NULL, NULL),
(71, 'Guinea', NULL, NULL, NULL),
(72, 'Guinea-Bissau', NULL, NULL, NULL),
(73, 'Guyana', NULL, NULL, NULL),
(74, 'Haiti', NULL, NULL, NULL),
(75, 'Honduras', NULL, NULL, NULL),
(76, 'Hungary', NULL, NULL, NULL),
(77, 'Iceland', NULL, NULL, NULL),
(78, 'Indonesia', NULL, NULL, NULL),
(79, 'Iran', NULL, NULL, NULL),
(80, 'Iraq', NULL, NULL, NULL),
(81, 'Ireland', NULL, NULL, NULL),
(82, 'Israel', NULL, NULL, NULL),
(83, 'Italy', NULL, NULL, NULL),
(84, 'Ivory Coast', NULL, NULL, NULL),
(85, 'Jamaica', NULL, NULL, NULL),
(86, 'Japan', NULL, NULL, NULL),
(87, 'Jordan', NULL, NULL, NULL),
(88, 'Kazakhstan', NULL, NULL, NULL),
(89, 'Kenya', NULL, NULL, NULL),
(90, 'Kiribati', NULL, NULL, NULL),
(91, 'Korea, North', NULL, NULL, NULL),
(92, 'Korea, South', NULL, NULL, NULL),
(93, 'Kosovo', NULL, NULL, NULL),
(94, 'Kuwait', NULL, NULL, NULL),
(95, 'Kyrgyzstan', NULL, NULL, NULL),
(96, 'Laos', NULL, NULL, NULL),
(97, 'Latvia', NULL, NULL, NULL),
(98, 'Lebanon', NULL, NULL, NULL),
(99, 'Lesotho', NULL, NULL, NULL),
(100, 'Liberia', NULL, NULL, NULL),
(101, 'Libya', NULL, NULL, NULL),
(102, 'Liechtenstein', NULL, NULL, NULL),
(103, 'Lithuania', NULL, NULL, NULL),
(104, 'Luxembourg', NULL, NULL, NULL),
(105, 'Madagascar', NULL, NULL, NULL),
(106, 'Malawi', NULL, NULL, NULL),
(107, 'Malaysia', NULL, NULL, NULL),
(108, 'Maldives', NULL, NULL, NULL),
(109, 'Mali', NULL, NULL, NULL),
(110, 'Malta', NULL, NULL, NULL),
(111, 'Marshall Islands', NULL, NULL, NULL),
(112, 'Mauritania', NULL, NULL, NULL),
(113, 'Mauritius', NULL, NULL, NULL),
(114, 'Mexico', NULL, NULL, NULL),
(115, 'Micronesia', NULL, NULL, NULL),
(116, 'Moldova', NULL, NULL, NULL),
(117, 'Monaco', NULL, NULL, NULL),
(118, 'Mongolia', NULL, NULL, NULL),
(119, 'Montenegro', NULL, NULL, NULL),
(120, 'Morocco', NULL, NULL, NULL),
(121, 'Mozambique', NULL, NULL, NULL),
(122, 'Myanmar', NULL, NULL, NULL),
(123, 'Namibia', NULL, NULL, NULL),
(124, 'Nauru', NULL, NULL, NULL),
(125, 'Nepal', NULL, NULL, NULL),
(126, 'Netherlands', NULL, NULL, NULL),
(127, 'New Zealand', NULL, NULL, NULL),
(128, 'Nicaragua', NULL, NULL, NULL),
(129, 'Niger', NULL, NULL, NULL),
(130, 'Nigeria', NULL, NULL, NULL),
(131, 'North Macedonia', NULL, NULL, NULL),
(132, 'Norway', NULL, NULL, NULL),
(133, 'Oman', NULL, NULL, NULL),
(134, 'Pakistan', NULL, NULL, NULL),
(135, 'Palau', NULL, NULL, NULL),
(136, 'Palestinian State', NULL, NULL, NULL),
(137, 'Panama', NULL, NULL, NULL),
(138, 'Papua New Guinea', NULL, NULL, NULL),
(139, 'Paraguay', NULL, NULL, NULL),
(140, 'Peru', NULL, NULL, NULL),
(141, 'Philippines', NULL, NULL, NULL),
(142, 'Poland', NULL, NULL, NULL),
(143, 'Portugal', NULL, NULL, NULL),
(144, 'Qatar', NULL, NULL, NULL),
(145, 'Romania', NULL, NULL, NULL),
(146, 'Russia', NULL, NULL, NULL),
(147, 'Rwanda', NULL, NULL, NULL),
(148, 'Saint Kitts and Nevis', NULL, NULL, NULL),
(149, 'Saint Lucia', NULL, NULL, NULL),
(150, 'Saint Vincent and the Grenadines', NULL, NULL, NULL),
(151, 'Samoa', NULL, NULL, NULL),
(152, 'San Marino', NULL, NULL, NULL),
(153, 'Sao Tome and Principe', NULL, NULL, NULL),
(154, 'Saudi Arabia', NULL, NULL, NULL),
(155, 'Senegal', NULL, NULL, NULL),
(156, 'Serbia', NULL, NULL, NULL),
(157, 'Seychelles', NULL, NULL, NULL),
(158, 'Sierra Leone', NULL, NULL, NULL),
(159, 'Singapore', NULL, NULL, NULL),
(160, 'Slovakia', NULL, NULL, NULL),
(161, 'Slovenia', NULL, NULL, NULL),
(162, 'Solomon Islands', NULL, NULL, NULL),
(163, 'Somalia', NULL, NULL, NULL),
(164, 'South Africa', NULL, NULL, NULL),
(165, 'South Sudan', NULL, NULL, NULL),
(166, 'Spain', NULL, NULL, NULL),
(167, 'Sri Lanka', NULL, NULL, NULL),
(168, 'Sudan', NULL, NULL, NULL),
(169, 'Suriname', NULL, NULL, NULL),
(170, 'Sweden', NULL, NULL, NULL),
(171, 'Switzerland', NULL, NULL, NULL),
(172, 'Syria', NULL, NULL, NULL),
(173, 'Taiwan', NULL, NULL, NULL),
(174, 'Tajikistan', NULL, NULL, NULL),
(175, 'Tanzania', NULL, NULL, NULL),
(176, 'Thailand', NULL, NULL, NULL),
(177, 'Togo', NULL, NULL, NULL),
(178, 'Tonga', NULL, NULL, NULL),
(179, 'Trinidad and Tobago', NULL, NULL, NULL),
(180, 'Tunisia', NULL, NULL, NULL),
(181, 'Turkey', NULL, NULL, NULL),
(182, 'Turkmenistan', NULL, NULL, NULL),
(183, 'Tuvalu', NULL, NULL, NULL),
(184, 'Uganda', NULL, NULL, NULL),
(185, 'Ukraine', NULL, NULL, NULL),
(186, 'United Arab Emirates', NULL, NULL, NULL),
(187, 'United Kingdom', NULL, NULL, NULL),
(188, 'United States of America', NULL, NULL, NULL),
(189, 'Uruguay', NULL, NULL, NULL),
(190, 'Uzbekistan', NULL, NULL, NULL),
(191, 'Vanuatu', NULL, NULL, NULL),
(192, 'Vatican City', NULL, NULL, NULL),
(193, 'Venezuela', NULL, NULL, NULL),
(194, 'Vietnam', NULL, NULL, NULL),
(195, 'Yemen', NULL, NULL, NULL),
(196, 'Zambia', NULL, NULL, NULL),
(197, 'Zimbabwe', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dietary_habits`
--

CREATE TABLE `dietary_habits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dietary_habit` varchar(255) NOT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dietary_habits`
--

INSERT INTO `dietary_habits` (`id`, `dietary_habit`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Vegetarian', 1, NULL, NULL),
(2, 'Non Vegetarian', 1, NULL, NULL),
(3, 'Jain', 1, NULL, NULL),
(4, 'Eggetarian', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dresses`
--

CREATE TABLE `dresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dress` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dresses`
--

INSERT INTO `dresses` (`id`, `dress`, `created_at`, `updated_at`) VALUES
(1, 'Trendy-in line with the latest fashion', NULL, NULL),
(2, 'Classic Western-typically western formal wear', NULL, NULL),
(3, 'Designer-only leading brands will do', NULL, NULL),
(4, 'Casual-usually in jeans and T-shirts', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `drink_habits`
--

CREATE TABLE `drink_habits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `drink_habit` varchar(255) NOT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drink_habits`
--

INSERT INTO `drink_habits` (`id`, `drink_habit`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Yes', 1, NULL, NULL),
(2, 'No', 1, NULL, NULL),
(3, 'Occasionally', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `education` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `education`, `status`, `created_at`, `updated_at`) VALUES
(1, 'B.E/B.Tech', '1', NULL, NULL),
(2, 'B.Pharma', '1', NULL, NULL),
(3, 'M.E/M.Tech', '1', NULL, NULL),
(4, 'M.Pharma', '1', NULL, NULL),
(5, 'M.S. (Engineering)', '1', NULL, NULL),
(6, 'B.Arch', '1', NULL, NULL),
(7, 'M.Arch', '1', NULL, NULL),
(8, 'B.Des', '1', NULL, NULL),
(9, 'M.Des', '1', NULL, NULL),
(10, 'MCA', '1', NULL, NULL),
(11, 'BCA', '1', NULL, NULL),
(12, 'B.IT', '1', NULL, NULL),
(13, 'B.Com', '1', NULL, NULL),
(14, 'CA', '1', NULL, NULL),
(15, 'CS', '1', NULL, NULL),
(16, 'ICWA', '1', NULL, NULL),
(17, 'M.Com', '1', NULL, NULL),
(18, 'CFA', '1', NULL, NULL),
(19, 'MBA/PGDM', '1', NULL, NULL),
(20, 'BBA', '1', NULL, NULL),
(21, 'BHM', '1', NULL, NULL),
(22, 'MBBS', '1', NULL, NULL),
(23, 'M.D.', '1', NULL, NULL),
(24, 'BAMS', '1', NULL, NULL),
(25, 'BHMS', '1', NULL, NULL),
(26, 'BDS', '1', NULL, NULL),
(27, 'M.S. (Medicine)', '1', NULL, NULL),
(28, 'MVSc.', '1', NULL, NULL),
(29, 'BVSc.', '1', NULL, NULL),
(30, 'MDS', '1', NULL, NULL),
(31, 'BPT', '1', NULL, NULL),
(32, 'MPT', '1', NULL, NULL),
(33, 'DM', '1', NULL, NULL),
(34, 'MCh', '1', NULL, NULL),
(35, 'L.L.B', '1', NULL, NULL),
(36, 'L.L.M', '1', NULL, NULL),
(37, 'B.A', '1', NULL, '2023-09-29 14:46:29'),
(38, 'B.Sc', '1', NULL, NULL),
(39, 'M.A', '1', NULL, NULL),
(40, 'M.Sc', '1', NULL, NULL),
(41, 'B.Ed', '1', NULL, NULL),
(42, 'M.Ed', '1', NULL, NULL),
(43, 'MSW', '1', NULL, NULL),
(44, 'BFA', '1', NULL, NULL),
(45, 'MFA', '1', NULL, NULL),
(46, 'BJMC', '1', NULL, NULL),
(47, 'MJMC', '1', NULL, NULL),
(48, 'PhD', '1', NULL, NULL),
(49, 'M.Phil', '1', NULL, NULL),
(50, 'Diploma', '1', NULL, NULL),
(51, 'High School', '1', NULL, NULL),
(52, 'Trade School', '1', NULL, NULL),
(53, 'Other', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee` varchar(255) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employee`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Private Sector', NULL, NULL, NULL),
(2, 'Government/ Public Sector', NULL, NULL, NULL),
(3, 'Civil Services', NULL, NULL, NULL),
(4, 'Defense', NULL, NULL, NULL),
(5, 'Business/ Self Employed', NULL, NULL, NULL),
(6, 'Not Working', NULL, NULL, NULL),
(8, 'abc', '1', '2023-09-29 12:59:13', '2023-09-29 13:06:41');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `families`
--

CREATE TABLE `families` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `father_occupation` varchar(255) NOT NULL,
  `mother_occupation` varchar(255) NOT NULL,
  `brother` varchar(255) NOT NULL,
  `brother_married` varchar(255) NOT NULL,
  `sister` varchar(255) NOT NULL,
  `sister_married` varchar(255) NOT NULL,
  `family_living` varchar(255) NOT NULL,
  `contact_address` varchar(255) NOT NULL,
  `about_family` varchar(255) NOT NULL,
  `family_type` varchar(255) NOT NULL,
  `family_value` varchar(255) NOT NULL,
  `family_status` varchar(255) NOT NULL,
  `native_place` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `family_details`
--

CREATE TABLE `family_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `father_occupation` int(11) NOT NULL,
  `mother_occupation` int(11) NOT NULL,
  `brother` varchar(255) NOT NULL,
  `brother_married` varchar(255) NOT NULL,
  `sister` varchar(255) NOT NULL,
  `sister_married` varchar(255) NOT NULL,
  `family_living` varchar(255) NOT NULL,
  `father_gotra` varchar(255) NOT NULL,
  `mother_gotra` varchar(255) NOT NULL,
  `contact_address` varchar(255) NOT NULL,
  `about_family` varchar(255) NOT NULL,
  `family_type` int(11) NOT NULL,
  `family_value` int(11) NOT NULL,
  `family_status` int(11) NOT NULL,
  `native_place` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `family_statuses`
--

CREATE TABLE `family_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `family_status` varchar(255) NOT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `family_statuses`
--

INSERT INTO `family_statuses` (`id`, `family_status`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Rich/Affluent', 1, NULL, NULL),
(2, 'Upper Middle', 1, NULL, NULL),
(3, 'Middle Class', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `family_types`
--

CREATE TABLE `family_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `family_type` varchar(255) NOT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `family_types`
--

INSERT INTO `family_types` (`id`, `family_type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Joint Family', 1, NULL, NULL),
(2, 'Nuclear Family', 1, NULL, NULL),
(3, 'Others', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `family_values`
--

CREATE TABLE `family_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `family_value` varchar(255) NOT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `family_values`
--

INSERT INTO `family_values` (`id`, `family_value`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Orthodox', 1, NULL, NULL),
(2, 'Conservative', 1, NULL, NULL),
(3, 'Moderate', 1, NULL, NULL),
(4, 'Liberal', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `father_occupations`
--

CREATE TABLE `father_occupations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `father_occupation` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `father_occupations`
--

INSERT INTO `father_occupations` (`id`, `father_occupation`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Business', '1', NULL, NULL),
(2, 'Service-Private', '1', NULL, NULL),
(3, 'Service-Govt.', '1', NULL, NULL),
(4, 'Army/Armed Force', '1', NULL, NULL),
(5, 'Civil Services', '1', NULL, NULL),
(6, 'Retired', '1', NULL, NULL),
(7, 'Not Employee', '1', NULL, NULL),
(8, 'Expire', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gender` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `heights`
--

CREATE TABLE `heights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `height` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `heights`
--

INSERT INTO `heights` (`id`, `height`, `status`, `created_at`, `updated_at`) VALUES
(1, '3ft.5in-105cm', 1, NULL, NULL),
(2, '3ft.6in-107cm', 1, NULL, NULL),
(3, '3ft.7in-110cm', 1, NULL, NULL),
(4, '3ft.8in-112cm', 1, NULL, NULL),
(5, '3ft.9in-114cm', 1, NULL, NULL),
(6, '3ft.10in-117c', 1, NULL, NULL),
(7, '3ft.11in-119c', 1, NULL, NULL),
(8, '4ft-122cm\"4ft', 1, NULL, NULL),
(9, '4ft.1in-124cm', 1, NULL, NULL),
(10, '4ft.2in-127cm', 1, NULL, NULL),
(11, '4ft.3in-129cm', 1, NULL, NULL),
(12, '4ft.4in-132cm', 1, NULL, NULL),
(13, '4ft.5in-134cm', 1, NULL, NULL),
(14, '4ft.6in-137cm', 1, NULL, NULL),
(15, '4ft.7in-139cm', 1, NULL, NULL),
(16, '4ft.8in-142cm', 1, NULL, NULL),
(17, '4ft.9in-144cm', 1, NULL, NULL),
(18, '4ft.10in-147c', 1, NULL, NULL),
(19, '4ft.11in-149c', 1, NULL, NULL),
(20, '5ft-151cm\"5ft', 1, NULL, NULL),
(21, '5ft.1in-154cm', 1, NULL, NULL),
(22, '5ft.2in-157cm', 1, NULL, NULL),
(23, '5ft.3in-160cm', 1, NULL, NULL),
(24, '5ft.4in-162cm', 1, NULL, NULL),
(25, '5ft.5in-165cm', 1, NULL, NULL),
(26, '5ft.6in-167cm', 1, NULL, NULL),
(27, '5ft.7in-170cm', 1, NULL, NULL),
(28, '5ft.8in-172cm', 1, NULL, NULL),
(29, '5ft 9in-175cm', 1, NULL, NULL),
(30, '5ft.10in-177c', 1, NULL, NULL),
(31, '5ft.11in-180c', 1, NULL, NULL),
(32, '6ft-182cm\"6ft', 1, NULL, NULL),
(33, '6ft.1in-185cm', 1, NULL, NULL),
(34, '6ft.1in-185cm', 1, NULL, NULL),
(35, '6ft.2in-187cm', 1, NULL, NULL),
(36, '6ft.3in-190cm', 1, NULL, NULL),
(37, '6ft.4in-193cm', 1, NULL, NULL),
(38, '6ft.5in-196cm', 1, NULL, NULL),
(39, '6ft.6in-198cm', 1, NULL, NULL),
(40, '6ft.7in-200cm', 1, NULL, NULL),
(41, '6ft.8in-203cm', 1, NULL, NULL),
(42, '6ft.9in-206cm', 1, NULL, NULL),
(43, '6ft.10in-208c', 1, NULL, NULL),
(44, '6ft.11in-211c', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hobbies`
--

CREATE TABLE `hobbies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hobby` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hobbies`
--

INSERT INTO `hobbies` (`id`, `hobby`, `created_at`, `updated_at`) VALUES
(1, 'Ham radio', NULL, NULL),
(2, 'Collecting Stamps', NULL, NULL),
(3, 'Collecting Coins', NULL, NULL),
(4, 'Collecting antiques', NULL, NULL),
(5, 'Cooking', NULL, NULL),
(6, 'Film-making', NULL, NULL),
(7, 'Gardening/Landscaping', NULL, NULL),
(8, 'Art/Handicraft', NULL, NULL),
(9, 'Painting', NULL, NULL),
(10, 'Photography', NULL, NULL),
(11, 'Model building', NULL, NULL),
(12, 'Bird watching', NULL, NULL),
(13, 'Fishing', NULL, NULL),
(14, 'Taking care of pets', NULL, NULL),
(15, 'Playing musical instruments', NULL, NULL),
(16, 'Singing', NULL, NULL),
(17, 'Dancing', NULL, NULL),
(18, 'Acting', NULL, NULL),
(19, 'Astrology/Palmistry/Numerology', NULL, NULL),
(20, 'Graphology Solving Crosswords', NULL, NULL),
(21, 'Puzzles', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `horoscope_details`
--

CREATE TABLE `horoscope_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_of_birth` varchar(255) NOT NULL,
  `manglik` int(11) NOT NULL,
  `city_of_birth` varchar(255) NOT NULL,
  `rashi` int(11) NOT NULL,
  `horoscope_match` int(11) NOT NULL,
  `horoscope_show` varchar(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `horoscope_matches`
--

CREATE TABLE `horoscope_matches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `horoscope_matche` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `horoscope_matches`
--

INSERT INTO `horoscope_matches` (`id`, `horoscope_matche`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Must', 1, NULL, NULL),
(2, 'Not Necessary', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `horoscope_shows`
--

CREATE TABLE `horoscope_shows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `horoscope_show` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `horoscope_shows`
--

INSERT INTO `horoscope_shows` (`id`, `horoscope_show`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Show to all', '1', NULL, NULL),
(2, 'Hide from all', '1', NULL, NULL),
(3, 'Show only request accepted', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `horoscops`
--

CREATE TABLE `horoscops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_of_birth` varchar(255) NOT NULL,
  `manglik` varchar(255) NOT NULL,
  `city_of_birth` varchar(255) NOT NULL,
  `rashi` varchar(255) NOT NULL,
  `horoscope_match` varchar(255) NOT NULL,
  `horoscope_show` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `incomes`
--

CREATE TABLE `incomes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `income` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `incomes`
--

INSERT INTO `incomes` (`id`, `income`, `status`, `created_at`, `updated_at`) VALUES
(1, 'No Income', 1, NULL, NULL),
(2, 'Rs. 0 - 1 Lakh', 1, NULL, NULL),
(3, 'Rs. 1 - 2 Lakh', 1, NULL, NULL),
(4, 'Rs. 2 - 3 Lakh', 1, NULL, NULL),
(5, 'Rs. 3 - 4 Lakh', 1, NULL, NULL),
(6, 'Rs. 4 - 5 Lakh', 1, NULL, NULL),
(7, 'Rs. 5 - 7.5 Lakh', 1, NULL, NULL),
(8, 'Rs. 7.5 - 10 Lakh', 1, NULL, NULL),
(9, 'Rs. 10 - 15 Lakh', 1, NULL, NULL),
(10, 'Rs. 15 - 20 Lakh', 1, NULL, NULL),
(11, 'Rs. 20 - 25 Lakh', 1, NULL, NULL),
(12, 'Rs. 25 - 35 Lakh', 1, NULL, NULL),
(13, 'Rs. 35 - 50 Lakh', 1, NULL, NULL),
(14, 'Rs. 50 - 70 Lakh', 1, NULL, NULL),
(15, 'Rs. 70 Lakh - 1 crore', 1, NULL, NULL),
(16, 'Rs. 1 crore & above', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `interests`
--

CREATE TABLE `interests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `interest` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interests`
--

INSERT INTO `interests` (`id`, `interest`, `created_at`, `updated_at`) VALUES
(1, 'Listening to music', NULL, NULL),
(2, 'Movies Travel Sightseeing', NULL, NULL),
(3, 'Sports-Outdoor', NULL, NULL),
(4, 'Video/Computer games', NULL, NULL),
(5, 'Writing', NULL, NULL),
(6, 'Reading/Book clubs', NULL, NULL),
(7, 'Learning new languages', NULL, NULL),
(8, 'Theatre', NULL, NULL),
(9, 'Watching television', NULL, NULL),
(10, 'Sports-Indoor', NULL, NULL),
(11, 'Trekking/Adventure', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `language_speaks`
--

CREATE TABLE `language_speaks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_speak` varchar(255) NOT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_speaks`
--

INSERT INTO `language_speaks` (`id`, `language_speak`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Arabic', 1, NULL, NULL),
(2, 'Assamese', 1, NULL, NULL),
(3, 'Bengali', 1, NULL, NULL),
(4, 'English', 1, NULL, NULL),
(5, 'French', 1, NULL, NULL),
(6, 'German', 1, NULL, NULL),
(7, 'Gujarati', 1, NULL, NULL),
(8, 'Hebrew', 1, NULL, NULL),
(9, 'Hindi', 1, NULL, NULL),
(10, 'Italian', 1, NULL, NULL),
(11, 'Japanese', 1, NULL, NULL),
(12, 'Kannada', 1, NULL, NULL),
(13, 'Kashmiri', 1, NULL, NULL),
(14, 'Konkani', 1, NULL, NULL),
(15, 'Kutchi', 1, NULL, NULL),
(16, 'Malayalam', 1, NULL, NULL),
(17, 'Mandarin', 1, NULL, NULL),
(18, 'Marathi', 1, NULL, NULL),
(19, 'Marwadi', 1, NULL, NULL),
(20, 'Oriya', 1, NULL, NULL),
(21, 'Persian', 1, NULL, NULL),
(22, 'Portuguese', 1, NULL, NULL),
(23, 'Punjabi', 1, NULL, NULL),
(24, 'Pushto', 1, NULL, NULL),
(25, 'Sindhi', 1, NULL, NULL),
(26, 'Spanish', 1, NULL, NULL),
(27, 'Tamil', 1, NULL, NULL),
(28, 'Telugu', 1, NULL, NULL),
(29, 'Tulu', 1, NULL, NULL),
(30, 'Urdu', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `life_styles`
--

CREATE TABLE `life_styles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `body_type` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `complextion` int(11) NOT NULL,
  `dietary_habit` int(11) NOT NULL,
  `drinking_habit` int(11) NOT NULL,
  `smoking_habit` int(11) NOT NULL,
  `challenge` int(11) NOT NULL,
  `open_to_pet` varchar(255) NOT NULL,
  `own_house` varchar(255) NOT NULL,
  `own_car` varchar(255) NOT NULL,
  `language_speak` int(11) NOT NULL,
  `hiv+` varchar(255) NOT NULL,
  `thalassemia` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `like_details`
--

CREATE TABLE `like_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hobby` int(11) NOT NULL,
  `interest` int(11) NOT NULL,
  `music` int(11) NOT NULL,
  `dress` int(11) NOT NULL,
  `movie` int(11) NOT NULL,
  `sport` int(11) NOT NULL,
  `favourite_book` varchar(255) NOT NULL,
  `favourite_read` varchar(255) NOT NULL,
  `favourite_movie` varchar(255) NOT NULL,
  `show` varchar(255) NOT NULL,
  `cuisine` varchar(255) NOT NULL,
  `food_cook` varchar(255) NOT NULL,
  `vacation_destination` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mangliks`
--

CREATE TABLE `mangliks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `manglik` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mangliks`
--

INSERT INTO `mangliks` (`id`, `manglik`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Don\'t Know', '1', NULL, NULL),
(2, 'Manglik', '1', NULL, NULL),
(3, 'Non Manglik', '1', NULL, NULL),
(4, 'Angshik(Partial manglik)', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `marital_statuses`
--

CREATE TABLE `marital_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `marital_status` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marital_statuses`
--

INSERT INTO `marital_statuses` (`id`, `marital_status`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Never Married', 1, NULL, NULL),
(2, 'Awaiting Divorce', 1, NULL, NULL),
(3, 'Divorced', 1, NULL, NULL),
(4, 'Widowed', 1, NULL, NULL),
(5, 'Annulled', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(9, '2023_10_01_181625_create_profile_fors_table', 2),
(10, '2023_10_03_144257_create_basic_information_table', 3),
(11, '2023_09_18_153412_create_heights_table', 4),
(12, '2023_10_01_182801_create_mother_tongues_table', 5),
(13, '2023_10_01_183535_create_marital_statuses_table', 6),
(14, '2023_10_03_145214_create_basic_details_table', 7),
(15, '2023_10_03_145238_create_horoscope_details_table', 8),
(16, '2023_10_01_184002_create_mangliks_table', 9),
(18, '2023_10_01_185118_create_rashis_table', 10),
(19, '2023_10_01_190132_create_horoscope_matches_table', 11),
(20, '2023_10_03_170313_create_horoscope_shows_table', 12),
(21, '2023_10_03_145300_create_carrier_details_table', 13),
(23, '2023_09_22_153218_create_incomes_table', 14),
(25, '2023_10_03_145319_create_family_details_table', 15),
(26, '2023_10_01_191959_create_father_occupations_table', 16),
(27, '2023_10_01_192034_create_mother_occupations_table', 17),
(28, '2023_10_01_194041_create_family_types_table', 18),
(29, '2023_10_01_194107_create_family_values_table', 19),
(30, '2023_10_01_194131_create_family_statuses_table', 20),
(31, '2023_10_03_145338_create_life_styles_table', 21),
(32, '2023_10_01_195624_create_dietary_habits_table', 22),
(33, '2023_10_01_195701_create_drink_habits_table', 23),
(34, '2023_10_01_195724_create_smoke_habits_table', 24),
(35, '2023_10_01_195801_create_challenges_table', 25),
(36, '2023_10_01_195902_create_language_speaks_table', 26),
(37, '2023_09_23_135219_create_hobbies_table', 27),
(38, '2023_09_23_135301_create_interests_table', 28),
(39, '2023_10_01_202308_create_musics_table', 29),
(40, '2023_09_23_135406_create_dresses_table', 30),
(41, '2023_10_01_201916_create_sports_table', 31),
(42, '2023_10_03_145419_create_contact_details_table', 32),
(43, '2023_10_03_145357_create_like_details_table', 33),
(45, '2023_09_23_135432_create_movies_table', 34),
(46, '2023_10_03_181420_create_relationships_table', 35),
(47, '2023_10_03_182559_create_genders_table', 36),
(48, '2023_10_03_183153_create_body_types_table', 37),
(49, '2023_10_03_183208_create_weights_table', 38),
(50, '2023_10_03_183221_create_complextions_table', 39),
(51, '2016_06_01_000001_create_oauth_auth_codes_table', 40),
(52, '2016_06_01_000002_create_oauth_access_tokens_table', 40),
(53, '2016_06_01_000003_create_oauth_refresh_tokens_table', 40),
(54, '2016_06_01_000004_create_oauth_clients_table', 40),
(55, '2016_06_01_000005_create_oauth_personal_access_clients_table', 40),
(56, '2023_09_18_111414_create_basics_table', 40),
(57, '2023_09_18_111444_create_horoscops_table', 40),
(58, '2023_09_18_111802_create_carriers_table', 40),
(59, '2023_09_18_111923_create_families_table', 40),
(60, '2018_08_08_100000_create_telescope_entries_table', 41),
(61, '2014_10_12_200000_add_two_factor_columns_to_users_table', 42),
(62, '2020_05_21_100000_create_teams_table', 43),
(63, '2020_05_21_200000_create_team_user_table', 44),
(64, '2020_05_21_300000_create_team_invitations_table', 45),
(65, '2023_10_09_083934_create_sessions_table', 46);

-- --------------------------------------------------------

--
-- Table structure for table `mother_occupations`
--

CREATE TABLE `mother_occupations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mother_occupation` varchar(255) NOT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mother_occupations`
--

INSERT INTO `mother_occupations` (`id`, `mother_occupation`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Housewife', 1, NULL, NULL),
(2, 'Business', 1, NULL, NULL),
(3, 'Service-Private', 1, NULL, NULL),
(4, 'Service-Govt.', 1, NULL, NULL),
(5, 'Army/Armed Force', 1, NULL, NULL),
(6, 'Civil Services', 1, NULL, NULL),
(7, 'Retired', 1, NULL, NULL),
(8, 'Not Employee', 1, NULL, NULL),
(9, 'Expire', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mother_tongues`
--

CREATE TABLE `mother_tongues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mother_tongue` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mother_tongues`
--

INSERT INTO `mother_tongues` (`id`, `mother_tongue`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hindi-Delhi', 1, NULL, NULL),
(2, 'Hindi-MP/CG', 1, NULL, NULL),
(3, 'Hindi-UP/UK', 1, NULL, NULL),
(4, 'Punjabi', 1, NULL, NULL),
(5, 'Hindi-Bihar/Jharkhand', 1, NULL, NULL),
(6, 'Hindi-Rajasthan', 1, NULL, NULL),
(7, 'Haryanvi', 1, NULL, NULL),
(8, 'Himachali', 1, NULL, NULL),
(9, 'Kashmiri', 1, NULL, NULL),
(10, 'Sindhi', 1, NULL, NULL),
(11, 'Urdu', 1, NULL, NULL),
(12, 'Marathi', 1, NULL, NULL),
(13, 'Gujarati', 1, NULL, NULL),
(14, 'Kutchi', 1, NULL, NULL),
(15, 'Konkani', 1, NULL, NULL),
(16, 'Sindhi', 1, NULL, NULL),
(17, 'South', 1, NULL, NULL),
(18, 'Tamil', 1, NULL, NULL),
(19, 'Telugu', 1, NULL, NULL),
(20, 'Kannada', 1, NULL, NULL),
(21, 'Malayalam', 1, NULL, NULL),
(22, 'Tulu', 1, NULL, NULL),
(23, 'Urdu', 1, NULL, NULL),
(24, 'Bengali', 1, NULL, NULL),
(25, 'Oriya', 1, NULL, NULL),
(26, 'Assamese', 1, NULL, NULL),
(27, 'Sikkim/Nepali', 1, NULL, NULL),
(28, 'Others', 1, NULL, NULL),
(29, 'English', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movie` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `movie`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Classics', 1, NULL, NULL),
(2, 'Web-series', 1, NULL, NULL),
(3, 'Romantic', 1, NULL, NULL),
(4, 'Comedy', 1, NULL, NULL),
(5, 'Horror', 1, NULL, NULL),
(6, 'Sci-Fi & Fantasy', 1, NULL, NULL),
(7, 'Action/Suspense', 1, NULL, NULL),
(8, 'Non-commercial/Art', 1, NULL, NULL),
(9, 'World cinema', 1, NULL, NULL),
(10, 'Documentaries', 1, NULL, NULL),
(11, 'Drama', 1, NULL, NULL),
(12, 'Epics Short films', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `musics`
--

CREATE TABLE `musics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `music` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `occupations`
--

CREATE TABLE `occupations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `occupations`
--

INSERT INTO `occupations` (`id`, `employee_id`, `occupation`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin Professional', NULL, NULL, NULL),
(2, 1, 'Clerk', NULL, NULL, NULL),
(3, 1, 'Operator/Technician', NULL, NULL, NULL),
(4, 1, 'Secretary/Front Office', NULL, NULL, NULL),
(5, 1, 'Actor/Model', NULL, NULL, NULL),
(6, 1, 'Advertising Professional', NULL, NULL, NULL),
(7, 1, 'Film/ Entertainment Professional', NULL, NULL, NULL),
(8, 1, 'Journalist', NULL, NULL, NULL),
(9, 1, 'Media Professional', NULL, NULL, NULL),
(10, 1, 'PR Professional', NULL, NULL, NULL),
(11, 1, 'Agriculture Professional', NULL, NULL, NULL),
(12, 1, 'Farming', NULL, NULL, NULL),
(13, 1, 'Airline Professional', NULL, NULL, NULL),
(14, 1, 'Flight Attendant', NULL, NULL, NULL),
(15, 1, 'Pilot', NULL, NULL, NULL),
(16, 1, 'Architect', NULL, NULL, NULL),
(17, 1, 'BPO/ITes Professional', NULL, NULL, NULL),
(18, 1, 'Customer Service', NULL, NULL, NULL),
(19, 1, 'Accounting Professional', NULL, NULL, NULL),
(20, 1, 'Auditor', NULL, NULL, NULL),
(21, 1, 'Banking Professional', NULL, NULL, NULL),
(22, 1, 'Chartered accountant', NULL, NULL, NULL),
(23, 1, 'Finance Professional', NULL, NULL, NULL),
(24, 1, 'Analyst', NULL, NULL, NULL),
(25, 1, 'Consultant', NULL, NULL, NULL),
(26, 1, 'Corporate Communication', NULL, NULL, NULL),
(27, 1, 'Corporate Planning', NULL, NULL, NULL),
(28, 1, 'HR Professional', NULL, NULL, NULL),
(29, 1, 'Marketing Professional', NULL, NULL, NULL),
(30, 1, 'Operations Management', NULL, NULL, NULL),
(31, 1, 'Product manager', NULL, NULL, NULL),
(32, 1, 'Program Manager', NULL, NULL, NULL),
(33, 1, 'Project Manager - Non IT', NULL, NULL, NULL),
(34, 1, 'Sales Professional', NULL, NULL, NULL),
(35, 1, 'Sr. Manager/ Manager', NULL, NULL, NULL),
(36, 1, 'Subject Matter Expert', NULL, NULL, NULL),
(37, 1, 'Dentist', NULL, NULL, NULL),
(38, 1, 'Doctor', NULL, NULL, NULL),
(39, 1, 'Surgeon', NULL, NULL, NULL),
(40, 1, 'Education Professional', NULL, NULL, NULL),
(41, 1, 'Educational Institution Owner', NULL, NULL, NULL),
(42, 1, 'Librarian', NULL, NULL, NULL),
(43, 1, 'Professor/Lecturer', NULL, NULL, NULL),
(44, 1, 'Research Assistant', NULL, NULL, NULL),
(45, 1, 'Teacher', NULL, NULL, NULL),
(46, 1, 'Electronics Engineer', NULL, NULL, NULL),
(47, 1, 'Hardware/Telecom Engineer', NULL, NULL, NULL),
(48, 1, 'Non IT Engineer', NULL, NULL, NULL),
(49, 1, 'Quality Assurance Engineer', NULL, NULL, NULL),
(50, 1, 'Hotels/Hospitality Professional', NULL, NULL, NULL),
(51, 1, 'Lawyer & Legal Professional', NULL, NULL, NULL),
(52, 1, 'Mariner', NULL, NULL, NULL),
(53, 1, 'Merchant Naval Officer', NULL, NULL, NULL),
(54, 1, 'Medical\\/ Healthcare Professional', NULL, NULL, NULL),
(55, 1, 'Nurse', NULL, NULL, NULL),
(56, 1, 'Paramedic', NULL, NULL, NULL),
(57, 1, 'Pharmacist', NULL, NULL, NULL),
(58, 1, 'Physiotherapist', NULL, NULL, NULL),
(59, 1, 'Psychologist', NULL, NULL, NULL),
(60, 1, 'Veterinary doctor', NULL, NULL, NULL),
(61, 1, 'Research Professional', NULL, NULL, NULL),
(62, 1, 'Science Professional', NULL, NULL, NULL),
(63, 1, 'Scientist', NULL, NULL, NULL),
(64, 1, 'Animator', NULL, NULL, NULL),
(65, 1, 'Cyber/Network Security', NULL, NULL, NULL),
(66, 1, 'Project Lead - IT', NULL, NULL, NULL),
(67, 1, 'Project Manager - IT', NULL, NULL, NULL),
(68, 1, 'Quality Assurance Engineer - IT', NULL, NULL, NULL),
(69, 1, 'Software Professional', NULL, NULL, NULL),
(70, 1, 'UI/UX designer', NULL, NULL, NULL),
(71, 1, 'Web/Graphic Designer', NULL, NULL, NULL),
(72, 1, 'CxO/ Chairman/ President/ Director', NULL, NULL, NULL),
(73, 1, 'VP/ AV/ GM/ DGM', NULL, NULL, NULL),
(74, 1, 'Agent', NULL, NULL, NULL),
(75, 1, 'Artist', NULL, NULL, NULL),
(76, 1, 'Beautician', NULL, NULL, NULL),
(77, 1, 'Broker', NULL, NULL, NULL),
(78, 1, 'Fashion Designer', NULL, NULL, NULL),
(79, 1, 'Fitness Professional', NULL, NULL, NULL),
(80, 1, 'Interior Designer', NULL, NULL, NULL),
(81, 1, 'Security Professional', NULL, NULL, NULL),
(82, 1, 'Singer', NULL, NULL, NULL),
(83, 1, 'Social Services/ NGO/ Volunteer', NULL, NULL, NULL),
(84, 1, 'Sportsperson', NULL, NULL, NULL),
(85, 1, 'Travel Professional', NULL, NULL, NULL),
(86, 1, 'Writer', NULL, NULL, NULL),
(87, 1, 'Others', NULL, NULL, NULL),
(88, 2, 'Administra', NULL, NULL, NULL),
(89, 2, 'Admin Professional', NULL, NULL, NULL),
(90, 2, 'Clerk', NULL, NULL, NULL),
(91, 2, 'Operator\\/Technician', NULL, NULL, NULL),
(92, 2, 'Secretary\\/Front Office', NULL, NULL, NULL),
(93, 2, 'Advertising, Media & Entertain', NULL, NULL, NULL),
(94, 2, 'Advertising Professional', NULL, NULL, NULL),
(95, 2, 'Film/ Entertainment Professional', NULL, NULL, NULL),
(96, 2, 'Media Professional', NULL, NULL, NULL),
(97, 2, 'PR Professional', NULL, NULL, NULL),
(98, 2, 'Agricult', NULL, NULL, NULL),
(99, 2, 'Agriculture Professional', NULL, NULL, NULL),
(100, 2, 'Farming', NULL, NULL, NULL),
(101, 2, 'Airline & Avia', NULL, NULL, NULL),
(102, 2, 'Airline Professional', NULL, NULL, NULL),
(103, 2, 'Flight Attendant', NULL, NULL, NULL),
(104, 2, 'Pilot', NULL, NULL, NULL),
(105, 2, 'Architec', NULL, NULL, NULL),
(106, 2, 'Architect', NULL, NULL, NULL),
(107, 2, 'BPO & Customer Service', NULL, NULL, NULL),
(108, 2, 'BPO\\/ITes Professional', NULL, NULL, NULL),
(109, 2, 'Customer Service', NULL, NULL, NULL),
(110, 2, 'Banking & Fin ', NULL, NULL, NULL),
(111, 2, 'Accounting Professional', NULL, NULL, NULL),
(112, 2, 'Auditor', NULL, NULL, NULL),
(113, 2, 'Banking Professional', NULL, NULL, NULL),
(114, 2, 'Chartered accountant', NULL, NULL, NULL),
(115, 2, 'Finance Professional', NULL, NULL, NULL),
(116, 2, 'Corporate Management Professio ', NULL, NULL, NULL),
(117, 2, 'Analyst', NULL, NULL, NULL),
(118, 2, 'Consultant', NULL, NULL, NULL),
(119, 2, 'Corporate Communication', NULL, NULL, NULL),
(120, 2, 'Corporate Planning', NULL, NULL, NULL),
(121, 2, 'HR Professional', NULL, NULL, NULL),
(122, 2, 'Marketing Professional', NULL, NULL, NULL),
(123, 2, 'Operations Management', NULL, NULL, NULL),
(124, 2, 'Product manager', NULL, NULL, NULL),
(125, 2, 'Program Manager', NULL, NULL, NULL),
(126, 2, 'Project Manager - Non IT', NULL, NULL, NULL),
(127, 2, 'Sales Professional', NULL, NULL, NULL),
(128, 2, 'Sr. Manager\\/ Manager', NULL, NULL, NULL),
(129, 2, 'Subject Matter Expert', NULL, NULL, NULL),
(130, 2, 'Doctor', NULL, NULL, NULL),
(131, 2, 'Dentist', NULL, NULL, NULL),
(132, 2, 'Doctor', NULL, NULL, NULL),
(133, 2, 'Surgeon', NULL, NULL, NULL),
(134, 2, 'Education & Trai', NULL, NULL, NULL),
(135, 2, 'Education Professional', NULL, NULL, NULL),
(136, 2, 'Educational Institution Owner', NULL, NULL, NULL),
(137, 2, 'Librarian', NULL, NULL, NULL),
(138, 2, 'Professor\\/Lecturer', NULL, NULL, NULL),
(139, 2, 'Research Assistant', NULL, NULL, NULL),
(140, 2, 'Teacher', NULL, NULL, NULL),
(141, 2, 'Enginee ', NULL, NULL, NULL),
(142, 2, 'Electronics Engineer', NULL, NULL, NULL),
(143, 2, 'Hardware\\/Telecom Engineer', NULL, NULL, NULL),
(144, 2, 'Non \\u2013 IT Engineer', NULL, NULL, NULL),
(145, 2, 'Quality Assurance Engineer', NULL, NULL, NULL),
(146, 2, 'Hospita ', NULL, NULL, NULL),
(147, 2, 'Hotels/Hospitality Professional', NULL, NULL, NULL),
(148, 2, 'Law Enforce ', NULL, NULL, NULL),
(149, 2, 'Law Enforcement Officer', NULL, NULL, NULL),
(150, 2, 'Police', NULL, NULL, NULL),
(151, 2, 'Lawyer & Legal Professional', NULL, NULL, NULL),
(152, 2, 'Merchant ', NULL, NULL, NULL),
(153, 2, 'Mariner', NULL, NULL, NULL),
(154, 2, 'Merchant Naval Officer', NULL, NULL, NULL),
(155, 2, 'Other Medical & Health ', NULL, NULL, NULL),
(156, 2, 'Medical/ Healthcare Professional', NULL, NULL, NULL),
(157, 2, 'Nurse', NULL, NULL, NULL),
(158, 2, 'Paramedic', NULL, NULL, NULL),
(159, 2, 'Pharmacist', NULL, NULL, NULL),
(160, 2, 'Physiotherapist', NULL, NULL, NULL),
(161, 2, 'Psychologist', NULL, NULL, NULL),
(162, 2, 'Veterinary doctor', NULL, NULL, NULL),
(163, 2, 'Science & Rese ', NULL, NULL, NULL),
(164, 2, 'Research Professional', NULL, NULL, NULL),
(165, 2, 'Science Professional', NULL, NULL, NULL),
(166, 2, 'Scientist', NULL, NULL, NULL),
(167, 2, 'Software ', NULL, NULL, NULL),
(168, 2, 'Animator', NULL, NULL, NULL),
(169, 2, 'Cyber\\/Network Security', NULL, NULL, NULL),
(170, 2, 'Project Lead - IT', NULL, NULL, NULL),
(171, 2, 'Project Manager - IT', NULL, NULL, NULL),
(172, 2, 'Quality Assurance Engineer - IT', NULL, NULL, NULL),
(173, 2, 'Software Professional', NULL, NULL, NULL),
(174, 2, 'UI\\/UX designer', NULL, NULL, NULL),
(175, 2, 'Web\\/Graphic Designer', NULL, NULL, NULL),
(176, 2, 'Top Manage ', NULL, NULL, NULL),
(177, 2, 'CxO/ Chairman/ President/ Director', NULL, NULL, NULL),
(178, 2, 'VP/ AVP/ GM/ DGM', NULL, NULL, NULL),
(179, 2, 'Agent', NULL, NULL, NULL),
(180, 2, 'Artist', NULL, NULL, NULL),
(181, 2, 'Broker', NULL, NULL, NULL),
(182, 2, 'Fitness Professional', NULL, NULL, NULL),
(183, 2, 'Interior Designer', NULL, NULL, NULL),
(184, 2, 'Politician', NULL, NULL, NULL),
(185, 2, 'Security Professional', NULL, NULL, NULL),
(186, 2, 'Social Services\\/ NGO\\/ Volunteer', NULL, NULL, NULL),
(187, 2, 'Others', NULL, NULL, NULL),
(188, 3, 'Civil Services', NULL, NULL, NULL),
(189, 4, 'Admin Professional', NULL, NULL, NULL),
(190, 4, 'Clerk', NULL, NULL, NULL),
(191, 4, 'Operator\\/Technician', NULL, NULL, NULL),
(192, 4, 'Airline & Aviation', NULL, NULL, NULL),
(193, 4, 'Airline Professional', NULL, NULL, NULL),
(194, 4, 'Pilot', NULL, NULL, NULL),
(195, 4, 'Armed Forces', NULL, NULL, NULL),
(196, 4, 'Air Force', NULL, NULL, NULL),
(197, 4, 'Army', NULL, NULL, NULL),
(198, 4, 'Defence Services', NULL, NULL, NULL),
(199, 4, 'Navy', NULL, NULL, NULL),
(200, 4, 'Doctor', NULL, NULL, NULL),
(201, 4, 'Dentist', NULL, NULL, NULL),
(202, 4, 'Doctor', NULL, NULL, NULL),
(203, 4, 'Surgeon', NULL, NULL, NULL),
(204, 4, 'Education & Training', NULL, NULL, NULL),
(205, 4, 'Education Professional', NULL, NULL, NULL),
(206, 4, 'Educational Institution Owner', NULL, NULL, NULL),
(207, 4, 'Librarian', NULL, NULL, NULL),
(208, 4, 'Professor\\/Lecturer', NULL, NULL, NULL),
(209, 4, 'Research Assistant', NULL, NULL, NULL),
(210, 4, 'Teacher', NULL, NULL, NULL),
(211, 4, 'Engineering', NULL, NULL, NULL),
(212, 4, 'Electronics Engineer', NULL, NULL, NULL),
(213, 4, 'Hardware\\/Telecom Engineer', NULL, NULL, NULL),
(214, 4, 'Non \\u2013 IT Engineer', NULL, NULL, NULL),
(215, 4, 'Quality Assurance Engineer', NULL, NULL, NULL),
(216, 4, 'Law Enforcement Officer', NULL, NULL, NULL),
(217, 4, 'Police', NULL, NULL, NULL),
(218, 4, 'Lawyer & Legal Professional', NULL, NULL, NULL),
(219, 4, 'Merchant Navy', NULL, NULL, NULL),
(220, 4, 'Mariner', NULL, NULL, NULL),
(221, 4, 'Merchant Naval Officer', NULL, NULL, NULL),
(222, 4, 'Other Medical & Healthcare', NULL, NULL, NULL),
(223, 4, 'Medical\\/ Healthcare Professional', NULL, NULL, NULL),
(224, 4, 'Nurse', NULL, NULL, NULL),
(225, 4, 'Paramedic', NULL, NULL, NULL),
(226, 4, 'Pharmacist', NULL, NULL, NULL),
(227, 4, 'Physiotherapist', NULL, NULL, NULL),
(228, 4, 'Psychologist', NULL, NULL, NULL),
(229, 4, 'Veterinary doctor', NULL, NULL, NULL),
(230, 4, 'Science & Research', NULL, NULL, NULL),
(231, 4, 'Research Professional', NULL, NULL, NULL),
(232, 4, 'Science Professional', NULL, NULL, NULL),
(233, 4, 'Scientist', NULL, NULL, NULL),
(234, 4, 'Cyber\\/Network Security', NULL, NULL, NULL),
(235, 4, 'Quality Assurance Engineer - IT', NULL, NULL, NULL),
(236, 4, 'Software Professional', NULL, NULL, NULL),
(237, 5, 'Actor\\/Model', NULL, NULL, NULL),
(238, 5, 'Advertising Professional', NULL, NULL, NULL),
(239, 5, 'Film/ Entertainment Professional', NULL, NULL, NULL),
(240, 5, 'Media Professional', NULL, NULL, NULL),
(241, 5, 'Agriculture Professional', NULL, NULL, NULL),
(242, 5, 'Farming', NULL, NULL, NULL),
(243, 5, 'Architect', NULL, NULL, NULL),
(244, 5, 'Chartered accountant', NULL, NULL, NULL),
(245, 5, 'Subject Matter Expert', NULL, NULL, NULL),
(246, 5, 'Dentist', NULL, NULL, NULL),
(247, 5, 'Doctor', NULL, NULL, NULL),
(248, 5, 'Surgeon', NULL, NULL, NULL),
(249, 5, 'Education Professional', NULL, NULL, NULL),
(250, 5, 'Educational Institution Owner', NULL, NULL, NULL),
(251, 5, 'Librarian', NULL, NULL, NULL),
(252, 5, 'Professor\\/Lecturer', NULL, NULL, NULL),
(253, 5, 'Research Assistant', NULL, NULL, NULL),
(254, 5, 'Teacher', NULL, NULL, NULL),
(255, 5, 'Hotels/Hospitality Professional', NULL, NULL, NULL),
(256, 5, 'Lawyer & Legal Professional', NULL, NULL, NULL),
(257, 5, 'Medical/ Healthcare Professional', NULL, NULL, NULL),
(258, 5, 'Nurse', NULL, NULL, NULL),
(259, 5, 'Paramedic', NULL, NULL, NULL),
(260, 5, 'Pharmacist', NULL, NULL, NULL),
(261, 5, 'Physiotherapist', NULL, NULL, NULL),
(262, 5, 'Psychologist', NULL, NULL, NULL),
(263, 5, 'Veterinary doctor', NULL, NULL, NULL),
(264, 5, 'Research Professional', NULL, NULL, NULL),
(265, 5, 'Science Professional', NULL, NULL, NULL),
(266, 5, 'Scientist', NULL, NULL, NULL),
(267, 5, 'Animator', NULL, NULL, NULL),
(268, 5, 'CxO/ Chairman/ President/ Director', NULL, NULL, NULL),
(269, 5, 'VP/ AVP/ GM/ DGM', NULL, NULL, NULL),
(270, 5, 'Agent', NULL, NULL, NULL),
(271, 5, 'Artist', NULL, NULL, NULL),
(272, 5, 'Beautician', NULL, NULL, NULL),
(273, 5, 'Broker', NULL, NULL, NULL),
(274, 5, 'Business Owner/ Entrepreneur', NULL, NULL, NULL),
(275, 5, 'Businessperson', NULL, NULL, NULL),
(276, 5, 'Fashion Designer', NULL, NULL, NULL),
(277, 5, 'Fitness Professional', NULL, NULL, NULL),
(278, 5, 'Interior Designer', NULL, NULL, NULL),
(279, 5, 'Singer', NULL, NULL, NULL),
(280, 5, 'Social Services/ NGO/ Volunteer', NULL, NULL, NULL),
(281, 5, 'Sportsperson', NULL, NULL, NULL),
(282, 5, 'Travel Professional', NULL, NULL, NULL),
(283, 5, 'Writer', NULL, NULL, NULL),
(284, 5, 'Others', NULL, NULL, NULL),
(285, 6, 'Looking for job', NULL, NULL, NULL),
(286, 6, 'Not working', NULL, NULL, NULL),
(287, 6, 'Retired', NULL, NULL, NULL),
(288, 6, 'Student', NULL, NULL, NULL),
(289, 1, 'pp Service', '1', '2023-09-30 13:43:00', '2023-09-30 13:47:50');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profile_fors`
--

CREATE TABLE `profile_fors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profile_for` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profile_fors`
--

INSERT INTO `profile_fors` (`id`, `profile_for`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Self', 1, NULL, NULL),
(2, 'Son', 1, NULL, NULL),
(3, 'Daughter', 1, NULL, NULL),
(4, 'Sister', 1, NULL, NULL),
(5, 'Brother', 1, NULL, NULL),
(6, 'Relative/Friend', 1, NULL, NULL),
(7, 'Other(Gender)', 1, NULL, NULL),
(8, 'Male', 1, NULL, NULL),
(9, 'Female', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rashis`
--

CREATE TABLE `rashis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rashi` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rashis`
--

INSERT INTO `rashis` (`id`, `rashi`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Don\'t Know', '1', NULL, NULL),
(2, 'Aries', '1', NULL, NULL),
(3, 'Taurus', '1', NULL, NULL),
(4, 'Gemini', '1', NULL, NULL),
(5, 'Cancer', '1', NULL, NULL),
(6, 'Leo', '1', NULL, NULL),
(7, 'Virgo', '1', NULL, NULL),
(8, 'Libra', '1', NULL, NULL),
(9, 'Scorpio', '1', NULL, NULL),
(10, 'Sagittarius', '1', NULL, NULL),
(11, 'Capricorn', '1', NULL, NULL),
(12, 'Aquarius', '1', NULL, NULL),
(13, 'Pisces', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `relationships`
--

CREATE TABLE `relationships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `relationship` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `relationships`
--

INSERT INTO `relationships` (`id`, `relationship`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Groom', 1, NULL, NULL),
(2, 'Parent', 1, NULL, NULL),
(3, 'Sibling', 1, NULL, NULL),
(4, 'Relative', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `religions`
--

CREATE TABLE `religions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `religion` varchar(255) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `religions`
--

INSERT INTO `religions` (`id`, `religion`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hindu', NULL, NULL, NULL),
(2, 'Muslim', NULL, NULL, NULL),
(3, 'Jain', NULL, NULL, NULL),
(4, 'Sikh', NULL, NULL, NULL),
(5, 'Christian', NULL, NULL, NULL),
(6, 'Buddhist', NULL, NULL, NULL),
(7, 'Parsi', NULL, NULL, NULL),
(8, 'Bahai', NULL, NULL, NULL),
(9, 'Jewish', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `smoke_habits`
--

CREATE TABLE `smoke_habits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `smoke_habit` varchar(255) NOT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smoke_habits`
--

INSERT INTO `smoke_habits` (`id`, `smoke_habit`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Yes', 1, NULL, NULL),
(2, 'No', 1, NULL, NULL),
(3, 'Occasionally', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `state` varchar(255) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `country_id`, `state`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Andaman and Nicobar Islands', NULL, NULL, NULL),
(2, 1, 'Andhra Pradesh', NULL, NULL, NULL),
(3, 1, 'Arunachal Pradesh', NULL, NULL, NULL),
(4, 1, 'Assam', NULL, NULL, NULL),
(5, 1, 'Bihar', NULL, NULL, NULL),
(6, 1, 'Chandigarh', NULL, NULL, NULL),
(7, 1, 'Chhattisgarh', NULL, NULL, NULL),
(8, 1, 'Dadra and Nagar Haveli and Daman and Diu', NULL, NULL, NULL),
(9, 1, 'Delhi', NULL, NULL, NULL),
(10, 1, 'Goa', NULL, NULL, NULL),
(11, 1, 'Gujarat', NULL, NULL, NULL),
(12, 1, 'Haryana', NULL, NULL, NULL),
(13, 1, 'Himachal Pradesh', NULL, NULL, NULL),
(14, 1, 'Jharkhand', NULL, NULL, NULL),
(15, 1, 'Karnataka', NULL, NULL, NULL),
(16, 1, 'Kerala', NULL, NULL, NULL),
(17, 1, 'Lakshadweep', NULL, NULL, NULL),
(18, 1, 'Madhya Pradesh', NULL, NULL, NULL),
(19, 1, 'Maharashtra', NULL, NULL, NULL),
(20, 1, 'Manipur', NULL, NULL, NULL),
(21, 1, 'Meghalaya', NULL, NULL, NULL),
(22, 1, 'Mizoram', NULL, NULL, NULL),
(23, 1, 'Nagaland', NULL, NULL, NULL),
(24, 1, 'Odisha', NULL, NULL, NULL),
(25, 1, 'Puducherry', NULL, NULL, NULL),
(26, 1, 'Punjab', NULL, NULL, NULL),
(27, 1, 'Rajasthan', NULL, NULL, NULL),
(28, 1, 'Sikkim', NULL, NULL, NULL),
(29, 1, 'Tamil Nadu', NULL, NULL, NULL),
(30, 1, 'Telangana', NULL, NULL, NULL),
(31, 1, 'Tripura', NULL, NULL, NULL),
(32, 1, 'Uttar Pradesh', NULL, NULL, NULL),
(33, 1, 'Uttarakhand', NULL, NULL, NULL),
(34, 1, 'West Bengal', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `personal_team` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_invitations`
--

CREATE TABLE `team_invitations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_user`
--

CREATE TABLE `team_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `telescope_entries`
--

CREATE TABLE `telescope_entries` (
  `sequence` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `batch_id` char(36) NOT NULL,
  `family_hash` varchar(255) DEFAULT NULL,
  `should_display_on_index` tinyint(1) NOT NULL DEFAULT 1,
  `type` varchar(20) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `telescope_entries`
--

INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(1, '9a525417-6230-4fa4-963f-77da8bc0bd79', '9a525417-f1ed-4221-9a28-aa4a2365af0c', '17a92343ebb7a6827eb09e92538926d2', 0, 'exception', '{\"class\":\"Illuminate\\\\Database\\\\QueryException\",\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\",\"line\":801,\"message\":\"SQLSTATE[42000]: Syntax error or access violation: 1166 Incorrect column name \'language_speak \' (Connection: mysql, SQL: create table `lifestyles` (`id` bigint unsigned not null auto_increment primary key, `dietary_habit` varchar(255) not null, `drinking_habit` varchar(255) not null, `smoking_habit` varchar(255) not null, `challenge` varchar(255) not null, `open_to_pet` varchar(255) not null, `own_house` varchar(255) not null, `own_car` varchar(255) not null, `language_speak ` varchar(255) not null, `hiv+` varchar(255) not null, `thalassemia` varchar(255) not null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\')\",\"context\":null,\"trace\":[{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\",\"line\":755},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\",\"line\":569},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Schema\\\\Blueprint.php\",\"line\":110},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Schema\\\\Builder.php\",\"line\":439},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Schema\\\\Builder.php\",\"line\":281},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Support\\\\Facades\\\\Facade.php\",\"line\":353},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\database\\\\migrations\\\\2023_09_18_112030_create_lifestyles_table.php\",\"line\":14},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":493},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":410},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":419},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":216},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Console\\\\View\\\\Components\\\\Task.php\",\"line\":37},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":756},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":216},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":181},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":124},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Console\\\\Migrations\\\\MigrateCommand.php\",\"line\":90},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":633},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Console\\\\Migrations\\\\MigrateCommand.php\",\"line\":83},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\BoundMethod.php\",\"line\":36},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\Util.php\",\"line\":41},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\BoundMethod.php\",\"line\":93},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\BoundMethod.php\",\"line\":35},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\Container.php\",\"line\":662},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Console\\\\Command.php\",\"line\":211},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\symfony\\\\console\\\\Command\\\\Command.php\",\"line\":326},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Console\\\\Command.php\",\"line\":180},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":1081},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":320},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":174},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Console\\\\Kernel.php\",\"line\":201},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35}],\"line_preview\":{\"792\":\"        \\/\\/ message to include the bindings with SQL, which will make this exception a\",\"793\":\"        \\/\\/ lot more helpful to the developer instead of just the database\'s errors.\",\"794\":\"        catch (Exception $e) {\",\"795\":\"            if ($this->isUniqueConstraintError($e)) {\",\"796\":\"                throw new UniqueConstraintViolationException(\",\"797\":\"                    $this->getName(), $query, $this->prepareBindings($bindings), $e\",\"798\":\"                );\",\"799\":\"            }\",\"800\":\"\",\"801\":\"            throw new QueryException(\",\"802\":\"                $this->getName(), $query, $this->prepareBindings($bindings), $e\",\"803\":\"            );\",\"804\":\"        }\",\"805\":\"    }\",\"806\":\"\",\"807\":\"    \\/**\",\"808\":\"     * Determine if the given database exception was caused by a unique constraint violation.\",\"809\":\"     *\",\"810\":\"     * @param  \\\\Exception  $exception\",\"811\":\"     * @return bool\"},\"hostname\":\"DESKTOP-LFS5PVP\",\"occurrences\":1}', '2023-10-08 16:51:28'),
(2, '9a525416-cc12-4a9c-ab45-730c1d7f62e0', '9a525417-f1ed-4221-9a28-aa4a2365af0c', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from information_schema.tables where table_schema = \'matrimony\' and table_name = \'migrations\' and table_type = \'BASE TABLE\'\",\"time\":\"6.78\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"ad7d07e5104cadcc6e9623dfc5fefdd8\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:51:27'),
(3, '9a525416-dab0-4ca7-b4e8-f5309826a6d2', '9a525417-f1ed-4221-9a28-aa4a2365af0c', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from information_schema.tables where table_schema = \'matrimony\' and table_name = \'migrations\' and table_type = \'BASE TABLE\'\",\"time\":\"15.69\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"ad7d07e5104cadcc6e9623dfc5fefdd8\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:51:27'),
(4, '9a525416-de73-446f-869f-155ea4ea57ff', '9a525417-f1ed-4221-9a28-aa4a2365af0c', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `migration` from `migrations` order by `batch` asc, `migration` asc\",\"time\":\"0.95\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"ed08a59c7f0b8851f0fd2291ca94d5c7\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:51:27'),
(5, '9a525416-e1dc-4d7b-bcb8-530bc07f7047', '9a525417-f1ed-4221-9a28-aa4a2365af0c', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `migration` from `migrations` order by `batch` asc, `migration` asc\",\"time\":\"1.50\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"ed08a59c7f0b8851f0fd2291ca94d5c7\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:51:27'),
(6, '9a525416-e891-4fcb-8485-38c4dc824766', '9a525417-f1ed-4221-9a28-aa4a2365af0c', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select max(`batch`) as aggregate from `migrations`\",\"time\":\"1.20\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"06e60d7b3d1a0c2de504de4e6f27735e\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:51:27'),
(7, '9a525416-fd05-446e-abad-cbe0514b7f20', '9a525417-f1ed-4221-9a28-aa4a2365af0c', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `telescope_entries` (`sequence` bigint unsigned not null auto_increment primary key, `uuid` char(36) not null, `batch_id` char(36) not null, `family_hash` varchar(255) null, `should_display_on_index` tinyint(1) not null default \'1\', `type` varchar(20) not null, `content` longtext not null, `created_at` datetime null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"22.27\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"d9429550f8856c1af1c89f24a6440cb5\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:51:27'),
(8, '9a525417-0874-4957-a96b-d0cccb64285a', '9a525417-f1ed-4221-9a28-aa4a2365af0c', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add unique `telescope_entries_uuid_unique`(`uuid`)\",\"time\":\"28.50\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"9fb859ae1faff74c6b9e0b70dfd8eea9\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:51:27'),
(9, '9a525417-112c-43b9-ac37-38c083c5a089', '9a525417-f1ed-4221-9a28-aa4a2365af0c', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add index `telescope_entries_batch_id_index`(`batch_id`)\",\"time\":\"21.52\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"2b075509a9242d6e3f622536c5ccca07\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:51:27'),
(10, '9a525417-1777-4178-ada1-47b9e373d42e', '9a525417-f1ed-4221-9a28-aa4a2365af0c', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add index `telescope_entries_family_hash_index`(`family_hash`)\",\"time\":\"14.70\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"3d25a2a244bd2028dfa0326d3dbf7f4c\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:51:27'),
(11, '9a525417-1cde-4379-95bf-c6c002023b51', '9a525417-f1ed-4221-9a28-aa4a2365af0c', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add index `telescope_entries_created_at_index`(`created_at`)\",\"time\":\"13.09\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"7352e7f84460fb7ffc450e7ea4de9dc7\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:51:27'),
(12, '9a525417-21f1-4802-81be-b22577998e3e', '9a525417-f1ed-4221-9a28-aa4a2365af0c', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries` add index `telescope_entries_type_should_display_on_index_index`(`type`, `should_display_on_index`)\",\"time\":\"12.25\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"7317a4cad2dfa1a5167548a6acd0b6a5\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:51:27'),
(13, '9a525417-2844-468a-9642-9e1f429c06a0', '9a525417-f1ed-4221-9a28-aa4a2365af0c', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `telescope_entries_tags` (`entry_uuid` char(36) not null, `tag` varchar(255) not null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"14.65\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"5ed47d3cfcd3051674e3cb7b613f0fba\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:51:27'),
(14, '9a525417-2e98-4870-8abf-28c57c740467', '9a525417-f1ed-4221-9a28-aa4a2365af0c', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries_tags` add index `telescope_entries_tags_entry_uuid_tag_index`(`entry_uuid`, `tag`)\",\"time\":\"15.36\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"d77cdf5585b51f60954d40e76786e20f\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:51:28'),
(15, '9a525417-357d-4f02-9c09-9755441a4893', '9a525417-f1ed-4221-9a28-aa4a2365af0c', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries_tags` add index `telescope_entries_tags_tag_index`(`tag`)\",\"time\":\"16.83\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"0bdb35d17e876d6225a7774a2c17647d\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:51:28'),
(16, '9a525417-49b6-4600-b180-8727ef88a2b9', '9a525417-f1ed-4221-9a28-aa4a2365af0c', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `telescope_entries_tags` add constraint `telescope_entries_tags_entry_uuid_foreign` foreign key (`entry_uuid`) references `telescope_entries` (`uuid`) on delete cascade\",\"time\":\"50.94\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"662a818f80a3a9ba2570081fd7a6af2f\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:51:28'),
(17, '9a525417-4ef4-4090-994c-f945fab1b0fc', '9a525417-f1ed-4221-9a28-aa4a2365af0c', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `telescope_monitoring` (`tag` varchar(255) not null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"12.50\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"8cddf327ba1b3bd52637b409200a4c1f\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:51:28'),
(18, '9a525417-5193-41cb-954c-58f695a8dccd', '9a525417-f1ed-4221-9a28-aa4a2365af0c', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2018_08_08_100000_create_telescope_entries_table\', 41)\",\"time\":\"1.47\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:51:28'),
(19, '9a525417-54f0-474e-b1ef-0223fa7d755a', '9a525417-f1ed-4221-9a28-aa4a2365af0c', NULL, 1, 'command', '{\"command\":\"migrate\",\"exit_code\":1,\"arguments\":{\"command\":\"migrate\"},\"options\":{\"database\":null,\"force\":false,\"path\":[],\"realpath\":false,\"schema-path\":null,\"pretend\":false,\"seed\":false,\"seeder\":null,\"step\":false,\"isolated\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:51:28'),
(20, '9a52541e-6677-4008-b0a1-ebfb799e577c', '9a52541e-8218-4e4d-b75e-57506f85bc55', '17a92343ebb7a6827eb09e92538926d2', 0, 'exception', '{\"class\":\"Illuminate\\\\Database\\\\QueryException\",\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\",\"line\":801,\"message\":\"SQLSTATE[42000]: Syntax error or access violation: 1166 Incorrect column name \'language_speak \' (Connection: mysql, SQL: create table `lifestyles` (`id` bigint unsigned not null auto_increment primary key, `dietary_habit` varchar(255) not null, `drinking_habit` varchar(255) not null, `smoking_habit` varchar(255) not null, `challenge` varchar(255) not null, `open_to_pet` varchar(255) not null, `own_house` varchar(255) not null, `own_car` varchar(255) not null, `language_speak ` varchar(255) not null, `hiv+` varchar(255) not null, `thalassemia` varchar(255) not null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\')\",\"context\":null,\"trace\":[{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\",\"line\":755},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\",\"line\":569},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Schema\\\\Blueprint.php\",\"line\":110},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Schema\\\\Builder.php\",\"line\":439},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Schema\\\\Builder.php\",\"line\":281},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Support\\\\Facades\\\\Facade.php\",\"line\":353},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\database\\\\migrations\\\\2023_09_18_112030_create_lifestyles_table.php\",\"line\":14},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":493},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":410},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":419},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":216},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Console\\\\View\\\\Components\\\\Task.php\",\"line\":37},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":756},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":216},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":181},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":124},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Console\\\\Migrations\\\\MigrateCommand.php\",\"line\":90},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":633},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Console\\\\Migrations\\\\MigrateCommand.php\",\"line\":83},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\BoundMethod.php\",\"line\":36},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\Util.php\",\"line\":41},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\BoundMethod.php\",\"line\":93},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\BoundMethod.php\",\"line\":35},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\Container.php\",\"line\":662},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Console\\\\Command.php\",\"line\":211},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\symfony\\\\console\\\\Command\\\\Command.php\",\"line\":326},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Console\\\\Command.php\",\"line\":180},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":1081},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":320},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":174},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Console\\\\Kernel.php\",\"line\":201},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35}],\"line_preview\":{\"792\":\"        \\/\\/ message to include the bindings with SQL, which will make this exception a\",\"793\":\"        \\/\\/ lot more helpful to the developer instead of just the database\'s errors.\",\"794\":\"        catch (Exception $e) {\",\"795\":\"            if ($this->isUniqueConstraintError($e)) {\",\"796\":\"                throw new UniqueConstraintViolationException(\",\"797\":\"                    $this->getName(), $query, $this->prepareBindings($bindings), $e\",\"798\":\"                );\",\"799\":\"            }\",\"800\":\"\",\"801\":\"            throw new QueryException(\",\"802\":\"                $this->getName(), $query, $this->prepareBindings($bindings), $e\",\"803\":\"            );\",\"804\":\"        }\",\"805\":\"    }\",\"806\":\"\",\"807\":\"    \\/**\",\"808\":\"     * Determine if the given database exception was caused by a unique constraint violation.\",\"809\":\"     *\",\"810\":\"     * @param  \\\\Exception  $exception\",\"811\":\"     * @return bool\"},\"hostname\":\"DESKTOP-LFS5PVP\",\"occurrences\":2}', '2023-10-08 16:51:32'),
(21, '9a52541e-370f-4ccc-8d22-79543c42f93f', '9a52541e-8218-4e4d-b75e-57506f85bc55', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from information_schema.tables where table_schema = \'matrimony\' and table_name = \'migrations\' and table_type = \'BASE TABLE\'\",\"time\":\"6.05\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"ad7d07e5104cadcc6e9623dfc5fefdd8\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:51:32'),
(22, '9a52541e-3ddc-4a9e-9c1f-2cd5b25d76bf', '9a52541e-8218-4e4d-b75e-57506f85bc55', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from information_schema.tables where table_schema = \'matrimony\' and table_name = \'migrations\' and table_type = \'BASE TABLE\'\",\"time\":\"0.96\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"ad7d07e5104cadcc6e9623dfc5fefdd8\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:51:32'),
(23, '9a52541e-41ae-4a14-832d-e55723a71ebc', '9a52541e-8218-4e4d-b75e-57506f85bc55', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `migration` from `migrations` order by `batch` asc, `migration` asc\",\"time\":\"1.86\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"ed08a59c7f0b8851f0fd2291ca94d5c7\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:51:32'),
(24, '9a52541e-44d8-4fb1-894c-cfe372d9d769', '9a52541e-8218-4e4d-b75e-57506f85bc55', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `migration` from `migrations` order by `batch` asc, `migration` asc\",\"time\":\"0.94\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"ed08a59c7f0b8851f0fd2291ca94d5c7\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:51:32'),
(25, '9a52541e-4a97-49e9-8154-1a67c3d81b0c', '9a52541e-8218-4e4d-b75e-57506f85bc55', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select max(`batch`) as aggregate from `migrations`\",\"time\":\"0.72\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"06e60d7b3d1a0c2de504de4e6f27735e\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:51:32'),
(26, '9a52541e-56ee-4b63-852a-680cc65e7802', '9a52541e-8218-4e4d-b75e-57506f85bc55', NULL, 1, 'command', '{\"command\":\"migrate\",\"exit_code\":1,\"arguments\":{\"command\":\"migrate\"},\"options\":{\"database\":null,\"force\":false,\"path\":[],\"realpath\":false,\"schema-path\":null,\"pretend\":false,\"seed\":false,\"seeder\":null,\"step\":false,\"isolated\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:51:32'),
(27, '9a525430-7b46-4925-880b-09c9e2803ee6', '9a525430-b08f-4391-8d80-e1a6cfc45884', '17a92343ebb7a6827eb09e92538926d2', 1, 'exception', '{\"class\":\"Illuminate\\\\Database\\\\QueryException\",\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\",\"line\":801,\"message\":\"SQLSTATE[42000]: Syntax error or access violation: 1166 Incorrect column name \'language_speak \' (Connection: mysql, SQL: create table `lifestyles` (`id` bigint unsigned not null auto_increment primary key, `dietary_habit` varchar(255) not null, `drinking_habit` varchar(255) not null, `smoking_habit` varchar(255) not null, `challenge` varchar(255) not null, `open_to_pet` varchar(255) not null, `own_house` varchar(255) not null, `own_car` varchar(255) not null, `language_speak ` varchar(255) not null, `hiv+` varchar(255) not null, `thalassemia` varchar(255) not null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\')\",\"context\":null,\"trace\":[{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\",\"line\":755},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Connection.php\",\"line\":569},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Schema\\\\Blueprint.php\",\"line\":110},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Schema\\\\Builder.php\",\"line\":439},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Schema\\\\Builder.php\",\"line\":281},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Support\\\\Facades\\\\Facade.php\",\"line\":353},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\database\\\\migrations\\\\2023_09_18_112030_create_lifestyles_table.php\",\"line\":14},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":493},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":410},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":419},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":216},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Console\\\\View\\\\Components\\\\Task.php\",\"line\":37},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":756},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":216},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":181},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":124},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Console\\\\Migrations\\\\MigrateCommand.php\",\"line\":90},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Migrations\\\\Migrator.php\",\"line\":633},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Database\\\\Console\\\\Migrations\\\\MigrateCommand.php\",\"line\":83},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\BoundMethod.php\",\"line\":36},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\Util.php\",\"line\":41},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\BoundMethod.php\",\"line\":93},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\BoundMethod.php\",\"line\":35},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Container\\\\Container.php\",\"line\":662},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Console\\\\Command.php\",\"line\":211},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\symfony\\\\console\\\\Command\\\\Command.php\",\"line\":326},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Console\\\\Command.php\",\"line\":180},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":1081},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":320},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":174},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Console\\\\Kernel.php\",\"line\":201},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35}],\"line_preview\":{\"792\":\"        \\/\\/ message to include the bindings with SQL, which will make this exception a\",\"793\":\"        \\/\\/ lot more helpful to the developer instead of just the database\'s errors.\",\"794\":\"        catch (Exception $e) {\",\"795\":\"            if ($this->isUniqueConstraintError($e)) {\",\"796\":\"                throw new UniqueConstraintViolationException(\",\"797\":\"                    $this->getName(), $query, $this->prepareBindings($bindings), $e\",\"798\":\"                );\",\"799\":\"            }\",\"800\":\"\",\"801\":\"            throw new QueryException(\",\"802\":\"                $this->getName(), $query, $this->prepareBindings($bindings), $e\",\"803\":\"            );\",\"804\":\"        }\",\"805\":\"    }\",\"806\":\"\",\"807\":\"    \\/**\",\"808\":\"     * Determine if the given database exception was caused by a unique constraint violation.\",\"809\":\"     *\",\"810\":\"     * @param  \\\\Exception  $exception\",\"811\":\"     * @return bool\"},\"hostname\":\"DESKTOP-LFS5PVP\",\"occurrences\":3}', '2023-10-08 16:51:44'),
(28, '9a525430-477a-4996-a1c0-4f9330d89284', '9a525430-b08f-4391-8d80-e1a6cfc45884', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from information_schema.tables where table_schema = \'matrimony\' and table_name = \'migrations\' and table_type = \'BASE TABLE\'\",\"time\":\"10.06\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"ad7d07e5104cadcc6e9623dfc5fefdd8\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:51:44'),
(29, '9a525430-514a-4108-bd17-b2758107439a', '9a525430-b08f-4391-8d80-e1a6cfc45884', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from information_schema.tables where table_schema = \'matrimony\' and table_name = \'migrations\' and table_type = \'BASE TABLE\'\",\"time\":\"5.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"ad7d07e5104cadcc6e9623dfc5fefdd8\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:51:44'),
(30, '9a525430-55a9-45f1-845e-898743a57024', '9a525430-b08f-4391-8d80-e1a6cfc45884', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `migration` from `migrations` order by `batch` asc, `migration` asc\",\"time\":\"3.19\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"ed08a59c7f0b8851f0fd2291ca94d5c7\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:51:44'),
(31, '9a525430-58e4-4923-bfc5-4b4ad9f45594', '9a525430-b08f-4391-8d80-e1a6cfc45884', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `migration` from `migrations` order by `batch` asc, `migration` asc\",\"time\":\"1.05\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"ed08a59c7f0b8851f0fd2291ca94d5c7\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:51:44'),
(32, '9a525430-64a1-407f-83ad-a0d1194289f6', '9a525430-b08f-4391-8d80-e1a6cfc45884', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select max(`batch`) as aggregate from `migrations`\",\"time\":\"11.48\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"06e60d7b3d1a0c2de504de4e6f27735e\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:51:44'),
(33, '9a525430-7033-4937-b42d-6c0d0830752a', '9a525430-b08f-4391-8d80-e1a6cfc45884', NULL, 1, 'command', '{\"command\":\"migrate\",\"exit_code\":1,\"arguments\":{\"command\":\"migrate\"},\"options\":{\"database\":null,\"force\":false,\"path\":[],\"realpath\":false,\"schema-path\":null,\"pretend\":false,\"seed\":false,\"seeder\":null,\"step\":false,\"isolated\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:51:44'),
(34, '9a525473-0176-46bd-a4ce-e92e8c4f3ea4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `cities`\",\"time\":\"11.90\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\app\\\\Http\\\\Controllers\\\\admin\\\\countries\\\\CityController.php\",\"line\":19,\"hash\":\"117bd20da4b6a1854062703e35d4c6a4\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(35, '9a525473-0bcb-485c-8d70-7cf076a2247f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\City\",\"count\":1290,\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(36, '9a525473-2f50-4f39-a74f-45be7a9e9882', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'view', '{\"name\":\"admin.countries.states.cities.index\",\"path\":\"\\\\resources\\\\views\\/admin\\/countries\\/states\\/cities\\/index.blade.php\",\"data\":[\"cities\"],\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(37, '9a525473-32f2-4e44-b605-25128452f483', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 1 limit 1\",\"time\":\"1.64\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(38, '9a525473-333c-4acb-b2b2-5f649a4c533d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\State\",\"count\":1290,\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(39, '9a525473-3466-486c-bee8-9361494188ce', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.68\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(40, '9a525473-3564-46bb-9df8-f7cc25907bd5', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.65\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(41, '9a525473-36e6-45f9-b8e4-ba9da531498f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.73\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(42, '9a525473-3951-4cc2-afef-f26af0bdb353', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"3.92\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(43, '9a525473-3a7b-471e-b281-c20a79d3bf7a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.68\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(44, '9a525473-3b6a-4cbf-847e-3ad5b06b38da', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.70\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(45, '9a525473-3ecd-4e07-b0fa-014d6e0c7738', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"3.72\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(46, '9a525473-3fdc-4233-92e2-487792059aac', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"1.16\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(47, '9a525473-41a5-46ba-bf81-39289c300fb1', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.79\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(48, '9a525473-435a-409e-a37b-d6e21190551d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"2.99\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(49, '9a525473-44fd-433f-8ff2-44d7a7d9e542', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"1.39\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(50, '9a525473-45c3-456e-bfdf-050e9129c0aa', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.63\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(51, '9a525473-4685-4b5e-ace9-da3e2e167717', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(52, '9a525473-4794-4833-9353-bed79d70469f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(53, '9a525473-485e-4fe0-a0a6-cf839f3f3de2', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.63\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(54, '9a525473-4a41-4d14-9936-ce8ee56c912f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"1.50\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(55, '9a525473-4b81-43dd-864a-f31cbf3e375e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.73\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(56, '9a525473-4c4a-436e-9091-c9a4e1d48ec4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.65\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(57, '9a525473-4d19-4704-921e-6d931aedf561', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.70\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(58, '9a525473-4de0-4d17-9bb9-4c764e64a7b8', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.64\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(59, '9a525473-4eab-475b-88b5-7298e2071dec', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.69\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(60, '9a525473-4fe3-43f0-ac37-51342d967c3c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"1.78\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(61, '9a525473-51a1-4795-a513-440848cfaf83', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"1.77\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(62, '9a525473-5269-43f2-bb17-804971222d89', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.64\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(63, '9a525473-5331-4ac5-8800-e5f252954665', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(64, '9a525473-5441-4c9e-b684-ac0fdace2c7c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.74\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(65, '9a525473-550b-4840-84c5-2b262d83f793', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(66, '9a525473-567e-413b-bdd6-3c2497d4862f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"1.94\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(67, '9a525473-57de-4547-b0e3-538b0374392c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.72\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(68, '9a525473-58a8-4e3a-adac-6a2f10b1f34d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.65\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(69, '9a525473-596e-452c-9874-a6130110c7ec', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(70, '9a525473-5a31-4437-9adc-457852dc5c01', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(71, '9a525473-5aed-411d-84d8-7f0717826ba5', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(72, '9a525473-5bb0-4600-a899-674084f8a0d8', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.69\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(73, '9a525473-5cf2-4e48-aafd-ee37e2d4e902', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"1.70\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(74, '9a525473-5e0b-42a6-bab6-384422130572', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"1.05\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(75, '9a525473-5ee7-4d89-ae9e-cdc522ce6d02', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.78\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(76, '9a525473-5faa-47d6-ab24-561d795681f3', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.69\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(77, '9a525473-60a1-48a9-8f39-67a931ea2cd3', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.70\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(78, '9a525473-6163-477a-a957-ab10b9dd0126', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.68\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(79, '9a525473-6217-463c-8a7f-9428382e39f6', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.58\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(80, '9a525473-631d-472c-afe5-4a52f8d54f94', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"1.35\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(81, '9a525473-63f6-4170-aea5-631b1e7e684b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.60\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(82, '9a525473-64aa-4f67-9e5f-c5d5b7975075', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(83, '9a525473-6565-42a3-812b-051a32781de2', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.63\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(84, '9a525473-662f-4e3e-89a9-307ad860643d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(85, '9a525473-6703-44c7-be55-a53c5e279623', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.64\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(86, '9a525473-67ba-4342-b771-b0652fcfaec6', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.59\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(87, '9a525473-686c-4858-a7c3-250c25d0dfbe', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(88, '9a525473-6921-446c-abf7-29e09f8116a5', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(89, '9a525473-6b36-4c79-b547-babf78e46b5b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"1.60\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(90, '9a525473-6bed-45ea-8494-001a5456cc40', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(91, '9a525473-6d04-43e3-a614-d7f3d424dfff', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"1.43\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(92, '9a525473-6dc2-4f69-91cb-9b68057f57f4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(93, '9a525473-6e7b-4355-b4ff-3a192142e078', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.63\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(94, '9a525473-6f33-45a8-820a-5b063edf32a7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.63\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(95, '9a525473-712f-4549-b257-ec26ee80b37e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"3.52\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(96, '9a525473-7200-421f-a535-b8aed4c592ef', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.63\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(97, '9a525473-72b5-4105-bee5-8591da3a6e5d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.54\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(98, '9a525473-7362-4bd8-9e0d-45122cccb69b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.52\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(99, '9a525473-740f-42d9-a820-17cf20115899', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.52\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(100, '9a525473-74ba-4098-a230-e06dc72d1e02', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.51\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(101, '9a525473-7565-48ad-ad88-325ab1e0370c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.50\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(102, '9a525473-76a8-4575-af5b-3e5cef35ffe5', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"1.54\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(103, '9a525473-777c-4274-98d7-f62305d6d7ab', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(104, '9a525473-782c-4dff-91bf-af5919f94463', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.54\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(105, '9a525473-78d9-4409-9cac-4f20593966cd', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.51\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(106, '9a525473-7988-4c04-b72e-43f968f71b3e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.51\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(107, '9a525473-7a34-4a6a-813d-49fd95d44660', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.51\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(108, '9a525473-7adf-4919-a9e2-31fd12e3c985', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.50\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(109, '9a525473-7b8c-49d6-be43-1f8268a1fef7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.50\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(110, '9a525473-7c66-42c5-9150-0bd99df19311', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.92\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(111, '9a525473-7d65-4471-a1e2-2c2fc200f236', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(112, '9a525473-7e15-4642-aaa0-067c681dce88', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.54\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(113, '9a525473-7ec2-4e43-b293-dd1bcb33562b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.53\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(114, '9a525473-7f70-44c1-b5c1-3885e35b8880', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.51\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(115, '9a525473-801b-4787-9558-ff7c6a7f6915', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.51\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(116, '9a525473-80d7-4bd5-88b7-f9e90197df3b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.58\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(117, '9a525473-8198-44ef-a4d6-1569fcd51ee3', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.63\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(118, '9a525473-82c7-48bb-8b6e-ec7efdc0da23', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"1.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(119, '9a525473-84a1-404c-bcb5-6f882304f7fe', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"2.50\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(120, '9a525473-8599-4288-834e-2b7e46e14f11', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.80\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(121, '9a525473-869b-49bb-ba1e-65e790f17d57', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 2 limit 1\",\"time\":\"0.68\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(122, '9a525473-8767-41b8-89c9-b60a888158e3', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 3 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(123, '9a525473-8823-41a4-b95a-f865e955e84e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 3 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(124, '9a525473-88da-480f-8e3f-16a9111a4228', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 4 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(125, '9a525473-8997-4902-b09b-1ef5e69a7b42', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 4 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(126, '9a525473-8b58-46ce-8ba1-dbd4224a0cb7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 4 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(127, '9a525473-8c26-4cee-a935-feb79da39b90', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 4 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(128, '9a525473-8cde-4f4d-88ac-1c5cf6450fdf', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 4 limit 1\",\"time\":\"0.60\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(129, '9a525473-8d92-4390-8983-1495a845c5e4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 4 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(130, '9a525473-8e46-4452-bf25-3bff7b8c52dd', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 4 limit 1\",\"time\":\"0.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(131, '9a525473-8f39-4cbe-aff2-3eae54b595f8', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 4 limit 1\",\"time\":\"1.17\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(132, '9a525473-9007-4822-8ed8-ac5735aeb8d7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 4 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(133, '9a525473-912d-4099-a4a3-29a17ae93515', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 4 limit 1\",\"time\":\"0.63\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(134, '9a525473-9208-4602-a9db-ece8942fae39', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 4 limit 1\",\"time\":\"0.75\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(135, '9a525473-92ee-4bec-8140-fdea2cf62f82', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 4 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(136, '9a525473-93a9-4664-b910-4c7aa304c030', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 4 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(137, '9a525473-9460-4914-a835-d2999498f6c5', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 4 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(138, '9a525473-9516-4c09-84d8-8e1eaf313019', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 4 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(139, '9a525473-95e0-495b-8d08-0fc85fe4c824', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 4 limit 1\",\"time\":\"0.65\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(140, '9a525473-9695-48ea-9656-a77e7c1fac2e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 4 limit 1\",\"time\":\"0.58\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(141, '9a525473-97b7-41c4-be64-11651c0ab1c3', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 4 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(142, '9a525473-987d-424b-8cf4-a9d74f474f98', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 4 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(143, '9a525473-993d-4687-bd8e-7fa161a50a9b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 4 limit 1\",\"time\":\"0.65\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(144, '9a525473-99f8-49aa-9406-f81c60e9bfec', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 4 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(145, '9a525473-9ab0-4b91-a44a-c2595fc0b1df', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 4 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(146, '9a525473-9b9b-4046-9d22-8398bccd5da5', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 4 limit 1\",\"time\":\"1.12\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(147, '9a525473-9c69-431e-be31-0b08cba666f5', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 4 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(148, '9a525473-9d21-49a3-81f6-7345dec5ee29', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 4 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(149, '9a525473-9f36-4a95-b5d3-1cc847a70ea6', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"1.65\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(150, '9a525473-a000-4326-b9e9-88de25604169', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.68\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(151, '9a525473-a0bf-475f-8d22-a09e3f4ec6c6', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.64\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(152, '9a525473-a178-4237-b25c-508f9e2061fe', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.64\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(153, '9a525473-a232-48e6-b954-501cb8e294eb', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.65\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(154, '9a525473-a2ef-4aa3-a690-074cd97cb00a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.63\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(155, '9a525473-a3a6-4e60-8ded-d3e7ff04d46c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(156, '9a525473-a56c-4cb5-bd29-a7241cc9336c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.63\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(157, '9a525473-a624-4454-ba84-0e2f490c02ec', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(158, '9a525473-a6db-450d-98c8-92f456d477f3', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(159, '9a525473-a790-417a-928e-f2e01a5d3ff4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(160, '9a525473-a8aa-4daa-bd4f-e4ebda105f0d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.89\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(161, '9a525473-a95f-4542-b968-8154bbf8ec72', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(162, '9a525473-aa12-4af1-8c3e-e22a7eff1f3d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(163, '9a525473-ab97-47c4-b3c8-14b9f370013d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"1.24\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(164, '9a525473-ac52-4785-9951-08d9197240c0', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(165, '9a525473-ad0a-4c6f-9f7c-95df158e540e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(166, '9a525473-adc1-42fa-906f-4852ba9f6d63', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(167, '9a525473-ae84-447b-804b-cc75fe9ed957', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.72\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(168, '9a525473-af3b-4454-845d-5db35bdf7801', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.59\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(169, '9a525473-aff0-4f09-9fb9-fdc36a083bed', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(170, '9a525473-b0a5-45f4-b42a-d65a09e2d274', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(171, '9a525473-b1b8-4b49-be17-ca6f08d4611a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(172, '9a525473-b273-49ce-81c9-9860cf58e4c7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(173, '9a525473-b32a-4087-8a96-3f6cda22a3d0', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(174, '9a525473-b3e1-4587-aeb0-295333835938', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(175, '9a525473-b502-46e3-a6f1-84aa0178ebd5', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"1.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(176, '9a525473-b5dc-4960-a670-a1c37dcf21b7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.80\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(177, '9a525473-b6a5-46aa-9c20-c2a5448f8e7b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.70\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(178, '9a525473-b7e2-4152-af93-8b89372d0025', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"1.33\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(179, '9a525473-b929-450b-9981-a4476160e151', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.81\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(180, '9a525473-ba02-4616-8770-54c593aa0cc4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.76\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(181, '9a525473-bacf-4367-a6e0-d33159231921', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.77\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(182, '9a525473-bb9e-4760-9f64-02b2e8290c02', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.75\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(183, '9a525473-bc74-4e77-8e30-e17042649fc6', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.73\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(184, '9a525473-bd4e-47d8-9baf-903582d1ec38', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.80\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(185, '9a525473-bf6c-420b-88e8-5f7765168f75', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"4.02\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(186, '9a525473-c049-4761-a450-893749969e6a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.80\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(187, '9a525473-c128-40db-aecc-251e1a435fdf', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.81\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(188, '9a525473-c205-4654-b070-f2330c8edfde', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.80\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(189, '9a525473-c2e6-432f-86da-5ca8d7207712', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.82\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(190, '9a525473-c3ca-47fe-9c42-181d794e23fa', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.84\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(191, '9a525473-c519-4fa1-a0d7-864448f4e53a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"1.93\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(192, '9a525473-c5fa-449a-b36a-1c5999509af7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.81\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(193, '9a525473-c6d8-4638-9a32-b8d7f5ed6dd6', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.80\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(194, '9a525473-c7c0-4c91-95b0-dbae01b3e34a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.84\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(195, '9a525473-c8a2-4035-9c62-ac7726c719d4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.81\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(196, '9a525473-c97f-4c53-a32e-fa9d8039e820', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.81\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(197, '9a525473-ca5c-4246-bad7-3bc3f134f894', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.76\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(198, '9a525473-cb88-479a-a775-eddde5071db0', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"1.07\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(199, '9a525473-cc53-4df3-aa08-d650b493420f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(200, '9a525473-cd0b-4069-8bea-fb57079f3f89', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.54\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(201, '9a525473-cdc6-4952-bb46-69abdc831c91', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.63\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(202, '9a525473-ce7e-40f6-ad97-c775a8a9d12f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(203, '9a525473-cf35-4cb9-b8ca-b29a9365c0c7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(204, '9a525473-cfec-46b0-8954-a836fc8f60dc', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(205, '9a525473-d0a1-4932-ba26-de0d7dd9d374', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(206, '9a525473-d156-4141-b52c-f1ceba495fe0', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(207, '9a525473-d2b4-4c52-8956-5ce1447839ec', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.63\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(208, '9a525473-d369-4f7e-9317-7a9f64125a92', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(209, '9a525473-d41d-419d-9380-0a22464d0887', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(210, '9a525473-d4d0-4dde-ad2e-738236bd60d8', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(211, '9a525473-d584-451d-bd18-70c654f9f1c4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(212, '9a525473-d636-48b3-8e6b-49f7b5e0a1a5', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(213, '9a525473-d6e8-4ef9-8285-e21cd15b92c8', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(214, '9a525473-d79c-4d5e-9cac-6ec9c3a8df26', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(215, '9a525473-d93f-4f46-b451-2dab788ab947', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.77\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(216, '9a525473-d9f2-482b-9028-a7824cc06bab', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(217, '9a525473-daa6-4f99-9939-86b71efe4873', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(218, '9a525473-db57-43a5-b3c5-a01d47ff1aa5', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 5 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(219, '9a525473-dc08-4cc4-bae2-d79681403d43', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 6 limit 1\",\"time\":\"0.54\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(220, '9a525473-dcb9-49cd-b2cc-25740f4b0f98', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 8 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(221, '9a525473-dd69-42ff-80a8-c10d45af83e4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 7 limit 1\",\"time\":\"0.54\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(222, '9a525473-de1a-4a9b-984d-d31a2c024a87', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 7 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(223, '9a525473-df2d-4bf4-8da1-010d6f7c15b8', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 7 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(224, '9a525473-dfe3-4aed-83b1-19658223696b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 7 limit 1\",\"time\":\"0.58\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(225, '9a525473-e099-47e4-b0b9-d62fcc3fb621', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 7 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(226, '9a525473-e152-47b8-a143-167b5cd61966', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 7 limit 1\",\"time\":\"0.60\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(227, '9a525473-e21f-43cf-8c54-f04c4a5c8306', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 7 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(228, '9a525473-e2df-44f9-8394-212efb2263d3', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 7 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(229, '9a525473-e39f-46e0-93b6-1d2b4cf5a4d5', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 7 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(230, '9a525473-e45c-4b4f-8a02-ce6d01334268', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 7 limit 1\",\"time\":\"0.65\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(231, '9a525473-e575-459a-8c64-7aa45084eccd', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 7 limit 1\",\"time\":\"1.54\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(232, '9a525473-e634-4ace-9417-2e08f043c1bf', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 7 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(233, '9a525473-e6f7-457c-957b-f91b5edcdea7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 7 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(234, '9a525473-e7b5-499e-a231-4f50221c32db', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 7 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(235, '9a525473-e875-4a9f-854c-c4278f282d6f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 7 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(236, '9a525473-e934-4f37-a9cb-536fa95248c1', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 7 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(237, '9a525473-e9f3-403b-8245-72135bb11110', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 7 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(238, '9a525473-eab3-4d2d-ae43-d061201ffe21', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 7 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(239, '9a525473-ec71-4bce-98c9-5c27097f84d2', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 7 limit 1\",\"time\":\"2.24\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(240, '9a525473-ed31-48b9-82a4-09f3403674ad', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 9 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(241, '9a525473-edef-4b3d-8c18-fa4bcc06bd07', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 9 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(242, '9a525473-eeaf-442d-b655-9cf16cd7bab4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 10 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(243, '9a525473-ef6d-46a1-b0d6-ef4a74e0a7e2', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 10 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(244, '9a525473-f02b-433d-bbb3-65ca6a6340b4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 10 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(245, '9a525473-f0ea-481f-86fd-d2a607352561', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 10 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(246, '9a525473-f1b1-4816-816f-21f23b4d5943', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 10 limit 1\",\"time\":\"0.72\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(247, '9a525473-f357-4590-8d8d-493316b8bdad', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 10 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(248, '9a525473-f416-44d7-946b-5f75ce4e5b04', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 10 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(249, '9a525473-f4d1-4076-8698-4d01c1c9442c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 10 limit 1\",\"time\":\"0.65\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(250, '9a525473-f58e-4bf1-a753-9a826c08dd68', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 10 limit 1\",\"time\":\"0.65\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(251, '9a525473-f64a-4202-abf0-2bf471f54869', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 10 limit 1\",\"time\":\"0.65\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(252, '9a525473-f706-472e-97fb-fd0df100f242', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 10 limit 1\",\"time\":\"0.65\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(253, '9a525473-f7c2-47af-b471-e1143439f207', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.65\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(254, '9a525473-f8d2-4bd4-9da9-5de29a77d6f9', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.65\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(255, '9a525473-f998-46dc-9d99-dcc6364ca19a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(256, '9a525473-fa57-46de-9b4a-c596292d9442', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(257, '9a525473-fb17-4b86-9dfd-7157ee8af80d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(258, '9a525473-fbd6-43f3-82ad-76dbe3aebaf7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(259, '9a525473-fc97-44be-ad32-f2f8e8c7f467', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(260, '9a525473-fd56-4714-b5f1-a71fc2a833e9', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(261, '9a525473-fe16-4860-8c3e-b4744e5a7678', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(262, '9a525473-fed5-449b-b4fa-3e4586126fb0', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.68\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(263, '9a525473-fff3-480a-8858-4e71345eb921', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.74\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(264, '9a525474-00bc-43f9-b2b6-d2d37209d860', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(265, '9a525474-0187-46b4-8358-b0316638b385', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(266, '9a525474-0256-4234-bfc9-f5c10e656fae', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.69\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(267, '9a525474-031e-4142-800d-68bf186e9821', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(268, '9a525474-03e9-4376-a62f-175bc101157b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.69\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(269, '9a525474-04aa-450c-a0ed-49ca07551476', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(270, '9a525474-0569-4626-9afb-03b98aa5e56c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(271, '9a525474-06d1-4ecc-bee8-2bb91aab8bbc', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(272, '9a525474-078f-4e42-bd90-03147024d1cb', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(273, '9a525474-084c-4e10-97eb-6a00e2df663a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(274, '9a525474-090b-4928-9b78-5e0021d80ead', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(275, '9a525474-09c9-460c-8c27-718670415f3c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(276, '9a525474-0a87-4124-aa95-1c4a9adcceec', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(277, '9a525474-0b44-4fa3-8b17-94d8f80bf25a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(278, '9a525474-0cc1-4886-83c3-86d4ed7ec97b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"1.76\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(279, '9a525474-0da9-43cd-8c69-ff867d99ef76', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(280, '9a525474-0e67-4432-b5a8-7433073ebf2a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(281, '9a525474-0f24-4122-8796-a82be32c093e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(282, '9a525474-0fe0-4400-b919-fbb5ec57abcf', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.65\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(283, '9a525474-109d-4e7b-bae6-517264dadda2', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(284, '9a525474-115b-4ba9-b1f0-170f065eb695', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(285, '9a525474-1218-4e91-9107-7842439118ee', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.65\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(286, '9a525474-1338-48e9-b581-3fd0024273c9', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(287, '9a525474-13fa-4410-a6f4-a780c62b9ccd', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(288, '9a525474-14ba-43f2-9b6b-06b3a4a48ca4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(289, '9a525474-157a-486c-9c9f-783f05ce25ef', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(290, '9a525474-1639-45a5-895a-2871bdfdf586', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(291, '9a525474-16f9-40b3-ad5a-c585eedda25e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.68\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(292, '9a525474-17b8-4af3-9cdd-4ed69e552919', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(293, '9a525474-1878-4af2-b6cf-1897ecc6773d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(294, '9a525474-197e-4432-b4fa-2c853ba2773e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"1.32\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(295, '9a525474-1a3e-4466-b6e8-abc08beae361', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(296, '9a525474-1b02-4219-87dc-ea548f19e774', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(297, '9a525474-1bc4-494a-9189-227b0be73095', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.68\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(298, '9a525474-1c85-401a-ac6c-2e8f2c5c197c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.68\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(299, '9a525474-1d46-445d-a036-dc68b7223600', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.68\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(300, '9a525474-1e1a-47c2-89f2-442ccad252a1', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.70\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(301, '9a525474-1edb-48da-ac15-0dece6d6bff8', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.70\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(302, '9a525474-1fcd-47b2-a453-dc0e021948b7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"1.12\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(303, '9a525474-208f-4017-951c-d11e871125d0', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.69\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(304, '9a525474-214f-47cd-9554-569858ecc263', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.68\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(305, '9a525474-2215-449d-94c5-6585ad824a35', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.72\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(306, '9a525474-2370-4f34-842f-486be5c80390', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"1.90\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(307, '9a525474-2428-4737-801f-a8273ffdd8d4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(308, '9a525474-24dc-45ae-8bf4-0b7d6f256455', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(309, '9a525474-258e-4af5-9dea-89611d22b8a8', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.54\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(310, '9a525474-273f-481d-b439-eedf88c5c3d4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"3.07\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(311, '9a525474-27fd-4536-9780-f0596717081e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(312, '9a525474-28ba-4596-9173-3d173bfc9d9e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(313, '9a525474-2978-4d33-9e2d-a3b3c8097912', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(314, '9a525474-2a35-420b-878e-a89f14a3ab02', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(315, '9a525474-2af2-4f03-832b-cb510906ed6e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.65\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(316, '9a525474-2bb1-4745-91b3-bbac1e3fd3cf', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(317, '9a525474-2c82-425f-aba1-14bc72e3cf98', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.65\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(318, '9a525474-2d9f-46fa-b7d8-ac755ef2acf5', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.74\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(319, '9a525474-2e6a-43e0-8784-7efdd8b705ae', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.69\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(320, '9a525474-2f30-4d36-bbb0-8d8a0a0de0b0', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(321, '9a525474-2ff3-4830-9686-7daa9cd347c9', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.68\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(322, '9a525474-30f4-461d-a8b3-e6b7adfa1c46', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"1.07\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(323, '9a525474-31b4-446e-8173-df16e76e637a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(324, '9a525474-3278-4a9b-8e2a-561032bd2825', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(325, '9a525474-338c-4536-ba87-5de2a7e2a6dd', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 11 limit 1\",\"time\":\"1.51\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(326, '9a525474-344e-46bc-be8d-c8ee89b3e518', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 12 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(327, '9a525474-350d-44df-9c71-c1a7213436c7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 12 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(328, '9a525474-35cd-474f-a7cd-788541281b8f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 12 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(329, '9a525474-368f-4783-823b-0784335f6a9e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 12 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(330, '9a525474-374f-4bd6-80b8-db1a25448614', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 12 limit 1\",\"time\":\"0.65\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(331, '9a525474-380f-4ed4-b8aa-1072b3b261f7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 12 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(332, '9a525474-38ce-4b59-87db-29c9fbb4a24d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 12 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(333, '9a525474-39aa-4e26-bd5f-f5bdf08cd1f7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 12 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(334, '9a525474-3af6-482b-9604-6aadf378d948', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 12 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(335, '9a525474-3bb3-45f9-8a83-7298d97b2be8', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 12 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(336, '9a525474-3c72-4fee-b450-3ac56586556f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 12 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(337, '9a525474-3d31-405f-bf6d-ed7bb45f78d1', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 12 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(338, '9a525474-3df0-48e7-a7ea-1d55a2a9eead', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 12 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:28'),
(339, '9a525474-3ead-43a3-9d16-a90021e6094f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 12 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(340, '9a525474-3f6d-4328-9ad7-94d618ac3292', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 12 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(341, '9a525474-40f8-4dec-a98f-9b102e026475', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 12 limit 1\",\"time\":\"2.38\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(342, '9a525474-41d0-4e82-8619-df4948680f25', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 12 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(343, '9a525474-428c-4721-8de3-bc71f902040d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 12 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(344, '9a525474-4349-4c5f-99b0-1ef6d5285bef', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 12 limit 1\",\"time\":\"0.65\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(345, '9a525474-4406-4840-99ad-f91060c898a8', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 12 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(346, '9a525474-44c2-455b-a330-286eececb036', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 12 limit 1\",\"time\":\"0.65\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(347, '9a525474-457e-42d9-abfd-10c9f225f57d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 12 limit 1\",\"time\":\"0.65\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(348, '9a525474-463a-44ef-ae6a-2b94a774e943', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 12 limit 1\",\"time\":\"0.65\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(349, '9a525474-4754-441e-ba2d-eee334ff9035', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 12 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(350, '9a525474-4813-466e-b884-0f9c08235575', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 12 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(351, '9a525474-48d2-47cd-8bd5-ad47b2723004', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 12 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(352, '9a525474-4992-4900-ae42-2c88bd4e7e70', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 12 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(353, '9a525474-4a51-46ee-b8a4-f540ac5e27fc', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 12 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(354, '9a525474-4b10-46ca-8cfc-f6208ef568dd', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 12 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(355, '9a525474-4bd1-4d56-9fa7-f027e8dd678b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 12 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(356, '9a525474-4c90-4ac6-a1de-10f145578b95', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 12 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(357, '9a525474-4d95-4cef-8cf4-81ede2398e58', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 12 limit 1\",\"time\":\"1.29\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(358, '9a525474-4e56-4928-a35b-2c38809ebda3', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 12 limit 1\",\"time\":\"0.68\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(359, '9a525474-4f15-4939-9990-97b9715517dc', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 12 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(360, '9a525474-4fd4-45b3-9bb5-0180401b2930', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 12 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(361, '9a525474-5094-4e52-aecf-ed9cd58052b8', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 12 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(362, '9a525474-5153-4e5a-bdda-3d0e9e17b9d7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 12 limit 1\",\"time\":\"0.65\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(363, '9a525474-5212-4bd2-b9c8-d5e626c39c46', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(364, '9a525474-52d0-49b7-bb59-b476309fcbd6', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(365, '9a525474-5399-48fa-b68e-207d49081f30', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.65\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(366, '9a525474-54fe-4777-8928-61b839a22920', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.68\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(367, '9a525474-55bd-46e3-bcfa-f138f21523a3', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(368, '9a525474-567b-420b-b47e-5ddfdf4a6e29', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(369, '9a525474-5739-432b-8e52-618cb9bbb07f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(370, '9a525474-57f8-47f6-9fc4-2755b0c2de1d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(371, '9a525474-58b7-4185-a018-8dbc39328f34', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(372, '9a525474-5975-4728-8641-eb124188d905', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(373, '9a525474-5b04-415e-a3b4-c2c830853167', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"2.35\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(374, '9a525474-5bdb-4616-be27-50ecf543e0e1', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(375, '9a525474-5c99-4f1d-b514-778a6ac29044', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(376, '9a525474-5d55-4008-b4fb-644823bcd475', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.65\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(377, '9a525474-5e11-440b-a156-5322797d07c5', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.65\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(378, '9a525474-5ecd-42b4-ad67-cbef0271f50a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(379, '9a525474-5f89-46a4-9489-ae8f3d74d20d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.65\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(380, '9a525474-6046-4215-9dc3-636714a172c0', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(381, '9a525474-6163-4eda-acc0-f3006ca2e2b3', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(382, '9a525474-6222-47ec-9032-6005eb814fc3', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(383, '9a525474-62e6-440b-8176-07c25f28d9fb', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(384, '9a525474-6426-4d81-8411-be24583ac76f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"1.43\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(385, '9a525474-64e6-42c0-a952-b5d1493f8227', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(386, '9a525474-65a7-4145-9455-132360a78f7b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.68\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(387, '9a525474-6686-45c9-a2ab-419ceeae0516', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.78\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(388, '9a525474-67b6-4c0c-8ce7-0713ae10f635', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"1.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(389, '9a525474-687b-4bc2-8302-4415e7111cf7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(390, '9a525474-6939-4877-ae8b-ba33ded040ca', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.65\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(391, '9a525474-69f8-4f88-baf7-c797789dd7b5', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(392, '9a525474-6ab8-4362-9ccc-adfe8ce02244', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(393, '9a525474-6b77-483e-9cc3-f4c000adf13a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(394, '9a525474-6c37-4633-a2c4-23b998b1e2e2', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(395, '9a525474-6cf9-4723-a702-dfb25041af18', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(396, '9a525474-6def-4457-ac6b-33e3b7016c06', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"1.07\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(397, '9a525474-6f3b-4f9a-be07-009f1753f630', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(398, '9a525474-703a-43da-8273-5810d27279a7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"1.27\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(399, '9a525474-710f-48d5-86e4-7370d6eae32a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(400, '9a525474-71d1-4f0e-85c5-8e4915291a35', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.68\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(401, '9a525474-7290-4b64-8731-fc5a1566a149', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(402, '9a525474-738c-45a4-aaa0-fd81517eba0b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.71\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(403, '9a525474-752b-497c-ac1a-13cfd2af5e04', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"2.87\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(404, '9a525474-7617-49ab-9db5-d3997cfc193a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"1.03\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(405, '9a525474-77c9-41d1-a86b-83eb771e32a7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"2.54\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(406, '9a525474-7938-4c0f-b865-f5b5626f28ff', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.93\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(407, '9a525474-7a0c-4c1c-9757-0e761c1cc330', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.79\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(408, '9a525474-7d6e-49be-a042-95585345d332', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"7.32\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(409, '9a525474-7e3e-46a1-83eb-6723814975f8', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.78\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(410, '9a525474-7f04-4fa4-b214-f0efa25514c7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.71\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(411, '9a525474-8004-40d8-9e1a-5d2a6f748b51', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.93\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(412, '9a525474-80d5-4994-a73a-2d23c822e14c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.77\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(413, '9a525474-83f4-4578-80c9-b2f741db82e3', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"4.71\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(414, '9a525474-84d6-4663-99d5-465716d90204', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.81\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(415, '9a525474-85b6-451d-9e42-fe855f794ad4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.81\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(416, '9a525474-8696-48ad-bafc-e762fc3ef0a5', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.82\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(417, '9a525474-8776-491b-b380-c671edb18c2c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.82\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(418, '9a525474-8a9d-4751-b333-c159e1cc7f1f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"3.39\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(419, '9a525474-8b7e-4969-842d-ca66f0148325', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.81\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(420, '9a525474-8c9e-4575-8671-5f986d3ac1c8', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.86\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(421, '9a525474-8d7d-4df6-9812-3aeefecd53ba', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"0.81\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(422, '9a525474-9138-49da-b13b-3bdd75dbcd8e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 13 limit 1\",\"time\":\"8.14\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(423, '9a525474-9224-4b18-a714-35b1f96b23a7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 14 limit 1\",\"time\":\"0.89\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(424, '9a525474-9302-4ae5-b214-7909f6aad355', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 14 limit 1\",\"time\":\"0.79\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(425, '9a525474-93dc-4cbd-b629-3f9268e82380', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 14 limit 1\",\"time\":\"0.79\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(426, '9a525474-9514-492b-99cb-76a7f1d7ae79', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 14 limit 1\",\"time\":\"0.76\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(427, '9a525474-966a-4ee1-a37a-bb5b78bfd683', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 14 limit 1\",\"time\":\"1.44\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(428, '9a525474-97df-416a-ba38-e1c465169f20', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 14 limit 1\",\"time\":\"2.24\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(429, '9a525474-98e9-40b0-8537-747ad644758f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 14 limit 1\",\"time\":\"1.28\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(430, '9a525474-99ba-477c-abf0-da719e48ecda', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 14 limit 1\",\"time\":\"0.72\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(431, '9a525474-9a98-4cdd-8743-3f66599e5bfe', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 14 limit 1\",\"time\":\"0.70\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(432, '9a525474-9bf9-4039-9a4a-9c6356da8730', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 14 limit 1\",\"time\":\"2.15\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(433, '9a525474-9dba-4a36-af9b-2ab04d881d88', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 14 limit 1\",\"time\":\"2.93\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(434, '9a525474-9e8a-4694-b97e-24ecb5324a5d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 14 limit 1\",\"time\":\"0.72\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(435, '9a525474-9f58-47cc-afd4-69e69b9cc18e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 14 limit 1\",\"time\":\"0.71\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(436, '9a525474-a025-4697-a44b-cc38db124950', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 14 limit 1\",\"time\":\"0.71\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(437, '9a525474-a0ef-42fb-a68d-1fb5e12be9c1', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 14 limit 1\",\"time\":\"0.68\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(438, '9a525474-a1b0-4db2-865d-fe7c87671c89', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 14 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(439, '9a525474-a39e-4328-900a-178818691866', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 14 limit 1\",\"time\":\"1.36\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(440, '9a525474-a520-46e2-9959-0db4d554c5b1', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 14 limit 1\",\"time\":\"2.12\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(441, '9a525474-a5ef-4ae2-898d-21f06d10e388', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 14 limit 1\",\"time\":\"0.72\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(442, '9a525474-a6b3-4e2b-b49e-4f5a1fb57358', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 14 limit 1\",\"time\":\"0.69\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(443, '9a525474-a774-4e8b-b90e-66ccc97b9f8f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 14 limit 1\",\"time\":\"0.69\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(444, '9a525474-a831-4fbf-ab75-b4202979ae7d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 14 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(445, '9a525474-aa98-4a02-988e-deabbb3bfafb', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 14 limit 1\",\"time\":\"2.85\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(446, '9a525474-aba3-4bf5-a6c8-a128ddb555c0', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 14 limit 1\",\"time\":\"1.25\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(447, '9a525474-ac67-45c0-b3c3-168f7e92b673', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 14 limit 1\",\"time\":\"0.63\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(448, '9a525474-ad1e-4448-8891-e4c735bd9af8', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 14 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(449, '9a525474-add4-4220-8a85-1da0dae297be', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 14 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(450, '9a525474-ae90-46e5-af39-78bce48bfa9b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(451, '9a525474-b0c3-4e10-a13a-e6fb9fe08d80', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"3.36\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(452, '9a525474-b1aa-4949-ac55-875698f8f7e1', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.93\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(453, '9a525474-b266-45cc-a5cd-fff706252c08', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(454, '9a525474-b31c-46be-852d-6b565ef328b6', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.58\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(455, '9a525474-b3d1-46bd-8bfa-fc8371a1fd66', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(456, '9a525474-b489-4302-bd9f-6772cf8584f7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(457, '9a525474-b56f-4e07-9294-75e97d1b0c15', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(458, '9a525474-b6c9-4d1a-9bad-e0f0903c7dd9', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"1.42\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(459, '9a525474-b7f3-455c-b408-0da7bc6bf9f5', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(460, '9a525474-b8ab-4bbc-bf58-a0741c9c9446', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(461, '9a525474-b95f-461d-8d58-56792ab70a6b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(462, '9a525474-ba11-4cdf-a836-e13802b80e52', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(463, '9a525474-badb-402c-a803-12e0638ea51f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.63\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(464, '9a525474-bba7-4d39-a04a-7127db87b6b6', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(465, '9a525474-bd78-4ab2-a06a-d7710494089c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"1.46\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(466, '9a525474-bef3-4ecb-8697-943db98109ed', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(467, '9a525474-bfae-4e7d-9dc7-bb650a25a006', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(468, '9a525474-c065-4d3f-8451-9f97736fbfbd', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(469, '9a525474-c11c-4aa1-a4f6-e3b2688925b0', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(470, '9a525474-c1d4-43a4-a4db-056643039c6a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(471, '9a525474-c3ba-415d-a666-0fce995fcb47', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"3.60\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(472, '9a525474-c531-4e20-997a-06ea4f604366', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"2.23\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(473, '9a525474-c60f-4601-9297-7b4fb9c0dc09', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.76\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(474, '9a525474-c6e5-4fa5-9a56-4483923b16c4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.77\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(475, '9a525474-c893-47f0-ba5d-707eb3624a3f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"1.79\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(476, '9a525474-ca17-4b7d-b93e-e469f4cf38e4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"1.32\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(477, '9a525474-cbd7-4ae1-94fc-cc9e66fc50db', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"1.00\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(478, '9a525474-ccac-4e23-bd28-0b133c0c2a4d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.69\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(479, '9a525474-cd77-4c42-995a-61d3b9b26dc7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(480, '9a525474-ce3a-4524-bf15-79cac8b72b9e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.63\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(481, '9a525474-cefd-4153-ad09-93481787c960', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.63\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(482, '9a525474-d08b-4ecc-8cd2-404185f2dbbc', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"1.29\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(483, '9a525474-d1e1-4bdf-8bae-206e8491c39e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"1.73\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(484, '9a525474-d2ab-4a01-9ec8-fc9fb71db142', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(485, '9a525474-d372-4042-9528-e62772e6c824', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(486, '9a525474-d46a-4d82-80c7-8cd4f9d7db36', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.69\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(487, '9a525474-d526-40e5-a9b5-8679114245c6', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.60\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(488, '9a525474-d697-40e5-b197-a807351cd6fc', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.58\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(489, '9a525474-d802-4ec0-9bd6-bb6da08a82f9', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"1.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(490, '9a525474-d97e-4bdd-a1e8-9e630da1a75f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"2.09\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(491, '9a525474-da46-46b5-b6d5-e6c0ebc1bad5', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(492, '9a525474-db0d-4b6c-9fe6-f5a19ac2c278', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(493, '9a525474-dbcf-4710-a2d2-2947b2548fbd', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.63\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(494, '9a525474-dd81-40fb-aa25-b22df024dfcd', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"3.06\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(495, '9a525474-df35-4474-9559-3a55ca2de54e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"2.68\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(496, '9a525474-dffa-4d46-9582-211b0d90ff3b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.63\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(497, '9a525474-e100-4ab8-8159-4a725c157610', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.68\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(498, '9a525474-e1c4-4505-9715-653c79497723', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.63\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(499, '9a525474-e284-472f-874c-d108af3927f7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(500, '9a525474-e416-46dc-b908-6551e82f076d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"1.70\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(501, '9a525474-e5a1-4338-bbb3-cf923c8abc26', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"1.91\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(502, '9a525474-e66c-49d2-8d4a-7987adda62f7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.68\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(503, '9a525474-e733-4d17-aaf4-2f21354c906f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.64\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(504, '9a525474-e7f5-429d-96f8-27b78875a02a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.63\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(505, '9a525474-e8b7-42d0-be37-1bb2c25747a1', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(506, '9a525474-e9fe-4ec5-821d-65bce4324734', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"2.00\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(507, '9a525474-eb84-418f-91ce-34b381cf89cd', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"2.26\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(508, '9a525474-ec4e-4c91-bd8b-dcbf99576273', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(509, '9a525474-ed11-4493-8a05-2a11def10f50', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.63\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(510, '9a525474-edcf-4c2d-962a-2d3f4d12f74f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(511, '9a525474-ee86-4fec-861c-e030336e607a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(512, '9a525474-ef3b-4d82-91eb-a269e799cee9', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(513, '9a525474-f095-4f71-8642-d63d6dc9c5b5', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"1.85\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(514, '9a525474-f233-449e-91d1-6432d8a9755f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"2.76\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(515, '9a525474-f2f9-4385-abdf-926b92562188', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.65\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(516, '9a525474-f3b0-40f1-94c5-2d0f250d5c2f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(517, '9a525474-f466-44c4-8a53-47f0fa1cccbf', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(518, '9a525474-f51b-4701-aaa0-a5ffde90729a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(519, '9a525474-f5d1-41e4-8041-d004dd2f7bea', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(520, '9a525474-f759-442d-a45b-770fcc8cad35', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"2.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(521, '9a525474-f8f0-4234-b804-80f9b0d4a5c4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"2.68\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(522, '9a525474-f9ce-498a-8a79-6824d4219d38', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.68\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(523, '9a525474-fa8a-4a55-9025-c538086f5ba4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(524, '9a525474-fb44-4c0b-8b84-5abc6315a055', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(525, '9a525474-fbf9-4939-8d28-769ba202509e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(526, '9a525474-fd32-482a-bdf9-58b9c751561f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"1.02\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(527, '9a525474-fecb-4f02-96ba-f28c86062840', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"2.35\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(528, '9a525474-ff8a-479a-9a25-3249aba0f4ab', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(529, '9a525475-0042-4bd6-bc01-0ea2c13b1aa3', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 15 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(530, '9a525475-00fa-4c2c-bc5d-f0e6aa7e78b7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(531, '9a525475-01b2-4d27-a06d-c1b54e60d0c7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(532, '9a525475-0269-417d-9432-ac1e671b9620', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(533, '9a525475-0322-46ee-815d-2ba124afe735', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"0.63\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(534, '9a525475-046c-4ffd-85f5-59fd36c34b3a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"0.85\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(535, '9a525475-0599-467f-9810-5011712229f7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"1.30\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(536, '9a525475-0683-4630-bbdd-d57a56930ac3', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"0.64\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(537, '9a525475-0739-4ac8-9e01-be2e9fa55034', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"0.58\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(538, '9a525475-07ec-4a51-9777-24c3c7fefe13', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"0.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(539, '9a525475-089f-4c5f-a0d7-8102d95d60b6', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(540, '9a525475-0989-42ac-a7d2-8e67951e2852', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(541, '9a525475-0b04-48b3-b282-1ff193599534', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"0.80\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(542, '9a525475-0cc3-43ba-b80c-880f0e5ef7b0', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"3.09\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(543, '9a525475-0d8f-4a87-b59b-8a384b6b3943', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(544, '9a525475-0e51-4596-8dd9-f65d2aafc284', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"0.65\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(545, '9a525475-0f07-4003-bc87-b418cc2afbd5', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(546, '9a525475-0fbe-4f34-833f-103adce99d78', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(547, '9a525475-112b-4477-baa8-7c9234a7101b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"0.63\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(548, '9a525475-1363-4cbf-81e5-875cdd01e129', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"1.03\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(549, '9a525475-142c-4da1-84c1-e40a897ba01b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(550, '9a525475-14e3-4c43-aef3-1cc1a01ebe18', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(551, '9a525475-15ce-455f-a67a-895edf5108dc', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"1.11\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(552, '9a525475-1687-4eca-ad13-a70901aedce9', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(553, '9a525475-17b9-462b-94b4-01c3dcbc7578', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"0.81\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(554, '9a525475-1b5c-47a1-8585-f664389cbe2f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"6.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(555, '9a525475-1c28-47ea-a6b9-2f1c900aaaa4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(556, '9a525475-1cee-4b50-8392-d1a22bd233cf', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(557, '9a525475-1f64-4d67-902b-9b6c5a34e302', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"4.93\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(558, '9a525475-20be-41a2-9eb9-6f89bc39ce1b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"1.70\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(559, '9a525475-219d-4e52-95bc-cba3be84425c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"0.71\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(560, '9a525475-22a4-4c87-922d-7081de24e430', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"0.72\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(561, '9a525475-2364-4dc1-8d08-6aa3ffb3496b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"0.64\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(562, '9a525475-2541-4ef6-b545-0d259cc1e6b5', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"3.20\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(563, '9a525475-2770-42a9-897a-d3be838f0f32', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"3.71\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(564, '9a525475-283c-4231-b1c7-028717523d06', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"0.68\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(565, '9a525475-2904-4a90-b7a5-01c58fa58234', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(566, '9a525475-29ca-4578-8c60-d22e176b7568', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"0.65\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(567, '9a525475-2b38-4fa4-b295-cba231721555', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"1.89\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(568, '9a525475-2ccd-4b81-a369-77103c5152ef', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"2.22\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(569, '9a525475-2e42-48fa-8332-80981372506d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"2.02\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(570, '9a525475-2f40-49d9-a27c-0320e2d4a7ee', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"0.69\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(571, '9a525475-3008-4d60-ae02-f8b47c1a93bb', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(572, '9a525475-30ca-4309-875d-3487837e26f6', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"0.64\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(573, '9a525475-3286-4dad-a963-a3a03e91a4fa', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"2.05\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(574, '9a525475-33e9-40aa-ba5f-fc687477b96e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"1.82\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(575, '9a525475-34b1-4469-9557-014f8e40256e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"0.63\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(576, '9a525475-356b-4dbe-abe6-9cfd17b9b4ab', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"0.60\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(577, '9a525475-3623-4440-a4ef-6f23568d7d0c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"0.59\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(578, '9a525475-36d7-413e-aaa6-bfc778e95812', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(579, '9a525475-37dd-41f5-9f8d-77691e794216', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"1.01\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(580, '9a525475-3adc-44bc-9422-6881f014b4c4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 16 limit 1\",\"time\":\"5.90\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(581, '9a525475-3bde-4d73-8aad-e9e216e4ec27', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 17 limit 1\",\"time\":\"0.92\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(582, '9a525475-3cbe-4274-b031-ef711dae4746', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 17 limit 1\",\"time\":\"0.80\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(583, '9a525475-3db4-4ac0-8307-c5b8892ec000', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 17 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(584, '9a525475-4131-4bbd-ba74-00e2229b2dd7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 17 limit 1\",\"time\":\"5.78\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(585, '9a525475-421b-4923-bfbc-abea7ca84830', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.81\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(586, '9a525475-42f8-4a83-86eb-983c1a596f2e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.81\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(587, '9a525475-43d3-44a1-84a9-339885ba3e8f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.80\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(588, '9a525475-47e0-461b-9e28-827ff6fecd23', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"8.52\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(589, '9a525475-48c4-42ba-9ec4-ca417c0ba83c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.83\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(590, '9a525475-49a2-40fd-88c1-a88f7e20ec35', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.81\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(591, '9a525475-4a81-43a0-9dfe-7775e8d2f705', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.82\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(592, '9a525475-4d57-450f-9fef-3d713d3092e7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"5.83\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(593, '9a525475-4e3a-4513-86bc-550050427972', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.84\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(594, '9a525475-4f18-49bf-91d1-f837e5d9ec94', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.80\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(595, '9a525475-4ffa-4a06-8a3a-2ffcc55a1886', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.85\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(596, '9a525475-5150-45c6-a7b0-b82f3bbd21b6', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"1.93\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(597, '9a525475-5495-4f0a-ac2a-6ac6030427d3', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"5.58\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(598, '9a525475-5578-4f5f-82db-82d47eed5dfa', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.84\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(599, '9a525475-5645-4586-bf26-eb7667029e8d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.68\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(600, '9a525475-5710-41a7-b668-e44df68897e4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.68\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(601, '9a525475-57d5-4d48-b9df-b771cdb43d82', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(602, '9a525475-5a83-4af1-8650-081a289dfe2b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"3.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(603, '9a525475-5b51-471e-bbbe-8e8d38bf2452', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.70\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(604, '9a525475-5c17-43cb-ad4a-e8930df0f147', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(605, '9a525475-5cd9-48b2-a849-901e44259581', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.63\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(606, '9a525475-5dc2-4cc0-bcb7-491fac356c64', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.99\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(607, '9a525475-5e78-48cf-8e2e-dfbed1d18d05', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.58\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(608, '9a525475-6189-4159-8f5b-25753e3914f0', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"4.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(609, '9a525475-6252-483b-9e69-5ea96c370cb4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.64\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(610, '9a525475-6317-40ff-9737-80262ffb65e4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(611, '9a525475-63d5-4380-af6a-cedfda863017', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.60\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(612, '9a525475-6490-4b19-8785-92f67a31d5c2', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.58\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(613, '9a525475-66e1-4226-ab6a-e4c4a0b2b16a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"4.21\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(614, '9a525475-67b1-4884-9efd-d4b789a16dff', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.70\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(615, '9a525475-6877-4f77-80ad-5da4e1368b0c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(616, '9a525475-693a-4122-8327-4db55dcac175', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.64\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(617, '9a525475-6a38-4fed-834b-8132d26baec8', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"1.27\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(618, '9a525475-6af2-4987-8db7-f8fe3cdba78f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(619, '9a525475-6c1d-4d6e-a382-6a7b6620018e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"1.09\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(620, '9a525475-6eb0-4612-9355-efda51c33527', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"2.41\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(621, '9a525475-6f75-4573-b644-b74492b28e33', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.64\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(622, '9a525475-7037-4aa5-be17-692873b5940d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(623, '9a525475-70eb-4177-8a02-f1426910d6b8', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(624, '9a525475-719f-488d-8e42-9fc322732c5e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(625, '9a525475-7280-4f81-8dc9-bfa96ee69b6a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.98\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(626, '9a525475-750a-488e-bb3b-ae6623462b6e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"3.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(627, '9a525475-75c5-4aa8-b2bb-bb8cc085f067', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(628, '9a525475-76b8-4536-8759-70b9cf118532', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"1.16\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(629, '9a525475-7773-448c-bbf1-e8821d948f34', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.63\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(630, '9a525475-7829-4dd0-964a-92f82e8411c6', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(631, '9a525475-7aa9-41af-a279-188ff2915c93', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"5.14\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(632, '9a525475-7b6c-42e0-ace7-031cc0a4ef23', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(633, '9a525475-7c25-4fd4-b951-e5dbc0001321', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(634, '9a525475-7cdc-4640-a622-a6dc8b16cd3e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(635, '9a525475-7d94-496c-93ad-6412b54622e2', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(636, '9a525475-7e4b-4b51-945c-305d5d4291af', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(637, '9a525475-7f0a-481b-9257-d7027a90cffc', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(638, '9a525475-80bf-46a4-9684-116c3afb7950', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.63\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(639, '9a525475-8177-446f-84b5-635de8dc19a1', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.60\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(640, '9a525475-822f-47d4-adfa-cf82a13527f5', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(641, '9a525475-8313-4cfe-8627-64493f18497d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.94\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(642, '9a525475-83cd-4404-947f-3397a5b0e62a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(643, '9a525475-8487-4c72-a551-a7159dceecac', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(644, '9a525475-853e-4ab4-aeb6-7cd562d4143f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(645, '9a525475-86bc-4296-a7e5-0880fbd8673a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"1.31\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(646, '9a525475-87e0-4525-9591-27e0dbba6e87', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(647, '9a525475-889c-4a4b-910b-802b65cb9559', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.59\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(648, '9a525475-8950-40de-a220-42a342c25aa7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(649, '9a525475-8a03-4b0f-9535-73b5014a25e6', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(650, '9a525475-8ab5-4ddf-9a96-714423951bc5', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(651, '9a525475-8b68-4e2b-bd91-879691032869', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(652, '9a525475-8c94-4c3d-b89b-a629a0567458', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(653, '9a525475-8e2b-41ab-9230-ddb4a306ef15', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"2.27\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(654, '9a525475-8ef5-4a39-9631-5f124c18e1f6', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(655, '9a525475-8fbe-4902-bbbd-d7038113baa8', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(656, '9a525475-9073-4dc7-bbd1-a01e6ab9a22f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(657, '9a525475-9126-4571-ad8a-6582f81f387e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(658, '9a525475-91d9-43b8-a1da-3b467af7c8b4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(659, '9a525475-9361-4e08-928d-60b7f71fc08b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"2.23\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(660, '9a525475-94f7-496c-8b76-e074fbbbdecd', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"2.40\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(661, '9a525475-95bf-4155-8940-8cbb66f42a4b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(662, '9a525475-9689-4ccb-b151-53da8fcfacb7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(663, '9a525475-974b-42ae-ae1e-6d645a2c8cd7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.63\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(664, '9a525475-9802-4795-aa72-092d2bd21253', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(665, '9a525475-98b9-48b7-837b-859f729986c9', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(666, '9a525475-99e3-4ebf-84fb-db3445569bd1', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 18 limit 1\",\"time\":\"1.76\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(667, '9a525475-9a99-4715-b644-4a49218c46fd', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.58\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(668, '9a525475-9b4f-40f5-a135-fb2e8364838c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(669, '9a525475-9c03-459a-8b6a-01bdeddf49ab', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(670, '9a525475-9cb8-4ab9-8224-e093ecd8ca1b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(671, '9a525475-9d6c-41fd-b4cc-bad28fe5cf34', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(672, '9a525475-9e1f-49e9-b21f-c3c2782ebbd3', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(673, '9a525475-9ed3-4f55-ade5-2288e6cb6d69', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(674, '9a525475-9f89-4657-9d5e-10ab9ddfe0a5', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.54\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(675, '9a525475-a099-4f90-9533-22413d74b9ca', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.63\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(676, '9a525475-a157-4493-9cca-b73df6accb80', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(677, '9a525475-a211-4d7b-86ca-d586cc50bd39', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.64\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(678, '9a525475-a2c8-4d28-a4a3-ca08fbfb0ae0', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(679, '9a525475-a37e-44be-a9aa-e4197fc77994', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(680, '9a525475-a441-4e6b-873f-6015ac640402', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.68\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(681, '9a525475-a4ff-463b-8652-7afbed96fcb2', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.68\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(682, '9a525475-a5bf-4a46-b180-685615f55e73', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.69\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(683, '9a525475-a76f-4f05-848b-1e096ec2b453', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"1.05\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(684, '9a525475-a836-453e-868a-df492d137cf5', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.75\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(685, '9a525475-a8fc-4fc6-a5ad-4dbc554f3936', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.73\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(686, '9a525475-aa3c-4890-b395-0ab1eae35ee2', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(687, '9a525475-aaef-40bd-ba18-36e351fb3338', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(688, '9a525475-ab9e-48e2-90de-0934ac823521', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.53\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(689, '9a525475-ac4e-486a-9ef5-a7520d94e491', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(690, '9a525475-adfe-47f6-ace0-763915df436e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.94\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(691, '9a525475-aeb6-4b96-ab43-669a610518cb', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(692, '9a525475-af6a-468a-84df-8ac316b17a9a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(693, '9a525475-b01e-43e4-9104-38a8e86da9c0', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(694, '9a525475-b0d2-4be9-a6e2-28a0b0616bd6', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(695, '9a525475-b186-431c-8d9b-f4c03312ee5a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(696, '9a525475-b239-4704-a191-3a16fcd0ca8e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(697, '9a525475-b2ed-4580-bb26-dd630fe1fc31', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(698, '9a525475-b3fc-4210-82e4-731dc4a095d5', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(699, '9a525475-b4b3-454d-984e-8b2fa3f78a50', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(700, '9a525475-b56a-49df-a0e2-086cfd73a673', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(701, '9a525475-b620-4bc0-b2de-9792794b822d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(702, '9a525475-b6d5-417d-a691-a4b58976d1f5', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(703, '9a525475-b78b-414d-9018-4355888fa160', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(704, '9a525475-b840-43fe-919e-2bbf5536e29c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(705, '9a525475-b8f5-4144-afe0-88279dfdbf29', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(706, '9a525475-b9f3-4e5d-9991-7383f4004d88', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.68\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(707, '9a525475-bab6-4932-9f7a-3b574774532d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(708, '9a525475-bb71-4009-8233-fd2a5a339057', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.59\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(709, '9a525475-bc25-4107-a5ab-fa15afdf1a3a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(710, '9a525475-bcd9-472a-85e9-5c268fa86639', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(711, '9a525475-bd8c-4543-a843-ca29b0d98c6d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(712, '9a525475-be3e-4364-a863-ff7d6ac92c2d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.54\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(713, '9a525475-beef-4af9-8bf5-520e51ea3c1a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(714, '9a525475-bfa0-472d-ae14-6e5ef6d91a3e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(715, '9a525475-c083-491c-a8c8-433e0e486842', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.82\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(716, '9a525475-c1af-40b4-8c25-967244ecf5bc', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(717, '9a525475-c267-41f7-a1d3-15e6c6415ba8', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(718, '9a525475-c31c-44d7-b2f0-f2c776ce3007', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(719, '9a525475-c3d1-4ce9-b0fc-5904993e9e8f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(720, '9a525475-c485-47a6-9d44-6b5147e551f1', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:29'),
(721, '9a525475-c53a-4922-ac67-16e0daf9a596', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(722, '9a525475-c5ef-4679-ad47-a1700305a741', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(723, '9a525475-c6a8-4694-a879-f10f3cc55333', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(724, '9a525475-c84c-40a8-b080-125bb56de5d4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.65\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(725, '9a525475-c905-4871-b890-acd463cae874', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(726, '9a525475-c9b8-42d3-8399-e2d594f3ab3e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(727, '9a525475-ca6b-467d-8ea7-dbbb2f256ff1', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(728, '9a525475-cb1e-4a7a-abcf-0fdd9fe80808', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(729, '9a525475-cbd2-482d-a23e-fe788de0af9c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(730, '9a525475-cc86-4d2e-b6d6-750710a130d9', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(731, '9a525475-cd87-4d08-8ae2-080b65e2d814', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.60\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(732, '9a525475-ce48-4cce-b535-2cfd2e7e006a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.63\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(733, '9a525475-cefd-4f75-be27-cfdee4fa47e1', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.58\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(734, '9a525475-cfb4-4d09-8da7-4f7f6ab23c20', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(735, '9a525475-d066-4766-9655-769f261915ab', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(736, '9a525475-d11b-435c-82d2-f362307297a9', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.58\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(737, '9a525475-d1ce-4f2d-bd54-153d438a21b4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(738, '9a525475-d281-4e0e-9e01-df82b7566a9d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(739, '9a525475-d335-40cb-8964-c02727f92ac7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(740, '9a525475-d438-4263-8aec-7c7faff101bb', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"1.26\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(741, '9a525475-d4eb-4e1d-bfd8-00cb2bb57c75', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(742, '9a525475-d59e-4e5c-806a-bab75eaea5f9', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(743, '9a525475-d651-406e-b577-8a3a19c63f9c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(744, '9a525475-d703-4eef-a8b9-d0ad594d6dc3', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(745, '9a525475-d7b5-41d7-99a9-207f0571589d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(746, '9a525475-d867-41df-b32f-d11f92fdf231', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(747, '9a525475-d919-4c59-ad18-0963d5ce8811', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(748, '9a525475-d9ca-480d-b62c-c3016cf3ca5f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(749, '9a525475-db38-4424-ba24-36e1123c0ce9', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"2.12\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(750, '9a525475-dbef-46d3-b93a-09417664241e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.60\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(751, '9a525475-dca2-479d-8324-94a6b4c8c44a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(752, '9a525475-dd54-4440-bed2-257d3fb42eb7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(753, '9a525475-de06-4c5c-bfab-a6a7bbe217ce', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(754, '9a525475-deb7-4e78-9324-12f3c3a45135', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(755, '9a525475-df67-43a2-9e14-7815c4850370', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(756, '9a525475-e018-4d9b-bbd1-30f0126c7ad8', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(757, '9a525475-e1a3-43a2-9afa-d5a5af4a6f75', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"2.11\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(758, '9a525475-e275-4a68-bd81-44f0dde14106', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(759, '9a525475-e32a-4d1f-945b-9e34e915aaa7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(760, '9a525475-e3dd-4656-b1ed-ba6a6c56e4fc', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.60\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(761, '9a525475-e491-4214-bc78-d011851547e1', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(762, '9a525475-e545-4db5-aaf0-09a0271872a8', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(763, '9a525475-e5f8-4e3b-97b0-cd0be9334169', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(764, '9a525475-e6ab-4bee-ba99-4c1683d85dbd', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(765, '9a525475-e7be-4ef3-bacd-e6ce36093b6a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"1.54\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(766, '9a525475-e877-4de9-be63-8a335ebc5457', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(767, '9a525475-e932-4c68-b455-1a4672af10ce', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(768, '9a525475-e9f1-49a6-973a-83bc59562473', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(769, '9a525475-eaaf-4b25-aca8-9e18f29f92dd', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(770, '9a525475-eb6d-46e3-8f7d-8c1ee7fa9b01', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(771, '9a525475-ec2b-4c65-9f40-413038f7cebe', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(772, '9a525475-eceb-407f-8c22-dff988e7b233', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(773, '9a525475-edb7-4808-ace2-4f85b06d75ed', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.73\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(774, '9a525475-eebc-48ad-b8bb-5f953afcd2f3', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(775, '9a525475-ef7b-42af-a954-e3e134dc8962', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(776, '9a525475-f039-41c1-8d9c-dea14f13a066', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(777, '9a525475-f0f7-4efa-a19e-206574e8ef6f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(778, '9a525475-f1b6-4c89-b6c9-450208957e71', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(779, '9a525475-f277-4e5c-aaca-7942bd3edf21', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.68\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(780, '9a525475-f335-4fed-8fc4-fcc057726336', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(781, '9a525475-f3f5-4e2f-bc0d-e39d4597f28c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(782, '9a525475-f54e-4b27-b042-1d40a096f706', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"2.01\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(783, '9a525475-f60b-4543-867e-beb5b26c6903', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(784, '9a525475-f6c8-4201-80b8-c0dac94eb2b0', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(785, '9a525475-f786-4878-b890-e6c05d82c174', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(786, '9a525475-f843-47b1-994d-d3e418ea5142', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 19 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(787, '9a525475-f900-49cf-864f-00b1bfaf5640', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 20 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(788, '9a525475-f9bd-4c33-ae78-8278a173db63', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 20 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(789, '9a525475-fa84-4f78-9c43-3f1a9bca3bf7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 20 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(790, '9a525475-fc2d-4952-ae8d-bad613c3fa3c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 20 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(791, '9a525475-fd0f-42d1-9be2-dee1a90c06c6', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 20 limit 1\",\"time\":\"0.98\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(792, '9a525475-fec2-4e06-9d2d-f7efa196065c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 20 limit 1\",\"time\":\"2.88\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(793, '9a525475-ff8b-4227-8506-9e5829aab959', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 20 limit 1\",\"time\":\"0.70\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(794, '9a525476-004b-497e-b1c5-3ff122d228e1', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 20 limit 1\",\"time\":\"0.70\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(795, '9a525476-0110-4632-89ed-2c36868c7981', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 21 limit 1\",\"time\":\"0.73\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(796, '9a525476-02e1-4e12-b401-cd26a9029e8a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 21 limit 1\",\"time\":\"1.48\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(797, '9a525476-03b3-405f-b857-8706c15ce95a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 21 limit 1\",\"time\":\"0.71\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(798, '9a525476-0486-4ab3-947d-815002860014', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 22 limit 1\",\"time\":\"0.78\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(799, '9a525476-0550-49cc-bb06-09f72e8455fb', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 22 limit 1\",\"time\":\"0.73\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(800, '9a525476-061a-4b9c-8d1a-1367c25c46ff', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 22 limit 1\",\"time\":\"0.73\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(801, '9a525476-06f7-4dd3-9b06-918256950472', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 23 limit 1\",\"time\":\"0.81\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(802, '9a525476-0869-4de6-a156-0bcf0f534764', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 23 limit 1\",\"time\":\"0.81\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(803, '9a525476-098b-4a49-bb85-15a2ef9b26a7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 23 limit 1\",\"time\":\"0.86\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(804, '9a525476-0a69-4ed1-8d58-198a3c863d20', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 23 limit 1\",\"time\":\"0.81\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(805, '9a525476-0b47-4992-8f68-381a6a7056e2', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 23 limit 1\",\"time\":\"0.81\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(806, '9a525476-0c22-46b7-9a87-11590540d31e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 23 limit 1\",\"time\":\"0.80\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(807, '9a525476-0d02-4046-ba69-1b1328f3d0fa', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 24 limit 1\",\"time\":\"0.83\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(808, '9a525476-0ddd-4387-afd6-af4082398b3b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 24 limit 1\",\"time\":\"0.79\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(809, '9a525476-101b-4ed3-a000-2e2a6cde01ce', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 24 limit 1\",\"time\":\"2.83\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(810, '9a525476-10f8-4234-bb1d-da4c06c494e3', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 24 limit 1\",\"time\":\"0.81\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(811, '9a525476-11d9-4fc7-af77-39ae5e905de3', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 24 limit 1\",\"time\":\"0.84\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(812, '9a525476-12b8-4e25-9b61-dcee2981d038', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 24 limit 1\",\"time\":\"0.80\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(813, '9a525476-1392-4c9c-9aee-9e13c0f5d1cc', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 24 limit 1\",\"time\":\"0.80\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(814, '9a525476-1472-45af-8a07-1404f1bff136', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 24 limit 1\",\"time\":\"0.84\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(815, '9a525476-1676-46da-bb10-458766e55e37', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 24 limit 1\",\"time\":\"1.05\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(816, '9a525476-1740-4afb-a175-71a2250634f4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 24 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(817, '9a525476-1805-44b3-8dd5-df7d231fe139', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 24 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(818, '9a525476-18c5-49d0-89b5-cdefd5fd6f7d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 24 limit 1\",\"time\":\"0.63\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(819, '9a525476-197d-431b-ac65-f64ba8cf3ce6', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 24 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(820, '9a525476-1a31-4a57-ac89-b47b01e3b870', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 24 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(821, '9a525476-1ae6-4be9-bae5-89926a6f8598', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 24 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(822, '9a525476-1cb1-4b69-a867-d0015c960af5', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 24 limit 1\",\"time\":\"3.03\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(823, '9a525476-1d70-466d-926f-2c3e4f57555b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 24 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(824, '9a525476-1e24-4bb1-80d3-ea83e6d2031f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 24 limit 1\",\"time\":\"0.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(825, '9a525476-1ed7-4f9e-b7a7-23210bd4194b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 24 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(826, '9a525476-1f89-43bd-96f9-15069cac9120', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 24 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(827, '9a525476-203b-416c-a387-ae02c7b93ed3', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 24 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(828, '9a525476-20ee-4933-8526-d0c12bc11242', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 24 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(829, '9a525476-219f-4383-94f9-1770b7111416', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 24 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(830, '9a525476-231d-4ce7-9e1b-14a4682165dc', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 24 limit 1\",\"time\":\"1.12\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(831, '9a525476-23d1-4233-ab42-87bbf2eabfd3', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 24 limit 1\",\"time\":\"0.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(832, '9a525476-2482-43cd-a2d1-c38859ae91a6', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 24 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(833, '9a525476-2533-4407-8a6e-ea54053774ca', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 24 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(834, '9a525476-25e4-4569-aaa2-06bf876fb6c3', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 24 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(835, '9a525476-2696-426a-afb3-4177b4c26730', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 24 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(836, '9a525476-2748-4a84-8ac2-8a3738ec2767', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 24 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(837, '9a525476-27f8-4733-b9d3-68d8b4f88bdc', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 24 limit 1\",\"time\":\"0.54\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(838, '9a525476-29ea-4676-a22d-c3a73e6ee64d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 24 limit 1\",\"time\":\"2.38\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(839, '9a525476-2aa7-4e42-b7b6-4cfcfe830690', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 24 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(840, '9a525476-2b64-49fc-aa4a-79330320ffd2', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 24 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(841, '9a525476-2c21-458a-ae13-ccb50133974d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 25 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(842, '9a525476-2cde-473c-b08b-430a17a509dd', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 25 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(843, '9a525476-2d9c-4f4a-bad3-39b5b9517681', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 25 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(844, '9a525476-2e59-4e8a-b04b-78ba89edf132', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 25 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(845, '9a525476-301c-444e-8268-d74112a1b7ac', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"3.27\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(846, '9a525476-30da-4632-9d8b-c4355de4a99a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(847, '9a525476-3197-461e-ac1e-1ce5ac1395d4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(848, '9a525476-3255-484d-9ff7-ff7a2295e1c7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(849, '9a525476-3312-49ec-b6f7-d3fb4a116411', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(850, '9a525476-33d1-4dcb-b97b-ac898675196c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(851, '9a525476-3490-4c55-b3e4-f0a859d8ec79', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(852, '9a525476-354e-4157-a94a-2ae7b46b9a75', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(853, '9a525476-36d9-4ed6-bb97-958fed3fc655', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.68\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(854, '9a525476-3798-452e-a885-015076f872ef', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(855, '9a525476-3859-4614-88a3-cd8baa64ee6c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(856, '9a525476-3918-4196-81b3-97ca1c76ebeb', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(857, '9a525476-39d6-4a80-b5a5-6fec3fc63aab', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(858, '9a525476-3a96-444b-8fab-d392cf82b19a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(859, '9a525476-3b58-440d-9798-77f9f0a377b0', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.65\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(860, '9a525476-3cee-40a8-8d7a-ebbd9017f299', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"2.73\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(861, '9a525476-3db9-4dba-ac26-6d99819d3606', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(862, '9a525476-3e75-4de6-b4d4-5c3848af7fb5', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(863, '9a525476-3f33-4d59-aa3c-aacc8737e404', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(864, '9a525476-3ff0-4515-9ac9-41e512e8a91a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(865, '9a525476-40ac-4ea3-83ad-191b05b77d24', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(866, '9a525476-4169-4bbf-b38b-d281f4f59ded', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(867, '9a525476-4225-47f9-bdae-9a06777c9152', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(868, '9a525476-4426-484b-9603-b61926bd5f19', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"1.23\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(869, '9a525476-44f3-49c1-8f9d-13f41b5b4d61', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.71\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(870, '9a525476-45bf-4b72-bb89-54048c2ed81f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.71\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(871, '9a525476-4687-4c7a-aea4-6d5d44ddd824', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(872, '9a525476-474c-42d8-90ba-c11819e6fef5', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(873, '9a525476-480a-4ce7-92a7-6580058a2078', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(874, '9a525476-48c7-4109-9928-289a15c12fe0', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(875, '9a525476-4aae-44a9-ac1a-9ef62f30f4f2', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"1.23\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(876, '9a525476-4b6e-476c-82a9-2cc4ead9540b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(877, '9a525476-4c2c-4121-ab79-3f8551dae78b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(878, '9a525476-4cea-47c6-bf81-0d4511ed1a34', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(879, '9a525476-4da7-4bab-b687-e61cdfe28f09', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(880, '9a525476-4e65-42f2-9d3c-dd9381a4456e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(881, '9a525476-4f22-44ac-80f1-d842332189f9', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(882, '9a525476-50be-4ac7-8017-0a9d57faaebe', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.95\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(883, '9a525476-5184-45bc-8781-42e18b374884', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(884, '9a525476-5245-4387-8fcc-d044e3dbd174', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(885, '9a525476-5302-432a-9cc6-6b71cb95e2d1', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(886, '9a525476-53c0-4768-ab6a-09f143af1293', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(887, '9a525476-547e-44fd-8b88-4375e6e133dc', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(888, '9a525476-553c-44d0-852d-7a4885e9ccce', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(889, '9a525476-5675-4178-abdb-d98d387f1b39', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"1.78\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(890, '9a525476-5738-47cf-b2a5-91b02e0253e1', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(891, '9a525476-5832-4279-aed3-4f809a29f6a1', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(892, '9a525476-58f1-4aea-9494-9c44bbfe8a73', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(893, '9a525476-59af-4d92-8ad1-1b1af28670fa', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(894, '9a525476-5a8f-401b-aeeb-f3a09e3ca80d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.80\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(895, '9a525476-5b59-4277-9363-3e9772b55f8f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(896, '9a525476-5c18-4a07-b514-6e6a2e673e21', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(897, '9a525476-5fd4-4528-942d-29b1d60800ef', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"7.53\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(898, '9a525476-60a3-47bd-8b8b-444c13f39006', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 26 limit 1\",\"time\":\"0.72\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(899, '9a525476-616f-4010-a8cb-1880f9518bf5', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.69\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(900, '9a525476-6235-42f8-a27c-2a4beb8af5b4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(901, '9a525476-642b-4f1e-80b6-e3c148024b33', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(902, '9a525476-666e-4f3e-b7c6-d6f404a0e3fc', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"3.79\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(903, '9a525476-6775-4c84-861e-45ac410f76df', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"1.24\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(904, '9a525476-6834-4d46-b7c2-859130886729', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(905, '9a525476-68f2-4f7f-a178-a709f4cff3dd', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(906, '9a525476-6a84-4731-8d44-db235c0631e6', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"2.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(907, '9a525476-6bdf-4d1b-aef8-39965e454766', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"1.73\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(908, '9a525476-6c9e-4033-b945-ac7d37e762f6', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(909, '9a525476-6d61-492d-a662-d6f29e714d64', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.69\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(910, '9a525476-6e23-48e1-bde4-25adb6063c68', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.69\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(911, '9a525476-6ee2-4bb1-84fc-2296e8b5fba8', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(912, '9a525476-6fa0-4c37-b7e0-f7793dcd1986', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(913, '9a525476-7183-4375-b442-7353a01ca768', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"1.14\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(914, '9a525476-72c9-43e0-b0ff-f9441d8d60b0', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.69\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(915, '9a525476-73aa-4545-866a-3b8f1e15bcb6', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.93\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(916, '9a525476-746c-435c-9136-6834aa94d500', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(917, '9a525476-752b-4d83-afbf-03afc4e9692c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.68\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(918, '9a525476-75e7-4d04-9a25-b4b6b49c87aa', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(919, '9a525476-777b-4aa6-b546-93ccda6a7f1d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"2.78\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(920, '9a525476-791a-4900-8d26-157130121165', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"2.45\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(921, '9a525476-79e7-4410-9cb7-1a0ca0a2edd9', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.72\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(922, '9a525476-7aaf-4056-ab59-4a82fd7f053c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.68\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(923, '9a525476-7b6d-4775-9c0d-5ac5eafa376b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(924, '9a525476-7c2a-4a8f-8614-a2a71f4c815c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(925, '9a525476-7dbf-44f4-8391-0c7d50f90abf', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"2.36\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(926, '9a525476-7f84-43c1-b793-e66b5c8d06cf', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"3.15\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(927, '9a525476-8096-430f-a949-81a38273727d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(928, '9a525476-8153-4d7c-a40b-ab438e93b13f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(929, '9a525476-8212-4c03-9b3b-d493c48f2c5e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(930, '9a525476-82cf-474b-a7a7-271e04e906ae', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(931, '9a525476-83ed-4265-aad0-71a86e2c0b85', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(932, '9a525476-8561-46af-b1ec-7386866abc05', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"2.36\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(933, '9a525476-861f-4fd9-8c04-479d36c1716b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(934, '9a525476-86dc-489c-85f2-3c58f7ec65d6', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(935, '9a525476-879a-450b-bc65-968c40307dbc', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(936, '9a525476-8857-45ab-a686-e536d06d772c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(937, '9a525476-8914-4035-9930-c07cde45e788', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(938, '9a525476-8b2c-446c-a2be-65265205d994', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"3.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(939, '9a525476-8c79-4ea1-b6a0-f91b34558b2f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"1.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(940, '9a525476-8d4c-424c-bc86-680349b3cf97', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(941, '9a525476-8e09-4d49-a32e-f01a174a0fce', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(942, '9a525476-8ec1-470d-a329-bd3ed8a0c47c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(943, '9a525476-8f76-4c35-86c9-9555874d1894', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(944, '9a525476-902a-4f70-ad43-a97cf2cb3cf4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(945, '9a525476-93bf-4e68-a90f-1fd60d6a86aa', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"6.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(946, '9a525476-949b-41fa-bdbe-0c134b9b5e73', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.71\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(947, '9a525476-9586-4559-ba0d-0d0c805be704', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.88\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(948, '9a525476-966c-4ae8-b54d-5ffc4c34af8a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.87\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(949, '9a525476-9802-42d2-a3f0-97a9af2680c6', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"2.59\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(950, '9a525476-99a3-47fe-aba6-8bb04da5e646', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"2.64\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(951, '9a525476-9a68-48e9-ab98-fa0b1d848ea7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.64\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(952, '9a525476-9b2a-47eb-8aa2-f047eb2ab5d9', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(953, '9a525476-9bdd-4be4-aa82-476ca13c752f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(954, '9a525476-9c8f-4cfb-9d67-85fd615e1047', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(955, '9a525476-9d41-4d91-8fad-8044658f71ef', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(956, '9a525476-9e74-48e0-a591-7157248d8bb3', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.87\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(957, '9a525476-9fdd-42f8-9934-71548f8841e4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"1.92\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(958, '9a525476-a096-473a-8720-90ed38e95f38', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(959, '9a525476-a14c-42b3-a4ca-647b96be90ae', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(960, '9a525476-a202-447a-b0d7-dd6520b672eb', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(961, '9a525476-a2b6-43d0-9e33-3aab842620af', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(962, '9a525476-a36d-467c-819c-9be78dd38aea', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(963, '9a525476-a4a2-4a98-b908-37c99f9465d4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"1.83\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(964, '9a525476-a612-4e9d-b679-596bf834951a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"2.28\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(965, '9a525476-a8c9-44aa-9b9d-8cd5e5463c3c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"5.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(966, '9a525476-b0a8-4a83-ac97-1a4154b38dc2', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"18.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(967, '9a525476-b3fb-49e1-9327-0272b3094d74', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"5.23\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(968, '9a525476-b4d9-4b61-887c-b925a98a10f2', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.78\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(969, '9a525476-b5a5-4fc6-82ed-a1997e7c9bee', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(970, '9a525476-b661-416c-9c50-e75945a98f53', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.60\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(971, '9a525476-b722-4d36-8ca6-62fb11f5f4b4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.65\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(972, '9a525476-b85c-4597-90fb-6acc2732aea1', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"1.86\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(973, '9a525476-b9a1-4ad5-9025-90d112d56ce4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"1.78\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(974, '9a525476-ba5a-4384-a394-7f709cc519b2', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.58\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(975, '9a525476-bb0f-4673-bd9e-aec8323fe859', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 27 limit 1\",\"time\":\"0.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(976, '9a525476-bbc4-47ae-917b-e14f8e5349ec', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 28 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(977, '9a525476-bc78-473e-aaef-309826c9492f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 28 limit 1\",\"time\":\"0.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(978, '9a525476-bf39-4843-9171-c1b5477b0f33', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 28 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(979, '9a525476-c152-4d3f-a97a-f04f67a76d7e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 28 limit 1\",\"time\":\"3.98\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(980, '9a525476-c214-4f35-a50f-e44041efd09b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 28 limit 1\",\"time\":\"0.69\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(981, '9a525476-c2dc-4fee-808d-46675bdf3c07', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 28 limit 1\",\"time\":\"0.75\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(982, '9a525476-c3a7-4b0d-ad49-6f3e7f323181', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.78\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(983, '9a525476-c46a-4837-afdf-6ea1230b211f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.70\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(984, '9a525476-c758-47e9-8bcc-76b7531c8237', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"4.45\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(985, '9a525476-c83a-4f37-990a-3e0ffa57eb1b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.81\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(986, '9a525476-c914-40ae-81c4-728988740ce1', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.80\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(987, '9a525476-c9ef-44b2-adcd-068183000d58', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.80\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(988, '9a525476-cacb-4217-bfe4-626f841af417', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.81\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(989, '9a525476-cde8-4b77-9c22-f375435cd64a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"4.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(990, '9a525476-cec7-4b59-a878-cd09d440ed12', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.81\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(991, '9a525476-cfa4-42d8-ab59-ba89732ce63c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.81\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(992, '9a525476-d08c-4454-94bc-36d14725b742', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.89\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(993, '9a525476-d16d-4a66-b254-a79680791d2c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.83\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(994, '9a525476-d3fa-40bb-9504-cb9c91da815f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"4.05\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(995, '9a525476-d4dc-4683-a103-ad90eddd816f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.81\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(996, '9a525476-d5bf-49b5-babf-fcb42ff0daca', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.85\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(997, '9a525476-d69e-49df-90a7-a4edd9c51531', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.81\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(998, '9a525476-d778-4526-be16-fc69a35a6a14', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.80\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(999, '9a525476-d8fc-4d22-8678-bc59bebf2bc8', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"2.43\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1000, '9a525476-da7c-414a-89d4-2eb077b7aff5', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"1.97\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1001, '9a525476-db5e-41be-9455-3879b9a1eef9', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.73\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1002, '9a525476-dc31-431b-bb38-e932342aeaf4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.68\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1003, '9a525476-dd03-4e21-bcdb-c0bbddc23625', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.75\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1004, '9a525476-ddc7-4ada-aa5e-510ae19f2e6f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.59\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1005, '9a525476-de80-4550-8aec-031f9f7dd35d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.54\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1006, '9a525476-e04c-4e9b-96a1-7e910fcb6ec0', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"1.27\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1007, '9a525476-e19d-42ec-8d53-014fd4fb5112', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1008, '9a525476-e259-433c-9f9a-a8a03a4d7c06', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1009, '9a525476-e310-4cdd-af20-bf41105579d9', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1010, '9a525476-e3c6-4021-9d85-6e2a36939f91', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.54\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1011, '9a525476-e474-46ad-a40b-e28fa6c05587', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.52\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1012, '9a525476-e51d-472c-b64d-7882e5a4c028', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.50\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1013, '9a525476-e6ce-40f7-a111-e407026ea885', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"1.20\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1014, '9a525476-e80f-4b94-9d29-5721d025a064', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1015, '9a525476-e8ca-4ae7-b82b-1c15edf28cf6', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1016, '9a525476-e980-40dc-8af8-7fa8cbe76a03', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.52\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1017, '9a525476-ea33-4f01-8b45-1bfc4b2c1a38', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.51\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1018, '9a525476-eae5-4e7e-a9ae-490f1297d575', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.51\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1019, '9a525476-eb96-4f04-8ff9-03f9c1c06f1f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.50\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1020, '9a525476-ed9a-491e-b871-18e86b0e9ff9', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"2.87\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1021, '9a525476-ee57-489e-952a-83bec21675ca', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.54\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1022, '9a525476-ef09-4bcc-93de-ee12ed5c20a0', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.50\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1023, '9a525476-efb4-4b5e-83f5-7d1d6d5b3c9a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.50\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1024, '9a525476-f05e-4512-8c93-eaba7a557818', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.50\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1025, '9a525476-f108-48f9-aeec-0657b4e2f56a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.48\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1026, '9a525476-f1b0-448e-9251-dd709907bdd0', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1027, '9a525476-f2eb-40b6-a717-baec851315ac', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"1.91\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1028, '9a525476-f426-49c3-bbbf-730a4837a5d7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"1.52\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1029, '9a525476-f4d4-4681-bb28-89ab69fba321', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.53\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1030, '9a525476-f57d-45b9-9f3b-b7bf03209e71', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.50\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1031, '9a525476-f624-408d-952e-14dcb903a6bf', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1032, '9a525476-f6cc-48d6-8bbb-28e918f4ee55', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1033, '9a525476-f773-4146-b654-35c59e63a6e3', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1034, '9a525476-f81b-4d16-bddc-a366ac31b9e7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1035, '9a525476-f967-40be-bb5a-8fd96e373ab8', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.48\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1036, '9a525476-fb2b-4b10-9051-27bd940f38ca', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"3.10\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1037, '9a525476-fbe8-46f1-a3b5-3428bee65d62', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1038, '9a525476-fc96-46f2-83ab-c858050290ff', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.51\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1039, '9a525476-fd40-47ba-b6ac-13eacf0a6eb1', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.50\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1040, '9a525476-fde7-48e6-ad65-9ab60b93fd40', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1041, '9a525476-fe8e-44e5-9b24-ce07ad86f251', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1042, '9a525476-ffaf-48af-bbf1-33a6f4706a1a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.48\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1043, '9a525477-01c8-4f68-8162-f7bb5c7b4263', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"3.38\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1044, '9a525477-0292-4525-84dc-30fb59824c11', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1045, '9a525477-0347-4e32-9850-2c288036f9fa', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.53\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1046, '9a525477-03f0-4931-8b9f-273d3a0252f1', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1047, '9a525477-0497-4d90-a975-145b48f85aea', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1048, '9a525477-053d-4ad1-9a68-584ac3225591', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.48\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1049, '9a525477-0659-4080-9261-679d3c33b0d4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"1.63\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1050, '9a525477-0788-43e6-900a-2ae948adb728', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"1.39\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1051, '9a525477-0836-4d25-8c55-55a6795389c8', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.53\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1052, '9a525477-08e2-406f-b2e2-1d3327ee7a86', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.51\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1053, '9a525477-098b-4176-b7a2-7ead6ce00bbd', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.50\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1054, '9a525477-0a32-459d-bf50-be2ab5980b7b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.48\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1055, '9a525477-0adb-4b62-9a30-bf2728b3c416', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1056, '9a525477-0b82-417c-a28e-b4085290cb16', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1057, '9a525477-0c28-40cd-b745-c62ae009bef9', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.48\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1058, '9a525477-0e03-4ee4-9142-89a7a7e36ed1', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"2.18\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1059, '9a525477-0ec0-415c-a98d-c7f8a0ff937c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1060, '9a525477-0f6d-4760-b9bf-5fe3938cc398', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.51\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1061, '9a525477-1016-41ea-a3c4-5b491cb839f7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.50\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1062, '9a525477-10be-4ef2-8736-5a59f12bb558', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.50\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1063, '9a525477-1166-4349-8add-a038a29927e2', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.48\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1064, '9a525477-120d-469a-a79f-b7d99abcace0', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1065, '9a525477-12b3-42f9-a224-aa2387c5c35e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.48\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1066, '9a525477-14d4-49fa-a424-283a8a6d09c3', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"2.39\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1067, '9a525477-1592-46aa-a9aa-020490fe4afd', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1068, '9a525477-163f-42c6-953e-bc0c3ec5f0b6', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.51\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1069, '9a525477-16e7-4da8-80c4-674aa6fbd463', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.50\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1070, '9a525477-178e-4b34-b5e7-820e2654a3c5', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1071, '9a525477-1834-4a49-a7d5-2e355bc8eec6', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1072, '9a525477-18db-40f0-84ec-252c68d39951', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1073, '9a525477-1a85-421c-b01f-3522a87136ae', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"1.78\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1074, '9a525477-1bb5-43de-9ecd-ef19f7c94beb', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1075, '9a525477-1c62-4f9b-8c88-8f79f880271d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.52\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(1076, '9a525477-1d0d-4e49-be47-1dab112ba7e4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.52\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1077, '9a525477-1db6-4c69-8b04-a1e5d1c9afca', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.50\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1078, '9a525477-1e5e-47e9-ab8e-d011e60a2f7c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1079, '9a525477-1f06-4bc7-822e-8ec655294c7c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1080, '9a525477-1fad-4411-bda6-1095524b48b9', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.48\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1081, '9a525477-214a-4f27-8af5-116dc3ccfcf0', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"1.89\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1082, '9a525477-21f7-4312-a72d-4a0902768370', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.52\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1083, '9a525477-22a2-4c32-bd71-d1958dcd851c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.51\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1084, '9a525477-234f-4483-ae64-d4889397a532', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.50\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1085, '9a525477-23f7-491e-b8ec-e039dde70774', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1086, '9a525477-249e-4163-b938-d90f4a802a09', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.48\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1087, '9a525477-2548-4afa-95f6-3a4a2fdff961', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1088, '9a525477-25f0-4b77-b7ea-840ffb0f4cd9', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1089, '9a525477-27b9-4887-bdd3-2ab5aca94663', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"2.10\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1090, '9a525477-286a-4bb2-906e-1cdec67ce357', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1091, '9a525477-2914-4ae7-a177-7a6cdde50549', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.51\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1092, '9a525477-29bc-42f6-b59c-40af5717d70f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1093, '9a525477-2a70-4eff-921d-e88a3aaf6da5', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 29 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1094, '9a525477-2b28-44ec-b92d-cc95a412060a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 30 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1095, '9a525477-2bdd-4426-9414-030fad3a43fc', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 30 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1096, '9a525477-2c91-42aa-8697-6db240f2bc6c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 30 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1097, '9a525477-2fc1-42e0-8610-85144f093405', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 30 limit 1\",\"time\":\"4.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1098, '9a525477-3098-4f43-ac17-1117340bcb32', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 30 limit 1\",\"time\":\"0.72\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1099, '9a525477-315a-4c11-bc77-9900320cd6a0', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 30 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1100, '9a525477-3218-4008-869a-589b75faf94f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 30 limit 1\",\"time\":\"0.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1101, '9a525477-32db-4ccb-a541-ec17d3ba8020', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 30 limit 1\",\"time\":\"0.70\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1102, '9a525477-348f-4c70-9f4c-d0ef03c10214', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 30 limit 1\",\"time\":\"3.07\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1103, '9a525477-35e0-43a5-8f79-b9cc4548ef9d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 30 limit 1\",\"time\":\"0.76\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1104, '9a525477-36a1-4995-8102-472f9e421253', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 30 limit 1\",\"time\":\"0.58\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1105, '9a525477-3751-4557-99d4-4b1d8f0e9b1e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 30 limit 1\",\"time\":\"0.54\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1106, '9a525477-3801-4d66-bd40-b5774ab57656', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 30 limit 1\",\"time\":\"0.54\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1107, '9a525477-38b2-45d2-92fe-c852af299420', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 30 limit 1\",\"time\":\"0.54\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1108, '9a525477-3962-4b45-a86f-9f67a2823ced', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 30 limit 1\",\"time\":\"0.53\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1109, '9a525477-3b3c-4cba-bc9b-7f44d1b07ea2', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 30 limit 1\",\"time\":\"2.43\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1110, '9a525477-3c17-48a4-8e83-c6ae2d706e4b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 30 limit 1\",\"time\":\"0.69\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1111, '9a525477-3d0b-4e8d-a886-e59943035c6b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 30 limit 1\",\"time\":\"0.58\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1112, '9a525477-3dbb-459f-ad45-60dc623a8ccf', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 30 limit 1\",\"time\":\"0.52\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1113, '9a525477-3e69-4978-adc9-505cc8f961c8', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 30 limit 1\",\"time\":\"0.51\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1114, '9a525477-3f14-4a5a-b888-0e6d66c2771e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 30 limit 1\",\"time\":\"0.51\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1115, '9a525477-3fbe-4fd6-bbfa-0aac227e9a42', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 30 limit 1\",\"time\":\"0.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1116, '9a525477-40e5-4e7b-966f-f0f2feee44bb', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 30 limit 1\",\"time\":\"1.72\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1117, '9a525477-4219-4802-985f-55cb9cc3c3e9', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 30 limit 1\",\"time\":\"1.60\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1118, '9a525477-42c8-47c9-b394-10e31b5c3738', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 30 limit 1\",\"time\":\"0.52\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1119, '9a525477-4372-459e-8dd0-588b6f7e2c26', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 30 limit 1\",\"time\":\"0.50\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1120, '9a525477-4419-415d-9aa4-534a5b4b9260', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 30 limit 1\",\"time\":\"0.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1121, '9a525477-44c0-4e37-8730-ed004d487a8c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 30 limit 1\",\"time\":\"0.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1122, '9a525477-4567-4329-91f1-f0c2773980ec', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 30 limit 1\",\"time\":\"0.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1123, '9a525477-460d-4458-b104-4a77a3f60ff8', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 30 limit 1\",\"time\":\"0.48\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1124, '9a525477-46b3-4e28-afa7-4e90b79c7459', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 30 limit 1\",\"time\":\"0.48\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1125, '9a525477-48f4-4cc6-9bba-be1fce9efc03', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 30 limit 1\",\"time\":\"2.71\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1126, '9a525477-49b1-4f83-8c49-bdade726c23a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 30 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1127, '9a525477-4a64-480e-9655-528ab6a4bd4c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 30 limit 1\",\"time\":\"0.52\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1128, '9a525477-4b0d-451a-b198-ef5266766a9c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 30 limit 1\",\"time\":\"0.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:30'),
(1129, '9a525477-4bb4-469f-988a-c3ef81118507', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 30 limit 1\",\"time\":\"0.50\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1130, '9a525477-4c5b-4983-b7b9-2bffe0268cdc', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 30 limit 1\",\"time\":\"0.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1131, '9a525477-4d02-4b28-a55e-5135a4b5309f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 30 limit 1\",\"time\":\"0.48\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1132, '9a525477-4f34-4c6f-b659-18ff2770bfa0', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 30 limit 1\",\"time\":\"2.41\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1133, '9a525477-4ff7-49a0-9ab7-9e7f665f95db', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 30 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1134, '9a525477-50b1-4419-9029-90950e0e3a05', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 31 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1135, '9a525477-5166-448c-a4c4-caeac119384d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 31 limit 1\",\"time\":\"0.53\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1136, '9a525477-5218-4723-a4ae-58f6a5901eda', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 31 limit 1\",\"time\":\"0.50\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1137, '9a525477-52c7-424f-b625-40561d74cf5f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 31 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1138, '9a525477-5377-4faa-bf65-78bca5e257f8', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 31 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1139, '9a525477-549c-41e9-a196-0fa709075c4a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 31 limit 1\",\"time\":\"0.82\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1140, '9a525477-5550-4ff7-977c-6e7a571f969c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 31 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1141, '9a525477-5603-4f24-905b-9f8812e7e693', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1142, '9a525477-56b8-48b8-84f7-93e924b8ac33', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1143, '9a525477-576a-4d36-b91c-651703f12cbe', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1144, '9a525477-581f-4e03-804a-003cd03eb3ae', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1145, '9a525477-58d2-4584-ab19-8ffb2cac495f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1146, '9a525477-5984-4242-999f-b04f24f229a2', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1147, '9a525477-5a35-44a0-9138-88ab26adf1c2', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1148, '9a525477-5b41-4de6-8d1b-247b8d4eb7e0', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.63\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1149, '9a525477-5bf9-47d4-8e00-d041fce380cf', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1150, '9a525477-5caf-48f5-bbf9-396aa157237b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1151, '9a525477-5d64-4107-b6ed-aca59a3b0478', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1152, '9a525477-5e19-480b-837b-d716f0bb2487', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1153, '9a525477-5ed9-4616-b5c1-9dc9ed73713e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.60\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1154, '9a525477-5f90-40d8-8ae9-b41e19bbb2cf', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.64\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1155, '9a525477-6046-4ab5-ae40-94d7a50138a3', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1156, '9a525477-6116-4adf-b6f1-c13487756645', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.87\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1157, '9a525477-6270-4d9d-9df4-15ef7cf056d3', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1158, '9a525477-6325-45b8-a28b-6805948f1c52', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1159, '9a525477-63d8-47d8-adda-f26e16577ca5', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1160, '9a525477-648d-4056-afd7-99f28ec5cb2f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1161, '9a525477-6540-474c-adb2-e4ee10b09d01', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1162, '9a525477-65f4-43ec-b59b-9c30b8e9dbe0', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1163, '9a525477-66a8-4204-add0-5d6e2ee9adcd', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1164, '9a525477-67da-4a10-920c-0deab8ac51b3', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1165, '9a525477-690b-4891-8c81-ddfd638697a7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.63\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1166, '9a525477-69bf-465a-accc-3e1456b5081d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1167, '9a525477-6a71-4bc2-843a-b3a60b36eb16', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1168, '9a525477-6b22-4b97-9af8-f3428043b75d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1169, '9a525477-6bd3-4d3b-b152-030944772875', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1170, '9a525477-6c83-412a-9dd1-d111750e6228', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1171, '9a525477-6d33-412c-8ee2-2d4b49960e02', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1172, '9a525477-6e15-4bba-8429-1507fbf04bdb', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1173, '9a525477-6ef3-4a1b-b319-b80482a97d6a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.60\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1174, '9a525477-6fa9-468f-b4ac-60f19b8c1ce9', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.58\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1175, '9a525477-705d-4d69-a1f2-7bb851ecc784', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.58\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1176, '9a525477-7110-430a-bbc1-cba91499325a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(1177, '9a525477-71c2-46f2-95cf-98dd5c9a2068', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1178, '9a525477-7274-40f6-bfe3-a8c7adb67342', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1179, '9a525477-7327-4c93-bc1f-cd773303dff2', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1180, '9a525477-73da-4181-99ae-81a9225cb689', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1181, '9a525477-74e9-4bce-b229-f89d3fc2c94e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"1.26\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1182, '9a525477-759f-44fe-af87-ec5c863203b0', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.58\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1183, '9a525477-7654-4fe1-8b1d-3f840e06f548', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1184, '9a525477-7709-4429-a1f4-cca008835b23', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1185, '9a525477-77bc-4172-8ae5-442667de63d6', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1186, '9a525477-786f-44ae-87de-14f823256d08', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1187, '9a525477-7922-4e36-979a-b9d9a831278b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1188, '9a525477-79d4-47e9-acf1-c2a973e0c79f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1189, '9a525477-7a8d-47e5-88e5-4c7dca3148bf', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.60\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1190, '9a525477-7be7-4efa-8101-18703f768e91', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"1.76\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1191, '9a525477-7ca7-469b-97b6-ace3b0b5d670', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1192, '9a525477-7d64-4de3-a922-a887ac2b4194', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1193, '9a525477-7e21-4b54-8b89-5da8dded5c92', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1194, '9a525477-7edd-4462-924d-86d652c6a553', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1195, '9a525477-7f9a-4113-bb87-7599683a5432', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1196, '9a525477-8057-4fe3-9362-60bfb6a721a0', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1197, '9a525477-8117-4d60-97d9-3e7088a5371b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.65\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1198, '9a525477-82cb-4421-88d1-33793d65ef77', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.85\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1199, '9a525477-839d-4f26-b935-876f6e376392', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.79\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1200, '9a525477-8469-4eed-8c8e-1142529dcf77', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.71\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1201, '9a525477-8527-4e6e-9de4-cb348fd002ae', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.68\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1202, '9a525477-8608-4749-a765-961db648b296', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.78\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1203, '9a525477-86cd-4798-a640-832d52fb919b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.72\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1204, '9a525477-878f-4c95-bffe-649222b69d0e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.70\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1205, '9a525477-88b4-462c-8f2b-da53e3a4dbc6', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.79\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1206, '9a525477-8980-46f6-a698-2a2cff04e891', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.72\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1207, '9a525477-8a49-45a3-8115-5980bfcb4b31', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.73\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1208, '9a525477-8b14-4860-a565-1fd8f82752a5', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.73\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1209, '9a525477-8be2-4fd3-a42c-d6efc5424f83', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.75\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1210, '9a525477-8cbf-413a-ae4b-c50871718865', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.81\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1211, '9a525477-8d9b-43ed-a694-983265c53dad', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.81\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1212, '9a525477-8f00-4b9c-9d0c-d3e132e57e49', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"2.16\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1213, '9a525477-8fe6-40e5-a98e-2d5b6e2ccd45', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.84\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1214, '9a525477-90d1-420e-a00f-92126d67cec2', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.92\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1215, '9a525477-91ae-4697-aa3f-9f7a944a2650', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.80\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1216, '9a525477-928b-42aa-b9e8-776f83ff1f40', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.80\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1217, '9a525477-9367-4fe8-aed1-e1d96fa7fb40', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.80\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1218, '9a525477-944b-4b0a-867e-68e8ba17e645', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.85\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1219, '9a525477-963d-4a89-a09f-9d2827d1def6', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"3.58\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1220, '9a525477-971d-4cc2-af9e-f68a86d43445', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.83\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1221, '9a525477-97e0-42e7-b95d-a9a8753ff733', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1222, '9a525477-9899-4d8a-bfa4-ee625522f215', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1223, '9a525477-9950-416a-beb4-8b68d6423e81', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1224, '9a525477-9a05-47fe-a092-d4975a341283', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.53\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1225, '9a525477-9ab4-4006-94a6-70ade602f431', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.53\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1226, '9a525477-9b70-46fe-a2d3-2a249cbb93b6', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.66\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1227, '9a525477-9d20-48a2-b3f8-53f107571641', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.60\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1228, '9a525477-9dd6-4e89-af6b-b45f1cff84f3', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.53\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1229, '9a525477-9e8a-430b-89cb-3c63db7d37e9', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.52\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1230, '9a525477-9f3d-4096-b048-88e127738c2b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.51\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1231, '9a525477-9ff0-4605-9431-43e29002f0ff', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.51\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1232, '9a525477-a0d1-474f-9c9f-7305ad8c4f7e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.51\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1233, '9a525477-a17a-450a-81bd-40529c7e885b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1234, '9a525477-a282-434b-9bb3-2dcb0b1ece77', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"1.44\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1235, '9a525477-a32e-48ae-8598-e9a013fa188b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.51\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1236, '9a525477-a3db-4cdc-9815-62eb6e24646d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.50\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1237, '9a525477-a485-4e5a-8759-7bc68fad424f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.51\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1238, '9a525477-a52e-4fb6-bf6e-377da5ecd64a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1239, '9a525477-a5da-4040-9913-f6c218d969a7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1240, '9a525477-a682-405b-a09c-423847fda8fc', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1241, '9a525477-a72a-455a-ab20-b082e63f7c83', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1242, '9a525477-a7d2-42c2-99b4-0deeaefe3128', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.48\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1243, '9a525477-a89c-4685-9623-6a22d4903499', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.48\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1244, '9a525477-a96a-45c6-a78d-8e8a98b9c6d4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.53\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1245, '9a525477-aa17-4314-9f49-2837af9bf7e7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.52\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1246, '9a525477-aac2-4487-94c1-62bc9ed675db', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.50\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1247, '9a525477-ab74-4939-8bc1-7e192faed2bf', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1248, '9a525477-ac2c-4e5c-aab5-9386e26d70c9', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.64\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1249, '9a525477-ace4-4a25-a1e7-c7799672565d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.63\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1250, '9a525477-ad9a-4098-a1ca-6bcbb245c406', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1251, '9a525477-ae54-459f-a649-16463a40217d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.64\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1252, '9a525477-af25-45fc-8555-f273e72e34fb', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.71\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1253, '9a525477-b06a-43be-8279-ea822f4f8b8b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.60\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1254, '9a525477-b11f-4d22-96ae-c3e1cbf27524', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.59\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1255, '9a525477-b1d1-44e8-a86b-e469285bd99b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1256, '9a525477-b283-4982-9164-6ec5e4ba06d0', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1257, '9a525477-b336-49d1-a9b6-423fd1c1f7dd', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1258, '9a525477-b3eb-444e-8129-a72d39bc8920', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 32 limit 1\",\"time\":\"0.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1259, '9a525477-b49d-4d57-8b73-ac54cec167d3', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 33 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1260, '9a525477-b5ef-4fe7-abbb-54d6a20989d3', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 33 limit 1\",\"time\":\"1.02\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1261, '9a525477-b732-4f3e-981c-9555bf3e48b1', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 33 limit 1\",\"time\":\"0.79\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1262, '9a525477-b801-42d3-a236-ab798fdb1a75', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 33 limit 1\",\"time\":\"0.74\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1263, '9a525477-b8c3-4cc6-9a53-b7a027576691', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 33 limit 1\",\"time\":\"0.71\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1264, '9a525477-b98c-4133-9a1a-38152e7c1ac3', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 33 limit 1\",\"time\":\"0.77\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1265, '9a525477-ba56-44b8-83a4-a090c8572ee9', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 33 limit 1\",\"time\":\"0.77\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1266, '9a525477-bb26-471c-ac16-740a7adb6de3', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 33 limit 1\",\"time\":\"0.82\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1267, '9a525477-bbfb-44ca-827c-734e83134690', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 33 limit 1\",\"time\":\"0.87\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1268, '9a525477-bd45-4264-b345-a6fe71265279', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 33 limit 1\",\"time\":\"1.18\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1269, '9a525477-be07-46a0-adc2-04f966a895be', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 33 limit 1\",\"time\":\"0.70\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1270, '9a525477-bec0-45e6-b24e-d5a38f33c61f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 33 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1271, '9a525477-bf73-4aef-9bce-e5b30beae57c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 33 limit 1\",\"time\":\"0.59\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1272, '9a525477-c01f-47b0-a279-898656ef99cc', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 33 limit 1\",\"time\":\"0.52\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1273, '9a525477-c0c9-438c-b42c-e001cafd8aa0', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 33 limit 1\",\"time\":\"0.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1274, '9a525477-c173-45de-862d-f2971fba57d8', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 33 limit 1\",\"time\":\"0.51\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1275, '9a525477-c21c-4fab-8e45-7dbf70ce77ab', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 33 limit 1\",\"time\":\"0.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1276, '9a525477-c323-4d11-a45f-9ee027e80671', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 33 limit 1\",\"time\":\"0.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1277, '9a525477-c3d1-45cd-bce9-29e5cad8d2ca', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 33 limit 1\",\"time\":\"0.52\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(1278, '9a525477-c47b-42b2-b20a-91f6b5adf9c0', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 33 limit 1\",\"time\":\"0.51\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1279, '9a525477-c528-4abe-8817-abbb0dc6bbb0', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 33 limit 1\",\"time\":\"0.51\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1280, '9a525477-c5d1-482c-b416-3d13c7b8bc44', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 33 limit 1\",\"time\":\"0.51\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1281, '9a525477-c67c-448d-a74a-771632d84bb1', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 33 limit 1\",\"time\":\"0.51\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1282, '9a525477-c724-4e7b-b272-8f75b83960a9', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 33 limit 1\",\"time\":\"0.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1283, '9a525477-c7cb-4c7d-a2ef-2e10ac03077c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 33 limit 1\",\"time\":\"0.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1284, '9a525477-c872-414b-be6a-c1fb38f7b1a6', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1285, '9a525477-c934-4c96-82b5-aab380e43b5c', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.69\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1286, '9a525477-ca6e-41ca-9844-c8b59cb54e62', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.53\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1287, '9a525477-cb18-47cd-bcdc-27481aee96c5', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.51\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1288, '9a525477-cbc1-4053-b55d-37f5a009f39a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.50\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1289, '9a525477-cc6c-46bc-83c0-c1e47a3fe371', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.51\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1290, '9a525477-cd14-460e-97c0-ac84682322a5', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.50\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1291, '9a525477-cdbb-498b-9137-5c1ee35d44f5', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1292, '9a525477-ce60-408b-82af-1c0ad9ff65bc', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.48\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1293, '9a525477-cf07-4107-915a-ab1819a0048b', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1294, '9a525477-d09f-4e8e-9674-d1117966b3ac', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"2.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1295, '9a525477-d155-4c56-a442-dc79be806bc7', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1296, '9a525477-d200-466d-9033-22cf5384b7f6', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.51\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1297, '9a525477-d2a8-4f09-ada4-09a0789d2ee0', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.50\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1298, '9a525477-d359-4cdf-94f5-1904c20c90a4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1299, '9a525477-d40a-4b12-8295-eca2286866fc', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.56\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1300, '9a525477-d4bc-470a-9ce2-3669986f7e4e', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.54\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1301, '9a525477-d56f-40dd-9f52-37edf6cf40df', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.57\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1302, '9a525477-d676-4e90-a358-b95c1897278d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.55\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1303, '9a525477-d736-4951-bcdd-333d00c149c5', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.63\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1304, '9a525477-d7ed-4c76-95a0-bade1e4e040a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1305, '9a525477-d8a2-481c-b23f-0d0aa5727d44', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1306, '9a525477-d957-4f30-b6e6-030f2d8b2243', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1307, '9a525477-da0d-4756-9e03-907876c46cb5', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1308, '9a525477-dac2-4ba9-b4c9-c6344647ac28', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1309, '9a525477-db77-43ef-a44f-826547b84179', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1310, '9a525477-dc2c-44ef-be1d-c15b1a83af7d', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1311, '9a525477-dd2b-4859-9d9a-58c87f39be7a', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.64\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1312, '9a525477-dde1-4eb9-8fd7-e1a16efd4149', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1313, '9a525477-de97-4e4c-b362-5ea75881e77f', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.63\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1314, '9a525477-df4c-4e86-b30a-0e8c71d4bddc', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1315, '9a525477-e002-45dd-b15b-dfd90362c5a3', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1316, '9a525477-e0bb-4963-99f7-6734c0c997ed', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1317, '9a525477-e171-47ec-b5ff-f65e93c18aa2', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1318, '9a525477-e226-4dca-80e9-db487968f7f1', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1319, '9a525477-e2da-473c-aabc-e096cfa6fc33', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1320, '9a525477-e437-45ad-8f7e-0751586c9431', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"1.86\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1321, '9a525477-e4f0-4bf5-a1c6-334d91895fce', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1322, '9a525477-e5a7-4963-82c6-3cc710676606', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.63\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1323, '9a525477-e65b-4214-9271-d1ec8852e829', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1324, '9a525477-e710-41c2-9100-5a0fd4e16639', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1325, '9a525477-e7c4-44a3-9309-22dff714aed4', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1326, '9a525477-e879-4bed-9632-fdb4be328e05', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.61\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1327, '9a525477-e930-4bb0-861e-cece409da4cc', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `states` where `states`.`id` = 34 limit 1\",\"time\":\"0.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\storage\\\\framework\\\\views\\\\e65b08bb8e42d5239f414c21dd2fa1ba.php\",\"line\":58,\"hash\":\"f996857658330d4d7acdd9e0b53a2161\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31'),
(1328, '9a525477-eae5-4dde-b9da-6f30bd019d28', '9a525478-082d-4262-8189-a5852b35b5d2', NULL, 1, 'view', '{\"name\":\"layouts.auth\",\"path\":\"\\\\resources\\\\views\\/layouts\\/auth.blade.php\",\"data\":[\"cities\",\"__currentLoopData\",\"city\",\"loop\"],\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:31');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(1330, '9a52547e-edea-4e0e-8f46-b2e433e11be8', '9a52547e-fa63-46ab-a6ae-5d74c5c6e7ce', NULL, 1, 'view', '{\"name\":\"errors::404\",\"path\":\"\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Exceptions\\/views\\/404.blade.php\",\"data\":[\"exception\"],\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:36'),
(1331, '9a52547e-f7c0-47fb-bed3-c6013bbc51ae', '9a52547e-fa63-46ab-a6ae-5d74c5c6e7ce', NULL, 1, 'view', '{\"name\":\"errors::minimal\",\"path\":\"\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Exceptions\\/views\\/minimal.blade.php\",\"data\":[\"exception\"],\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:36'),
(1332, '9a52547e-f872-4684-ad81-a184e3f787a6', '9a52547e-fa63-46ab-a6ae-5d74c5c6e7ce', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/admin\\/images\\/user\\/user-sm-02.jpg\",\"method\":\"GET\",\"controller_action\":null,\"middleware\":[],\"headers\":{\"host\":\"localhost:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua\":\"\\\"Google Chrome\\\";v=\\\"117\\\", \\\"Not;A=Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"117\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/117.0.0.0 Safari\\/537.36\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"accept\":\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"no-cors\",\"sec-fetch-dest\":\"image\",\"referer\":\"http:\\/\\/localhost:8000\\/admin\\/cities\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6ImdtK2RRVENWUTJwK3ZnOXk2RkQvNVE9PSIsInZhbHVlIjoiQjlDMDJYTUE4ekwrYW1PMEFqZWhiU1JOTldXOE9zaEZIRXhWaVUySFFZQ1pvSzhnL2p1YXpBVVRDUVllQzBBY2YrM0dHVnNkc2YrSFdXbjJUckdVL09NVEU4dWNYTGt0ZFZuOFdUS2txSDR6ZHJ4czE0cTBpV09yQjlqb05IWE8iLCJtYWMiOiJkZDZiNWViYWJhZjI1OTlmMWI1MDkwOTQxNGM4ZGRhZDIxY2JiNmY2MTZiMWMwZmQxMWYyNGJkMzZkN2U4NTg5IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IjF3Wkgzc01LNTlZa09XdDFsWFRFVHc9PSIsInZhbHVlIjoiTUh3aGljVE4yZloyYUhEOGZ3QlFwbFpYSkl2NzlST3pvNWE4V1BWeEJ6cG1UaXBtQW5OMERkNCtaSnJ6ZVZUeEh2R2Z3dmxmQ01NYjhlWmp4eFdhek85OElWa1VOSjIydmVHU2VWTVJDMFZOVUt2U0dhV2lhZzFzb3BpRktFSi8iLCJtYWMiOiJlMjNlMjBkMTc0ZTU3ZGE1YjRlNDY5NjM4YWJjNTFjZDczZDVmYmYzYTg0YjVjYTRjZDhhMGYwNTlmMjFjMWQ0IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":404,\"response\":\"HTML Response\",\"duration\":1355,\"memory\":20,\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:36'),
(1333, '9a52547f-c7aa-4887-9a87-e916ee6b52ec', '9a52547f-d01e-41ab-97c9-c1664cd674a1', NULL, 1, 'view', '{\"name\":\"errors::404\",\"path\":\"\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Exceptions\\/views\\/404.blade.php\",\"data\":[\"exception\"],\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:36'),
(1334, '9a52547f-cd9b-4f0c-8454-aecc45af726f', '9a52547f-d01e-41ab-97c9-c1664cd674a1', NULL, 1, 'view', '{\"name\":\"errors::minimal\",\"path\":\"\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Exceptions\\/views\\/minimal.blade.php\",\"data\":[\"exception\"],\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:36'),
(1335, '9a52547f-ce3c-47d0-8b4c-fb5a80946333', '9a52547f-d01e-41ab-97c9-c1664cd674a1', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/admin\\/images\\/user\\/user-xs-01.jpg\",\"method\":\"GET\",\"controller_action\":null,\"middleware\":[],\"headers\":{\"host\":\"localhost:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua\":\"\\\"Google Chrome\\\";v=\\\"117\\\", \\\"Not;A=Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"117\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/117.0.0.0 Safari\\/537.36\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"accept\":\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"no-cors\",\"sec-fetch-dest\":\"image\",\"referer\":\"http:\\/\\/localhost:8000\\/admin\\/cities\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6ImdtK2RRVENWUTJwK3ZnOXk2RkQvNVE9PSIsInZhbHVlIjoiQjlDMDJYTUE4ekwrYW1PMEFqZWhiU1JOTldXOE9zaEZIRXhWaVUySFFZQ1pvSzhnL2p1YXpBVVRDUVllQzBBY2YrM0dHVnNkc2YrSFdXbjJUckdVL09NVEU4dWNYTGt0ZFZuOFdUS2txSDR6ZHJ4czE0cTBpV09yQjlqb05IWE8iLCJtYWMiOiJkZDZiNWViYWJhZjI1OTlmMWI1MDkwOTQxNGM4ZGRhZDIxY2JiNmY2MTZiMWMwZmQxMWYyNGJkMzZkN2U4NTg5IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IjF3Wkgzc01LNTlZa09XdDFsWFRFVHc9PSIsInZhbHVlIjoiTUh3aGljVE4yZloyYUhEOGZ3QlFwbFpYSkl2NzlST3pvNWE4V1BWeEJ6cG1UaXBtQW5OMERkNCtaSnJ6ZVZUeEh2R2Z3dmxmQ01NYjhlWmp4eFdhek85OElWa1VOSjIydmVHU2VWTVJDMFZOVUt2U0dhV2lhZzFzb3BpRktFSi8iLCJtYWMiOiJlMjNlMjBkMTc0ZTU3ZGE1YjRlNDY5NjM4YWJjNTFjZDczZDVmYmYzYTg0YjVjYTRjZDhhMGYwNTlmMjFjMWQ0IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":404,\"response\":\"HTML Response\",\"duration\":499,\"memory\":20,\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:36'),
(1336, '9a525480-aa00-4b31-9535-8ee224823089', '9a525480-b325-4bfe-af06-0bab514da8f8', NULL, 1, 'view', '{\"name\":\"errors::404\",\"path\":\"\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Exceptions\\/views\\/404.blade.php\",\"data\":[\"exception\"],\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:37'),
(1337, '9a525480-aee7-48c4-bf16-c715c306b93f', '9a525480-b325-4bfe-af06-0bab514da8f8', NULL, 1, 'view', '{\"name\":\"errors::minimal\",\"path\":\"\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Exceptions\\/views\\/minimal.blade.php\",\"data\":[\"exception\"],\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:37'),
(1338, '9a525480-af7d-4f64-9e0f-0b7f245ffff3', '9a525480-b325-4bfe-af06-0bab514da8f8', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/admin\\/images\\/user\\/user-sm-03.jpg\",\"method\":\"GET\",\"controller_action\":null,\"middleware\":[],\"headers\":{\"host\":\"localhost:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua\":\"\\\"Google Chrome\\\";v=\\\"117\\\", \\\"Not;A=Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"117\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/117.0.0.0 Safari\\/537.36\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"accept\":\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"no-cors\",\"sec-fetch-dest\":\"image\",\"referer\":\"http:\\/\\/localhost:8000\\/admin\\/cities\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6ImdtK2RRVENWUTJwK3ZnOXk2RkQvNVE9PSIsInZhbHVlIjoiQjlDMDJYTUE4ekwrYW1PMEFqZWhiU1JOTldXOE9zaEZIRXhWaVUySFFZQ1pvSzhnL2p1YXpBVVRDUVllQzBBY2YrM0dHVnNkc2YrSFdXbjJUckdVL09NVEU4dWNYTGt0ZFZuOFdUS2txSDR6ZHJ4czE0cTBpV09yQjlqb05IWE8iLCJtYWMiOiJkZDZiNWViYWJhZjI1OTlmMWI1MDkwOTQxNGM4ZGRhZDIxY2JiNmY2MTZiMWMwZmQxMWYyNGJkMzZkN2U4NTg5IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IjF3Wkgzc01LNTlZa09XdDFsWFRFVHc9PSIsInZhbHVlIjoiTUh3aGljVE4yZloyYUhEOGZ3QlFwbFpYSkl2NzlST3pvNWE4V1BWeEJ6cG1UaXBtQW5OMERkNCtaSnJ6ZVZUeEh2R2Z3dmxmQ01NYjhlWmp4eFdhek85OElWa1VOSjIydmVHU2VWTVJDMFZOVUt2U0dhV2lhZzFzb3BpRktFSi8iLCJtYWMiOiJlMjNlMjBkMTc0ZTU3ZGE1YjRlNDY5NjM4YWJjNTFjZDczZDVmYmYzYTg0YjVjYTRjZDhhMGYwNTlmMjFjMWQ0IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":404,\"response\":\"HTML Response\",\"duration\":510,\"memory\":20,\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:37'),
(1339, '9a525481-6859-4168-aa6d-d0b4bf9a39cc', '9a525481-722b-400b-87a9-cbe9fe3e110e', NULL, 1, 'view', '{\"name\":\"errors::404\",\"path\":\"\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Exceptions\\/views\\/404.blade.php\",\"data\":[\"exception\"],\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:37'),
(1340, '9a525481-6fa2-425b-b7b3-2fb1be988c89', '9a525481-722b-400b-87a9-cbe9fe3e110e', NULL, 1, 'view', '{\"name\":\"errors::minimal\",\"path\":\"\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Exceptions\\/views\\/minimal.blade.php\",\"data\":[\"exception\"],\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:37'),
(1341, '9a525481-706f-4ffa-93db-0f1aa465764f', '9a525481-722b-400b-87a9-cbe9fe3e110e', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/admin\\/images\\/user\\/user-sm-01.jpg\",\"method\":\"GET\",\"controller_action\":null,\"middleware\":[],\"headers\":{\"host\":\"localhost:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua\":\"\\\"Google Chrome\\\";v=\\\"117\\\", \\\"Not;A=Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"117\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/117.0.0.0 Safari\\/537.36\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"accept\":\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"no-cors\",\"sec-fetch-dest\":\"image\",\"referer\":\"http:\\/\\/localhost:8000\\/admin\\/cities\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6ImdtK2RRVENWUTJwK3ZnOXk2RkQvNVE9PSIsInZhbHVlIjoiQjlDMDJYTUE4ekwrYW1PMEFqZWhiU1JOTldXOE9zaEZIRXhWaVUySFFZQ1pvSzhnL2p1YXpBVVRDUVllQzBBY2YrM0dHVnNkc2YrSFdXbjJUckdVL09NVEU4dWNYTGt0ZFZuOFdUS2txSDR6ZHJ4czE0cTBpV09yQjlqb05IWE8iLCJtYWMiOiJkZDZiNWViYWJhZjI1OTlmMWI1MDkwOTQxNGM4ZGRhZDIxY2JiNmY2MTZiMWMwZmQxMWYyNGJkMzZkN2U4NTg5IiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6IjF3Wkgzc01LNTlZa09XdDFsWFRFVHc9PSIsInZhbHVlIjoiTUh3aGljVE4yZloyYUhEOGZ3QlFwbFpYSkl2NzlST3pvNWE4V1BWeEJ6cG1UaXBtQW5OMERkNCtaSnJ6ZVZUeEh2R2Z3dmxmQ01NYjhlWmp4eFdhek85OElWa1VOSjIydmVHU2VWTVJDMFZOVUt2U0dhV2lhZzFzb3BpRktFSi8iLCJtYWMiOiJlMjNlMjBkMTc0ZTU3ZGE1YjRlNDY5NjM4YWJjNTFjZDczZDVmYmYzYTg0YjVjYTRjZDhhMGYwNTlmMjFjMWQ0IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":404,\"response\":\"HTML Response\",\"duration\":432,\"memory\":20,\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:37'),
(1342, '9a525483-c5dc-4ad6-9884-7dc547f5db2e', '9a525483-cede-4073-9804-df11731e2d03', NULL, 1, 'view', '{\"name\":\"errors::404\",\"path\":\"\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Exceptions\\/views\\/404.blade.php\",\"data\":[\"exception\"],\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:39'),
(1343, '9a525483-cc52-4f80-a099-1913bc1e818c', '9a525483-cede-4073-9804-df11731e2d03', NULL, 1, 'view', '{\"name\":\"errors::minimal\",\"path\":\"\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Exceptions\\/views\\/minimal.blade.php\",\"data\":[\"exception\"],\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:39'),
(1344, '9a525483-ccea-4c29-b58f-a3d3cb28c6b2', '9a525483-cede-4073-9804-df11731e2d03', NULL, 1, 'request', '{\"ip_address\":\"127.0.0.1\",\"uri\":\"\\/admin\\/images\\/user\\/user-sm-04.jpg\",\"method\":\"GET\",\"controller_action\":null,\"middleware\":[],\"headers\":{\"host\":\"localhost:8000\",\"connection\":\"keep-alive\",\"sec-ch-ua\":\"\\\"Google Chrome\\\";v=\\\"117\\\", \\\"Not;A=Brand\\\";v=\\\"8\\\", \\\"Chromium\\\";v=\\\"117\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/117.0.0.0 Safari\\/537.36\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"accept\":\"image\\/avif,image\\/webp,image\\/apng,image\\/svg+xml,image\\/*,*\\/*;q=0.8\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"no-cors\",\"sec-fetch-dest\":\"image\",\"referer\":\"http:\\/\\/localhost:8000\\/admin\\/cities\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"en-US,en;q=0.9\",\"cookie\":\"XSRF-TOKEN=eyJpdiI6Im1pT3h5YjI4RStMN2hkeHBveGhZWmc9PSIsInZhbHVlIjoiemViNEhwQkZIbGRoRk53Sm5ySU9UcWNlOHdTVi9DZ3lxNDRMK1M0K2lnMmYyb2RwNlZvR1Uxdk1BeGwvZUg0bXVPQUUwN2JwOEsyTEUrR3A0YUhGdzhGSnFndTg2ODNheHlYQ3FOUlZXWGd3dC9jZ3Ztd3plYVJLSDRVaXN0U1IiLCJtYWMiOiJjZWQxNGU3Yjg0MDVjMjE1Nzk0NGUxYTg4NmQ1MTJiNDcyZDcyZDQ0NTc0MmQxYjkwMmI4YzIxMGQ2MjhmNzFiIiwidGFnIjoiIn0%3D; laravel_session=eyJpdiI6InkySFk4MXdma0VlaHFURUVHOFFKZEE9PSIsInZhbHVlIjoiY1Z0OTdkR2RGN2tIYnIwWFBXZlBkZG15bjRzU0QxcmFKbVFaeGQ4Q1EyTXpxMWhJNTZuNy9aZEFNcmtCZGN6VTBNZit0amlKdkZzdkFHR1dSVHB1LzFyL1pEMy9peTNHbGxrVlFkbXJXY0d6R3NRMXM0U2E5dnZoNEJNZkdzRGMiLCJtYWMiOiJmMDBmMThmMjEyYTI1OTU5NDc2MDEzZjgzNzg2OWE2ZWY0MmY5ZTZmZjA5Nzc5OGYyYWRjZTE3MjNjYTBiZGI5IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":[],\"response_status\":404,\"response\":\"HTML Response\",\"duration\":431,\"memory\":20,\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-08 16:52:39'),
(1345, '9a53a60f-d16d-4582-a80e-924cb49c3e60', '9a53a60f-ecc6-4e85-800c-d4135cf69fe0', '96a1e91482fe6ae17b2b8ec168999b86', 1, 'exception', '{\"class\":\"Symfony\\\\Component\\\\Console\\\\Exception\\\\CommandNotFoundException\",\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":725,\"message\":\"Command \\\"passposrt\\\" is not defined.\\n\\nDid you mean one of these?\\n    passport:client\\n    passport:hash\\n    passport:install\\n    passport:keys\\n    passport:purge\",\"context\":null,\"trace\":[{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":262},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\symfony\\\\console\\\\Application.php\",\"line\":174},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Console\\\\Kernel.php\",\"line\":201},{\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35}],\"line_preview\":{\"716\":\"\",\"717\":\"                if (1 == \\\\count($alternatives)) {\",\"718\":\"                    $message .= \\\"\\\\n\\\\nDid you mean this?\\\\n    \\\";\",\"719\":\"                } else {\",\"720\":\"                    $message .= \\\"\\\\n\\\\nDid you mean one of these?\\\\n    \\\";\",\"721\":\"                }\",\"722\":\"                $message .= implode(\\\"\\\\n    \\\", $alternatives);\",\"723\":\"            }\",\"724\":\"\",\"725\":\"            throw new CommandNotFoundException($message, array_values($alternatives));\",\"726\":\"        }\",\"727\":\"\",\"728\":\"        \\/\\/ filter out aliases for commands which are already on the list\",\"729\":\"        if (\\\\count($commands) > 1) {\",\"730\":\"            $commandList = $this->commandLoader ? array_merge(array_flip($this->commandLoader->getNames()), $this->commands) : $this->commands;\",\"731\":\"            $commands = array_unique(array_filter($commands, function ($nameOrAlias) use (&$commandList, $commands, &$aliases) {\",\"732\":\"                if (!$commandList[$nameOrAlias] instanceof Command) {\",\"733\":\"                    $commandList[$nameOrAlias] = $this->commandLoader->get($nameOrAlias);\",\"734\":\"                }\",\"735\":\"\"},\"hostname\":\"DESKTOP-LFS5PVP\",\"occurrences\":1}', '2023-10-09 08:36:30'),
(1346, '9a53a6f2-e00c-4f4d-a04a-e406ce135ca4', '9a53a6f2-e771-4b6d-8bc6-5eb9e07cba72', NULL, 1, 'command', '{\"command\":\"vendor:publish\",\"exit_code\":0,\"arguments\":{\"command\":\"vendor:publish\"},\"options\":{\"existing\":false,\"force\":true,\"all\":false,\"provider\":null,\"tag\":[\"laravel-assets\"],\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":true,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:38:58'),
(1347, '9a53a75c-0422-420c-a4f5-bfe23e4f407f', '9a53a75c-0ca7-44c5-9bfa-86e6383a7260', NULL, 1, 'command', '{\"command\":\"vendor:publish\",\"exit_code\":0,\"arguments\":{\"command\":\"vendor:publish\"},\"options\":{\"existing\":false,\"force\":true,\"all\":false,\"provider\":null,\"tag\":[\"laravel-assets\"],\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":true,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:40:07'),
(1348, '9a53a762-6ba9-4ea7-b247-3598eb4a2f93', '9a53a762-732f-4c86-b5e5-ce53bbba5819', NULL, 1, 'command', '{\"command\":\"vendor:publish\",\"exit_code\":0,\"arguments\":{\"command\":\"vendor:publish\"},\"options\":{\"existing\":false,\"force\":true,\"all\":false,\"provider\":\"Laravel\\\\Sanctum\\\\SanctumServiceProvider\",\"tag\":[],\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:40:12'),
(1349, '9a53a79a-c8a3-413a-ade0-da34abdbbb06', '9a53a79a-d1f6-4c45-95b0-8174aa2cc335', NULL, 1, 'command', '{\"command\":\"jetstream:install\",\"exit_code\":0,\"arguments\":{\"command\":\"jetstream:install\",\"stack\":\"livewire\"},\"options\":{\"dark\":false,\"teams\":true,\"api\":false,\"verification\":false,\"pest\":false,\"ssr\":false,\"composer\":\"global\",\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:40:49'),
(1350, '9a53a86d-2262-4dbe-bc19-a3a7fd6d9844', '9a53a86d-4a29-449b-92e1-27c1d536cde9', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from information_schema.tables where table_schema = \'matrimony\' and table_name = \'migrations\' and table_type = \'BASE TABLE\'\",\"time\":\"6.11\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"ad7d07e5104cadcc6e9623dfc5fefdd8\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:43:06'),
(1351, '9a53a86d-2ae1-4622-a244-fbe7f8048723', '9a53a86d-4a29-449b-92e1-27c1d536cde9', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from information_schema.tables where table_schema = \'matrimony\' and table_name = \'migrations\' and table_type = \'BASE TABLE\'\",\"time\":\"2.88\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"ad7d07e5104cadcc6e9623dfc5fefdd8\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:43:06'),
(1352, '9a53a86d-2ff7-4467-9fd1-2e0c66d54674', '9a53a86d-4a29-449b-92e1-27c1d536cde9', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `migration` from `migrations` order by `batch` asc, `migration` asc\",\"time\":\"2.96\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"ed08a59c7f0b8851f0fd2291ca94d5c7\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:43:06'),
(1353, '9a53a86d-30b0-40b5-b5cc-6bc3841e206a', '9a53a86d-4a29-449b-92e1-27c1d536cde9', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `migration` from `migrations` order by `batch` asc, `migration` asc\",\"time\":\"0.84\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"ed08a59c7f0b8851f0fd2291ca94d5c7\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:43:06'),
(1354, '9a53a86d-31c6-49f8-886c-d991da5a1bc4', '9a53a86d-4a29-449b-92e1-27c1d536cde9', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select max(`batch`) as aggregate from `migrations`\",\"time\":\"0.63\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"06e60d7b3d1a0c2de504de4e6f27735e\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:43:06'),
(1355, '9a53a86d-40c2-4d08-87e3-93cfa3871255', '9a53a86d-4a29-449b-92e1-27c1d536cde9', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `users` add `two_factor_secret` text null after `password`, add `two_factor_recovery_codes` text null after `two_factor_secret`, add `two_factor_confirmed_at` timestamp null after `two_factor_recovery_codes`\",\"time\":\"16.91\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\database\\\\migrations\\\\2014_10_12_200000_add_two_factor_columns_to_users_table.php\",\"line\":15,\"hash\":\"5a5ceab4e0116f44b7e9387eb3993f3f\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:43:06'),
(1356, '9a53a86d-44a0-47a5-b6a0-58920a87c0b5', '9a53a86d-4a29-449b-92e1-27c1d536cde9', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2014_10_12_200000_add_two_factor_columns_to_users_table\', 42)\",\"time\":\"4.25\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:43:06'),
(1357, '9a53a86d-48aa-4ffc-b9e0-115fc01a1d5e', '9a53a86d-4a29-449b-92e1-27c1d536cde9', NULL, 1, 'command', '{\"command\":\"migrate\",\"exit_code\":0,\"arguments\":{\"command\":\"migrate\"},\"options\":{\"database\":null,\"force\":false,\"path\":[\".\\/database\\/migrations\\/2014_10_12_200000_add_two_factor_columns_to_users_table.php\"],\"realpath\":false,\"schema-path\":null,\"pretend\":false,\"seed\":false,\"seeder\":null,\"step\":false,\"isolated\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:43:06'),
(1358, '9a53a8a9-1dc8-49c1-a3be-6cf8a6bcf949', '9a53a8a9-49db-4b50-bea2-717be9e6b888', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from information_schema.tables where table_schema = \'matrimony\' and table_name = \'migrations\' and table_type = \'BASE TABLE\'\",\"time\":\"6.05\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"ad7d07e5104cadcc6e9623dfc5fefdd8\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:43:46'),
(1359, '9a53a8a9-2488-46fa-bb1c-f135b3bcd6f1', '9a53a8a9-49db-4b50-bea2-717be9e6b888', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from information_schema.tables where table_schema = \'matrimony\' and table_name = \'migrations\' and table_type = \'BASE TABLE\'\",\"time\":\"0.98\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"ad7d07e5104cadcc6e9623dfc5fefdd8\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:43:46'),
(1360, '9a53a8a9-2800-4b8a-994d-060852517660', '9a53a8a9-49db-4b50-bea2-717be9e6b888', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `migration` from `migrations` order by `batch` asc, `migration` asc\",\"time\":\"1.00\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"ed08a59c7f0b8851f0fd2291ca94d5c7\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:43:46'),
(1361, '9a53a8a9-28b9-43f4-8e25-f2bcb7aeab77', '9a53a8a9-49db-4b50-bea2-717be9e6b888', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `migration` from `migrations` order by `batch` asc, `migration` asc\",\"time\":\"0.89\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"ed08a59c7f0b8851f0fd2291ca94d5c7\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:43:46'),
(1362, '9a53a8a9-29c4-4ae4-becf-cf3becb03cd8', '9a53a8a9-49db-4b50-bea2-717be9e6b888', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select max(`batch`) as aggregate from `migrations`\",\"time\":\"0.69\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"06e60d7b3d1a0c2de504de4e6f27735e\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:43:46'),
(1363, '9a53a8a9-3b37-4460-8a93-eb50af913245', '9a53a8a9-49db-4b50-bea2-717be9e6b888', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `teams` (`id` bigint unsigned not null auto_increment primary key, `user_id` bigint unsigned not null, `name` varchar(255) not null, `personal_team` tinyint(1) not null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"24.53\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\database\\\\migrations\\\\2020_05_21_100000_create_teams_table.php\",\"line\":14,\"hash\":\"b7d57fad9d0d8d22de106c2cff727ca6\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:43:46'),
(1364, '9a53a8a9-4312-44af-a7cb-ce196957cadd', '9a53a8a9-49db-4b50-bea2-717be9e6b888', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `teams` add index `teams_user_id_index`(`user_id`)\",\"time\":\"19.40\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\database\\\\migrations\\\\2020_05_21_100000_create_teams_table.php\",\"line\":14,\"hash\":\"ac59f54a7b840672eba5f4a5c2b3d304\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:43:46'),
(1365, '9a53a8a9-46f8-4dd1-828c-5b8ba1dd5698', '9a53a8a9-49db-4b50-bea2-717be9e6b888', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2020_05_21_100000_create_teams_table\', 43)\",\"time\":\"3.62\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:43:46'),
(1366, '9a53a8a9-4868-4d7f-851d-570c644dd437', '9a53a8a9-49db-4b50-bea2-717be9e6b888', NULL, 1, 'command', '{\"command\":\"migrate\",\"exit_code\":0,\"arguments\":{\"command\":\"migrate\"},\"options\":{\"database\":null,\"force\":false,\"path\":[\".\\/database\\/migrations\\/2020_05_21_100000_create_teams_table.php\"],\"realpath\":false,\"schema-path\":null,\"pretend\":false,\"seed\":false,\"seeder\":null,\"step\":false,\"isolated\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:43:46'),
(1367, '9a53a8c9-7823-4900-b8eb-2b82fcfeda91', '9a53a8c9-a565-4244-8efe-abd1989a92d7', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from information_schema.tables where table_schema = \'matrimony\' and table_name = \'migrations\' and table_type = \'BASE TABLE\'\",\"time\":\"5.49\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"ad7d07e5104cadcc6e9623dfc5fefdd8\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:44:07'),
(1368, '9a53a8c9-7ed0-4cf0-83d7-c831cb966343', '9a53a8c9-a565-4244-8efe-abd1989a92d7', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from information_schema.tables where table_schema = \'matrimony\' and table_name = \'migrations\' and table_type = \'BASE TABLE\'\",\"time\":\"0.94\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"ad7d07e5104cadcc6e9623dfc5fefdd8\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:44:07'),
(1369, '9a53a8c9-8298-406d-ba49-b5de5170049e', '9a53a8c9-a565-4244-8efe-abd1989a92d7', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `migration` from `migrations` order by `batch` asc, `migration` asc\",\"time\":\"0.97\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"ed08a59c7f0b8851f0fd2291ca94d5c7\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:44:07'),
(1370, '9a53a8c9-8649-4f77-8d91-a5967b235bc8', '9a53a8c9-a565-4244-8efe-abd1989a92d7', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `migration` from `migrations` order by `batch` asc, `migration` asc\",\"time\":\"8.27\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"ed08a59c7f0b8851f0fd2291ca94d5c7\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:44:07'),
(1371, '9a53a8c9-8925-4f0c-899a-d66e85e860ba', '9a53a8c9-a565-4244-8efe-abd1989a92d7', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select max(`batch`) as aggregate from `migrations`\",\"time\":\"5.39\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"06e60d7b3d1a0c2de504de4e6f27735e\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:44:07'),
(1372, '9a53a8c9-960d-4471-8556-780731080f02', '9a53a8c9-a565-4244-8efe-abd1989a92d7', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `team_user` (`id` bigint unsigned not null auto_increment primary key, `team_id` bigint unsigned not null, `user_id` bigint unsigned not null, `role` varchar(255) null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"13.14\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\database\\\\migrations\\\\2020_05_21_200000_create_team_user_table.php\",\"line\":14,\"hash\":\"1d790a5a9b57ceef6eb3cce1e6b55a10\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:44:07'),
(1373, '9a53a8c9-9e83-4929-a9fa-e20dd62c5eb3', '9a53a8c9-a565-4244-8efe-abd1989a92d7', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `team_user` add unique `team_user_team_id_user_id_unique`(`team_id`, `user_id`)\",\"time\":\"20.67\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\database\\\\migrations\\\\2020_05_21_200000_create_team_user_table.php\",\"line\":14,\"hash\":\"783563225d9c462327b6c9e6793b2458\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:44:07'),
(1374, '9a53a8c9-a316-434f-83df-f7c126b582c2', '9a53a8c9-a565-4244-8efe-abd1989a92d7', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2020_05_21_200000_create_team_user_table\', 44)\",\"time\":\"4.89\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:44:07'),
(1375, '9a53a8c9-a3ef-4a93-b31f-6738bb0160f9', '9a53a8c9-a565-4244-8efe-abd1989a92d7', NULL, 1, 'command', '{\"command\":\"migrate\",\"exit_code\":0,\"arguments\":{\"command\":\"migrate\"},\"options\":{\"database\":null,\"force\":false,\"path\":[\".\\/database\\/migrations\\/2020_05_21_200000_create_team_user_table.php\"],\"realpath\":false,\"schema-path\":null,\"pretend\":false,\"seed\":false,\"seeder\":null,\"step\":false,\"isolated\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:44:07'),
(1376, '9a53a8f0-ea3d-4661-8765-85d6c292209a', '9a53a8f1-3130-4980-804e-a65ec35f0df4', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from information_schema.tables where table_schema = \'matrimony\' and table_name = \'migrations\' and table_type = \'BASE TABLE\'\",\"time\":\"6.16\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"ad7d07e5104cadcc6e9623dfc5fefdd8\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:44:33'),
(1377, '9a53a8f0-f324-4b76-b9e4-5af9552d3dc8', '9a53a8f1-3130-4980-804e-a65ec35f0df4', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from information_schema.tables where table_schema = \'matrimony\' and table_name = \'migrations\' and table_type = \'BASE TABLE\'\",\"time\":\"0.92\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"ad7d07e5104cadcc6e9623dfc5fefdd8\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:44:33'),
(1378, '9a53a8f0-f698-49cb-ae7a-47e3e8e259c1', '9a53a8f1-3130-4980-804e-a65ec35f0df4', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `migration` from `migrations` order by `batch` asc, `migration` asc\",\"time\":\"0.95\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"ed08a59c7f0b8851f0fd2291ca94d5c7\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:44:33'),
(1379, '9a53a8f0-f74f-4842-a282-5d5d61e4fd50', '9a53a8f1-3130-4980-804e-a65ec35f0df4', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `migration` from `migrations` order by `batch` asc, `migration` asc\",\"time\":\"0.89\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"ed08a59c7f0b8851f0fd2291ca94d5c7\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:44:33'),
(1380, '9a53a8f0-f85a-4fce-852d-58506f1d2fe2', '9a53a8f1-3130-4980-804e-a65ec35f0df4', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select max(`batch`) as aggregate from `migrations`\",\"time\":\"0.69\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"06e60d7b3d1a0c2de504de4e6f27735e\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:44:33'),
(1381, '9a53a8f1-0bef-415f-bcbe-7874ed2037fc', '9a53a8f1-3130-4980-804e-a65ec35f0df4', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `team_invitations` (`id` bigint unsigned not null auto_increment primary key, `team_id` bigint unsigned not null, `email` varchar(255) not null, `role` varchar(255) null, `created_at` timestamp null, `updated_at` timestamp null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"26.11\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\database\\\\migrations\\\\2020_05_21_300000_create_team_invitations_table.php\",\"line\":14,\"hash\":\"14c43fda01bd7e62ccc9445416978bb1\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:44:33'),
(1382, '9a53a8f1-2428-49d2-baa7-ec7df94a60e0', '9a53a8f1-3130-4980-804e-a65ec35f0df4', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `team_invitations` add constraint `team_invitations_team_id_foreign` foreign key (`team_id`) references `teams` (`id`) on delete cascade\",\"time\":\"61.31\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\database\\\\migrations\\\\2020_05_21_300000_create_team_invitations_table.php\",\"line\":14,\"hash\":\"a92bb98f5b0889dcac09fb4dd25ba3a9\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:44:33'),
(1383, '9a53a8f1-2c30-404e-82d7-5231c4f81b32', '9a53a8f1-3130-4980-804e-a65ec35f0df4', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `team_invitations` add unique `team_invitations_team_id_email_unique`(`team_id`, `email`)\",\"time\":\"19.86\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\database\\\\migrations\\\\2020_05_21_300000_create_team_invitations_table.php\",\"line\":14,\"hash\":\"382005e88672fb0cd6ce2021bdc4530b\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:44:33'),
(1384, '9a53a8f1-2e7d-4f6b-98b7-fce09669d5c6', '9a53a8f1-3130-4980-804e-a65ec35f0df4', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2020_05_21_300000_create_team_invitations_table\', 45)\",\"time\":\"1.87\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:44:33'),
(1385, '9a53a8f1-2f5a-4a29-99dd-0f97a1e8a53f', '9a53a8f1-3130-4980-804e-a65ec35f0df4', NULL, 1, 'command', '{\"command\":\"migrate\",\"exit_code\":0,\"arguments\":{\"command\":\"migrate\"},\"options\":{\"database\":null,\"force\":false,\"path\":[\".\\/database\\/migrations\\/2020_05_21_300000_create_team_invitations_table.php\"],\"realpath\":false,\"schema-path\":null,\"pretend\":false,\"seed\":false,\"seeder\":null,\"step\":false,\"isolated\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:44:33'),
(1386, '9a53a91a-10f1-452b-afdc-3b12a10bcdc0', '9a53a91a-54a0-4a0b-b4fd-f1b8017ea322', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from information_schema.tables where table_schema = \'matrimony\' and table_name = \'migrations\' and table_type = \'BASE TABLE\'\",\"time\":\"6.06\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"ad7d07e5104cadcc6e9623dfc5fefdd8\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:45:00'),
(1387, '9a53a91a-1812-4c4a-84d0-e6eb7404141f', '9a53a91a-54a0-4a0b-b4fd-f1b8017ea322', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from information_schema.tables where table_schema = \'matrimony\' and table_name = \'migrations\' and table_type = \'BASE TABLE\'\",\"time\":\"0.95\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"ad7d07e5104cadcc6e9623dfc5fefdd8\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:45:00'),
(1388, '9a53a91a-1bb5-4858-8e22-4fe39dbaaa53', '9a53a91a-54a0-4a0b-b4fd-f1b8017ea322', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `migration` from `migrations` order by `batch` asc, `migration` asc\",\"time\":\"1.11\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"ed08a59c7f0b8851f0fd2291ca94d5c7\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:45:00'),
(1389, '9a53a91a-1c74-4ea0-8d80-d3f6960cf830', '9a53a91a-54a0-4a0b-b4fd-f1b8017ea322', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select `migration` from `migrations` order by `batch` asc, `migration` asc\",\"time\":\"0.93\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"ed08a59c7f0b8851f0fd2291ca94d5c7\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:45:00'),
(1390, '9a53a91a-1d8c-4873-a539-44820f1a316d', '9a53a91a-54a0-4a0b-b4fd-f1b8017ea322', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select max(`batch`) as aggregate from `migrations`\",\"time\":\"0.74\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"06e60d7b3d1a0c2de504de4e6f27735e\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:45:00'),
(1391, '9a53a91a-2f92-4d2b-ada0-3ffc8c0bb958', '9a53a91a-54a0-4a0b-b4fd-f1b8017ea322', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"create table `sessions` (`id` varchar(255) not null, `user_id` bigint unsigned null, `ip_address` varchar(45) null, `user_agent` text null, `payload` longtext not null, `last_activity` int not null) default character set utf8mb4 collate \'utf8mb4_unicode_ci\'\",\"time\":\"24.89\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\database\\\\migrations\\\\2023_10_09_083934_create_sessions_table.php\",\"line\":14,\"hash\":\"e457287c9216dbb64c091cade3574faa\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:45:00'),
(1392, '9a53a91a-4096-4b42-a55e-72e954874f96', '9a53a91a-54a0-4a0b-b4fd-f1b8017ea322', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `sessions` add primary key (`id`)\",\"time\":\"42.89\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\database\\\\migrations\\\\2023_10_09_083934_create_sessions_table.php\",\"line\":14,\"hash\":\"f028c335170a0a4107ff256777f2b5ef\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:45:00'),
(1393, '9a53a91a-4866-4834-be40-e19d15b73783', '9a53a91a-54a0-4a0b-b4fd-f1b8017ea322', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `sessions` add index `sessions_user_id_index`(`user_id`)\",\"time\":\"19.27\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\database\\\\migrations\\\\2023_10_09_083934_create_sessions_table.php\",\"line\":14,\"hash\":\"143e0209095c4f5cecfdd51a11268572\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:45:00'),
(1394, '9a53a91a-4efb-426b-ba17-7394f7b364db', '9a53a91a-54a0-4a0b-b4fd-f1b8017ea322', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"alter table `sessions` add index `sessions_last_activity_index`(`last_activity`)\",\"time\":\"16.16\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\database\\\\migrations\\\\2023_10_09_083934_create_sessions_table.php\",\"line\":14,\"hash\":\"5102944fa5d480fdd2bbfbfe1a0c03bc\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:45:00'),
(1395, '9a53a91a-51ea-489c-9ce6-504097e15f15', '9a53a91a-54a0-4a0b-b4fd-f1b8017ea322', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"insert into `migrations` (`migration`, `batch`) values (\'2023_10_09_083934_create_sessions_table\', 46)\",\"time\":\"3.19\",\"slow\":false,\"file\":\"C:\\\\xampp-old\\\\htdocs\\\\Matrimony\\\\artisan\",\"line\":35,\"hash\":\"f2b8e8e4266db16aec6db940c643eb68\",\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:45:00'),
(1396, '9a53a91a-52cc-457c-8707-2f8bc2ae334e', '9a53a91a-54a0-4a0b-b4fd-f1b8017ea322', NULL, 1, 'command', '{\"command\":\"migrate\",\"exit_code\":0,\"arguments\":{\"command\":\"migrate\"},\"options\":{\"database\":null,\"force\":false,\"path\":[\".\\/database\\/migrations\\/2023_10_09_083934_create_sessions_table.php\"],\"realpath\":false,\"schema-path\":null,\"pretend\":false,\"seed\":false,\"seeder\":null,\"step\":false,\"isolated\":false,\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"DESKTOP-LFS5PVP\"}', '2023-10-09 08:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `telescope_entries_tags`
--

CREATE TABLE `telescope_entries_tags` (
  `entry_uuid` char(36) NOT NULL,
  `tag` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `telescope_entries_tags`
--

INSERT INTO `telescope_entries_tags` (`entry_uuid`, `tag`) VALUES
('9a525473-0bcb-485c-8d70-7cf076a2247f', 'App\\Models\\City'),
('9a525473-333c-4acb-b2b2-5f649a4c533d', 'App\\Models\\State');

-- --------------------------------------------------------

--
-- Table structure for table `telescope_monitoring`
--

CREATE TABLE `telescope_monitoring` (
  `tag` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `number` int(12) NOT NULL,
  `profile_for` int(11) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `number`, `profile_for`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'vikas', 'vikas@gmail.com', 0, 0, NULL, '$2y$10$tRiTgOn08tyDDzXUqKx4BuUf63o52vgt0h7WHfkCdQpTEULYnXsR6', NULL, NULL, NULL, NULL, '2023-10-04 13:44:08', '2023-10-04 13:44:08'),
(2, 'vikas', 'vikas1@gmail.com', 0, 0, NULL, '$2y$10$SwipEhbJaWU4JaW7VwoiqeZ2iYEfv2wudXjeB4f4el8Pti437PeGW', NULL, NULL, NULL, NULL, '2023-10-04 13:45:02', '2023-10-07 12:56:22'),
(3, 'vikas', 'vikas3@gmail.com', 0, 0, NULL, '$2y$10$6tm.wEXZD8.3Igdxo50mSuRjZqYoIkpASwKSFm.aoJHXXkJSwSG7K', NULL, NULL, NULL, NULL, '2023-10-04 13:54:54', '2023-10-04 13:54:54'),
(4, 'vikas', 'vikas4@gmail.com', 0, 0, NULL, '$2y$10$0xtQnivto1rRhXSNLnbGm.oaR6jfcVKOcqIIyRLmI65V7YQ1hNtuu', NULL, NULL, NULL, NULL, '2023-10-04 13:57:24', '2023-10-04 13:57:24'),
(5, 'vikas', 'vikas5@gmail.com', 0, 0, NULL, '$2y$10$fO6FwH91Z061x0Z0KOQXRep1W0CAkd7w.R4OyhxzjRFKldzQEsqX2', NULL, NULL, NULL, NULL, '2023-10-04 13:58:16', '2023-10-04 13:58:16'),
(6, 'vikas', 'vikas6@gmail.com', 0, 0, NULL, '$2y$10$RPheA89qnaCC/8BHdmdxc.6K7ncYIa721ZnFEZ.yieW/hEx4ArTbW', NULL, NULL, NULL, NULL, '2023-10-04 13:59:24', '2023-10-04 13:59:24'),
(7, 'vikas', 'vikas7@gmail.com', 0, 0, NULL, '$2y$10$5VwLHOPhkbs1sjUDJFuEF.lPEefqlK11gr/1T1GyenoeZ.M9etx/i', NULL, NULL, NULL, NULL, '2023-10-04 13:59:55', '2023-10-04 13:59:55'),
(8, 'vikas', 'vikas8@gmail.com', 0, 0, NULL, '$2y$10$PKaxzdci2XJYj0xmIUePZuqKjo2ZP7zaOT8aA.pEVVmQoEIIdHyJe', NULL, NULL, NULL, NULL, '2023-10-04 14:00:43', '2023-10-04 14:00:43'),
(9, 'vikas', 'vikas9@gmail.com', 1234567890, 0, NULL, '$2y$10$ktGQREhatVnWWOU5wTJ3iOptMIV0eNd30sDFHuBUE.P/9JLm0lDhe', NULL, NULL, NULL, NULL, '2023-10-04 14:01:59', '2023-10-04 14:01:59'),
(10, 'vikas', 'vikas10@gmail.com', 1234567890, 0, NULL, '$2y$10$Ti7hekJe2mk47pFxcq6Nru1mJnd3fyhJNhCnqAxtJtTrYW.B5zNUS', NULL, NULL, NULL, NULL, '2023-10-04 14:02:38', '2023-10-04 14:02:38');

-- --------------------------------------------------------

--
-- Table structure for table `weights`
--

CREATE TABLE `weights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `weight` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `weights`
--

INSERT INTO `weights` (`id`, `weight`, `status`, `created_at`, `updated_at`) VALUES
(1, '30 kg', 1, NULL, NULL),
(2, '31 kg', 1, NULL, NULL),
(3, '32 kg', 1, NULL, NULL),
(4, '33 kg', 1, NULL, NULL),
(5, '34 kg', 1, NULL, NULL),
(6, '35 kg', 1, NULL, NULL),
(7, '36 kg', 1, NULL, NULL),
(8, '37 kg', 1, NULL, NULL),
(9, '38 kg', 1, NULL, NULL),
(10, '39 kg', 1, NULL, NULL),
(11, '40 kg', 1, NULL, NULL),
(12, '41 kg', 1, NULL, NULL),
(13, '42 kg', 1, NULL, NULL),
(14, '43 kg', 1, NULL, NULL),
(15, '44 kg', 1, NULL, NULL),
(16, '45 kg', 1, NULL, NULL),
(17, '46 kg', 1, NULL, NULL),
(18, '47 kg', 1, NULL, NULL),
(19, '48 kg', 1, NULL, NULL),
(20, '49 kg', 1, NULL, NULL),
(21, '50 kg', 1, NULL, NULL),
(22, '51 kg', 1, NULL, NULL),
(23, '52 kg', 1, NULL, NULL),
(24, '53 kg', 1, NULL, NULL),
(25, '54 kg', 1, NULL, NULL),
(26, '55 kg', 1, NULL, NULL),
(27, '56 kg', 1, NULL, NULL),
(28, '57 kg', 1, NULL, NULL),
(29, '58 kg', 1, NULL, NULL),
(30, '59 kg', 1, NULL, NULL),
(31, '60 kg', 1, NULL, NULL),
(32, '61 kg', 1, NULL, NULL),
(33, '62 kg', 1, NULL, NULL),
(34, '63 kg', 1, NULL, NULL),
(35, '64 kg', 1, NULL, NULL),
(36, '65 kg', 1, NULL, NULL),
(37, '66 kg', 1, NULL, NULL),
(38, '67 kg', 1, NULL, NULL),
(39, '68 kg', 1, NULL, NULL),
(40, '69 kg', 1, NULL, NULL),
(41, '70 kg', 1, NULL, NULL),
(42, '71 kg', 1, NULL, NULL),
(43, '72 kg', 1, NULL, NULL),
(44, '73 kg', 1, NULL, NULL),
(45, '74 kg', 1, NULL, NULL),
(46, '75 kg', 1, NULL, NULL),
(47, '76 kg', 1, NULL, NULL),
(48, '77 kg', 1, NULL, NULL),
(49, '78 kg', 1, NULL, NULL),
(50, '79 kg', 1, NULL, NULL),
(51, '80 kg', 1, NULL, NULL),
(52, '81 kg', 1, NULL, NULL),
(53, '82 kg', 1, NULL, NULL),
(54, '83 kg', 1, NULL, NULL),
(55, '84 kg', 1, NULL, NULL),
(56, '85 kg', 1, NULL, NULL),
(57, '86 kg', 1, NULL, NULL),
(58, '87 kg', 1, NULL, NULL),
(59, '88 kg', 1, NULL, NULL),
(60, '89 kg', 1, NULL, NULL),
(61, '90 kg', 1, NULL, NULL),
(62, '91 kg', 1, NULL, NULL),
(63, '92 kg', 1, NULL, NULL),
(64, '93 kg', 1, NULL, NULL),
(65, '94 kg', 1, NULL, NULL),
(66, '95 kg', 1, NULL, NULL),
(67, '96 kg', 1, NULL, NULL),
(68, '97 kg', 1, NULL, NULL),
(69, '98 kg', 1, NULL, NULL),
(70, '99 kg', 1, NULL, NULL),
(71, '100 kg', 1, NULL, NULL),
(72, '101 kg', 1, NULL, NULL),
(73, '102 kg', 1, NULL, NULL),
(74, '103 kg', 1, NULL, NULL),
(75, '104 kg', 1, NULL, NULL),
(76, '105 kg', 1, NULL, NULL),
(77, '106 kg', 1, NULL, NULL),
(78, '107 kg', 1, NULL, NULL),
(79, '108 kg', 1, NULL, NULL),
(80, '109 kg', 1, NULL, NULL),
(81, '110 kg', 1, NULL, NULL),
(82, '111 kg', 1, NULL, NULL),
(83, '112 kg', 1, NULL, NULL),
(84, '113 kg', 1, NULL, NULL),
(85, '114 kg', 1, NULL, NULL),
(86, '115 kg', 1, NULL, NULL),
(87, '116 kg', 1, NULL, NULL),
(88, '117 kg', 1, NULL, NULL),
(89, '118 kg', 1, NULL, NULL),
(90, '119 kg', 1, NULL, NULL),
(91, '120 kg', 1, NULL, NULL),
(92, '121 kg', 1, NULL, NULL),
(93, '122 kg', 1, NULL, NULL),
(94, '123 kg', 1, NULL, NULL),
(95, '124 kg', 1, NULL, NULL),
(96, '125 kg', 1, NULL, NULL),
(97, '126 kg', 1, NULL, NULL),
(98, '127 kg', 1, NULL, NULL),
(99, '128 kg', 1, NULL, NULL),
(100, '129 kg', 1, NULL, NULL),
(101, '130 kg', 1, NULL, NULL),
(102, '131 kg', 1, NULL, NULL),
(103, '132 kg', 1, NULL, NULL),
(104, '133 kg', 1, NULL, NULL),
(105, '134 kg', 1, NULL, NULL),
(106, '135 kg', 1, NULL, NULL),
(107, '136 kg', 1, NULL, NULL),
(108, '137 kg', 1, NULL, NULL),
(109, '138 kg', 1, NULL, NULL),
(110, '139 kg', 1, NULL, NULL),
(111, '140 kg', 1, NULL, NULL),
(112, '141 kg', 1, NULL, NULL),
(113, '142 kg', 1, NULL, NULL),
(114, '143 kg', 1, NULL, NULL),
(115, '144 kg', 1, NULL, NULL),
(116, '145 kg', 1, NULL, NULL),
(117, '146 kg', 1, NULL, NULL),
(118, '147 kg', 1, NULL, NULL),
(119, '148 kg', 1, NULL, NULL),
(120, '149 kg', 1, NULL, NULL),
(121, '150 kg', 1, NULL, NULL),
(122, '151 kg', 1, NULL, NULL),
(123, '152 kg', 1, NULL, NULL),
(124, '153 kg', 1, NULL, NULL),
(125, '154 kg', 1, NULL, NULL),
(126, '155 kg', 1, NULL, NULL),
(127, '156 kg', 1, NULL, NULL),
(128, '157 kg', 1, NULL, NULL),
(129, '158 kg', 1, NULL, NULL),
(130, '159 kg', 1, NULL, NULL),
(131, '160 kg', 1, NULL, NULL),
(132, '161 kg', 1, NULL, NULL),
(133, '162 kg', 1, NULL, NULL),
(134, '163 kg', 1, NULL, NULL),
(135, '164 kg', 1, NULL, NULL),
(136, '165 kg', 1, NULL, NULL),
(137, '166 kg', 1, NULL, NULL),
(138, '167 kg', 1, NULL, NULL),
(139, '168 kg', 1, NULL, NULL),
(140, '169 kg', 1, NULL, NULL),
(141, '170 kg', 1, NULL, NULL),
(142, '171 kg', 1, NULL, NULL),
(143, '172 kg', 1, NULL, NULL),
(144, '173 kg', 1, NULL, NULL),
(145, '174 kg', 1, NULL, NULL),
(146, '175 kg', 1, NULL, NULL),
(147, '176 kg', 1, NULL, NULL),
(148, '177 kg', 1, NULL, NULL),
(149, '178 kg', 1, NULL, NULL),
(150, '179 kg', 1, NULL, NULL),
(151, '180 kg', 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `basic_details`
--
ALTER TABLE `basic_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `body_types`
--
ALTER TABLE `body_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carrier_details`
--
ALTER TABLE `carrier_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `castes`
--
ALTER TABLE `castes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `challenges`
--
ALTER TABLE `challenges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complextions`
--
ALTER TABLE `complextions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `country` (`country`);

--
-- Indexes for table `dietary_habits`
--
ALTER TABLE `dietary_habits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dresses`
--
ALTER TABLE `dresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drink_habits`
--
ALTER TABLE `drink_habits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `families`
--
ALTER TABLE `families`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `family_details`
--
ALTER TABLE `family_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `family_statuses`
--
ALTER TABLE `family_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `family_types`
--
ALTER TABLE `family_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `family_values`
--
ALTER TABLE `family_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `father_occupations`
--
ALTER TABLE `father_occupations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `heights`
--
ALTER TABLE `heights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hobbies`
--
ALTER TABLE `hobbies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `horoscope_details`
--
ALTER TABLE `horoscope_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `horoscope_matches`
--
ALTER TABLE `horoscope_matches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `horoscope_shows`
--
ALTER TABLE `horoscope_shows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `horoscops`
--
ALTER TABLE `horoscops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `incomes`
--
ALTER TABLE `incomes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interests`
--
ALTER TABLE `interests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language_speaks`
--
ALTER TABLE `language_speaks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `life_styles`
--
ALTER TABLE `life_styles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `like_details`
--
ALTER TABLE `like_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mangliks`
--
ALTER TABLE `mangliks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marital_statuses`
--
ALTER TABLE `marital_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mother_occupations`
--
ALTER TABLE `mother_occupations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mother_tongues`
--
ALTER TABLE `mother_tongues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `musics`
--
ALTER TABLE `musics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `occupations`
--
ALTER TABLE `occupations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `profile_fors`
--
ALTER TABLE `profile_fors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rashis`
--
ALTER TABLE `rashis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relationships`
--
ALTER TABLE `relationships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `religions`
--
ALTER TABLE `religions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `smoke_habits`
--
ALTER TABLE `smoke_habits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sports`
--
ALTER TABLE `sports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_user_id_index` (`user_id`);

--
-- Indexes for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_invitations_team_id_email_unique` (`team_id`,`email`);

--
-- Indexes for table `team_user`
--
ALTER TABLE `team_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `team_user_team_id_user_id_unique` (`team_id`,`user_id`);

--
-- Indexes for table `telescope_entries`
--
ALTER TABLE `telescope_entries`
  ADD PRIMARY KEY (`sequence`),
  ADD UNIQUE KEY `telescope_entries_uuid_unique` (`uuid`),
  ADD KEY `telescope_entries_batch_id_index` (`batch_id`),
  ADD KEY `telescope_entries_family_hash_index` (`family_hash`),
  ADD KEY `telescope_entries_created_at_index` (`created_at`),
  ADD KEY `telescope_entries_type_should_display_on_index_index` (`type`,`should_display_on_index`);

--
-- Indexes for table `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD KEY `telescope_entries_tags_entry_uuid_tag_index` (`entry_uuid`,`tag`),
  ADD KEY `telescope_entries_tags_tag_index` (`tag`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `weights`
--
ALTER TABLE `weights`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `basic_details`
--
ALTER TABLE `basic_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `body_types`
--
ALTER TABLE `body_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `carrier_details`
--
ALTER TABLE `carrier_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `castes`
--
ALTER TABLE `castes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=586;

--
-- AUTO_INCREMENT for table `challenges`
--
ALTER TABLE `challenges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1292;

--
-- AUTO_INCREMENT for table `complextions`
--
ALTER TABLE `complextions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact_details`
--
ALTER TABLE `contact_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT for table `dietary_habits`
--
ALTER TABLE `dietary_habits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dresses`
--
ALTER TABLE `dresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `drink_habits`
--
ALTER TABLE `drink_habits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `families`
--
ALTER TABLE `families`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `family_details`
--
ALTER TABLE `family_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `family_statuses`
--
ALTER TABLE `family_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `family_types`
--
ALTER TABLE `family_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `family_values`
--
ALTER TABLE `family_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `father_occupations`
--
ALTER TABLE `father_occupations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `heights`
--
ALTER TABLE `heights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `hobbies`
--
ALTER TABLE `hobbies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `horoscope_details`
--
ALTER TABLE `horoscope_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `horoscope_matches`
--
ALTER TABLE `horoscope_matches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `horoscope_shows`
--
ALTER TABLE `horoscope_shows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `horoscops`
--
ALTER TABLE `horoscops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `incomes`
--
ALTER TABLE `incomes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `interests`
--
ALTER TABLE `interests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `language_speaks`
--
ALTER TABLE `language_speaks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `life_styles`
--
ALTER TABLE `life_styles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `like_details`
--
ALTER TABLE `like_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mangliks`
--
ALTER TABLE `mangliks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `marital_statuses`
--
ALTER TABLE `marital_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `mother_occupations`
--
ALTER TABLE `mother_occupations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `mother_tongues`
--
ALTER TABLE `mother_tongues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `musics`
--
ALTER TABLE `musics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `occupations`
--
ALTER TABLE `occupations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=290;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profile_fors`
--
ALTER TABLE `profile_fors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rashis`
--
ALTER TABLE `rashis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `relationships`
--
ALTER TABLE `relationships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `religions`
--
ALTER TABLE `religions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `smoke_habits`
--
ALTER TABLE `smoke_habits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sports`
--
ALTER TABLE `sports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_invitations`
--
ALTER TABLE `team_invitations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_user`
--
ALTER TABLE `team_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `telescope_entries`
--
ALTER TABLE `telescope_entries`
  MODIFY `sequence` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1397;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `weights`
--
ALTER TABLE `weights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `team_invitations`
--
ALTER TABLE `team_invitations`
  ADD CONSTRAINT `team_invitations_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD CONSTRAINT `telescope_entries_tags_entry_uuid_foreign` FOREIGN KEY (`entry_uuid`) REFERENCES `telescope_entries` (`uuid`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;