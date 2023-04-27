-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 18, 2022 at 12:01 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grocery`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `UserID` int(5) NOT NULL,
  `UserName` varchar(30) NOT NULL,
  `Password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`UserID`, `UserName`, `Password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `Booking`
--

CREATE TABLE `Booking` (
  `BookingID` int(50) NOT NULL,
  `UserEmail` varchar(50) NOT NULL,
  `ProductName` varchar(50) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Booking`
--

INSERT INTO `Booking` (`BookingID`, `UserEmail`, `ProductName`, `Date`) VALUES
(69, 'paru@gmail.com', 'Orange', '2022-06-06'),
(70, 'paru@gmail.com', 'carrot', '2022-06-06'),
(71, 'paru@gmail.com', 'Orange', '2022-06-06'),
(72, 'paru@gmail.com', 'Orange', '2022-06-06'),
(73, 'paru@gmail.com', 'Strawberry', '2022-06-06'),
(74, 'paru@gmail.com', 'carrot', '2022-06-06'),
(75, 'paru@gmail.com', 'Orange', '2022-06-06'),
(76, 'paru@gmail.com', 'Orange', '2022-06-06'),
(77, 'paru@gmail.com', 'Strawberry', '2022-06-06'),
(78, 'paru@gmail.com', 'carrot', '2022-06-06'),
(79, 'paru@gmail.com', 'Orange', '2022-06-06'),
(80, 'paru@gmail.com', 'Orange', '2022-06-06'),
(81, 'paru@gmail.com', 'Strawberry', '2022-06-06');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `Id` int(11) NOT NULL,
  `ProductID` varchar(100) NOT NULL,
  `ProductName` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Quantity` varchar(50) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `CategoryCode` varchar(50) NOT NULL,
  `Price` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `Image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`Id`, `ProductID`, `ProductName`, `Email`, `Quantity`, `Status`, `Category`, `CategoryCode`, `Price`, `Date`, `Image`) VALUES
(86, '10', 'Apple 1kg', 'paru@gmail.com', '1', 'available', 'fruits', '1', '55', '2022-06-07', 'apple.jpg'),
(87, '2', 'Beetroot 1/2 kg', 'nivia@gmail.com', '1', 'available', 'vegetable', '2', '40', '2022-06-02', 'beetroot.jpg'),
(88, '4', 'Egg 10 no.', 'nivia@gmail.com', '1', 'available', 'Grocery', '3', '60', '2022-06-10', 'Brown-eggs.jpg'),
(89, '15', 'Onion 1kg', 'nivia@gmail.com', '1', 'available', 'vegetable', '2', '25', '2022-06-05', 'onion.jpg'),
(90, '2', 'Beetroot 1/2 kg', 'sujisuresh313@gmail.com', '1', 'available', 'vegetable', '2', '40', '2022-06-02', 'beetroot.jpg'),
(91, '1', 'Carrot 1kg', 'sujisuresh313@gmail.com', '1', 'available', 'vegetable', '2', '30', '2022-06-10', 'carrot.jpg'),
(92, '11', 'cauliflower 1kg', 'sujisuresh313@gmail.com', '1', 'available', 'vegetable', '2', '30', '2022-06-07', 'cauliflower.jpg'),
(93, '12', 'Tomato 1kg', 'paru@gmail.com', '1', 'available', 'vegetable', '2', '30', '2022-06-08', 'tomato.jpg'),
(94, '1', 'Carrot 1kg', 'paru@gmail.com', '1', 'available', 'vegetable', '2', '30', '2022-06-10', 'carrot.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `Message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`Message`) VALUES
(''),
(''),
(''),
('');

-- --------------------------------------------------------

--
-- Table structure for table `manageitems`
--

CREATE TABLE `manageitems` (
  `ProductID` int(50) NOT NULL,
  `ProductName` varchar(50) NOT NULL,
  `Quantity` varchar(50) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `CategoryCode` varchar(10) NOT NULL,
  `Price` varchar(50) NOT NULL,
  `Date` varchar(50) NOT NULL,
  `Image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manageitems`
--

INSERT INTO `manageitems` (`ProductID`, `ProductName`, `Quantity`, `Status`, `Category`, `CategoryCode`, `Price`, `Date`, `Image`) VALUES
(1, 'Carrot 1kg', '1', 'available', 'vegetable', '2', '30', '2022-06-10', 'carrot.jpg'),
(2, 'Beetroot 1/2 kg', '1', 'available', 'vegetable', '2', '40', '2022-06-02', 'beetroot.jpg'),
(3, 'Milk 1/2 litre', '1', 'available', 'Grocery', '3', '24', '2022-06-07', 'milk.jpg'),
(4, 'Egg 10 no.', '1', 'available', 'Grocery', '3', '60', '2022-06-10', 'Brown-eggs.jpg'),
(5, 'Sonpapdi 500g', '1', 'available', 'Grocery', '3', '100', '2022-06-06', 'sonpapdi.jpg'),
(6, 'Orange 1kg', '1', 'available', 'fruits', '1', '35', '2022-06-02', 'orange.jpg'),
(8, 'Pappaya 1kg', '1', 'available', 'fruits', '1', '25', '2022-06-03', 'pappaya.jpg'),
(9, 'Strawberry 1/2kg', '1', 'available', 'fruits', '1', '60', '2022-06-07', 'strawberry.jpg'),
(10, 'Apple 1kg', '1', 'available', 'fruits', '1', '55', '2022-06-07', 'apple.jpg'),
(11, 'cauliflower 1kg', '1', 'available', 'vegetable', '2', '30', '2022-06-07', 'cauliflower.jpg'),
(12, 'Tomato 1kg', '1', 'available', 'vegetable', '2', '30', '2022-06-08', 'tomato.jpg'),
(13, 'potato 1kg', '1', 'available', 'vegetable', '2', '40', '2022-06-09', 'potato.jpg'),
(14, 'Home-made Biscuits', '5', 'available', 'Grocery', '3', '25', '2022-06-15', 'Home-made-biscuits.jpg'),
(15, 'Onion 1kg', '1', 'available', 'vegetable', '2', '25', '2022-06-05', 'onion.jpg'),
(16, 'Dragon fruit', '1', 'available', 'fruits', '1', '160', '2022-06-16', 'dragon.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ID` int(11) NOT NULL,
  `BillAdd` varchar(500) NOT NULL,
  `PayMode` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `ProductID` int(100) NOT NULL,
  `ProductName` varchar(100) NOT NULL,
  `Quantity` varchar(100) NOT NULL,
  `TotalPrice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ID`, `BillAdd`, `PayMode`, `Email`, `ProductID`, `ProductName`, `Quantity`, `TotalPrice`) VALUES
(33, 'abcdefghijklmnoplmnopqrstuvwxyz', 'Offline', 'paru@gmail.com', 1, 'Carrot', '1', 30);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `UserID` int(5) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Contact` int(10) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`UserID`, `Name`, `Contact`, `Email`, `Address`, `Password`) VALUES
(1, 'parvathy', 45373733, 'paru@gmail.com', 'dcdscc', 'abc'),
(2, 'gopi', 974412111, 'nivia@gmail.com', 'cccc', 'nivu'),
(4, 'Farsana', 7347853, 'farsana@gamail.com', 'hgdscgsdckuds\r\n', 'abcd'),
(6, 'Divya', 1234567890, 'abc@asd.jiu', 'fthfhy', 'abc'),
(7, 'abc', 1234567890, 'abc@asd.jiu', 'qwerfs', 'zxc'),
(8, 'Suji Suresh', 444354353, 'sujisuresh313@gmail.com', 'fdgg', 'abcd');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `CID` int(11) NOT NULL,
  `CName` varchar(100) NOT NULL,
  `CEmail` varchar(100) NOT NULL,
  `Subject` varchar(100) NOT NULL,
  `Message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`CID`, `CName`, `CEmail`, `Subject`, `Message`) VALUES
(8, 'Ashu', 'Ashu@gmail.com', 'Thanks', 'Thank you');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `Booking`
--
ALTER TABLE `Booking`
  ADD PRIMARY KEY (`BookingID`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `manageitems`
--
ALTER TABLE `manageitems`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`CID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `UserID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Booking`
--
ALTER TABLE `Booking`
  MODIFY `BookingID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `manageitems`
--
ALTER TABLE `manageitems`
  MODIFY `ProductID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `UserID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `CID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
