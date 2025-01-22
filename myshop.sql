-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jan 18, 2025 at 07:36 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `subject`, `message`, `created_at`) VALUES
(1, 'shirt denium', 'ruturaj.vasudev@walchandsangli.ac.in', 'mismanagement, customer insult, unethical behavior, very bad services', 'IIT roorkee uses bacteria to decrade the plasticizers whichare harmful plastic components.Also bacteria can also used to break down organic matter but its difficult to break heavy metals by bateria.Bioremidiation means using biological system to break down the waste mycoredimediation(using fungi) and phytoremidiation(using plants) are both parts of bioremidatio\r\nIIT roorkee uses bacteria to decrade the plasticizers whichare harmful plastic components.Also bacteria can also used to break down organic matter but its difficult to break heavy metals by bateria.Bioremidiation means using biological system to break down the waste mycoredimediation(using fungi) and phytoremidiation(using plants) are both parts of bioremidatio\r\n', '2025-01-12 18:05:19'),
(2, 'shirt denium', 'mohitvasudev15@gmail.com', 'mismanagement, customer insult, unethical behavior, very bad services', 'IIT roorkee uses bacteria to decrade the plasticizers whichare harmful plastic components.Also bacteria can also used to break down organic matter but its difficult to break heavy metals by bateria.Bioremidiation means using biological system to break down the waste mycoredimediation(using fungi) and phytoremidiation(using plants) are both parts of bioremidatio\r\n', '2025-01-12 18:14:00'),
(3, 'shirt denium', 'mohitvasudev15@gmail.com', 'mismanagement, customer insult, unethical behavior, very bad services', 'IIT roorkee uses bacteria to decrade the plasticizers whichare harmful plastic components.Also bacteria can also used to break down organic matter but its difficult to break heavy metals by bateria.Bioremidiation means using biological system to break down the waste mycoredimediation(using fungi) and phytoremidiation(using plants) are both parts of bioremidatio\r\n', '2025-01-12 18:14:04'),
(4, 'shirt denium', 'mohitvasudev15@gmail.com', 'mismanagement, customer insult, unethical behavior, very bad services', 'IIT roorkee uses bacteria to decrade the plasticizers whichare harmful plastic components.Also bacteria can also used to break down organic matter but its difficult to break heavy metals by bateria.Bioremidiation means using biological system to break down the waste mycoredimediation(using fungi) and phytoremidiation(using plants) are both parts of bioremidatio\r\n', '2025-01-12 18:14:08'),
(5, 'shirt denium', 'mohitvasudev15@gmail.com', 'mismanagement, customer insult, unethical behavior, very bad services', 'IIT roorkee uses bacteria to decrade the plasticizers whichare harmful plastic components.Also bacteria can also used to break down organic matter but its difficult to break heavy metals by bateria.Bioremidiation means using biological system to break down the waste mycoredimediation(using fungi) and phytoremidiation(using plants) are both parts of bioremidatio\r\n', '2025-01-12 18:14:12'),
(6, 'shirt denium', 'mohitvasudev15@gmail.com', 'mismanagement, customer insult, unethical behavior, very bad services', 'IIT roorkee uses bacteria to decrade the plasticizers whichare harmful plastic components.Also bacteria can also used to break down organic matter but its difficult to break heavy metals by bateria.Bioremidiation means using biological system to break down the waste mycoredimediation(using fungi) and phytoremidiation(using plants) are both parts of bioremidatio\r\n', '2025-01-12 18:14:15'),
(7, 'shirt denium', 'mohitvasudev15@gmail.com', 'mismanagement, customer insult, unethical behavior, very bad services', 'IIT roorkee uses bacteria to decrade the plasticizers whichare harmful plastic components.Also bacteria can also used to break down organic matter but its difficult to break heavy metals by bateria.Bioremidiation means using biological system to break down the waste mycoredimediation(using fungi) and phytoremidiation(using plants) are both parts of bioremidatio\r\n', '2025-01-12 18:14:19');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `profile_image` varchar(255) DEFAULT 'default_img.jpg',
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `first_name`, `last_name`, `phone`, `email`, `address`, `profile_image`, `password`) VALUES
(1, 'Ruturaj', 'Vasudev', '7260904894', 'mohitvasudev15@gmail.com', 'Pratidnya Shirting Suiting', 'uploads/default_img.jpg', '$2y$10$APHgAl5wyFrVyEXuhY.gCetZNcleJfGEafaWgE6kadBdE39v/./x2'),
(3, 'Ruturaj', 'Vasudev', '760904895', 'mohitvasudev5@gmail.com', 'Pratidnya Shirting Suiting\r\nnear Anuraddha Hotel Vishrambag', 'uploads/ruturajphoto.jpg', '$2y$10$Za.97eARWxbJQachGXT5FeJAD9W1HQaQ6XgDA3gzniSpUxW0vzsde'),
(4, 'Mohit', 'Vasudev', '7451563254', 'ruturaj@gmail.com', 'Pratidnya Shirting Suiting near Anuraddha Hoptel Vishrambag\r\nnear ', 'uploads/prof.webp', '$2y$10$Mj7q81F51cMKdXTi4XaMNukLIH0famqA/pJSHZ2KYEH7oLJ1GBLs2'),
(5, 'Pawan', 'Vasudev', '760904884', 'paw@paw.com', 'Pratidnya Shirting Suiting\r\nnear Anuraddha Hotel Vishrambag', '', '$2y$10$ROLx2D8gZ1Eio3aWi4PpXeygA9UjHUgqkGEKw9kn7WE/q2qOj8oxG'),
(6, 'Pawan', 'Vasudev', '760904885', 'paw@paw.in', 'Pratidnya Shirting Suiting\r\nnear Anuraddha Hotel Vishrambag', '', '$2y$10$1Rqz71uL8hwPsobP45vxl.Jgfy.W1z4Df4CP7BF6s.GiP.sIX.UBG'),
(7, 'Pawan', 'Vasudev', '1478523696', 'paw@paw.gov', 'Pratidnya Shirting Suiting\r\nnear Anuraddha Hotel Vishrambag', 'customerimg/cm3.jpg', '$2y$10$oE6CWL/iA2X97URWgn9SIuHMogghJgCOSsc.GZ3wEDq8KVs7KPlou'),
(8, 'Pawan', 'Vasudev', '7894569877', 'raj@g.com', 'dvwsf', '', '$2y$10$M3R06PHSRBJO1DwU8xg6/efl1M7Lhcuk.cUw1OdH950BhuoyLFp4i'),
(9, 'Pawan', 'Vasudev', '01478523698', 'demo@demo.com', 'meta to stop from the fact cheking instead they will use community fact checking where people will decide whethere the post is fake or not\r\n', 'uploads/th (1).jpg', '$2y$10$YXrsKumd3PH3cUc/.V2KXO.DnqA1KtpZI.G2tJBvkXqcDGUUJyxM.'),
(10, 'Rahul', 'Sharma', '751426985', 'rahul@gmail.com', 'Walchand College of Engineering ,\r\nA/P: Vishrambag,\r\nSangli - 416 415\r\nMaharashtra, India\r\nTel: +91-233-2300383', 'customerimg/demoimg.jpg', '$2y$10$ehvz7qz69qTz7RlWNU0tWO0JBvGGU4DQa63kN9PXulFCe2TyMnk/y'),
(11, 'Dhanasri', 'Pol', '7563214845', 'dp@gmail.com', 'new Pratidnya Shirting Suiting\r\nnear Anuraddha Hotel Vishrambag\r\nSangli', 'uploads/lg1.jpg', '$2y$10$Y9a2osMtB9GbQlA/Jw5nE.5B.bAZcOQ/ySvcU8IMrKwz4Er1.nUZ2'),
(12, 'Arbaj sikandar shaikh ', 'Pol', '7563214846', 'dp1@gmail.com', 'new Pratidnya Shirting Suiting\r\nnear Anuraddha Hotel Vishrambag\r\nSangli', '', '$2y$10$AyvTuD2giUEjAnLuRB9eu.dFqJzKt5KKe/I3X26zvEF9nfJ2rhNvy'),
(13, 'hui', 'jhk', '7620904896', 'hh@gmail.com', 'Pratidnya Shirting Suiting\r\nnear Anuraddha Hotel Vishrambag', 'customerimg/cm3.jpg', '$2y$10$mfbofIFeeQ1mrdPllhvgOOoz8083KuyVkitl9m7hbCTSuxtb0GLiu'),
(14, 'huik', 'jhk', '7620904897', 'hhh@gmail.com', 'Pratidnya Shirting Suiting\r\nnear Anuraddha Hotel Vishrambag', 'customerimg/cm3.jpg', '$2y$10$C53qxYB.4ZEUdQj//2HqgeJU.Z0gOMbWvowwbYSey/BHJoR.3ophC'),
(15, 'huip', 'jhk', '7620904898', 'hhhh@gmail.com', 'plot no 22 laxmin narayan coloney\r\nbondrenagar phulewadi ring road', '', '$2y$10$ylSo36OgRfx90Mmx4Fr3/.3qbw6R3HerYGA4N3bzRcN3cGOg1JFgK'),
(16, 'huipk', 'jhk', '7620904899', 'hhhhh@gmail.com', 'Pratidnya Shirting Suiting\r\nnear Anuraddha Hotel Vishrambag', '', '$2y$10$X07Kr3aSRnfEvo5r3YSo2.ANAej.meCvD1JGQu9GGjPZgwxE0sXfK'),
(17, 'huipk', 'jhk', '7620904891', 'hhhhhh@gmail.com', 'Pratidnya Shirting Suiting\r\nnear Anuraddha Hotel Vishrambag', '', '$2y$10$.rtF0hvPHSC1jtn2Y1.XzeOUf9U.bRW20EVyz.vR2TysdyEzk4N0u'),
(18, 'huipk', 'jhk', '7620904892', 'kop@gmail.com', 'Pratidnya Shirting Suiting\r\nnear Anuraddha Hotel Vishrambag', '', '$2y$10$eCHOa64qi5mM4Hauv2NfyucbB/uSljAU6VuL59C6SnPkHAacv/Gty'),
(19, 'huipk', 'jhk', '7620904893', 'kop1@gmail.com', 'Pratidnya Shirting Suiting\r\nnear Anuraddha Hotel Vishrambag', '', '$2y$10$tWxOo3.Cc23EbE7VGSW2MOZApfHBZyPJGnCQaP6NjIKZjU7vajRbW'),
(20, 'huipk', 'jhk', '1620904893', 'kop2@gmail.com', 'Pratidnya Shirting Suiting\r\nnear Anuraddha Hotel Vishrambag', '', '$2y$10$Wa8pmxY9Sp8VyvSXaYlj.e8QwmsuSJuQALfrY949lpoI1T04YHvg2'),
(21, 'this ', 'isdemo', '1234567896', 'dd@d.com', 'fnsdm', 'uploads/sr4.jpg', '$2y$10$I4O8uEvS7/1wzZZEPOgrhO66VuXmYhZdCqB/Q0efflyqe/Nz93Sj2'),
(22, 'this is', 'demo2', '1234567899', 'demo2@gmail.com', 'plot no 22 laxmin narayan coloney\r\nbondrenagar phulewadi ring road', 'uploads/demoimg.jpg', 'ZjB1ZkVhU0xFSmRzM1BQNnRVOHBwbTE1Tzl6dlVrZ1dCNVg4a05kMkJ3WUpZUzF5TTJGekFueGYvVGxLaVBBSTJtUVJXNnZRY3FuNU5pUnowb1p6MlE9PQ==');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `status` varchar(20) DEFAULT 'Pending',
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `payment_mode` varchar(10) DEFAULT 'COD',
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `product_id`, `status`, `order_date`, `payment_mode`, `address`) VALUES
(1, 4, 2, 'Shipped', '2024-12-12 05:18:41', 'COD', ''),
(2, 1, 2, 'Pending', '2025-01-12 05:19:56', 'COD', 'Pratidnya Shirting Suiting'),
(3, 1, 2, 'Pending', '2025-01-12 05:25:07', 'COD', 'Pratidnya Shirting Suiting'),
(4, 1, 2, 'Delivered', '2025-01-12 05:25:27', 'COD', 'Pratidnya Shirting Suiting'),
(5, 4, 7, 'Pending', '2025-01-12 05:26:33', 'COD', 'Pratidnya Shirting Suiting'),
(6, 4, 8, 'Pending', '2025-01-12 05:42:05', 'COD', 'Pratidnya Shirting Suiting'),
(7, 4, 8, 'Pending', '2025-01-12 05:53:14', 'COD', 'Pratidnya Shirting Suiting'),
(8, 4, 8, 'Pending', '2025-01-12 05:56:12', 'COD', 'Pratidnya Shirting Suiting'),
(9, 4, 8, 'Pending', '2025-01-12 05:56:16', 'COD', 'Pratidnya Shirting Suiting'),
(10, 1, 8, 'Pending', '2025-01-12 05:57:08', 'COD', 'Pratidnya Shirting Suiting'),
(11, 1, 8, 'Pending', '2025-01-12 05:57:10', 'COD', 'Pratidnya Shirting Suiting'),
(12, 1, 8, 'Delivered', '2025-01-12 05:58:40', 'COD', 'Pratidnya Shirting Suiting'),
(13, 1, 8, 'Pending', '2025-01-12 05:58:45', 'COD', 'Pratidnya Shirting Suiting'),
(14, 1, 8, 'Pending', '2025-01-12 06:00:56', 'COD', 'Pratidnya Shirting Suiting'),
(15, 1, 8, 'Shipped', '2025-01-12 06:01:10', 'COD', 'Pratidnya Shirting Suiting'),
(16, 1, 8, 'Pending', '2025-01-12 06:01:14', 'COD', 'Pratidnya Shirting Suiting'),
(17, 1, 8, 'Delivered', '2025-01-12 06:02:02', 'COD', 'Pratidnya Shirting Suiting'),
(19, 1, 8, 'Pending', '2025-01-12 06:03:05', 'COD', 'Pratidnya Shirting Suiting'),
(20, 1, 8, 'Pending', '2025-01-12 06:03:08', 'COD', 'Pratidnya Shirting Suiting'),
(21, 1, 8, 'Pending', '2025-01-12 06:04:39', 'COD', 'Pratidnya Shirting Suiting'),
(22, 1, 8, 'Pending', '2025-01-12 06:04:43', 'COD', 'Pratidnya Shirting Suiting'),
(23, 1, 8, 'Pending', '2025-01-12 06:05:33', 'COD', 'Pratidnya Shirting Suiting'),
(24, 1, 8, 'Pending', '2025-01-12 06:05:38', 'COD', 'Pratidnya Shirting Suiting'),
(25, 1, 8, 'Pending', '2025-01-12 06:05:59', 'COD', 'Pratidnya Shirting Suiting'),
(26, 1, 8, 'Delivered', '2025-01-12 06:09:43', 'COD', 'Pratidnya Shirting Suiting'),
(27, 1, 5, 'Pending', '2025-01-12 06:10:49', 'COD', 'Pratidnya Shirting Suiting'),
(28, 1, 2, 'Pending', '2025-01-12 07:21:30', 'COD', 'Pratidnya Shirting Suiting'),
(29, 1, 2, 'Pending', '2025-01-12 07:22:42', 'COD', 'Pratidnya Shirting Suiting'),
(30, 1, 2, 'Pending', '2025-01-12 07:32:38', 'COD', 'Pratidnya Shirting Suiting'),
(31, 4, 2, 'Pending', '2025-01-13 14:04:36', 'COD', 'Pratidnya Shirting Suiting near Anuraddha Hoptel Vishrambag\r\nnear '),
(32, 4, 2, 'Pending', '2025-01-13 14:52:32', 'COD', 'Pratidnya Shirting Suiting near Anuraddha Hoptel Vishrambag\r\nnear '),
(33, 4, 12, 'Delivered', '2025-01-13 17:08:36', 'COD', 'Pratidnya Shirting Suiting near Anuraddha Hoptel Vishrambag\r\nnear '),
(34, 4, 15, 'Delivered', '2025-01-13 17:08:53', 'COD', 'Pratidnya Shirting Suiting near Anuraddha Hoptel Vishrambag\r\nnear '),
(35, 9, 2, 'Processed', '2025-01-14 10:10:12', 'COD', 'dvwsf'),
(36, 9, 2, 'Delivered', '2025-01-14 10:38:02', 'COD', 'dvwsf'),
(37, 9, 7, 'Delivered', '2025-01-14 10:39:42', 'COD', 'dvwsf'),
(38, 9, 19, 'Delivered', '2025-01-14 11:15:32', 'COD', 'dvwsf'),
(39, 9, 24, 'Delivered', '2025-01-14 11:21:17', 'COD', 'dvwsf'),
(40, 9, 26, 'Pending', '2025-01-14 11:22:24', 'COD', 'dvwsf'),
(41, 9, 17, 'Pending', '2025-01-14 13:04:43', 'COD', 'meta to stop from the fact cheking instead they will use community fact checking where people will decide whethere the post is fake or not\r\n'),
(42, 10, 10, 'Delivered', '2025-01-14 13:23:20', 'COD', 'Walchand College of Engineering ,\r\nA/P: Vishrambag,\r\nSangli - 416 415\r\nMaharashtra, India\r\nTel: +91-233-2300383'),
(43, 4, 12, 'Pending', '2025-01-15 04:42:39', 'COD', 'Pratidnya Shirting Suiting near Anuraddha Hoptel Vishrambag\r\nnear '),
(44, 4, 15, 'Pending', '2025-01-15 04:45:37', 'COD', 'Pratidnya Shirting Suiting near Anuraddha Hoptel Vishrambag\r\nnear '),
(45, 4, 6, 'Pending', '2025-01-15 04:56:45', 'COD', 'Pratidnya Shirting Suiting near Anuraddha Hoptel Vishrambag\r\nnear '),
(46, 11, 7, 'Delivered', '2025-01-16 05:22:21', 'COD', 'new Pratidnya Shirting Suiting\r\nnear Anuraddha Hotel Vishrambag\r\nSangli');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text NOT NULL,
  `material` varchar(100) NOT NULL,
  `size` varchar(10) DEFAULT NULL,
  `image1` varchar(255) NOT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `disable` tinyint(1) NOT NULL,
  `disabled` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `name`, `price`, `description`, `material`, `size`, `image1`, `image2`, `disable`, `disabled`) VALUES
(2, 'Boys Child', 'shirt denium', 1800.00, 'sdv cxrb qbewtsdrfvsd v cxrb qbe wtsdrfvsdv cxrb qbewtsdrfvsdv cxrb qbewtsdrfv', 'Cotton', NULL, 'uploads/Next-Denim-Borg-Lined-Western-Jacket-0463-0064553-1-pdp_slider_l.jpg', 'uploads/Next-Denim-Borg-Lined-Western-Jacket-0463-0064553-2-pdp_slider_l.jpg', 0, 1),
(5, 'Female Adult', 'Black Blouse Versace Coat', 2949.00, 'sdv cxrb qbewtsdrfvsd v cxrb qbe wtsdrfvsdv cxrb qbewtsdrfvsdv cxrb qbewtsdrfv', 'Cotton ', NULL, 'uploads/Black Blouse Versace Coat1.jpg', 'uploads/Black Blouse Versace Coat3.jpg', 0, 1),
(6, 'Female Adult', 'Black Lehanga', 6499.00, 'sdv cxrb qbewtsdrfvsd v cxrb qbe wtsdrfvsdv cxrb qbewtsdrfvsdv cxrb qbewtsdrfv', 'Cotton ', NULL, 'uploads/l1.jpg', 'uploads/l2.jpg', 0, 0),
(7, 'Female Adult', 'Colorful Lehanga', 6499.00, 'sdv cxrb qbewtsdrfvsd v cxrb qbe wtsdrfvsdv cxrb qbewtsdrfvsdv cxrb qbewtsdrfv', 'Cotton ', NULL, 'uploads/l3.jpg', 'uploads/l4.jpg', 0, 0),
(8, 'Male Adult', 'Men Solid Round Neck Polyester Purple T-Shir', 899.00, 'sdv cxrb qbewtsdrfv', 'Cotton', NULL, 'uploads/ts1.jpg', 'uploads/ts2.jpg', 0, 1),
(9, 'Male Adult', 'Men Solid Round Neck Polyester Beige T-Shirt', 799.00, 'sdv cxrb qbewtsdrfv', 'Polyester', NULL, 'uploads/ts3.jpg', 'uploads/ts4.jpg', 0, 0),
(10, 'Male Adult', 'Men Self Design Round Neck Polyester Black T-Shirt', 999.00, 'sdv cxrb qbewtsdrfv', 'Polyester', NULL, 'uploads/ts5.jpg', 'uploads/ts6.jpg', 0, 0),
(12, 'Female Adult', 'Peacock Paithani ', 15000.00, 'Ethnic Motifs Woven Design Zari Detail Paithani Saree\r\n', 'Silk', NULL, 'uploads/sr3.jpg', 'uploads/sr4.jpg', 0, 0),
(13, 'Female Adult', 'Kanjiwaram', 10000.00, 'Ethnic Motifs Woven Design Kanjiwaram Saree\r\n', 'Silk', NULL, 'uploads/sr1.jpg', 'uploads/sr2.jpg', 0, 0),
(14, 'Female Adult', 'Zari Saree', 1000.00, 'Ethnic Motifs Woven Design  Saree\r\n', 'Zari', NULL, 'uploads/sr5.jpg', 'uploads/sr6.jpg', 0, 0),
(15, 'Female Adult', 'Zari Saree', 1000.00, 'Ethnic Motifs Woven Design  Saree\r\n', 'Zari', NULL, 'uploads/sr5.jpg', 'uploads/sr6.jpg', 0, 0),
(16, 'Male Adult', 'Printed Shirt', 399.00, 'Ethnic Motifs Woven Design Shirt\r\n', 'Hozari', NULL, 'uploads/cm3.jpg', 'uploads/cm4.jpg', 0, 0),
(17, 'Male Adult', 'Printed Shirt', 399.00, 'Ethnic Motifs Woven Design Shirt\r\n', 'Hozari', NULL, 'uploads/cm5.jpg', 'uploads/cm6.jpg', 0, 0),
(18, 'Male Adult', 'Printed Shirt', 399.00, 'Ethnic Motifs Woven Design Shirt\r\n', 'Hozari', NULL, 'uploads/cm1.jpg', 'uploads/cm2.jpg', 0, 0),
(19, 'Furniture', 'Living Area Sofa', 25000.00, 'Sleepyhead Yolo Fabric 3 + 2 Sofa Set  (Berry Blue, DIY(Do-It-Yourself))\r\n', 'Cotton ', NULL, 'uploads/f11.jpg', 'uploads/f12.jpg', 0, 0),
(20, 'Furniture', 'Living Area Sofa', 25000.00, 'Sleepyhead Yolo Fabric 3 + 2 Sofa Set  (Berry Blue, DIY(Do-It-Yourself))\r\n', 'Cotton ', NULL, 'uploads/f8.jpg', 'uploads/f9.jpg', 0, 0),
(21, 'Furniture', 'Living Area Sofa', 25000.00, 'Sleepyhead Yolo Fabric 3 + 2 Sofa Set  (Berry Blue, DIY(Do-It-Yourself))\r\n', 'Cotton ', NULL, 'uploads/f6.jpg', 'uploads/f7', 0, 0),
(22, 'Furniture', 'Living Area Sofa', 25000.00, 'Sleepyhead Yolo Fabric 3 + 2 Sofa Set  (Berry Blue, DIY(Do-It-Yourself))\r\n', 'Cotton ', NULL, 'uploads/f1.jpg', 'uploads/f2.jpg', 0, 0),
(23, 'Furniture', 'Living Area Sofa', 25000.00, 'Sleepyhead Yolo Fabric 3 + 2 Sofa Set  (Berry Blue, DIY(Do-It-Yourself))\r\n', 'Cotton ', NULL, 'uploads/f3.jpg', 'uploads/f4.jpg', 0, 0),
(24, 'Electronics', 'Stylish Light', 1600.00, 'meta to stop from the fact cheking instead they will use community fact checking where people will decide whethere the post is fake or not\r\n', 'Steel', NULL, 'uploads/lg.jpg', 'uploads/lg.jpg', 0, 0),
(25, 'Electronics', 'Stylish Light', 1600.00, 'meta to stop from the fact cheking instead they will use community fact checking where people will decide whethere the post is fake or not\r\n', 'Steel', NULL, 'uploads/lg2.jpg', 'uploads/lg1.jpg', 0, 0),
(26, 'Girls Child', 'Stylish Light', 1600.00, 'meta to stop from the fact cheking instead they will use community fact checking where people will decide whethere the post is fake or not\r\n', 'Steel', NULL, 'uploads/team-1.jpg', 'uploads/team-1.jpg', 0, 1),
(27, 'Electronics', 'AC', 10000.00, 'rewbtgr rgb fgen', 'rdbrstb', NULL, 'uploads/OIP (2).jpg', 'uploads/OIP (1).jpg', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
