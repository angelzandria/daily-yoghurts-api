-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 25, 2026 at 09:52 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Angel_oryx`
--

-- --------------------------------------------------------

--
-- Table structure for table `Employees`
--

CREATE TABLE `Employees` (
  `emp_id` int(50) NOT NULL,
  `emp_name` text NOT NULL,
  `hire_date` date NOT NULL,
  `salary` int(50) NOT NULL,
  `dept_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Employees`
--

INSERT INTO `Employees` (`emp_id`, `emp_name`, `hire_date`, `salary`, `dept_id`) VALUES
(1, 'Narasha aseu', '2026-02-19', 40000, 1),
(2, 'Zandria chege', '2026-02-11', 50000, 2),
(4, 'Narasha naiseku', '2025-05-15', 40000, 1),
(5, 'Narasha candice', '2026-02-12', 6000, 2),
(6, 'Narasha cayvin', '2026-02-12', 40000, 2),
(7, 'caroline nancy ', '2026-02-12', 40000, 2),
(8, 'Banchiri moraro', '2026-02-12', 60000, 1),
(9, 'Mercy kisivuli', '2026-02-12', 40000, 2),
(11, 'Banchiri iano', '2026-02-12', 60000, 2),
(13, 'Dotty moraro', '2026-02-12', 50000, 1),
(14, 'danista maime', '2026-02-12', 50000, 1),
(15, 'Dasmian moraro', '2026-02-12', 50000, 1),
(16, 'Denzel moraro', '2026-02-15', 50000, 1),
(17, 'Spencer moraro', '2026-02-13', 50000, 1),
(18, 'Angel clade', '2026-02-12', 40000, 2),
(19, 'Banchiri moraro', '2026-02-12', 60000, 1),
(20, 'Mercy kisivuli', '2026-02-12', 40000, 2),
(22, 'Banchiri iano', '2026-02-12', 60000, 2),
(23, 'Banchiri nyariki', '2026-02-12', 50000, 2),
(24, 'Dotty moraro', '2026-02-12', 50000, 1),
(25, 'danista maime', '2026-02-12', 50000, 1),
(26, 'Dasmian kofi', '2026-02-12', 50000, 1),
(27, 'Denzel karu', '2026-02-15', 50000, 1),
(28, 'Spencer kira', '2026-02-13', 50000, 1),
(29, 'Danny alberta', '2026-02-13', 50000, 1),
(30, 'Narasha cayvin', '2026-02-12', 40000, 2),
(31, 'Banchiri moraro', '2026-02-12', 60000, 1),
(32, 'Mercy kisivuli', '2026-02-12', 40000, 2),
(34, 'Banchiri iano', '2026-02-12', 60000, 2),
(35, 'Banchiri nyariki', '2026-02-12', 50000, 2),
(36, 'Dotty moraro', '2026-02-12', 50000, 1),
(37, 'danista maime', '2026-02-12', 50000, 1),
(38, 'Dasmian kofi', '2026-02-12', 50000, 1),
(39, 'Denzel karu', '2026-02-15', 50000, 1),
(40, 'Spencer kira', '2026-02-13', 50000, 1),
(41, 'Danny alberta', '2026-02-13', 50000, 1),
(42, 'Andrew songok', '2026-04-15', 50000, 2),
(43, 'Narasha cayvin', '2026-02-12', 40000, 2),
(44, 'Narasha cayvin', '2026-02-12', 40000, 2),
(45, 'Banchiri moraro', '2026-02-12', 60000, 1),
(46, 'Banchiri moraro', '2026-02-12', 60000, 1),
(47, 'Mercy kisivuli', '2026-02-12', 40000, 2),
(49, 'Banchiri iano', '2026-02-12', 60000, 2),
(50, 'Mercy kisivuli', '2026-02-12', 40000, 2),
(51, 'Banchiri nyariki', '2026-02-12', 50000, 2),
(53, 'Dotty moraro', '2026-02-12', 50000, 1),
(54, 'Banchiri iano', '2026-02-14', 60000, 2),
(55, 'danista maime', '2026-02-12', 50000, 1),
(56, 'Banchiri nyariki', '2026-02-12', 50000, 2),
(57, 'Dasmian kofi', '2026-02-12', 50000, 1),
(58, 'Dotty moraro', '2026-02-12', 50000, 1),
(59, 'Denzel karu', '2026-02-15', 50000, 1),
(60, 'danista maime', '2026-02-12', 50000, 1),
(61, 'Spencer kira', '2026-02-13', 50000, 1),
(62, 'Dasmian kofi', '2026-02-12', 50000, 1),
(63, 'Danny alberta', '2026-02-13', 50000, 1),
(64, 'Denzel karu', '2026-02-15', 50000, 1),
(65, 'Andrew songok', '2026-04-15', 50000, 2),
(66, 'Spencer kira', '2026-02-13', 50000, 1),
(67, 'Adrian allan', '2026-04-15', 50000, 2),
(68, 'Danny alberta', '2026-02-13', 50000, 1),
(69, 'Andrew songok', '2026-04-15', 50000, 2),
(70, 'Adrian allan', '2026-04-15', 50000, 2),
(71, 'Narasha cayvin', '2026-02-12', 40000, 2),
(72, 'Banchiri moraro', '2026-02-12', 60000, 1),
(73, 'Mercy kisivuli', '2026-02-12', 40000, 2),
(75, 'Banchiri iano', '2026-02-12', 60000, 2),
(76, 'Banchiri nyariki', '2026-02-12', 50000, 2),
(77, 'Dotty moraro', '2026-02-12', 50000, 1),
(78, 'danista maime', '2026-02-12', 50000, 1),
(79, 'Dasmian kofi', '2026-02-12', 50000, 1),
(80, 'Denzel karu', '2026-02-15', 50000, 1),
(81, 'Spencer kira', '2026-02-13', 50000, 1),
(82, 'Danny alberta', '2026-02-13', 50000, 1),
(83, 'Andrew songok', '2026-04-15', 50000, 2),
(84, 'Narasha cayvin', '2026-02-12', 40000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_description` text NOT NULL,
  `product_cost` int(11) NOT NULL,
  `product_photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`product_id`, `product_name`, `product_description`, `product_cost`, `product_photo`) VALUES
(1, 'beds', 'Durable and cozy', 67000, 'girl-in-bed-2004775_1920.jpg'),
(2, 'kitchen appliances', 'easy to use and maintain', 5500, 'Compact Power Oven 🔥 _ Class Pro 45L Electric Oven.jpeg'),
(3, 'clothes', 'smart and fashionable', 6700, 'leather-gloves-4705453_1920.jpg'),
(4, 'clothes', 'smart and fashionable', 6700, 'leather-gloves-4705453_1920.jpg'),
(5, 'clothes', 'smart and fashionable', 6700, 'leather-gloves-4705453_1920.jpg'),
(6, 'clothes', 'smart and fashionable', 6700, 'leather-gloves-4705453_1920.jpg'),
(7, 'clothes', 'smart and fashionable', 6700, 'leather-gloves-4705453_1920.jpg'),
(8, 'clothes', 'smart and fashionable', 6700, 'leather-gloves-4705453_1920.jpg'),
(9, 'clothes', 'smart and fashionable', 6700, 'leather-gloves-4705453_1920.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `phone`) VALUES
(1, 'angel', '234466', '@angeljemutai27gmail.com', '0782345355'),
(2, 'anna', '2467890', '@annagmail.com', '0735676687'),
(3, 'raely', '24356790', '@raelygmail.com', '073567864'),
(5, 'gwenn', '5734993', '@gwenjigmail.com', '0768678753'),
(6, 'rael', '34565478', '@raely', '0734346789'),
(7, 'rael', '34565478', '@raely', '0734346789');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Employees`
--
ALTER TABLE `Employees`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Employees`
--
ALTER TABLE `Employees`
  MODIFY `emp_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
