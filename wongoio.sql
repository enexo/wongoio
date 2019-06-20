-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2019 at 07:14 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wongoio`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(4) NOT NULL,
  `Category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `Category`) VALUES
(1, 'Select'),
(2, 'Desktop'),
(3, 'Midtower'),
(4, 'Tower'),
(5, 'Ultra SFF'),
(6, 'Laptop'),
(7, 'Netbook'),
(8, 'Ultrabook'),
(9, 'Monitor'),
(10, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `dataentry`
--

CREATE TABLE `dataentry` (
  `id` int(4) NOT NULL,
  `Category` int(11) NOT NULL,
  `Manufacturer` int(11) NOT NULL,
  `Serial_Number` int(11) NOT NULL,
  `Operating_System` int(11) NOT NULL,
  `Screen_Size` int(11) NOT NULL,
  `Storage_Type` int(11) NOT NULL,
  `HD_Capacity` int(11) NOT NULL,
  `Features` int(11) NOT NULL,
  `RAM_Size` int(11) NOT NULL,
  `Quality` int(11) NOT NULL,
  `Processor` int(11) NOT NULL,
  `Processor_Size` int(11) NOT NULL,
  `Date_In` int(11) NOT NULL,
  `Time_In` int(11) NOT NULL,
  `Date_Out` int(11) NOT NULL,
  `Time_Out` int(11) NOT NULL,
  `Total_Time` int(11) NOT NULL,
  `User_Id` int(11) NOT NULL,
  `Notes` int(11) NOT NULL,
  `Location` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dataentry`
--

INSERT INTO `dataentry` (`id`, `Category`, `Manufacturer`, `Serial_Number`, `Operating_System`, `Screen_Size`, `Storage_Type`, `HD_Capacity`, `Features`, `RAM_Size`, `Quality`, `Processor`, `Processor_Size`, `Date_In`, `Time_In`, `Date_Out`, `Time_Out`, `Total_Time`, `User_Id`, `Notes`, `Location`) VALUES
(22, 2, 3, 0, 7, 2, 2, 1, 7, 7, 7, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0),
(23, 2, 2, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 3, 4, 0, 4, 3, 3, 7, 5, 7, 6, 4, 5, 0, 0, 0, 0, 0, 0, 0, 0),
(25, 2, 2, 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `Features` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `Features`) VALUES
(1, 'Select'),
(2, '3D Camera'),
(3, 'Backlit Keyboard'),
(4, 'Bluetooth'),
(5, 'Microphone'),
(6, 'Webcam'),
(7, 'Rugged'),
(8, 'Tablet PC'),
(9, 'Touchscreen'),
(10, 'None');

-- --------------------------------------------------------

--
-- Table structure for table `hdcapacity`
--

CREATE TABLE `hdcapacity` (
  `id` int(4) NOT NULL,
  `HD_Capacity` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hdcapacity`
--

INSERT INTO `hdcapacity` (`id`, `HD_Capacity`) VALUES
(1, 'Select'),
(2, 'N/A'),
(3, 'None'),
(4, '1GB'),
(5, '4GB'),
(6, '16GB'),
(7, '32GB'),
(8, '64GB'),
(9, '128GB'),
(10, '256GB'),
(11, '512GB'),
(12, '1TB'),
(13, '2TB');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `id` int(4) NOT NULL,
  `Manufacturer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`id`, `Manufacturer`) VALUES
(1, 'Select'),
(2, 'IBM'),
(3, 'Dell'),
(4, 'Apple'),
(5, 'HP'),
(6, 'Sony');

-- --------------------------------------------------------

--
-- Table structure for table `operatingsystem`
--

CREATE TABLE `operatingsystem` (
  `id` int(4) NOT NULL,
  `Operating_System` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `operatingsystem`
--

INSERT INTO `operatingsystem` (`id`, `Operating_System`) VALUES
(1, 'Select'),
(2, 'None'),
(3, 'Windows 10s'),
(4, 'Windows 10'),
(5, 'Windows 8.1'),
(6, 'Windows 8'),
(7, 'Windows 7'),
(8, 'Windows Vista'),
(9, 'Windows XP'),
(10, 'Windows 2000'),
(11, 'Linux'),
(12, 'Chrome OS'),
(13, 'Mac OS');

-- --------------------------------------------------------

--
-- Table structure for table `processor`
--

CREATE TABLE `processor` (
  `id` int(4) NOT NULL,
  `Processor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `processor`
--

INSERT INTO `processor` (`id`, `Processor`) VALUES
(1, 'Select'),
(2, 'N/A'),
(3, 'None'),
(4, 'Intel Core i5 5th Generation'),
(5, 'Intel Core i5 6th Generation'),
(6, 'Intel Core i5 7th Generation'),
(7, 'Intel Core i5 8th Generation'),
(8, 'Intel Core i7 1st Generation'),
(9, 'Intel Core i7 2nd Generation'),
(10, 'Intel Core i7 3rd Generation'),
(11, 'Intel Core i7 4th Generation'),
(12, 'Intel Core i7 5th Generation'),
(13, 'Intel Core i7 6th Generation'),
(14, 'Intel Core i7 7th Generation'),
(15, 'Intel Core i7 8th Generation');

-- --------------------------------------------------------

--
-- Table structure for table `processorspeed`
--

CREATE TABLE `processorspeed` (
  `id` int(4) NOT NULL,
  `Processor_Speed` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `processorspeed`
--

INSERT INTO `processorspeed` (`id`, `Processor_Speed`) VALUES
(1, 'Select'),
(2, 'N/A'),
(3, '1.0 to 1.49 Ghz'),
(4, '1.5 to 1.99 Ghz'),
(5, '2.0 to 2.49 Ghz'),
(6, '2.5 to 2.99 Ghz'),
(7, '3.0 to 3.49 Ghz'),
(8, '3.5 to 3.99 Ghz'),
(9, '4.0 Ghz or Greater');

-- --------------------------------------------------------

--
-- Table structure for table `quality`
--

CREATE TABLE `quality` (
  `id` int(4) NOT NULL,
  `Quality` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quality`
--

INSERT INTO `quality` (`id`, `Quality`) VALUES
(1, 'Select'),
(2, 'New'),
(3, 'New in Box'),
(4, 'Manufacturer Refurbished'),
(5, 'Used'),
(6, 'Used - A Grade'),
(7, 'Used - B Grade'),
(8, 'Used - C Grade'),
(9, 'For Parts/Not Working');

-- --------------------------------------------------------

--
-- Table structure for table `ramsize`
--

CREATE TABLE `ramsize` (
  `id` int(4) NOT NULL,
  `RAM_Size` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ramsize`
--

INSERT INTO `ramsize` (`id`, `RAM_Size`) VALUES
(1, 'Select'),
(2, 'N/A'),
(3, 'Less than 1GB'),
(4, '1GB'),
(5, '1.5GB'),
(6, '2GB'),
(7, '3GB'),
(8, '4GB'),
(9, '5GB'),
(10, '6GB'),
(11, '8GB'),
(12, '10GB'),
(13, '12GB'),
(14, '16GB'),
(15, '24GB'),
(16, '32GB'),
(17, '64GB'),
(18, 'None');

-- --------------------------------------------------------

--
-- Table structure for table `screensize`
--

CREATE TABLE `screensize` (
  `id` int(4) NOT NULL,
  `Screen_Size` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `screensize`
--

INSERT INTO `screensize` (`id`, `Screen_Size`) VALUES
(1, 'Select'),
(2, '0 to 12.9 in'),
(3, '13 to 13.9 in'),
(4, '14 to 14.9 in'),
(5, '15 to 15.9 in'),
(6, '16 in or Greater');

-- --------------------------------------------------------

--
-- Table structure for table `storagetype`
--

CREATE TABLE `storagetype` (
  `id` int(4) NOT NULL,
  `Storage_Type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storagetype`
--

INSERT INTO `storagetype` (`id`, `Storage_Type`) VALUES
(1, 'Select'),
(2, 'Hard Drive'),
(3, 'Solid State Drive');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(4) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL DEFAULT '$2y$10$iusesomecrazystring22'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `username`, `password`, `firstName`, `lastName`, `email`, `image`, `role`, `randSalt`) VALUES
(1, 'rico', '123', 'Rico', 'Suave', 'rico@fake.edu', '', 'admin', ''),
(4, 'demo3000', 'sadlkfjlajsdf', '', '', 'norlowski@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystring22'),
(5, 'ZafarK', 'deltroniks', '', '', 'zafark@whomever.com', '', 'subscriber', '$2y$10$iusesomecrazystring22'),
(6, 'ZafarZ', 'deltroniks', '', '', 'norlowski@gmail.com', '', '', '$2y$10$iusesomecrazystring22'),
(7, 'ZafarK', 'deltroniks', '', '', 'norlowski@gmail.com', '', '', '$2y$10$iusesomecrazystring22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dataentry`
--
ALTER TABLE `dataentry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hdcapacity`
--
ALTER TABLE `hdcapacity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operatingsystem`
--
ALTER TABLE `operatingsystem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `processor`
--
ALTER TABLE `processor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `processorspeed`
--
ALTER TABLE `processorspeed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quality`
--
ALTER TABLE `quality`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ramsize`
--
ALTER TABLE `ramsize`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `screensize`
--
ALTER TABLE `screensize`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `storagetype`
--
ALTER TABLE `storagetype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `dataentry`
--
ALTER TABLE `dataentry`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `hdcapacity`
--
ALTER TABLE `hdcapacity`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `manufacturer`
--
ALTER TABLE `manufacturer`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `operatingsystem`
--
ALTER TABLE `operatingsystem`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `processor`
--
ALTER TABLE `processor`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `processorspeed`
--
ALTER TABLE `processorspeed`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `quality`
--
ALTER TABLE `quality`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ramsize`
--
ALTER TABLE `ramsize`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `screensize`
--
ALTER TABLE `screensize`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `storagetype`
--
ALTER TABLE `storagetype`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
