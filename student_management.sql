-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2024 at 02:24 PM
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
-- Database: `student_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `role` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`, `name`, `role`, `created_at`) VALUES
(1, 'admin1', 'e3c652f0ba0b4801205814f8b6bc49672c4c74e25b497770bb89b22cdeb4e951', 'Admin One', 'superadmin', '2024-10-05 20:27:24'),
(2, 'admin2', 'e3c652f0ba0b4801205814f8b6bc49672c4c74e25b497770bb89b22cdeb4e951', 'Admin Two', 'moderator', '2024-10-05 20:27:24');

-- --------------------------------------------------------

--
-- Table structure for table `fee_details`
--

CREATE TABLE `fee_details` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `total_fee` decimal(10,2) NOT NULL,
  `paid_fee` decimal(10,2) NOT NULL,
  `pending_fee` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fee_details`
--

INSERT INTO `fee_details` (`id`, `student_id`, `total_fee`, `paid_fee`, `pending_fee`) VALUES
(1, 'Student1', 60000.00, 55000.00, 5000.00),
(2, 'Student2', 50000.00, 31700.00, 18300.00),
(3, 'Student3', 55000.00, 45002.00, 9998.00);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` varchar(50) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `branch` varchar(100) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `mother_name` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `total_fee` decimal(10,2) DEFAULT NULL,
  `paid_fee` decimal(10,2) DEFAULT NULL,
  `pending_fee` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `year`, `semester`, `branch`, `contact`, `father_name`, `mother_name`, `address`, `total_fee`, `paid_fee`, `pending_fee`) VALUES
('Student1', 'Madhu', 4, 2, 'CSE', '1234567890', 'Father1', 'Mother1', 'Address1', 20000.00, 10000.00, NULL),
('Student2', 'varshita', 1, 1, 'CSE', '0987654321', 'Father2', 'Mother2', 'Address2', 50000.00, 5000.00, NULL),
('Student3', 'hemanth', 1, 1, 'ECE', '1122334455', 'Father3', 'Mother3', 'Address3', 20000.00, 15000.00, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `branch` varchar(20) DEFAULT NULL,
  `qualification` varchar(50) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `teaching_subject` varchar(50) DEFAULT NULL,
  `contact` varchar(15) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `experience` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `branch`, `qualification`, `role`, `teaching_subject`, `contact`, `address`, `experience`) VALUES
('Teacher1', 'rishika', 'CSE', 'M.Tech', 'Senior Lecturer', 'Data Structures', '9876543210', '123 Main St, City', 5),
('Teacher2', 'Aishwarya', 'ECE', 'M.Tech', 'Assistant Professor', 'Circuit Theory', '9876543211', '456 Elm St, City', 3),
('Teacher3', 'suji', 'ME', 'B.Tech', 'Lecturer', 'Thermodynamics', '9876543212', '789 Oak St, City', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `fee_details`
--
ALTER TABLE `fee_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fee_details`
--
ALTER TABLE `fee_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fee_details`
--
ALTER TABLE `fee_details`
  ADD CONSTRAINT `fee_details_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
