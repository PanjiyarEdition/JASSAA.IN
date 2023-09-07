-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2023 at 03:47 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jassaa_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_cred`
--

CREATE TABLE `admin_cred` (
  `sr_no` int(11) NOT NULL,
  `admin_name` varchar(150) NOT NULL,
  `admin_pass` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_cred`
--

INSERT INTO `admin_cred` (`sr_no`, `admin_name`, `admin_pass`) VALUES
(1, 'jassaa_admin', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `total_pay` int(11) NOT NULL,
  `room_no` varchar(100) DEFAULT NULL,
  `user_name` varchar(100) NOT NULL,
  `phonenum` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`sr_no`, `booking_id`, `room_name`, `price`, `total_pay`, `room_no`, `user_name`, `phonenum`, `address`) VALUES
(18, 18, 'Simple Room', 300, 300, NULL, 'ram', '4343', 'Assam University\r\nSilchar'),
(19, 19, 'Deluxe Room', 500, 1000, NULL, 'JIGAR PANJIYAR', '2132', 'Assam University\r\nSilchar');

-- --------------------------------------------------------

--
-- Table structure for table `booking_order`
--

CREATE TABLE `booking_order` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `arrival` int(11) NOT NULL DEFAULT 0,
  `refund` int(11) DEFAULT NULL,
  `booking_status` varchar(100) NOT NULL DEFAULT 'pending',
  `order_id` varchar(150) NOT NULL,
  `trans_id` varchar(200) DEFAULT NULL,
  `trans_amt` int(11) NOT NULL,
  `trans_status` varchar(100) NOT NULL DEFAULT 'pending',
  `trans_resp_msg` varchar(200) DEFAULT NULL,
  `rate_review` int(11) DEFAULT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_order`
--

INSERT INTO `booking_order` (`booking_id`, `user_id`, `room_id`, `check_in`, `check_out`, `arrival`, `refund`, `booking_status`, `order_id`, `trans_id`, `trans_amt`, `trans_status`, `trans_resp_msg`, `rate_review`, `datentime`) VALUES
(12, 2, 3, '2023-07-20', '2023-08-24', 1, NULL, 'booked', 'ORD_2445093', '20220820111212800110168173403969278', 1200, 'TXN_SUCCESS', 'Txn Success', 1, '2022-08-20 00:20:23'),
(13, 2, 4, '2023-07-20', '2023-08-26', 1, NULL, 'booked', 'ORD_29233995', '20220820111212800110168584503978338', 3000, 'TXN_SUCCESS', 'Txn Success', 1, '2022-08-20 00:20:45'),
(14, 2, 5, '2023-07-20', '2023-07-24', 1, NULL, 'booked', 'ORD_28902800', '20220820111212800110168816503988359', 2400, 'TXN_SUCCESS', 'Txn Success', 1, '2022-08-20 00:21:06'),
(15, 2, 5, '2023-07-25', '2023-07-27', 0, 1, 'cancelled', 'ORD_2240367', '20220825111212800110168807304010818', 1200, 'TXN_SUCCESS', 'Txn Success', NULL, '2019-08-21 01:51:28'),
(16, 2, 5, '2023-08-26', '2023-08-28', 1, NULL, 'booked', 'ORD_28784829', '20220825111212800110168627505415606', 1200, 'TXN_SUCCESS', 'Txn Success', 1, '2022-08-25 01:52:04'),
(18, 5, 3, '2023-09-08', '2023-09-09', 0, NULL, 'payment failed', 'ORD_5950656', '', 300, 'TXN_FAILURE', 'Your payment has been declined by your bank. Please contact your bank for any queries. If money has been deducted from your account, your bank will inform us within 48 hrs and we will refund the same', NULL, '2023-09-07 01:25:59'),
(19, 6, 4, '2023-09-08', '2023-09-10', 0, NULL, 'payment failed', 'ORD_62283397', '', 1000, 'TXN_FAILURE', 'Your payment has been declined by your bank. Please contact your bank for any queries. If money has been deducted from your account, your bank will inform us within 48 hrs and we will refund the same', NULL, '2023-09-07 15:29:46');

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `sr_no` int(11) NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`sr_no`, `image`) VALUES
(12, 'IMG_92355.jpg'),
(14, 'IMG_18448.png'),
(15, 'IMG_33708.jpg'),
(16, 'IMG_52535.png');

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `sr_no` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `gmap` varchar(100) NOT NULL,
  `pn1` bigint(20) NOT NULL,
  `pn2` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fb` varchar(100) NOT NULL,
  `insta` varchar(100) NOT NULL,
  `tw` varchar(100) NOT NULL,
  `iframe` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`sr_no`, `address`, `gmap`, `pn1`, `pn2`, `email`, `fb`, `insta`, `tw`, `iframe`) VALUES
(1, 'Assam University, Silchar', 'https://goo.gl/maps/hVjqcJatf1tbwCYJ9', 9876543210, 9632587410, 'jassaa@gmail.com', 'https://www.facebook.com/', 'https://www.Instagram.com/', 'https://www.twitter.com/', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3625.2202476868974!2d92.74629728213476!3d24.6849544214331!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x374e3827427b6f43:0x4556a6b3074df1de!2sAssam University, Silchar!5e0!3m2!1sen!2sin!4v1694030714542!5m2!1sen!2sin');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int(11) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `icon`, `name`, `description`) VALUES
(13, 'IMG_43553.svg', 'Wifi', 'Our hotel offers free Internet access. High-speed wireless Internet connection is complimentary both in the rooms and public areas.'),
(14, 'IMG_49949.svg', 'Air conditioner', ' In each room of hotel we facilitate an Air conditioner . which have variable modes and Tempratures which you can select according to your comfort.'),
(15, 'IMG_41622.svg', 'Television', ' In each room of hotel we facilitate an Smart tv . which have multiple channels and you can also connect your divices according to your comfort.'),
(17, 'IMG_47816.svg', 'Spa', ' Our hotel offers free spa service. where you can take the advantage of the service and get rest.'),
(18, 'IMG_96423.svg', 'Room Heater', 'In each room of hotel we facilitate a Room heater . which have variable temprature options .'),
(19, 'IMG_27079.svg', 'Geyser', ' Our hotel provide Geyser system in each bathroom . where water is avilible 24 hours.');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `name`) VALUES
(13, 'bedroom'),
(14, 'balcony'),
(15, 'kitchen'),
(17, 'sofa');

-- --------------------------------------------------------

--
-- Table structure for table `rating_review`
--

CREATE TABLE `rating_review` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `review` varchar(200) NOT NULL,
  `seen` int(11) NOT NULL DEFAULT 0,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rating_review`
--

INSERT INTO `rating_review` (`sr_no`, `booking_id`, `room_id`, `user_id`, `rating`, `review`, `seen`, `datentime`) VALUES
(4, 14, 5, 2, 5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type a', 1, '2023-07-20 00:22:25'),
(5, 13, 4, 2, 3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type a', 1, '2023-07-20 00:22:30'),
(6, 12, 3, 2, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type a', 1, '2023-07-25 00:22:34'),
(8, 14, 5, 2, 5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type a', 1, '2023-07-25 00:22:25'),
(9, 12, 3, 2, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type a', 1, '2023-07-25 00:22:34');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `area` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `adult` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `description` varchar(350) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `removed` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `area`, `price`, `quantity`, `adult`, `children`, `description`, `status`, `removed`) VALUES
(1, 'simple room', 159, 58, 56, 12, 2, 'asdf asd', 1, 1),
(2, 'simple room 2', 785, 159, 85, 452, 10, 'adfasdfa sd', 1, 1),
(3, 'Simple Room', 250, 300, 10, 5, 3, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos voluptate vero sed tempore illo atque beatae asperiores, adipisci dicta quia nisi voluptates impedit perspiciatis, nobis libero culpa error officiis totam?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos voluptate vero sed tempore illo atque beatae asperiores, adipisci dic', 1, 0),
(4, 'Deluxe Room', 300, 500, 10, 3, 2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos voluptate vero sed tempore illo atque beatae asperiores, adipisci dicta quia nisi voluptates impedit perspiciatis, nobis libero culpa error officiis totam?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos voluptate vero sed tempore illo atque beatae asperiores, adipisci dic', 1, 0),
(5, 'Luxury Room', 600, 600, 2, 8, 6, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos voluptate vero sed tempore illo atque beatae asperiores, adipisci dicta quia nisi voluptates impedit perspiciatis, nobis libero culpa error officiis totam?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos voluptate vero sed tempore illo atque beatae asperiores, adipisci dic', 1, 0),
(6, 'Supreme deluxe room', 500, 900, 12, 9, 10, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos voluptate vero sed tempore illo atque beatae asperiores, adipisci dicta quia nisi voluptates impedit perspiciatis, nobis libero culpa error officiis totam?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos voluptate vero sed tempore illo atque beatae asperiores, adipisci dic', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `room_facilities`
--

CREATE TABLE `room_facilities` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `facilities_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_facilities`
--

INSERT INTO `room_facilities` (`sr_no`, `room_id`, `facilities_id`) VALUES
(29, 4, 14),
(30, 4, 18),
(31, 4, 19),
(35, 6, 13),
(36, 6, 14),
(37, 6, 18),
(38, 6, 19),
(39, 5, 13),
(40, 5, 14),
(41, 5, 18),
(42, 3, 14),
(43, 3, 15),
(44, 3, 18),
(45, 3, 19);

-- --------------------------------------------------------

--
-- Table structure for table `room_features`
--

CREATE TABLE `room_features` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `features_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_features`
--

INSERT INTO `room_features` (`sr_no`, `room_id`, `features_id`) VALUES
(16, 4, 13),
(17, 4, 14),
(18, 4, 15),
(22, 6, 13),
(23, 6, 14),
(24, 6, 15),
(25, 5, 13),
(26, 5, 14),
(27, 5, 15),
(28, 3, 13),
(29, 3, 14),
(30, 3, 17);

-- --------------------------------------------------------

--
-- Table structure for table `room_images`
--

CREATE TABLE `room_images` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `thumb` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_images`
--

INSERT INTO `room_images` (`sr_no`, `room_id`, `image`, `thumb`) VALUES
(15, 3, 'IMG_39782.png', 0),
(16, 3, 'IMG_65019.png', 1),
(17, 4, 'IMG_44867.png', 0),
(18, 4, 'IMG_78809.png', 1),
(19, 4, 'IMG_11892.png', 0),
(21, 5, 'IMG_17474.png', 0),
(22, 5, 'IMG_42663.png', 1),
(23, 5, 'IMG_70583.png', 0),
(24, 6, 'IMG_67761.png', 0),
(25, 6, 'IMG_69824.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `sr_no` int(11) NOT NULL,
  `site_title` varchar(50) NOT NULL,
  `site_about` varchar(250) NOT NULL,
  `shutdown` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`sr_no`, `site_title`, `site_about`, `shutdown`) VALUES
(1, 'JASSAA.In', 'Welcome to the heart and soul of hospitality, where comfort meets elegance, and every guest is a cherished friend. At [Hotel Name], we don&#039;t just provide a place to stay; we create unforgettable experiences that turn ordinary trips into extraord', 0);

-- --------------------------------------------------------

--
-- Table structure for table `team_details`
--

CREATE TABLE `team_details` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `picture` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team_details`
--

INSERT INTO `team_details` (`sr_no`, `name`, `picture`) VALUES
(13, 'JIGAR PANJIYAR', 'IMG_85874.jpeg'),
(14, 'ABHISHEK SHARMA', 'IMG_96262.jpeg'),
(17, 'AKANKSHA CHAUDHARY', 'IMG_24176.jpeg'),
(18, 'ABHAYDEEP SINGH', 'IMG_14135.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `user_cred`
--

CREATE TABLE `user_cred` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` varchar(120) NOT NULL,
  `phonenum` varchar(100) NOT NULL,
  `pincode` int(11) NOT NULL,
  `dob` date NOT NULL,
  `profile` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `is_verified` int(11) NOT NULL DEFAULT 0,
  `token` varchar(200) DEFAULT NULL,
  `t_expire` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_cred`
--

INSERT INTO `user_cred` (`id`, `name`, `email`, `address`, `phonenum`, `pincode`, `dob`, `profile`, `password`, `is_verified`, `token`, `t_expire`, `status`, `datentime`) VALUES
(2, 'Panjiyar', 'panjiyar@gmail.com', 'Assam University', '9876543210', 123456, '2001-08-10', 'IMG_91058.jpeg', '$2y$10$2IsUjaIwxb/UuaR7abvUNOs/VKmwy848VPsNnswF4bIFRIMDE36zm', 1, NULL, NULL, 1, '2023-07-10 16:05:59'),
(5, 'ram', 'ram@gmail.com', 'Assam University\r\nSilchar', '4343', 788011, '0343-04-03', 'IMG_60737.jpeg', '$2y$10$21Y.44Joem3k4FH1wUtGXOrP6iIKdlrmq4ECfzq7daCisap..AxUm', 1, NULL, NULL, 1, '2023-09-07 01:21:17'),
(6, 'JIGAR PANJIYAR', 'jigarpanjiyar@gmail.com', 'Assam University\r\nSilchar', '2132', 788011, '3213-02-12', 'IMG_23981.jpeg', '$2y$10$l9L1FSiF8osnVc9GbEN.2uLJrn7e3bjv3XPa5NBXMNOi0Teokn5yu', 1, NULL, NULL, 1, '2023-09-07 01:55:45');

-- --------------------------------------------------------

--
-- Table structure for table `user_queries`
--

CREATE TABLE `user_queries` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(500) NOT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp(),
  `seen` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_queries`
--

INSERT INTO `user_queries` (`sr_no`, `name`, `email`, `subject`, `message`, `datentime`, `seen`) VALUES
(13, 'JIGAR PANJIYAR', 'jigarpanjiyar@gmail.com', 'query', 'hello , How Are you?', '2023-09-07 02:02:44', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_cred`
--
ALTER TABLE `admin_cred`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `booking_order`
--
ALTER TABLE `booking_order`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating_review`
--
ALTER TABLE `rating_review`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `facilities id` (`facilities_id`),
  ADD KEY `room id` (`room_id`);

--
-- Indexes for table `room_features`
--
ALTER TABLE `room_features`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `features id` (`features_id`),
  ADD KEY `rm id` (`room_id`);

--
-- Indexes for table `room_images`
--
ALTER TABLE `room_images`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `team_details`
--
ALTER TABLE `team_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `user_cred`
--
ALTER TABLE `user_cred`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_queries`
--
ALTER TABLE `user_queries`
  ADD PRIMARY KEY (`sr_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_cred`
--
ALTER TABLE `admin_cred`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `booking_order`
--
ALTER TABLE `booking_order`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `contact_details`
--
ALTER TABLE `contact_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `rating_review`
--
ALTER TABLE `rating_review`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `room_facilities`
--
ALTER TABLE `room_facilities`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `room_features`
--
ALTER TABLE `room_features`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `room_images`
--
ALTER TABLE `room_images`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `team_details`
--
ALTER TABLE `team_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user_cred`
--
ALTER TABLE `user_cred`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_queries`
--
ALTER TABLE `user_queries`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD CONSTRAINT `booking_details_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`);

--
-- Constraints for table `booking_order`
--
ALTER TABLE `booking_order`
  ADD CONSTRAINT `booking_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`),
  ADD CONSTRAINT `booking_order_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);

--
-- Constraints for table `rating_review`
--
ALTER TABLE `rating_review`
  ADD CONSTRAINT `rating_review_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`),
  ADD CONSTRAINT `rating_review_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`),
  ADD CONSTRAINT `rating_review_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`);

--
-- Constraints for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD CONSTRAINT `facilities id` FOREIGN KEY (`facilities_id`) REFERENCES `facilities` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `room id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `room_features`
--
ALTER TABLE `room_features`
  ADD CONSTRAINT `features id` FOREIGN KEY (`features_id`) REFERENCES `features` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `rm id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `room_images`
--
ALTER TABLE `room_images`
  ADD CONSTRAINT `room_images_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
