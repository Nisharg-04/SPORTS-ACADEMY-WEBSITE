-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2024 at 03:38 PM
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
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `message` text NOT NULL,
  `solved` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `name`, `email`, `subject`, `phone`, `message`, `solved`) VALUES
(3, 'adsoifj', 'abc@abc.abc', 'new enw', '1234567890', 'sdaoioifjaoisdfjfdaoi', 1),
(4, 'adsoifj', 'abc@abc.abc', 'oiasdjf', '1234567890', 'iaeofjosidaosidf', 1),
(5, 'aoiudfhoisadfj', 'abc@abc.abc', 'asijsodfia', '1234567890', 'posadfpokfsda', 1),
(7, 'adsoifj', 'abc@abc.abc', 'new', '1234567890', 'dosijaoifsdfjfsd', 0),
(8, 'abc', 'dakshilgorasiya@gmail.com', 'new enw', '1234567890', 'aslidjadsoijfdasio', 1),
(9, 'jfjgfvyuv', 'd1@gmail.com', 'affv', '2222222222', 'a kvhbqwkh v;ihaw fv;hbq;wobvqo;wbvoaj;wbnv;bwv;oqb;ljvbq;orbvlj;wboqjwbv;ojwbf;jbfv;obwjvb;eajbv;jfbvoh;brjbawovbqr;vba;efobvo;qbrv;jabvo;hbaerv', 1);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `title` varchar(15) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `title`, `description`, `price`) VALUES
(4, 'event1', 'iuafshdiufsidfj', 0),
(5, 'event 2', 'soiajfsdoifjsdofi', 0),
(6, 'event3', 'aoisjdfoiadsjfoisdjf', 0),
(7, 'event4', 'sdaoifjsdoifjdsafoiad', 0),
(11, 'acj', 'aosdjfiodf', 0),
(19, 'q w', '1', 500);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `fname` varchar(15) NOT NULL,
  `mname` varchar(15) NOT NULL,
  `lname` varchar(15) NOT NULL,
  `gender` enum('male','female','other') NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `street` varchar(15) NOT NULL,
  `city` varchar(15) NOT NULL,
  `state` varchar(15) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `bloodgroup` varchar(4) NOT NULL,
  `emergencymobile` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`fname`, `mname`, `lname`, `gender`, `email`, `mobile`, `street`, `city`, `state`, `pincode`, `bloodgroup`, `emergencymobile`, `password`) VALUES
('absdiu', 'oijdfsao', 'ijdsf', 'male', 'abc@ab', '1234567890', '45', 'sfdopj', 'pofdsa', '123456', 'a+', '9998887774', '85064efb60a9601805dcea56ec5402f7'),
('dakshil', 'rajeshbhai', 'gorasiya', 'male', 'abc@abc.abc', '1234567891', '45', 'surat', 'gujarat', '123456', 'a+', '1234567890', '5203d03e63adc8bbd71b9b117a4846c3'),
('Nisharg', 'oijdfsao', 'thawfshb', 'male', 'd1@gmail.com', '1234567890', '45', 'sfdopj', 'pofdsa', '123456', 'a+', '9998887774', 'e0a8aa81eb1762d529783cf587f6f422'),
('lklkgh', 'vv', 'vv', 'male', 'n2@gmail.com', '0000000000', 'aa', 'aa', 'f', '384150', 'AB+', '0000000000', '85064efb60a9601805dcea56ec5402f7'),
('Mihir', 'sdfsdf', 'setg', 'male', 'n3@gmail.com', '0000000000', 'aa', 'aa', 'f', '384150', 'AB+', '0000000000', '85064efb60a9601805dcea56ec5402f7'),
('Nisharg', 'Chandreahkumar', 'Soni', 'male', 'n4@gmail.com', '0000000000', 'aa', 'aa', 'f', '384150', 'AB+', '0000000000', '85064efb60a9601805dcea56ec5402f7'),
('Nisharg', 'Chandreahkumar', 'Soni', 'male', 'n@gmail.com', '0000000000', 'aa', 'aa', 'f', '384150', 'AB+', '0000000000', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `user_event`
--

CREATE TABLE `user_event` (
  `event_id` int(11) NOT NULL,
  `user_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_event`
--

INSERT INTO `user_event` (`event_id`, `user_id`) VALUES
(5, 'd1@gmail.com'),
(7, 'd1@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `user_event`
--
ALTER TABLE `user_event`
  ADD PRIMARY KEY (`event_id`,`user_id`),
  ADD KEY `userF` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_event`
--
ALTER TABLE `user_event`
  ADD CONSTRAINT `eventF` FOREIGN KEY (`event_id`) REFERENCES `event` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `userF` FOREIGN KEY (`user_id`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
