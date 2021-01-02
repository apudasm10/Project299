-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2020 at 09:22 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `adminUser` varchar(255) NOT NULL,
  `adminEmail` varchar(255) NOT NULL,
  `adminPass` varchar(32) NOT NULL,
  `level` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminUser`, `adminEmail`, `adminPass`, `level`) VALUES
(1, 'Azher Uddin', 'admin', 'admin@gmail.com', 'a0e122fd7ecddd0526003e3cf0fa7824', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(1, 'Acer'),
(2, 'Samsung'),
(3, 'Iphone'),
(4, 'Lenovo');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `sId` varchar(255) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `sId`, `productId`, `productName`, `price`, `quantity`, `image`) VALUES
(1, 'c196c0fjkocqj46iov70hv7j8j', 7, 'Lorem Ipsum is simply', 677.20, 4, 'uploads/4774e61757.jpg'),
(4, 'pkatdobi1q2uk8o85e82thn1cu', 8, 'Lorem Ipsum is simply', 677.20, 2, 'uploads/e24e224770.jpg'),
(5, 'pkatdobi1q2uk8o85e82thn1cu', 6, 'Lorem Ipsum is simply', 677.20, 1, 'uploads/1b1e9d69d8.jpg'),
(6, 'g9l6jorsucnd51kfguna6egao5', 8, 'Lorem Ipsum is simply', 677.20, 3, 'uploads/e24e224770.jpg'),
(7, 'g9l6jorsucnd51kfguna6egao5', 6, 'Lorem Ipsum is simply', 677.20, 1, 'uploads/1b1e9d69d8.jpg'),
(16, 'mk44qlogcqbm6vphqdjsqt2rh6', 3, 'Lorem Ipsum is simply', 1200.00, 3, 'uploads/7bc463b05e.jpg'),
(17, '98mlp9bqm551hksqhg8p5hm849', 2, 'Lorem Ipsum is simply', 2500.60, 1, 'uploads/9fa30fc0c9.jpg'),
(18, 'aj6n3uo54gch502veviio6a1id', 2, 'Lorem Ipsum is simply', 2500.60, 1, 'uploads/9fa30fc0c9.jpg'),
(20, 'jqps8v3spjk7l7huiem59hklin', 2, 'Lorem Ipsum is simply', 2500.60, 1, 'uploads/9fa30fc0c9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(1, 'Desktop'),
(2, 'Laptop'),
(3, 'Mobile Phones'),
(4, 'Accessories'),
(5, 'Software'),
(6, 'Sports'),
(7, 'Footwear');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `zip` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zip`, `phone`, `email`, `pass`) VALUES
(1, 'Azher Uddin', 'bashundhara,Dhaka', 'Dhaka', 'Bangladesh', 'azheruddin', '017276672758', 'azher.uddin@northsouth.edu', '717311ac34dd7ff27918b30e11cde606'),
(2, 'Samanta Sarwar', '24 masdair,shere bangla road', 'Narayangonj', 'Bangladesh', '123', '01126624', 'Samanta.sarwar@northsouth.edu', '405ad1c3328814b0085af59bf355fd23'),
(3, 'Ragnar', '123 Valhala', 'NY', 'Canada', '321', '5555', 'ragnar@gmail.com', '4fe979c871c0cec9caca9744197b51bb');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `cmrId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `cmrId`, `productId`, `productName`, `quantity`, `price`, `image`, `date`, `status`) VALUES
(58, 1, 3, 'Lorem Ipsum is simply', 1, 1200.00, 'uploads/16b56a3f29.jpg', '2020-09-21 08:00:04', 1),
(59, 1, 8, 'Lorem Ipsum is simply', 1, 677.20, 'uploads/e24e224770.jpg', '2020-09-21 08:00:15', 0),
(60, 1, 3, 'Lorem Ipsum is simply', 1, 1200.00, 'uploads/16b56a3f29.jpg', '2020-09-21 08:00:44', 1),
(61, 1, 8, 'Lorem Ipsum is simply', 2, 1354.40, 'uploads/e24e224770.jpg', '2020-09-21 08:46:29', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `body` text NOT NULL,
  `price` float(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `catId`, `brandId`, `body`, `price`, `image`, `type`) VALUES
(1, 'Lorem Ipsum is simply', 3, 2, '<p>Product details... Product details...Product details... Product details...Product details... Product details...Product details... Product details...Product details... Product details...Product details... Product details...Product details... Product details...Product details... Product details...Product details... Product details...Product details... Product details...Product details... Product details...Product details... Product details...Product details... Product details...Product details... Product details...Product details... Product details...Product details... Product details...Product details... Product details...Product details... Product details...Product details... Product</p>', 1000.50, 'uploads/2c23e74d67.jpg', 0),
(2, 'Lorem Ipsum is simply', 3, 3, '<p>Hello Appleusers...Hello Appleusers...Hello Appleusers...Hello Appleusers...Hello Appleusers...Hello Appleusers...</p>', 2500.60, 'uploads/9fa30fc0c9.jpg', 0),
(3, 'Lorem Ipsum is simply', 1, 2, '<p>Dextop details...Dextop details...Dextop details...Dextop details...Dextop details...Dextop details...Dextop details...</p>', 1200.00, 'uploads/16b56a3f29.jpg', 0),
(6, 'Lorem Ipsum is simply', 4, 2, '<p>CCTV!you are in screen!</p>', 677.20, 'uploads/43c36a790a.jpg', 0),
(7, 'Lorem Ipsum is simply', 2, 4, '<p>Lenovo Laptop...Lenovo Laptop...Lenovo Laptop...Lenovo Laptop...</p>', 677.20, 'uploads/4774e61757.jpg', 0),
(8, 'Lorem Ipsum is simply', 4, 2, '<p>Product is updated ..........Hurrehhhh!Product is updated ..........Hurrehhhh!</p>', 677.20, 'uploads/e24e224770.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
