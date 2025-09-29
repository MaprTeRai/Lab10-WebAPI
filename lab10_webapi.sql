-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2025 at 05:01 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE
= "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone
= "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lab10_webapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products`
(
  `id` int
(11) NOT NULL,
  `title` varchar
(255) NOT NULL,
  `price` decimal
(10,2) NOT NULL,
  `description` text DEFAULT NULL,
  `category` varchar
(100) DEFAULT NULL,
  `image` varchar
(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`
id`,
`title
`, `price`, `description`, `category`, `image`) VALUES
(1, 'Laptop Dell XPS 13', 35000.00, 'โน๊ตบุ๊ค Dell XPS 13 รุ่นล่าสุด', 'Laptop', 'https://example.com/laptop1.jpg'),
(2, 'Logitech G Pro X', 3990.00, 'Gaming Headset', 'Headset', 'https://example.com/headset1.jpg'),
(3, 'iPhone 14', 29900.00, 'Apple iPhone 14', 'Smartphone', 'https://example.com/iphone14.jpg'),
(7, 'Samsung Galaxy S23', 28000.00, 'มือถือ Samsung รุ่นล่าสุด', 'Smartphone', 'https://example.com/galaxyS23.jpg'),
(8, 'Mouse Razer', 2500.00, 'Gaming Mouse', 'Accessories', 'https://example.com/mouse.jpg'),
(9, 'Keyboard Mechanical', 3200.00, 'Mechanical Keyboard', 'Accessories', 'https://example.com/keyboard.jpg'),
(10, 'Monitor LG 27\"', 7000.00, 'จอมอนิเตอร์ LG 27 นิ้ว', 'Monitor', 'https://example.com/monitor.jpg'),
(11, 'SSD Samsung 1TB', 5500.00, 'SSD ความจุ 1TB', 'Storage', 'https://example.com/ssd1tb.jpg'),
(12, 'Headset HyperX', 3200.00, 'Gaming Headset HyperX', 'Headset', 'https://example.com/headset2.jpg'),
(13, 'Camera Canon EOS R5', 120000.00, 'กล้อง Canon EOS R5', 'Camera', 'https://example.com/canonr5.jpg'),
(14, 'Printer HP LaserJet', 9000.00, 'เครื่องพิมพ์ HP LaserJet', 'Printer', 'https://example.com/printer.jpg'),
(15, 'Router TP-Link', 1500.00, 'Wireless Router', 'Networking', 'https://example.com/router.jpg'),
(16, 'Webcam Logitech C920', 2500.00, 'Webcam HD', 'Camera', 'https://example.com/webcam.jpg'),
(17, 'Tablet iPad Air', 17000.00, 'Apple iPad Air', 'Tablet', 'https://example.com/ipad.jpg'),
(18, 'Microphone Blue Yeti', 4500.00, 'USB Microphone', 'Accessories', 'https://example.com/mic.jpg'),
(19, 'Laptop HP Spectre', 34000.00, 'โน๊ตบุ๊ค HP Spectre', 'Laptop', 'https://example.com/hpspectre.jpg'),
(20, 'Smartwatch Apple Watch 8', 12000.00, 'Apple Smartwatch', 'Wearable', 'https://example.com/watch8.jpg'),
(21, 'Power Bank Anker 10000mAh', 900.00, 'Power Bank 10000mAh', 'Accessories', 'https://example.com/powerbank.jpg'),
(22, 'Graphic Card RTX 4070', 45000.00, 'การ์ดจอ NVIDIA RTX 4070', 'PC Component', 'https://example.com/rtx4070.jpg'),
(23, 'Motherboard ASUS ROG', 8000.00, 'Mainboard ASUS ROG', 'PC Component', 'https://example.com/motherboard.jpg'),
(24, 'RAM 16GB DDR4', 3200.00, 'แรม 16GB DDR4', 'PC Component', 'https://example.com/ram16.jpg'),
(25, 'External HDD 2TB', 2800.00, 'External HDD 2TB', 'Storage', 'https://example.com/hdd2tb.jpg'),
(26, 'Laptop Lenovo ThinkPad', 30000.00, 'โน๊ตบุ๊ค Lenovo ThinkPad', 'Laptop', 'https://example.com/thinkpad.jpg'),
(27, 'Smartphone Xiaomi 13', 22000.00, 'มือถือ Xiaomi 13', 'Smartphone', 'https://example.com/xiaomi13.jpg'),
(28, 'Tablet Samsung Galaxy Tab', 15000.00, 'แท็บเล็ต Samsung Galaxy Tab', 'Tablet', 'https://example.com/tab.jpg'),
(29, 'Monitor Dell 24\"', 6000.00, 'จอมอนิเตอร์ Dell 24 นิ้ว', 'Monitor', 'https://example.com/monitor2.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
ADD PRIMARY KEY
(`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int
(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
