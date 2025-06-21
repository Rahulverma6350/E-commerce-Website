-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 04, 2025 at 05:17 PM
-- Server version: 10.6.18-MariaDB-cll-lve
-- PHP Version: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `furea`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutus_ourteam`
--

CREATE TABLE `aboutus_ourteam` (
  `id` int(11) NOT NULL,
  `photo` text NOT NULL,
  `name` text NOT NULL,
  `profession` varchar(255) NOT NULL,
  `social_media` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aboutus_ourteam`
--

INSERT INTO `aboutus_ourteam` (`id`, `photo`, `name`, `profession`, `social_media`) VALUES
(4, 'lamp.webp', 'shyam sunder', 'Products Managers', '{\"facebook\":\"https://www.facebook.com/\",\"twitter\":\"https://x.com/?lang=en&mx=2\",\"youtube\":\"https://aayan\"}'),
(5, 'shirt1.jpg', 'rahul verma', 'Products Managers 2', '{\"facebook\":\"https://www.facebook.com/\",\"twitter\":\"https://x.com/?lang=en&mx=2\",\"youtube\":\"https://www.youtube.com/\"}'),
(6, 'returnImg .jpg', 'rahul pri', 'Products Managers 2', '{\"facebook\":\"https://www.facebook.com/\",\"twitter\":\"https://x.com/?lang=en&mx=2\",\"youtube\":\"https://www.youtube.com/\"}');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `img`) VALUES
(1, 'priye', 'priye@gmail.com', '$2y$10$vkB33OSAP7zAI3qv9Pi25uuJuUx9xYiLqNPGvPy.ui0/7tvfGkPzC', 'Logo (1).png'),
(2, 'shyam', 'shyam12@gmail.com', '$2y$10$0Zh4yHt2UBIi3zUy9M26Xuyx6j8VGK/rM4.fvXc1RVxtlNoH6MR5u', 'img/team2.webp'),
(3, 'sohan', 'sohan@gmail.com', '$2y$10$b41JtO9hJIdxC95AJGqmdeGSz.NMdWO6hSMRF4vuRrYniCHrZphPW', 'Pathshala_design.jpg'),
(4, 'rahul', 'admin@gmail.com', '$2y$10$NPLp.q8ir7iPB3fr7MM2s.rFNW.VH.qDo.IfRxsWBHGoZ.49n/HkC', 'img/pexels-matthew-montrone-230847-1324803.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `img` text NOT NULL,
  `date` date NOT NULL,
  `tittle` varchar(255) NOT NULL,
  `discription` varchar(255) NOT NULL,
  `summernote` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `img`, `date`, `tittle`, `discription`, `summernote`) VALUES
(6, 'blogimg1.webp', '2025-02-17', 'Natural Virtual reality', 'Top 10 Best Furniture Company History you Should Know', '<h3 class=\"blog__details--content__subtitle mb-25\" style=\"font-weight: 600; margin-bottom: 2.5rem; font-size: 2.7rem; line-height: 4rem; color: rgb(0, 0, 0); font-family: &quot;Josefin Sans&quot;, sans-serif;\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus non sint saepe rem eveniet sit ea esse.</h3><p class=\"blog__details--content__desc mb-20\" style=\"margin-bottom: 2rem; color: var(--text-gray-color); font-family: var(--open-sans); font-size: 15px;\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedita in recusandae sit officia ipsa, natus ad voluptatem doloribus dolorum placeat, rem deleniti est accusamus ipsum corporis voluptates soluta totam maiores nostrum reprehenderit quasi? Laboriosam itaque ab odit harum sed aut voluptates, illum unde. Saepe enim ad ut pariatur doloremque quas harum sequi, excepturi tempore exercitationem suscipit quam recusandae corrupti quibusdam. Laboriosam sapiente provident repellat blanditiis ratione nostrum illum asperiores quo cumque in quisquam, non iste aut illo vel, alias debitis!</p><p class=\"blog__details--content__desc mb-30\" style=\"margin-bottom: 2.5rem; color: var(--text-gray-color); font-family: var(--open-sans); font-size: 15px;\">Vel ipsa officiis nobis eveniet omnis consequuntur neque quasi, in, optio rerum suscipit totam odio. Alias necessitatibus nulla accusantium voluptatem ipsum voluptatum, vero in impedit nobis cupiditate ea, dicta eos facilis eaque optio laudantium non neque itaque? Possimus officia aut accusamus illum, adipisci, nihil numquam minus eum fugit, beatae minima facilis magni.</p>'),
(7, 'blogimg2.webp', '2025-02-20', 'Natural Virpsss', 'Top 10 Best Furniture Company History you Should Know', '<h3 class=\"blog__details--content__subtitle mb-25\" style=\"font-weight: 600; margin-bottom: 2.5rem; font-size: 2.7rem; line-height: 4rem; color: rgb(0, 0, 0); font-family: &quot;Josefin Sans&quot;, sans-serif;\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptatibus non sint saepe rem eveniet sit ea esse.</h3><p class=\"blog__details--content__desc mb-20\" style=\"margin-bottom: 2rem; color: var(--text-gray-color); font-family: var(--open-sans); font-size: 15px;\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Expedita in recusandae sit officia ipsa, natus ad voluptatem doloribus dolorum placeat, rem deleniti est accusamus ipsum corporis voluptates soluta totam maiores nostrum reprehenderit quasi? Laboriosam itaque ab odit harum sed aut voluptates, illum unde. Saepe enim ad ut pariatur doloremque quas harum sequi, excepturi tempore exercitationem suscipit quam recusandae corrupti quibusdam. Laboriosam sapiente provident repellat blanditiis ratione nostrum illum asperiores quo cumque in quisquam, non iste aut illo vel, alias debitis!</p><p class=\"blog__details--content__desc mb-30\" style=\"margin-bottom: 2.5rem; color: var(--text-gray-color); font-family: var(--open-sans); font-size: 15px;\">Vel ipsa officiis nobis eveniet omnis consequuntur neque quasi, in, optio rerum suscipit totam odio. Alias necessitatibus nulla accusantium voluptatem ipsum voluptatum, vero in impedit nobis cupiditate ea, dicta eos facilis eaque optio laudantium non neque itaque? Possimus officia aut accusamus illum, adipisci, nihil numquam minus eum fugit, beatae minima facilis magni.</p>'),
(13, 'pexels-eberhardgross-1366919.jpg', '2025-05-22', 'info', 'Top 10 Best Furniture Company History you Should Know', '<p>info</p>');

-- --------------------------------------------------------

--
-- Table structure for table `cancelled_orders`
--

CREATE TABLE `cancelled_orders` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `order_date` datetime NOT NULL,
  `cancel_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `product_name` varchar(255) DEFAULT NULL,
  `color` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cancelled_orders`
--

INSERT INTO `cancelled_orders` (`id`, `order_id`, `user_id`, `product_id`, `total_amount`, `payment_method`, `payment_status`, `order_date`, `cancel_date`, `product_name`, `color`, `size`, `quantity`) VALUES
(1, 1003, 9, 13, 3000.00, 'COD', 'Pending', '2025-04-10 10:23:35', '2025-04-10 06:13:54', 'printed Shirt', '', '', 0),
(2, 1006, 1, 22, 8000.00, 'COD', 'Pending', '2025-04-11 10:51:33', '2025-04-15 06:41:45', 'short shirt', '', '', 0),
(3, 1006, 1, 22, 4000.00, 'COD', 'Pending', '2025-04-11 10:51:33', '2025-04-15 06:41:45', 'short shirt', '', '', 0),
(4, 1037, 5, 11, 4500.00, 'COD', 'Pending', '2025-04-25 17:46:53', '2025-04-25 12:18:49', 'tab', '', '', 0),
(5, 1039, 5, 25, 6000.00, 'COD', 'Paid', '2025-04-26 20:12:46', '2025-04-26 14:48:07', 'jeans', '', '', 0),
(6, 1039, 5, 28, 450.00, 'COD', 'Paid', '2025-04-26 20:12:46', '2025-04-26 14:48:07', 'car', '', '', 0),
(7, 1040, 5, 25, 6000.00, 'COD', 'Pending', '2025-04-26 20:43:02', '2025-04-26 15:13:35', 'jeans', '0', 'L', 2),
(8, 1041, 5, 28, 900.00, 'COD', 'Pending', '2025-04-28 11:03:57', '2025-04-28 05:34:59', 'car', '', '', 2),
(9, 1041, 5, 25, 6000.00, 'COD', 'Pending', '2025-04-28 11:03:57', '2025-04-28 05:34:59', 'jeans', 'Green', 'L', 2),
(16, 1042, 5, 11, 1000.00, 'COD', 'Pending', '2025-04-28 11:26:58', '2025-04-28 05:57:38', 'tab', '', '', 2),
(17, 1042, 5, 24, 800.00, 'COD', 'Pending', '2025-04-28 11:26:58', '2025-04-28 05:57:38', 'Tshirt', 'Green', 'S', 2),
(21, 1044, 5, 11, 500.00, 'COD', 'Pending', '2025-04-28 11:55:30', '2025-04-28 06:25:37', 'tab', '', '', 1),
(22, 1045, 5, 28, 900.00, 'COD', 'Pending', '2025-04-28 11:56:25', '2025-04-28 06:26:35', 'car', '', '', 2),
(23, 1018, 1, 11, 500.00, 'COD', 'Pending', '2025-04-22 10:47:35', '2025-04-29 05:34:13', 'tab', 'default_color', 'default_size', 1),
(24, 1015, 1, 1, 4999.00, 'Razorpay', 'Paid', '2025-04-18 17:25:08', '2025-04-29 05:34:40', 'Single sofa', 'default_color', 'default_size', 1),
(25, 1015, 1, 25, 6000.00, 'Razorpay', 'Paid', '2025-04-18 17:25:08', '2025-04-29 05:34:40', 'jeans', 'Green', 'M', 2),
(26, 1057, 1, 11, 1000.00, 'COD', 'Pending', '2025-04-29 17:51:01', '2025-04-29 12:21:51', 'tab', '', '', 2),
(27, 1057, 1, 31, 8000.00, 'COD', 'Pending', '2025-04-29 17:51:01', '2025-04-29 12:21:51', 'printed Shirts', 'Green', 'M', 2),
(28, 1057, 1, 28, 900.00, 'COD', 'Pending', '2025-04-29 17:51:01', '2025-04-29 12:21:51', 'car', '', '', 2),
(29, 1063, 11, 28, 450.00, 'COD', 'Pending', '2025-04-30 17:21:50', '2025-04-30 11:52:10', 'car', '', '', 1),
(30, 1028, 3, 28, 900.00, 'COD', 'Pending', '2025-04-24 17:24:24', '2025-05-06 05:05:30', 'car', '', '', 2),
(31, 1028, 3, 25, 6000.00, 'COD', 'Pending', '2025-04-24 17:24:24', '2025-05-06 05:05:30', 'jeans', 'Yellow', 'XXL', 2),
(32, 1077, 8, 31, 12000.00, 'COD', 'Pending', '2025-05-07 17:51:45', '2025-05-13 12:00:03', 'printed Shirts', 'Green', 'M', 3),
(33, 1080, 13, 15, 8400.00, 'COD', 'Pending', '2025-05-14 15:43:32', '2025-05-14 10:22:35', 'shirtt', '', '', 2),
(34, 1081, 13, 15, 8400.00, 'COD', 'Pending', '2025-05-14 15:52:12', '2025-05-14 10:22:38', 'shirtt', '', '', 2),
(35, 1084, 15, 37, 15000.00, 'COD', 'Pending', '2025-05-20 11:09:26', '2025-05-20 05:39:54', 'toyy', '', '', 10),
(36, 1085, 15, 14, 9000.00, 'Razorpay', 'Paid', '2025-05-20 11:11:02', '2025-05-20 05:41:24', 'planShirt', '', '', 2),
(37, 1086, 2, 24, 2400.00, 'COD', 'Pending', '2025-05-20 15:15:28', '2025-05-20 09:45:44', 'Tshirt', 'Red', 'S', 6),
(38, 1087, 2, 24, 800.00, 'Razorpay', 'Paid', '2025-05-20 15:16:50', '2025-05-20 09:47:09', 'Tshirt', 'Green', 'S', 2);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `quantity` int(11) NOT NULL,
  `color` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `session_id`, `product_id`, `created_at`, `quantity`, `color`, `size`) VALUES
(6, 2, NULL, 6, '2025-05-22 07:28:11', 1, '', ''),
(7, NULL, 'mcdt2omcb70c41i4hc1dj0r1ug', 1, '2025-05-22 09:40:29', 2, '', ''),
(25, 1, NULL, 32, '2025-06-03 11:57:54', 1, 'brown', 'L'),
(26, 6, NULL, 1, '2025-06-04 10:18:07', 1, '', ''),
(28, NULL, '7dc1d6765f6e14dd4c8a3fa7b7521b3b', 11, '2025-06-04 10:48:23', 1, '', ''),
(29, NULL, '7dc1d6765f6e14dd4c8a3fa7b7521b3b', 34, '2025-06-04 10:52:25', 6, '', ''),
(30, 1, NULL, 4, '2025-06-04 11:07:14', 4, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `email` varchar(33) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `phone_no`, `email`, `addr`) VALUES
(1, '772590899090', 'TilawalaServiceCenter@gamil.com', 'Sanganer jaipur (Tilawala) Rajast');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `email` text NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `firstname`, `lastname`, `number`, `email`, `message`) VALUES
(1, 'asdfg', 'sadfgh', 2147483647, 'sohan@gmail.com', 'dfghj'),
(2, 'sd', 'wew', 2147483647, 'sohan@gmail.com', 'efrf'),
(3, 'asd', 'aarav', 2147483647, 'demo34@gmail.com', 'fghhsdfyyfdf'),
(4, 'suman', 'sharma', 2147483647, 'sohan@gmail.com', 'aa'),
(5, 'suman', 'sharma', 2147483647, 'sohan@gmail.com', 'aa'),
(6, 'suman', 'sharma', 2147483647, 'sohan@gmail.com', 'aa'),
(7, 'suman', 'sharma', 2147483647, 'sohan@gmail.com', 'aa'),
(8, 'suman', 'sharma', 2147483647, 'sohan@gmail.com', 'aa');

-- --------------------------------------------------------

--
-- Table structure for table `exchanges`
--

CREATE TABLE `exchanges` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `original_size` varchar(20) DEFAULT NULL,
  `original_color` varchar(50) DEFAULT NULL,
  `new_size` varchar(20) DEFAULT NULL,
  `new_color` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `quantity` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exchanges`
--

INSERT INTO `exchanges` (`id`, `order_id`, `product_id`, `user_id`, `original_size`, `original_color`, `new_size`, `new_color`, `status`, `created_at`, `quantity`) VALUES
(2, 1002, 15, 9, 'XL', 'Red', 'XXL', 'Blue', 'Pending', '2025-04-09 05:21:07', 1),
(4, 1004, 14, 9, 'M', 'Black', 'XL', 'Red', 'Pending', '2025-04-10 06:13:24', 1),
(5, 1001, 15, 1, 'XL', 'Blue', 'XXL', 'Gray', 'Pending', '2025-04-11 05:03:09', 1),
(8, 1007, 22, 1, 'S', 'Black', 'L', 'Black', 'Approved', '2025-04-15 06:05:38', 1),
(9, 1008, 25, 1, 'M', 'Green', 'XL', 'Yellow', 'Approved', '2025-04-15 07:12:08', 1),
(10, 1008, 24, 1, 'S', 'Green', 'M', 'Red', 'Approved', '2025-04-15 07:12:29', 1),
(11, 1010, 24, 1, 'L', 'Red', 'S', 'Red', 'Approved', '2025-04-16 10:18:24', 1),
(12, 1033, 30, 5, 'S', 'Green', 'M', 'Green', 'Approved', '2025-04-25 10:22:09', 1),
(17, 1054, 24, 1, 'S', 'Red', 'S', 'Green', 'Approved', '2025-04-29 10:32:29', 2),
(18, 1054, 25, 1, 'M', 'Green', 'L', 'Yellow', 'Approved', '2025-04-29 10:43:39', 2),
(19, 1056, 25, 1, 'L', 'Green', 'S', 'Green', 'Approved', '2025-04-29 11:53:27', 2),
(20, 1058, 25, 1, 'L', 'Green', 'M', 'Green', 'Approved', '2025-04-29 12:25:36', 2),
(21, 1059, 31, 1, 'M', 'Green', 'L', 'Green', 'Approved', '2025-04-30 05:31:24', 2),
(22, 1069, 31, 12, 'M', 'orange', 'L', 'orange', 'Approved', '2025-05-02 07:05:00', 2),
(23, 1072, 31, 3, 'L', 'brown', 'L', 'orange', 'Approved', '2025-05-06 05:19:50', 2);

-- --------------------------------------------------------

--
-- Table structure for table `home_header`
--

CREATE TABLE `home_header` (
  `id` int(11) NOT NULL,
  `upper_tittle` varchar(44) DEFAULT NULL,
  `heading` varchar(44) DEFAULT NULL,
  `desce` varchar(55) DEFAULT NULL,
  `slider_imgs` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_header`
--

INSERT INTO `home_header` (`id`, `upper_tittle`, `heading`, `desce`, `slider_imgs`) VALUES
(3, 'Discover our best furniture collection from ', 'FURNITURE ', 'eee', 'home1-slider3.webp,home1-slider3.webp');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `social` text NOT NULL,
  `copyright` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id`, `image`, `social`, `copyright`) VALUES
(5, 'toycar2.webp', '{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"twitter\":\"https:\\/\\/x.com\\/?lang=en&mx=2\",\"youtube\":\"https:\\/\\/www.youtube.com\\/sa\",\"linkdin\":\"dfghj\"}', '2025 deajsdhcjk');

-- --------------------------------------------------------

--
-- Table structure for table `new_address`
--

CREATE TABLE `new_address` (
  `id` int(255) NOT NULL,
  `user_id` varchar(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `city` longtext DEFAULT NULL,
  `country` longtext DEFAULT NULL,
  `postal_code` text DEFAULT NULL,
  `selected_address` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `new_address`
--

INSERT INTO `new_address` (`id`, `user_id`, `name`, `phone`, `address`, `city`, `country`, `postal_code`, `selected_address`) VALUES
(10, '1', 'rahul', '7744117744', 'p-456', 'Jaipur', 'India', '302006', 1),
(27, '1', 'admin', '05644978987', 'p-456', 'Jaipur', 'India', '302006', 0),
(45, '5', 'sk jain', '05644978987', 'p-456', 'Jaipur', 'India', '302006', 0),
(46, '5', 'sk jain', '05644978987', 'p-456', 'Jaipur', 'India', '302006', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `payment_status` varchar(50) NOT NULL,
  `order_date` datetime NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `razorpay_order_id` varchar(255) NOT NULL,
  `shipping_status` varchar(50) DEFAULT 'Pending',
  `website_url` varchar(255) DEFAULT NULL,
  `traking_orderid` varchar(50) DEFAULT NULL,
  `delivered_at` datetime DEFAULT NULL,
  `selected_addres` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `total_amount`, `payment_method`, `payment_status`, `order_date`, `payment_id`, `razorpay_order_id`, `shipping_status`, `website_url`, `traking_orderid`, `delivered_at`, `selected_addres`) VALUES
(1002, 9, 9400.00, 'COD', 'Paid', '2025-04-08 17:51:45', '', '', 'Delivered', 'https://www.bluedart.com/tracking', '8455', '2025-04-08 17:52:58', ''),
(1004, 9, 22998.00, 'Razorpay', 'Paid', '2025-04-10 11:00:14', 'pay_QHEvSAl1tkNyUX', 'order_QHEtyH79xLU2fE', 'Delivered', 'https://www.bluedart.com/tracking', '6454', '2025-04-10 11:12:17', ''),
(1005, 9, 2550.00, 'COD', 'Paid', '2025-04-10 11:46:07', '', '', 'Delivered', 'https://www.bluedart.com/tracking', '845', '2025-04-10 11:47:11', ''),
(1007, 1, 12500.00, 'COD', 'Paid', '2025-04-11 11:30:42', '', '', 'Delivered', 'https://www.bluedart.com/tracking', '84512', '2025-04-11 11:31:59', ''),
(1008, 1, 11000.00, 'Razorpay', 'Paid', '2025-04-15 12:40:20', 'pay_QJFImVkId0dzC3', 'order_QJFIOBPoib2CFc', 'Delivered', '@facebook.com', '7984521', '2025-04-15 12:41:39', ''),
(1009, 1, 1000.00, 'COD', 'Paid', '2025-04-15 17:02:45', '', '', 'Delivered', 'https://www.bluedart.com/tracking', '8745123654', '2025-04-15 17:03:14', ''),
(1010, 1, 13920.00, 'Razorpay', 'Paid', '2025-04-16 10:32:49', 'pay_QJbfDuiphXWkLG', 'order_QJbetu6qUlN9ZP', 'Delivered', 'https://www.bluedart.com/tracking', '895623458', '2025-04-16 10:33:24', ''),
(1011, 1, 24996.00, 'COD', 'Pending', '2025-04-16 17:53:46', '', '', 'Pending', NULL, NULL, NULL, ''),
(1012, 10, 1000.00, 'COD', 'Pending', '2025-04-18 17:19:15', '', '', 'Pending', NULL, NULL, NULL, ''),
(1013, 10, 1000.00, 'COD', 'Pending', '2025-04-18 17:20:21', '', '', 'Pending', NULL, NULL, NULL, ''),
(1014, 10, 1000.00, 'COD', 'Pending', '2025-04-18 17:23:46', '', '', 'Pending', NULL, NULL, NULL, ''),
(1016, 3, 3200.00, 'COD', 'Pending', '2025-04-18 17:33:15', '', '', 'Pending', NULL, NULL, NULL, ''),
(1017, 1, 10000.00, 'Razorpay', 'Paid', '2025-04-21 10:15:54', 'pay_QLa2xFwISo3hQP', 'order_QLa2Yl7Bt2dB5d', 'Delivered', 'https://www.bluedart.com/tracking', '784512', '2025-04-21 10:17:36', ''),
(1019, 1, 73994.00, 'COD', 'Pending', '2025-04-23 18:05:59', '', '', 'Pending', NULL, NULL, NULL, ''),
(1020, 1, 73994.00, 'COD', 'Pending', '2025-04-23 18:07:37', '', '', 'Pending', NULL, NULL, NULL, ''),
(1021, 1, 15000.00, 'COD', 'Pending', '2025-04-23 18:08:49', '', '', 'Pending', NULL, NULL, NULL, ''),
(1022, 1, 30000.00, 'Razorpay', 'Paid', '2025-04-24 11:14:49', 'pay_QMmeYpPcZdgdK4', 'order_QMmeBm0jPX7hC3', 'Pending', NULL, NULL, NULL, ''),
(1023, 1, 30000.00, 'Razorpay', 'Paid', '2025-04-24 11:15:37', 'pay_QMmfPplyp55yX3', 'order_QMmfDRLbHetkHl', 'Pending', NULL, NULL, NULL, ''),
(1024, 1, 30000.00, 'Razorpay', 'Paid', '2025-04-24 11:47:14', 'pay_QMnCm1VYOt1Dwe', 'order_QMnCXQukfQN0u2', 'Pending', NULL, NULL, NULL, ''),
(1025, 1, 4999.00, 'Razorpay', 'Paid', '2025-04-24 12:25:20', 'pay_QMnr0zaoLhA6At', 'order_QMnqlaOHtJk9Js', 'Pending', NULL, NULL, NULL, ''),
(1026, 1, 9000.00, 'Razorpay', 'Paid', '2025-04-24 12:27:05', 'pay_QMnstac9tprCwp', 'order_QMnsgeuJAXJKcj', 'Pending', NULL, NULL, NULL, ''),
(1027, 1, 13999.00, 'Razorpay', 'Paid', '2025-04-24 12:35:38', 'pay_QMo1vYAc84lCk4', 'order_QMo1j2Dhe33AGD', 'Pending', NULL, NULL, NULL, ''),
(1029, 11, 900.00, 'COD', 'Pending', '2025-04-24 18:00:02', '', '', 'Pending', NULL, NULL, NULL, ''),
(1030, 11, 900.00, 'COD', 'Pending', '2025-04-24 18:01:52', '', '', 'Pending', NULL, NULL, NULL, ''),
(1031, 11, 450.00, 'COD', 'Pending', '2025-04-24 18:02:25', '', '', 'Pending', NULL, NULL, NULL, ''),
(1032, 11, 28999.00, 'Razorpay', 'Paid', '2025-04-24 18:04:29', 'pay_QMtdJMKyBLHDlq', 'order_QMtd57v5hA7cia', 'Pending', NULL, NULL, NULL, ''),
(1033, 5, 1700.00, 'COD', 'Paid', '2025-04-25 13:05:52', '', '', 'Delivered', 'https://www.bluedart.com/tracking', '6454', '2025-04-25 15:50:48', ''),
(1034, 5, 7250.00, 'Razorpay', 'Paid', '2025-04-25 15:58:38', 'pay_QNG1QlXSeMYxwr', 'order_QNG0zLHW271SkE', 'Delivered', 'https://www.bluedart.com/tracking', '784512', '2025-04-25 15:59:07', ''),
(1038, 5, 21000.00, 'COD', 'Paid', '2025-04-25 17:51:25', '', '', 'Delivered', 'https://www.bluedart.com/tracking', '8745123654', '2025-04-25 17:55:32', ''),
(1046, 5, 7000.00, 'COD', 'Paid', '2025-04-28 15:28:26', '', '', 'Delivered', 'https://www.bluedart.com/tracking', '784512369', '2025-04-28 15:28:56', ''),
(1047, 5, 4000.00, 'COD', 'Paid', '2025-04-28 15:43:21', '', '', 'Delivered', 'https://www.bluedart.com/tracking', '8452', '2025-04-28 15:43:46', ''),
(1048, 5, 1800.00, 'COD', 'Paid', '2025-04-28 15:51:05', '', '', 'Delivered', 'https://www.bluedart.com/tracking', '4568', '2025-04-28 15:51:28', ''),
(1049, 5, 1700.00, 'COD', 'Paid', '2025-04-28 16:25:52', '', '', 'Delivered', 'https://www.bluedart.com/tracking', '8745123654', '2025-04-28 16:26:23', ''),
(1050, 5, 400.00, 'COD', 'Paid', '2025-04-28 16:56:36', '', '', 'Delivered', 'https://www.bluedart.com/tracking', '7845', '2025-04-28 16:57:06', ''),
(1051, 5, 1800.00, 'Razorpay', 'Paid', '2025-04-28 17:07:19', 'pay_QOSnNzqOgAxUWv', 'order_QOSn943hNkBB1r', 'Delivered', 'https://www.bluedart.com/tracking', '75454', '2025-04-28 17:07:45', ''),
(1052, 5, 16800.00, 'Razorpay', 'Paid', '2025-04-28 17:22:51', 'pay_QOT3nWvDEY8qZE', 'order_QOT3bIopdErIge', 'Delivered', 'https://www.bluedart.com/tracking', '8745', '2025-04-28 17:23:13', ''),
(1053, 5, 6900.00, 'Razorpay', 'Paid', '2025-04-28 17:41:37', 'pay_QOTNcsGAryDEVU', 'order_QOTNRX663sQEH5', 'Delivered', 'https://www.bluedart.com/tracking', '8745123654', '2025-04-29 11:36:57', ''),
(1054, 1, 9700.00, 'Razorpay', 'Paid', '2025-04-29 11:03:43', 'pay_QOl8QJ6f1gXHud', 'order_QOl87l81Yz1mBb', 'Delivered', 'https://www.bluedart.com/tracking', '4587', '2025-04-29 11:34:49', ''),
(1055, 1, 900.00, 'COD', 'Pending', '2025-04-29 11:38:03', '', '', 'Delivered', 'https://www.bluedart.com/tracking', '4587', '2025-04-29 11:38:39', ''),
(1056, 1, 6000.00, 'COD', 'Pending', '2025-04-29 17:22:11', '', '', 'Delivered', 'https://www.bluedart.com/tracking', '8745123654', '2025-04-29 17:22:34', ''),
(1058, 1, 14000.00, 'COD', 'Pending', '2025-04-29 17:52:55', '', '', 'Delivered', 'https://www.bluedart.com/tracking', '8745123654', '2025-04-29 17:53:53', ''),
(1059, 1, 10500.00, 'COD', 'Pending', '2025-04-30 10:54:38', '', '', 'Delivered', 'https://www.bluedart.com/tracking', '7845', '2025-04-30 10:55:32', ''),
(1060, 11, 1000.00, 'COD', 'Pending', '2025-04-30 11:47:21', '', '', 'Pending', NULL, NULL, NULL, 'delhi'),
(1061, 11, 12999.00, 'Razorpay', 'Paid', '2025-04-30 17:01:51', 'pay_QPFlpth9Zs7ynW', 'order_QPFla2HPN7qTFR', 'Pending', NULL, NULL, NULL, ''),
(1062, 11, 450.00, 'COD', 'Pending', '2025-04-30 17:12:37', '', '', 'Pending', NULL, NULL, NULL, 'delhis|demo|india|303025'),
(1064, 3, 1000.00, 'COD', 'Pending', '2025-04-30 17:39:42', '', '', 'Pending', NULL, NULL, NULL, '14no'),
(1065, 3, 8500.00, 'Razorpay', 'Paid', '2025-04-30 18:03:02', 'pay_QPGoTirV2AuraN', 'order_QPGo93eZU9eFwo', 'Pending', NULL, NULL, NULL, ''),
(1066, 12, 13000.00, 'COD', 'Pending', '2025-05-02 12:25:04', '', '', 'Pending', NULL, NULL, NULL, '1/675 malviya nagar|jaipur|India|874525'),
(1067, 12, 13000.00, 'COD', 'Pending', '2025-05-02 12:25:30', '', '', 'Pending', NULL, NULL, NULL, '1/675 malviya nagar|jaipur|India|874525'),
(1069, 12, 8900.00, 'COD', 'Pending', '2025-05-02 12:29:14', '', '', 'Delivered', 'https://www.bluedart.com/tracking', '7896', '2025-05-02 12:32:51', '1/675 malviya nagar|jaipur|India|874525'),
(1070, 12, 4999.00, 'COD', 'Pending', '2025-05-02 12:40:30', '', '', 'Pending', NULL, NULL, NULL, '2/879|jodhpur|india|302015'),
(1071, 2, 17998.00, 'COD', 'Pending', '2025-05-04 19:41:31', '', '', 'Delivered', 'https://www.bluedart.com/tracking', '784512', '2025-05-04 19:44:09', 'harmada'),
(1072, 3, 12999.00, 'Razorpay', 'Paid', '2025-05-06 10:38:46', 'pay_QRWRtSA90aog5p', 'order_QRWRaDkWmWCIZk', 'Delivered', '@facebook.com', '4587', '2025-05-06 10:43:17', ''),
(1073, 3, 25998.00, 'COD', 'Pending', '2025-05-06 16:37:32', '', '', 'Pending', NULL, NULL, NULL, 'lohamandi|jaipur|india|302013'),
(1074, 8, 14039.00, 'COD', 'Pending', '2025-05-06 16:56:25', '', '', 'Pending', NULL, NULL, NULL, 'sahpura|jaipur|India|874525'),
(1075, 8, 34894.00, 'COD', 'Pending', '2025-05-07 11:36:29', '', '', 'Pending', NULL, NULL, NULL, 'sahpura|jaipur|India|874525'),
(1076, 8, 6898.00, 'COD', 'Pending', '2025-05-07 12:00:47', '', '', 'Pending', NULL, NULL, NULL, '141|nyc|india|302013'),
(1078, 11, 12800.00, 'COD', 'Pending', '2025-05-12 10:48:01', '', '', 'Pending', NULL, NULL, NULL, 'delhis|demo|india|303025'),
(1079, 13, 0.00, 'COD', 'Pending', '2025-05-14 15:43:04', '', '', 'Pending', NULL, NULL, NULL, 'anil|1234568989|demo|jaipur|india|2345'),
(1082, 14, 10898.00, 'COD', 'Pending', '2025-05-14 17:15:22', '', '', 'Pending', NULL, NULL, NULL, 'demo|5678945678|dfghj|fghj|drftgyhu|5678'),
(1083, 14, 10898.00, 'COD', 'Pending', '2025-05-14 17:17:16', '', '', 'Pending', NULL, NULL, NULL, 'demo|5678945678|dfghj|fghj|drftgyhu|5678'),
(1088, 1, 1000.00, 'COD', 'Pending', '2025-05-22 11:29:00', '', '', 'Pending', NULL, NULL, NULL, 'rahul|7744117744|p-456|Jaipur|India|302006'),
(1089, 1, 0.00, 'COD', 'Pending', '2025-05-22 11:29:52', '', '', 'Pending', NULL, NULL, NULL, 'rahul|7744117744|p-456|Jaipur|India|302006'),
(1090, 2, 9998.00, 'COD', 'Pending', '2025-05-22 12:57:54', '', '', 'Pending', NULL, NULL, NULL, 'ajay|7744117744|p-45 mansrover|Jaipur|India|302001'),
(1091, 5, 499900.00, 'Razorpay', 'Pending', '2025-05-29 10:33:53', '777777', 'order_QagEdo1lvmUUzs', 'Pending', NULL, NULL, NULL, 'sk jain|05644978987|p-456|Jaipur|India|302006'),
(1092, 5, 499900.00, 'Razorpay', 'Paid', '2025-05-29 10:34:19', 'pay_QagFZsnl2B2dGW', 'order_QagF5jLLF5qsMj', 'Pending', NULL, NULL, NULL, 'sk jain|05644978987|p-456|Jaipur|India|302006'),
(1093, 5, 9998.00, 'COD', 'Pending', '2025-05-29 14:07:13', '', '', 'Pending', NULL, NULL, NULL, 'sk jain|05644978987|p-456|Jaipur|India|302006'),
(1094, 5, 0.00, 'COD', 'Pending', '2025-05-29 14:17:37', '', '', 'Pending', NULL, NULL, NULL, 'sk jain|05644978987|p-456|Jaipur|India|302006'),
(1095, 1, 1500000.00, 'Razorpay', 'Pending', '2025-06-03 11:16:12', '777777', 'order_QcfcxKoH9IxynO', 'Pending', NULL, NULL, NULL, 'rahul|7744117744|p-456|Jaipur|India|302006'),
(1096, 1, 452000.00, 'Razorpay', 'Pending', '2025-06-03 11:17:36', '777777', 'order_QcfeQlKuCHpc5E', 'Pending', NULL, NULL, NULL, 'rahul|7744117744|p-456|Jaipur|India|302006');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `color` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `price`, `color`, `size`) VALUES
(2, 1002, 15, 2, 4200, 'Red', 'XL'),
(3, 1002, 7, 1, 1000, 'default_color', 'default_size'),
(4, 1003, 13, 2, 1500, 'default_color', 'M'),
(5, 1004, 11, 1, 500, 'default_color', 'default_size'),
(6, 1004, 1, 2, 4999, 'default_color', 'default_size'),
(7, 1004, 14, 1, 4500, 'Black', 'M'),
(8, 1004, 7, 1, 1000, 'default_color', 'default_size'),
(9, 1004, 16, 2, 3500, 'Gray', 'S'),
(10, 1005, 6, 1, 150, 'default_color', 'default_size'),
(11, 1005, 12, 4, 600, 'default_color', 'XL'),
(12, 1006, 22, 2, 4000, 'Black', 'XL'),
(13, 1006, 22, 1, 4000, 'Black', 'M'),
(14, 1007, 11, 1, 500, 'default_color', 'default_size'),
(15, 1007, 22, 3, 4000, 'Black', 'L'),
(16, 1008, 24, 3, 400, 'Red', 'M'),
(17, 1008, 25, 3, 3000, 'Yellow', 'XL'),
(18, 1008, 24, 2, 400, 'White', 'XL'),
(19, 1009, 7, 1, 1000, 'default_color', 'default_size'),
(20, 1010, 27, 3, 40, 'Yellow', 'S'),
(21, 1010, 25, 4, 3000, 'Green', 'S'),
(22, 1010, 24, 2, 400, 'Red', 'S'),
(23, 1010, 11, 2, 500, 'default_color', 'default_size'),
(24, 1011, 1, 4, 4999, 'default_color', 'default_size'),
(25, 1011, 22, 1, 4000, 'Black', 'S'),
(26, 1011, 7, 1, 1000, 'default_color', 'default_size'),
(27, 1015, 1, 1, 4999, 'default_color', 'default_size'),
(28, 1015, 25, 2, 3000, 'Green', 'M'),
(29, 1016, 7, 2, 1000, 'default_color', 'default_size'),
(30, 1016, 24, 3, 400, 'Green', 'S'),
(31, 1017, 7, 2, 1000, 'default_color', 'default_size'),
(32, 1017, 22, 2, 4000, 'Red', 'M'),
(33, 1018, 11, 1, 500, 'default_color', 'default_size'),
(34, 1019, 22, 5, 4000, 'Red', 'M'),
(35, 1020, 22, 5, 4000, 'Red', 'M'),
(36, 1020, 25, 8, 3000, 'Yellow', 'XL'),
(37, 1020, 1, 6, 4999, '', ''),
(38, 1021, 26, 5, 3000, 'Black', 'L'),
(39, 1022, 25, 10, 3000, 'Yellow', 'XXL'),
(40, 1023, 25, 10, 3000, 'Yellow', 'XXL'),
(41, 1024, 25, 10, 3000, 'Yellow', 'XXL'),
(42, 1025, 1, 1, 4999, '', ''),
(43, 1026, 25, 3, 3000, 'Yellow', 'XXL'),
(44, 1027, 1, 1, 4999, '', ''),
(45, 1027, 25, 3, 3000, 'Yellow', 'XXL'),
(46, 1028, 28, 2, 450, '', ''),
(47, 1028, 25, 2, 3000, 'Yellow', 'XXL'),
(48, 1031, 28, 1, 450, '', ''),
(49, 1032, 1, 1, 4999, '', ''),
(50, 1032, 25, 8, 3000, 'Yellow', 'XL'),
(51, 1033, 28, 2, 450, '', ''),
(52, 1033, 30, 2, 400, 'Green', 'M'),
(53, 1034, 28, 1, 450, '', ''),
(54, 1034, 24, 2, 400, 'Green', 'S'),
(55, 1034, 25, 2, 3000, 'Yellow', 'XL'),
(56, 1035, 1, 2, 4999, '', ''),
(57, 1036, 28, 1, 450, '', ''),
(58, 1036, 25, 3, 3000, 'Green', 'M'),
(59, 1037, 11, 9, 500, '', ''),
(60, 1038, 25, 7, 3000, 'Green', 'L'),
(61, 1039, 25, 2, 3000, 'Green', 'S'),
(62, 1039, 28, 1, 450, '', ''),
(63, 1040, 25, 2, 3000, 'Green', 'L'),
(64, 1041, 28, 2, 450, '', ''),
(65, 1041, 25, 2, 3000, 'Green', 'L'),
(66, 1042, 11, 2, 500, '', ''),
(67, 1042, 24, 2, 400, 'Green', 'S'),
(68, 1043, 11, 2, 500, '', ''),
(69, 1043, 24, 2, 400, 'Red', 'S'),
(70, 1044, 11, 1, 500, '', ''),
(71, 1045, 28, 2, 450, '', ''),
(72, 1046, 11, 2, 500, '', ''),
(73, 1046, 25, 2, 3000, 'Green', 'S'),
(74, 1047, 11, 8, 500, '', ''),
(75, 1048, 28, 4, 450, '', ''),
(76, 1049, 28, 2, 450, '', ''),
(77, 1049, 24, 2, 400, 'Red', 'S'),
(78, 1050, 24, 1, 400, 'White', 'S'),
(79, 1051, 28, 4, 450, '', ''),
(80, 1052, 28, 4, 450, '', ''),
(81, 1052, 25, 5, 3000, 'Green', 'S'),
(82, 1053, 28, 2, 450, '', ''),
(83, 1053, 25, 2, 3000, 'Green', 'S'),
(84, 1054, 11, 4, 500, '', ''),
(85, 1054, 28, 2, 450, '', ''),
(86, 1054, 24, 2, 400, 'Green', 'S'),
(87, 1054, 25, 2, 3000, 'Yellow', 'L'),
(88, 1055, 28, 2, 450, '', ''),
(89, 1056, 25, 2, 3000, 'Green', 'S'),
(90, 1057, 11, 2, 500, '', ''),
(91, 1057, 31, 2, 4000, 'Green', 'M'),
(92, 1057, 28, 2, 450, '', ''),
(93, 1058, 31, 2, 4000, 'Green', 'M'),
(94, 1058, 25, 2, 3000, 'Green', 'M'),
(95, 1059, 11, 5, 500, '', ''),
(96, 1059, 31, 2, 4000, 'Green', 'L'),
(97, 1060, 11, 2, 500, '', ''),
(98, 1061, 1, 1, 4999, '', ''),
(99, 1061, 31, 2, 4000, 'Green', 'M'),
(100, 1062, 28, 1, 450, '', ''),
(101, 1063, 28, 1, 450, '', ''),
(102, 1064, 11, 2, 500, '', ''),
(103, 1065, 11, 1, 500, '', ''),
(104, 1065, 31, 2, 4000, 'Green', 'XL'),
(105, 1069, 28, 2, 450, '', ''),
(106, 1069, 31, 2, 4000, 'orange', 'L'),
(107, 1070, 1, 1, 4999, '', ''),
(108, 1071, 1, 2, 4999, '', ''),
(109, 1071, 31, 2, 4000, 'orange', 'M'),
(110, 1072, 1, 1, 4999, '', ''),
(111, 1072, 31, 2, 4000, 'orange', 'L'),
(112, 1073, 1, 2, 4999, '', ''),
(113, 1073, 31, 4, 4000, 'Green', 'M'),
(114, 1074, 1, 1, 4999, '', ''),
(115, 1074, 32, 2, 4520, '', ''),
(116, 1075, 31, 1, 4000, 'Green', 'M'),
(117, 1075, 28, 2, 450, '', ''),
(118, 1075, 1, 6, 4999, '', ''),
(119, 1076, 11, 4, 500, '', ''),
(120, 1076, 28, 2, 450, '', ''),
(121, 1076, 25, 1, 3000, 'Yellow', 'XL'),
(122, 1076, 4, 1, 399, '', ''),
(123, 1076, 3, 1, 599, '', ''),
(124, 1077, 25, 2, 3000, 'Green', 'S'),
(125, 1077, 31, 3, 4000, 'Green', 'M'),
(126, 1078, 33, 1, 800, 'Green', 'S'),
(127, 1078, 31, 3, 4000, 'brown', 'L'),
(128, 1080, 15, 2, 4200, '', ''),
(129, 1081, 15, 2, 4200, '', ''),
(130, 1083, 28, 2, 450, '', ''),
(131, 1083, 1, 2, 4999, '', ''),
(132, 1084, 37, 10, 1500, '', ''),
(133, 1085, 14, 2, 4500, '', ''),
(134, 1086, 24, 6, 400, 'Red', 'S'),
(135, 1087, 24, 2, 400, 'Green', 'S'),
(136, 1088, 11, 2, 500, '', ''),
(137, 1090, 1, 2, 4999, '', ''),
(138, 0, 1, 1, 4999, '', ''),
(139, 1093, 1, 2, 4999, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `p_id` int(11) NOT NULL,
  `product_name` varchar(22) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_name` varchar(22) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `discounted_price` int(11) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `stock_quantity` int(11) DEFAULT NULL,
  `barcode` varchar(22) DEFAULT NULL,
  `sku` varchar(22) DEFAULT NULL,
  `vendor` varchar(22) DEFAULT NULL,
  `product_type` varchar(22) DEFAULT NULL,
  `product_image` text DEFAULT NULL,
  `hover_image` text DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT '0',
  `product_variant` varchar(50) NOT NULL,
  `FatalProduct` varchar(50) NOT NULL,
  `submitDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`p_id`, `product_name`, `category_id`, `subcategory_name`, `price`, `discounted_price`, `descr`, `rating`, `stock_quantity`, `barcode`, `sku`, `vendor`, `product_type`, `product_image`, `hover_image`, `status`, `product_variant`, `FatalProduct`, `submitDate`) VALUES
(1, 'Single sofa', 1, 'indoor', 5999, 4999, 'sofa for single person', 5, 4, '#46YRYRY', '1001', 'SUNIL', 'FURNITURE', 'product1.webp', 'product1-h.webp', '1', '', '0', '0000-00-00 00:00:00'),
(3, 'Mini-lamp', 3, 'lights', 600, 599, 'lamp for bedroom', 4, 199, '#46YRYRYR', '1003', 'rahul kumar', 'home-decor', 'lamp.webp', 'lamp.webp', '1', '', '0', '0000-00-00 00:00:00'),
(4, 'money plant', 3, 'plants', 499, 399, 'money plant indoor', 4, 99, '#46YRYRY', '1004', 'rahul', 'plant', 'plant.webp', 'plant.webp', '1', '', '0', '0000-00-00 00:00:00'),
(5, 'past-food', 6, 'fast-food', 2000, 1500, 'asdfghj', 0, 12, '23456', '3456', 'asdfg', 'foods', 'food1.avif', 'food2.webp', '1', '', '', '0000-00-00 00:00:00'),
(6, 'chinease', 6, 'chienis', 200, 150, 'asdfghj', 3, 23, 'asd', '', '', 'food', 'food3.webp', 'food2.webp', '1', '', '', '2025-05-13 15:11:14'),
(7, 'furniture', 1, 'indoor', 1200, 1000, 'asdfghjk', 0, 0, '', '', '', 'furniture', 'furniture.webp', 'furniture1.webp', '1', '', '0', '2025-05-13 15:11:14'),
(9, 'furnitures', 7, 'table', 2345, 234, 'sdfghj', 0, 0, '', '', '', 'table stor', 'furniture.webp', 'furniture1.webp', '1', '', '0', '2025-05-13 15:11:14'),
(10, 'furnitures2', 7, 'stool', 3000, 2500, 'its good', 0, 0, '', '', '', 'stool', 'metch1.webp', 'metch2.webp', '1', '', '0', '0000-00-00 00:00:00'),
(11, 'tab', 1, 'indoor', 600, 500, 'asdfghj', 4, 8, 'asd', 'r', '', 't', 'fur1.webp', 'fur2.webp', '1', '', '0', '0000-00-00 00:00:00'),
(12, 'overSize', 8, 'oversize', 700, 600, 'Oversized Tshirt Photos, Download The BEST Free Oversized Tshirt Stock Photos & HD Images\r\nDownload and use 40,000+ Oversized Tshirt stock photos for free. ✓ Thousands of new images every day ✓ Completely Free to Use ✓ High-quality videos and images from ', 5, 45, 'dfghj', 'sadfg', 'sdfg', 'tshirt', 'oversizeTshirt.webp', 'oversi2.webp', '1', '', '', '2025-05-13 15:11:14'),
(13, 'printed Shirt', 9, 'printed', 2000, 1500, 'sdfghjk', 5, 50, 'dfghj', 'fghjk', 'cvghjk', 'shirt', 'shirt.jpeg', 'shirt2.jpeg', '1', '', '', '2025-05-13 15:11:14'),
(14, 'planShirt', 9, 'plan', 5000, 4500, 'dfghjk', 5, 47, 'fghj', 'ghjk', 'jklghj', 'plan', 'shirt3.jpeg', 'shirt4.jpeg', '1', '', '', '2025-05-13 15:11:14'),
(15, 'shirtt', 9, 'plan', 4522, 4200, 'dfghjk', 5, 45, 'fgh', 'fgh', 'ghfgh', 'fgh', 'shirt4.jpeg', 'shirt2.jpeg', '1', '', '', '2025-05-13 15:11:14'),
(19, 'tshirt', 9, 'printed', 500, 400, 'sdfgh', 5, 45, 'sdfg', 'dfgh', 'dfgh', 'tshirt', 'oversizeTshirt.webp', 'oversi2.webp', '1', '', '', '2025-05-13 15:11:14'),
(23, 'rahul', 8, 'oversize', 2345, 234, '', 0, 0, '', '', '', '', 'jeans.avif', 'jeans2.html', '0', '', '', '2025-05-13 15:11:14'),
(24, 'Tshirt', 11, 'Oversizes', 500, 400, 'this is a nice tshirt', 5, 100, 'df', 'asd', 'qwert', 'tshir', 'oversizeTshirt.webp', 'oversi2.webp', '1', '', '', '2025-05-13 15:11:14'),
(28, 'car', 1, 'indoor', 500, 450, 'best cars', 5, 0, '12546', 'asdfghj', 'asdf', 'sport', 'toycar.webp', 'toycar2.webp', '1', 'grocery', '0', '2025-05-13 15:11:14'),
(31, 'printed Shirts', 11, 'normal', 4500, 4000, 'asdfghjkl', 5, 20, 'gvhjk', 'cvb', 'sds', 's', 'shirt1.jpg', 'shirt2.jpg', '1', 'fashion', '', '2025-05-13 15:11:14'),
(32, 'rahul', 10, 'luxery_watch', 7855, 4520, 'sdsd', 3, 8, 'as', 'g', 'gg', 'gvh', 'shirt2.jpg', 'shirt2.jpg', '1', 'fashion', '0', '2025-05-13 15:11:14'),
(33, 'demo', 11, 'Oversizes', 845, 800, 'dfghj', 5, 10, '', '', '', '', 'shirt1.jpg', 'shirt2.jpg', '1', 'fashion', '1', '2025-05-13 15:11:14'),
(34, 'demooo', 3, 'lights', 4567, 456, 'ertyu', 5, 34, 'rt', 'ty', 'fghj', 'ghjas', 'toycar.webp', '', '1', 'grocery', '1', '2025-05-13 15:11:14'),
(35, 'dfg', 11, 'normal', 345, 456, '', 0, 56, '', '', '', '', 'shirt1.jpg', '', '0', 'fashion', '1', '2025-05-13 15:11:14'),
(36, 'demo', 10, 'smart_watch', 100, 0, 'test', 1, 0, '', '', '', '', 'shirt2.jpg', '', '0', 'grocery', '1', '2025-05-13 03:15:29'),
(37, 'toyy', 1, 'indoors', 2000, 1500, 'The oldest classical British and Latin writings had little or no space between words and could be written in boustrophedon (alternating directions). Over time, text direction (left to right) became standardized. Word dividers and terminal punctuation beca', 5, 10, 'wsdfghg', 'sd', 'sdsd', 'ds', 'toys.webp', 'toycar.webp', '1', 'grocery', '1', '2025-05-13 04:09:30'),
(38, '', 10, 'luxery_watch', 551, 500, 'test', 5, 2, '451120', '12025', 'ajay', 'watch', 'pexels-eberhardgross-1366919.jpg', 'pexels-matthew-montrone-230847-1324803.jpg', '0', 'fashion', '1', '2025-05-22 04:01:22');

-- --------------------------------------------------------

--
-- Table structure for table `products_review`
--

CREATE TABLE `products_review` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(210) NOT NULL,
  `products_title` varchar(200) NOT NULL,
  `products_img` text NOT NULL,
  `rating` varchar(20) NOT NULL,
  `review` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `added_on` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products_review`
--

INSERT INTO `products_review` (`id`, `product_id`, `user_id`, `name`, `email`, `products_title`, `products_img`, `rating`, `review`, `status`, `added_on`) VALUES
(5, 7, 1, 'rahulverma', 'rahulvarma9680@gmail.com', 'Natural Virpsss', 'blogimg2.webp', '5', 'test', 1, '2025-05-23 11:44:23'),
(6, 15, 1, 'rahulverma', 'rahulvarma9680@gmail.com', 'Our Business', 'pexels-olly-3837757.jpg', '4', 'dff', 1, '2025-05-23 13:00:28'),
(7, 15, 1, 'rahulverma', 'rahulvarma9680@gmail.com', 'Our Business', 'pexels-olly-3837757.jpg', '5', 'teat', 1, '2025-05-23 13:01:00'),
(9, 7, 3, 'Girraj Nirwan', 'nirwan@yomail.com', 'Natural Virpsss', 'blogimg2.webp', '1', 'poor', 1, '2025-05-26 08:09:08'),
(10, 14, 3, 'Girraj Nirwan', 'nirwan@yomail.com', 'Our Business Unit test', 'FLAIR_MODE_SHOES_Grey_IU6286_01_standard.avif', '3', 'shoes', 1, '2025-05-26 08:15:43'),
(11, 14, 3, 'Girraj Nirwan', 'nirwan@yomail.com', 'Our Business Unit test', 'FLAIR_MODE_SHOES_Grey_IU6286_01_standard.avif', '5', 'test', 1, '2025-05-26 08:16:21'),
(12, 14, 3, 'Girraj Nirwan', 'nirwan@yomail.com', 'Our Business Unit test', 'FLAIR_MODE_SHOES_Grey_IU6286_01_standard.avif', '5', 'test 2', 1, '2025-05-26 08:16:51'),
(13, 14, 3, 'Girraj Nirwan', 'nirwan@yomail.com', 'Our Business Unit test', 'FLAIR_MODE_SHOES_Grey_IU6286_01_standard.avif', '1', 'poor', 1, '2025-05-26 08:19:06'),
(14, 14, 2, 'aarush', 'aarush@gmail.com', 'Our Business Unit test', 'FLAIR_MODE_SHOES_Grey_IU6286_01_standard.avif', '5', 'great', 1, '2025-05-27 13:00:30'),
(15, 7, 9, 'achal', 'achal11@gmail.com', 'Natural Virpsss', 'blogimg2.webp', '5', 'niceee', 1, '2025-05-28 14:13:23'),
(16, 13, 5, 'arun', 'arun@gmail.con', 'info', 'pexels-eberhardgross-1366919.jpg', '3', 'JHJI', 1, '2025-05-28 14:28:18'),
(17, 13, 5, 'arun', 'arun@gmail.con', 'info', 'pexels-eberhardgross-1366919.jpg', '2', ';LKMKJ', 1, '2025-05-28 14:28:29'),
(18, 13, 5, 'arun', 'arun@gmail.con', 'info', 'pexels-eberhardgross-1366919.jpg', '4', 'GFH', 1, '2025-05-28 14:28:37'),
(19, 13, 5, 'arun', 'arun@gmail.con', 'info', 'pexels-eberhardgross-1366919.jpg', '5', 'GFHDSF', 1, '2025-05-28 14:28:47'),
(20, 0, 5, 'arun', 'arun@gmail.con', '', '', '5', 'test', 1, '2025-05-29 10:53:18'),
(21, 0, 5, 'arun', 'arun@gmail.con', '', '', '5', 'demo', 1, '2025-05-29 11:31:50'),
(22, 0, 5, 'arun', 'arun@gmail.con', '', '', '5', 'test', 1, '2025-05-29 11:40:45'),
(23, 0, 5, 'arun', 'arun@gmail.con', '', '', '5', '652', 1, '2025-05-29 11:42:10'),
(24, 0, 5, 'arun', 'arun@gmail.con', '', '', '5', 'test', 1, '2025-05-29 12:03:12');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `pc_id` int(11) NOT NULL,
  `category` varchar(55) DEFAULT NULL,
  `sub_category` varchar(55) DEFAULT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`pc_id`, `category`, `sub_category`, `status`) VALUES
(1, 'Furniture1', 'indoors1, outdoor1, indoors1', '1'),
(3, 'Home decor', 'lights, plants, metals, curtons', '1'),
(4, 'Electronics', 'mobile, laptop, tablet, ac, fridge', '1'),
(7, 'furnitr', 'table, stool', '1'),
(10, 'Watch', 'luxery_watch, smart_watch', '1'),
(11, 'tshirt', 'normal, Oversizes', '1');

-- --------------------------------------------------------

--
-- Table structure for table `product_colors`
--

CREATE TABLE `product_colors` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `colors` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`colors`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_colors`
--

INSERT INTO `product_colors` (`id`, `product_id`, `product_name`, `colors`) VALUES
(1, 14, 'planShirt', '[\"Red\",\"Blue\",\"Gray\",\"Black\",\"White\"]'),
(2, 15, 'shirtt', '[\"Red\",\"Blue\",\"Gray\",\"Black\"]'),
(3, 16, 'zara', '[\"Red\",\"Blue\",\"Gray\"]'),
(4, 18, 'jeans', '[\"Red\",\"Blue\",\"Black\"]'),
(5, 19, 'tshirt', '[\"Red\",\"Gray\",\"Black\"]');

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `sizes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`sizes`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `product_id`, `product_name`, `sizes`) VALUES
(1, 12, 'overSize', '[\"S\",\"M\",\"L\",\"XL\",\"XXL\",\"XXXL\"]'),
(2, 13, 'printed Shirt', '[\"S\",\"M\",\"L\",\"XXL\"]'),
(3, 14, 'planShirt', '[\"S\",\"M\",\"XL\"]'),
(4, 15, 'shirtt', '[\"XL\",\"XXL\",\"XXXL\"]'),
(5, 16, 'zara', '[\"S\",\"M\",\"L\",\"XL\",\"XXL\"]'),
(6, 18, 'jeans', '[\"S\",\"XL\",\"XXL\",\"XXXL\"]'),
(7, 19, 'tshirt', '[\"S\",\"M\",\"L\",\"XL\"]');

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color` varchar(50) DEFAULT NULL,
  `size` varchar(10) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `color`, `size`, `quantity`) VALUES
(22, 23, 'Red', 'S', 3),
(23, 23, 'Red', 'M', 3),
(24, 23, 'Blue', 'M', 5),
(25, 24, 'Red', 'S', 7),
(26, 24, 'Red', 'M', 9),
(27, 24, 'Red', 'L', 11),
(28, 24, 'Green', 'S', 4),
(29, 24, 'Green', 'L', 5),
(30, 24, 'Green', 'XL', 4),
(31, 24, 'White', 'S', 10),
(32, 24, 'White', 'M', 1),
(33, 24, 'White', 'XL', 1),
(58, 31, 'Green', 'M', 3),
(59, 31, 'Green', 'L', 8),
(60, 31, 'Green', 'XL', 8),
(61, 31, 'brown', 'L', 9),
(62, 31, 'brown', 'XL', 10),
(63, 31, 'brown', 'XXL', 10),
(64, 31, 'orange', 'M', 8),
(65, 31, 'orange', 'L', 8),
(66, 31, 'orange', 'XL', 10),
(70, 32, 'brown', 'S', 10),
(71, 32, 'brown', 'M', 10),
(72, 32, 'brown', 'L', 10),
(73, 32, 'brown', 'XL', 1),
(77, 33, 'Green', 'S', 0),
(78, 33, 'Green', 'M', 1),
(79, 33, 'Green', 'L', 1),
(80, 35, 'brown', 'S', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_weights`
--

CREATE TABLE `product_weights` (
  `product_id` int(11) DEFAULT NULL,
  `weights` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_weights`
--

INSERT INTO `product_weights` (`product_id`, `weights`) VALUES
(1, '[\"10\",\"6\"]'),
(2, '[\"4\"]'),
(3, '[\"2\"]'),
(4, '[\"3\",\"5\"]');

-- --------------------------------------------------------

--
-- Table structure for table `query`
--

CREATE TABLE `query` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `phone_num` int(11) NOT NULL,
  `email` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `query`
--

INSERT INTO `query` (`id`, `first_name`, `last_name`, `phone_num`, `email`, `message`) VALUES
(2, 'rahul', 'sharma', 2147483647, 'sameer2@gmail.com', 'have a nice day');

-- --------------------------------------------------------

--
-- Table structure for table `refunds`
--

CREATE TABLE `refunds` (
  `id` int(11) NOT NULL,
  `return_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `refund_amount` decimal(10,2) DEFAULT NULL,
  `refund_status` enum('Pending','Processed') DEFAULT 'Pending',
  `refund_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `refunds`
--

INSERT INTO `refunds` (`id`, `return_id`, `user_id`, `order_id`, `product_id`, `refund_amount`, `refund_status`, `refund_date`) VALUES
(1, 2, 9, 1004, 16, 7000.00, 'Processed', '2025-04-10 11:13:51'),
(2, 6, 1, 1007, 22, 12000.00, 'Processed', '2025-04-15 12:36:40'),
(3, 20, 5, 1038, 25, 21000.00, 'Processed', '2025-04-28 14:59:56'),
(4, 26, 5, 1047, 11, 4000.00, 'Processed', '2025-04-28 16:11:04'),
(5, 33, 5, 1052, 25, 15000.00, 'Processed', '2025-04-28 17:25:31'),
(6, 42, 12, 1069, 28, 900.00, 'Processed', '2025-05-02 12:35:56');

-- --------------------------------------------------------

--
-- Table structure for table `return_requests`
--

CREATE TABLE `return_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `status` enum('Pending','Approved','Rejected') DEFAULT 'Pending',
  `refund_status` varchar(50) NOT NULL DEFAULT 'Pending',
  `request_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `color` varchar(50) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `reason` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `return_requests`
--

INSERT INTO `return_requests` (`id`, `user_id`, `order_id`, `product_id`, `status`, `refund_status`, `request_date`, `color`, `size`, `reason`) VALUES
(2, 9, 1004, 16, 'Approved', 'Processed', '2025-04-10 05:42:37', 'Gray', 'S', NULL),
(6, 1, 1007, 22, 'Approved', 'Processed', '2025-04-15 07:06:23', 'Black', 'L', 'Item Missing in the package'),
(17, 5, 1033, 30, 'Approved', 'Pending', '2025-04-25 10:25:10', 'Green', 'M', 'Different product delivered'),
(20, 5, 1038, 25, 'Approved', 'Processed', '2025-04-28 09:29:37', 'Green', 'L', 'Item Missing in the package'),
(23, 5, 1046, 25, 'Pending', 'Not Initiated', '2025-04-28 10:10:54', 'Green', 'S', 'Item Missing in the package'),
(26, 5, 1047, 11, 'Approved', 'Processed', '2025-04-28 10:40:21', '', '', 'Item Missing in the package'),
(30, 5, 1050, 24, 'Approved', 'Pending', '2025-04-28 11:27:25', 'White', 'S', 'Damaged/Used product'),
(31, 5, 1051, 28, 'Approved', 'Pending', '2025-04-28 11:38:02', '', '', 'Size/Fit issue'),
(32, 5, 1052, 28, 'Approved', 'Pending', '2025-04-28 11:53:30', '', '', 'Damaged/Used product'),
(33, 5, 1052, 25, 'Approved', 'Processed', '2025-04-28 11:54:45', 'Green', 'S', 'Item Missing in the package'),
(34, 5, 1053, 28, 'Approved', 'Pending', '2025-04-28 12:12:56', '', '', 'Size/Fit issue'),
(35, 5, 1053, 25, 'Approved', 'Pending', '2025-04-28 12:13:53', 'Green', 'S', 'Quality issue'),
(36, 1, 1054, 28, 'Approved', 'Pending', '2025-04-29 05:36:59', '', '', 'Item Missing in the package'),
(37, 1, 1054, 11, 'Approved', 'Pending', '2025-04-29 05:39:07', '', '', 'Damaged/Used product'),
(38, 1, 1055, 28, 'Approved', 'Pending', '2025-04-29 06:09:14', '', '', 'Damaged/Used product'),
(40, 1, 1058, 31, 'Approved', 'Pending', '2025-04-29 12:24:23', 'Green', 'M', 'Quality issue'),
(41, 1, 1059, 11, 'Approved', 'Pending', '2025-04-30 05:26:35', '', '', 'Size/Fit issue'),
(42, 12, 1069, 28, 'Approved', 'Processed', '2025-05-02 07:03:30', '', '', 'Quality issue'),
(43, 3, 1072, 1, 'Approved', 'Pending', '2025-05-06 05:18:42', '', '', 'Damaged/Used product'),
(44, 3, 1072, 31, 'Approved', 'Pending', '2025-05-06 05:34:41', 'orange', 'L', 'Quality issue'),
(45, 2, 1071, 31, 'Pending', 'Not Initiated', '2025-05-20 09:45:54', 'orange', 'M', 'Different product delivered'),
(46, 2, 1071, 1, 'Pending', 'Not Initiated', '2025-05-20 09:45:58', '', '', 'Different product delivered');

-- --------------------------------------------------------

--
-- Table structure for table `top_client`
--

CREATE TABLE `top_client` (
  `id` int(11) NOT NULL,
  `img` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `profession` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `top_client`
--

INSERT INTO `top_client` (`id`, `img`, `name`, `profession`, `description`) VALUES
(1, 'topclient1.webp', 'Abdur Razzak', 'Ui Ux Designer', ' Mum ut perspiciatis unde omnis iste natus error sit voluptatem accusan tium doloremque. '),
(2, 'topclient2.webp', 'shyam pal', 'Web Designer', ' Mum ut perspiciatis unde omnis  iste natus error sit voluptatemaccusan tium doloremque. '),
(3, 'topclient3.webp', 'demo ', 'Products Managers', ' Mum ut perspiciatis unde omnis  iste natus error sit voluptatemaccusan tium doloremque. ');

-- --------------------------------------------------------

--
-- Table structure for table `user_reg`
--

CREATE TABLE `user_reg` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `email` varchar(22) DEFAULT NULL,
  `passw` varchar(22) DEFAULT NULL,
  `phone` longtext NOT NULL,
  `company` varchar(100) DEFAULT NULL,
  `address` longtext NOT NULL,
  `city` longtext NOT NULL,
  `country` varchar(100) NOT NULL,
  `postal_code` longtext NOT NULL,
  `selected_address` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_reg`
--

INSERT INTO `user_reg` (`id`, `name`, `email`, `passw`, `phone`, `company`, `address`, `city`, `country`, `postal_code`, `selected_address`) VALUES
(1, 'admin', 'admin@gmail.com', '1234', '05644978987', 'web', 'p-456', 'Jaipur', 'India', '302006', '10'),
(3, 'rahul,rahul v66,rahulafg,05644978987', 'rahul@gmail.com', '1111', '7744117744,7744117744,7744117744,7744117744', NULL, ',vivak vihar,vivak vihar,vivak vihar6546', ',Mumbai,Mumbai,Mumbai', ',India,India,India', ',302001,302001,302001', ''),
(4, 'jai', 'jai@gmail.com', '1234', '1234567891', NULL, '', '', '', '', ''),
(5, 'arun', 'arun@gmail.con', 'admin', '05644978987', 'web', 'p-456', 'Jaipur', 'India', '302006', '42'),
(6, 'ajay5', 'ajay5@gmail.com', '12345', '7845129632', NULL, '', '', '', '', ''),
(7, 'ajay55', 'admin55@gmail.com', '123', '7894512365', NULL, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `color` varchar(50) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `session_id`, `product_id`, `created_at`, `color`, `size`) VALUES
(2, 2, NULL, 6, '2025-05-20 09:41:20', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutus_ourteam`
--
ALTER TABLE `aboutus_ourteam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cancelled_orders`
--
ALTER TABLE `cancelled_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exchanges`
--
ALTER TABLE `exchanges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_header`
--
ALTER TABLE `home_header`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_address`
--
ALTER TABLE `new_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `products_review`
--
ALTER TABLE `products_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`pc_id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_variant` (`product_id`);

--
-- Indexes for table `query`
--
ALTER TABLE `query`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refunds`
--
ALTER TABLE `refunds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `return_requests`
--
ALTER TABLE `return_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `top_client`
--
ALTER TABLE `top_client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_reg`
--
ALTER TABLE `user_reg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutus_ourteam`
--
ALTER TABLE `aboutus_ourteam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cancelled_orders`
--
ALTER TABLE `cancelled_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `exchanges`
--
ALTER TABLE `exchanges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `home_header`
--
ALTER TABLE `home_header`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `new_address`
--
ALTER TABLE `new_address`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1097;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `products_review`
--
ALTER TABLE `products_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `pc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `query`
--
ALTER TABLE `query`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `refunds`
--
ALTER TABLE `refunds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `return_requests`
--
ALTER TABLE `return_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `top_client`
--
ALTER TABLE `top_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_reg`
--
ALTER TABLE `user_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD CONSTRAINT `fk_product_variant` FOREIGN KEY (`product_id`) REFERENCES `products` (`p_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
