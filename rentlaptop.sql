-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2023 at 02:27 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rentlaptop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` int(11) UNSIGNED NOT NULL,
  `a_name` varchar(30) NOT NULL,
  `a_image` varchar(225) NOT NULL,
  `a_email` varchar(30) NOT NULL,
  `a_password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `a_name`, `a_image`, `a_email`, `a_password`) VALUES
(6, 'Devraj Thapamagar', '../img/admin/105.jpg', 'admin@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `c_id` int(11) UNSIGNED NOT NULL,
  `c_name` varchar(30) NOT NULL,
  `c_address` varchar(30) NOT NULL,
  `c_contact` varchar(10) NOT NULL,
  `c_profile` varchar(225) NOT NULL,
  `c_email` varchar(30) NOT NULL,
  `c_password` varchar(30) NOT NULL,
  `account_status` varchar(20) DEFAULT 'pending',
  `a_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`c_id`, `c_name`, `c_address`, `c_contact`, `c_profile`, `c_email`, `c_password`, `account_status`, `a_id`) VALUES
(7, 'Ram Babu Pandit ', 'Gokarna ', '9842152121', '../img/customer/profile/2016-11-18-15-34-21-401.jpg', 'rambabu@gmail.com', '123456', 'approve', 6),
(8, 'Janaki  Khatiwada', 'Jankapur', '9845625586', '../img/customer/profile/download.jpg', 'janaki@gmail.com', '123456', 'approve', 6),
(11, 'Sagar Tamanag ', 'Lalitpur ', '9865234685', '../img/customer/profile/sagar.jpg', 'sagar@gmail.com', '123456', 'approve', 6),
(12, 'Sudip Nepali ', 'Gorkha ', '9842153361', '../img/customer/profile/sagar.jpg', 'sudip@gmail.com', '123456', 'approve', 6),
(13, 'Niraj Dhakal ', 'Kathmandu', '9865246132', '../img/customer/profile/sagar.jpg', 'niraj@gmail.com', '123456', 'pending', 6),
(14, 'Binaya Shahi ', 'Kathmandu', '9845632153', '../img/customer/profile/sagar.jpg', 'binaya@gmail.com', '123456', 'pending', 6);

-- --------------------------------------------------------

--
-- Table structure for table `customer_credential`
--

CREATE TABLE `customer_credential` (
  `credential_id` int(11) UNSIGNED NOT NULL,
  `credential_name` varchar(30) NOT NULL,
  `front_side` varchar(225) NOT NULL,
  `back_side` varchar(225) NOT NULL,
  `c_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_credential`
--

INSERT INTO `customer_credential` (`credential_id`, `credential_name`, `front_side`, `back_side`, `c_id`) VALUES
(5, 'License', '../../img/customer/credential/received_1778343782516503.jpeg', '../../img/customer/credential/received_1778343782516503.jpeg', 7),
(6, 'License', '../../img/customer/credential/received_1778343782516503.jpeg', '../../img/customer/credential/received_1778343782516503.jpeg', 8);

-- --------------------------------------------------------

--
-- Table structure for table `laptop`
--

CREATE TABLE `laptop` (
  `lap_id` int(11) UNSIGNED NOT NULL,
  `lap_name` varchar(30) NOT NULL,
  `processor` varchar(30) NOT NULL,
  `lap_model` varchar(40) NOT NULL,
  `lap_brand` varchar(30) NOT NULL,
  `lap_color` varchar(30) NOT NULL,
  `lap_ssd` varchar(10) NOT NULL,
  `lap_ram` varchar(10) NOT NULL,
  `lap_speed` varchar(10) NOT NULL,
  `description` varchar(200) NOT NULL,
  `lap_image` varchar(225) NOT NULL,
  `o_id` int(11) UNSIGNED DEFAULT NULL,
  `lap_status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `laptop`
--

INSERT INTO `laptop` (`lap_id`, `lap_name`, `processor`, `lap_model`, `lap_brand`, `lap_color`, `lap_ssd`, `lap_ram`, `lap_speed`, `description`, `lap_image`, `o_id`, `lap_status`) VALUES
(2, 'Toshiba ', 'Intel core 3', 'toshiba', 'Toshiba ', 'blue', '256 GB ', '4 Gb ', '2-4 hertz', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Placeat distinctio ex sapiente molestias\r\n\r\n\r\n', 'img/laptoplaptoplap1.jpg', 4, 'available'),
(8, 'HP 15', 'Intel core I5', '15-du', 'Hp', 'grey', '256', '8', '2-4 hertz', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Placeat distinctio ex sapiente molestias', 'img/laptop/hp.jpg', 4, 'available'),
(9, 'Aspire 5', 'Intel core I5', 'Aspire', 'Acer', 'grey ', '256', '8', '2-4 hertz', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Placeat distinctio ex sapiente molestias', 'img/laptop/acerAspire.jpg', 4, 'available'),
(10, 'Leveno ', 'Intel core i3', '7020u', 'Leveno ', 'black', '128', '4 Gb ', '2.4 hertz', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Placeat distinctio ex sapiente molestias', 'img/laptop/lenovo.jpg', 4, 'available'),
(12, 'Thinkpad', 'Intel core I5', 'L590', 'Lenovo', 'black', '256', '8', '2-4 hertz', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Placeat distinctio ex sapiente molestias', 'img/laptop/Lenovo_ThinkPad_X1_Ultrabook.jpg', 9, 'available'),
(13, 'Ideapaf', 'Intel core I5', '15-du', 'Lenovo', 'ideapad', '256', '8', '2-4 hertz', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Placeat distinctio ex sapiente molestias', 'img/laptop/lenovo-ideapad-320-14-hero-725x515.png', 9, 'available'),
(14, 'Hp 250', 'Intel core I5', 'G8', 'Hp', 'black', '512', '8', '2-4 hertz', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Placeat distinctio ex sapiente molestias', 'img/laptop/hp2.jpg', 9, 'available'),
(15, 'Aspire 3', 'Intel core I5', '15-du', 'Acer', 'black', '256', '8', '2-4 hertz', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Placeat distinctio ex sapiente molestias', 'img/laptop/acerAspire.jpg', 4, 'available'),
(16, 'Leveno ', 'Intel core i3', '7020u', 'Leveno ', 'black', '128', '4 Gb ', '2.4 hertz', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Placeat distinctio ex sapiente molestias', 'img/laptop/lenovo.jpg', 4, 'available');

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `o_id` int(11) UNSIGNED NOT NULL,
  `o_name` varchar(30) NOT NULL,
  `o_address` varchar(30) NOT NULL,
  `o_contact` varchar(10) NOT NULL,
  `o_profile` varchar(225) NOT NULL,
  `o_email` varchar(30) NOT NULL,
  `o_password` varchar(10) NOT NULL,
  `account_status` varchar(20) DEFAULT 'pending',
  `a_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`o_id`, `o_name`, `o_address`, `o_contact`, `o_profile`, `o_email`, `o_password`, `account_status`, `a_id`) VALUES
(4, 'Devraj Thapamagar', 'Bhaktapur', '9840562187', '../img/owner/profile/2018-01-12-15-30-18-478.jpg', 'devraj@gmail.com', '123456', 'approve', 6),
(9, 'Archana Adhakari ', 'Swoyambhu', '9842563158', '../img/owner/profile/didi.jpg', 'adharchana1999@gmail.com', '123456', 'approve', 6);

-- --------------------------------------------------------

--
-- Table structure for table `owner_credential`
--

CREATE TABLE `owner_credential` (
  `credential_id` int(11) UNSIGNED NOT NULL,
  `credential_name` varchar(30) NOT NULL,
  `front_side` varchar(225) NOT NULL,
  `back_side` varchar(225) NOT NULL,
  `o_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `owner_credential`
--

INSERT INTO `owner_credential` (`credential_id`, `credential_name`, `front_side`, `back_side`, `o_id`) VALUES
(17, 'Citizenship', '../../img/owner/credential/citizenship_1.jpg', '../../img/owner/credential/citizenship_2.jpg', 4),
(18, 'License', '../../img/owner/credential/lisc1.jpg', '../../img/owner/credential/lisc2.jpg', 9);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) UNSIGNED NOT NULL,
  `rental_id` int(11) UNSIGNED DEFAULT NULL,
  `first_installment` int(10) NOT NULL,
  `first_payment_date` date DEFAULT NULL,
  `add_charge` int(10) DEFAULT NULL,
  `last_installment` int(10) NOT NULL,
  `last_payment_date` date DEFAULT NULL,
  `total` int(10) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `rental_id`, `first_installment`, `first_payment_date`, `add_charge`, `last_installment`, `last_payment_date`, `total`, `status`) VALUES
(5, 20, 7350, '2022-08-17', 0, 7350, '2022-08-25', 7350, 'received'),
(6, 23, 2100, NULL, NULL, 2100, '2022-08-25', 4200, 'received'),
(7, 24, 1650, '2022-08-25', 330, 1980, '2022-08-25', 3630, 'received'),
(8, 25, 3300, '2022-08-26', NULL, 3300, '2022-08-26', 6600, 'received');

-- --------------------------------------------------------

--
-- Table structure for table `rental`
--

CREATE TABLE `rental` (
  `rental_id` int(11) UNSIGNED NOT NULL,
  `rental_date` date NOT NULL,
  `return_date` date NOT NULL,
  `o_id` int(11) UNSIGNED DEFAULT NULL,
  `lap_id` int(11) UNSIGNED DEFAULT NULL,
  `c_id` int(11) UNSIGNED DEFAULT NULL,
  `rental_status` varchar(15) DEFAULT NULL,
  `payment` int(12) NOT NULL,
  `days` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rental`
--

INSERT INTO `rental` (`rental_id`, `rental_date`, `return_date`, `o_id`, `lap_id`, `c_id`, `rental_status`, `payment`, `days`) VALUES
(20, '2022-07-01', '2022-08-19', 4, 8, 7, 'approved', 14700, 49),
(23, '2022-08-01', '2022-08-15', 4, 10, 8, 'approved', 4200, 14),
(24, '2022-08-04', '2022-08-15', 4, 9, 7, 'approved', 3300, 11),
(25, '2022-08-09', '2022-08-31', 4, 2, 7, 'approved', 6600, 22);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`c_id`),
  ADD KEY `a_id` (`a_id`);

--
-- Indexes for table `customer_credential`
--
ALTER TABLE `customer_credential`
  ADD PRIMARY KEY (`credential_id`),
  ADD KEY `c_id` (`c_id`);

--
-- Indexes for table `laptop`
--
ALTER TABLE `laptop`
  ADD PRIMARY KEY (`lap_id`),
  ADD KEY `o_id` (`o_id`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`o_id`),
  ADD KEY `a_id` (`a_id`);

--
-- Indexes for table `owner_credential`
--
ALTER TABLE `owner_credential`
  ADD PRIMARY KEY (`credential_id`),
  ADD KEY `o_id` (`o_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `rental_id` (`rental_id`);

--
-- Indexes for table `rental`
--
ALTER TABLE `rental`
  ADD PRIMARY KEY (`rental_id`),
  ADD KEY `o_id` (`o_id`),
  ADD KEY `lap_id` (`lap_id`),
  ADD KEY `c_id` (`c_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `c_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `customer_credential`
--
ALTER TABLE `customer_credential`
  MODIFY `credential_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `laptop`
--
ALTER TABLE `laptop`
  MODIFY `lap_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `owner`
--
ALTER TABLE `owner`
  MODIFY `o_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `owner_credential`
--
ALTER TABLE `owner_credential`
  MODIFY `credential_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rental`
--
ALTER TABLE `rental`
  MODIFY `rental_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`a_id`) REFERENCES `admin` (`a_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer_credential`
--
ALTER TABLE `customer_credential`
  ADD CONSTRAINT `customer_credential_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `customer` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `laptop`
--
ALTER TABLE `laptop`
  ADD CONSTRAINT `laptop_ibfk_1` FOREIGN KEY (`o_id`) REFERENCES `owner` (`o_id`);

--
-- Constraints for table `owner`
--
ALTER TABLE `owner`
  ADD CONSTRAINT `owner_ibfk_1` FOREIGN KEY (`a_id`) REFERENCES `admin` (`a_id`);

--
-- Constraints for table `owner_credential`
--
ALTER TABLE `owner_credential`
  ADD CONSTRAINT `owner_credential_ibfk_1` FOREIGN KEY (`o_id`) REFERENCES `owner` (`o_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`rental_id`) REFERENCES `rental` (`rental_id`);

--
-- Constraints for table `rental`
--
ALTER TABLE `rental`
  ADD CONSTRAINT `rental_ibfk_1` FOREIGN KEY (`o_id`) REFERENCES `owner` (`o_id`),
  ADD CONSTRAINT `rental_ibfk_2` FOREIGN KEY (`lap_id`) REFERENCES `laptop` (`lap_id`),
  ADD CONSTRAINT `rental_ibfk_3` FOREIGN KEY (`c_id`) REFERENCES `customer` (`c_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
