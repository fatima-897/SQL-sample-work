-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2025 at 01:11 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `MYDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `instructor` varchar(100) NOT NULL,
  `duration` int(11) DEFAULT NULL CHECK (`duration` >= 1),
  `fee` decimal(10,2) DEFAULT NULL CHECK (`fee` >= 0),
  `category` varchar(50) DEFAULT 'General'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `instructor`, `duration`, `fee`, `category`) VALUES
(1, 'Web Development', 'John Doe', 12, '20000.00', 'General'),
(2, 'Data Science', 'Jane Smith', 16, '30000.00', 'General'),
(3, 'Database Management', 'David Brown', 10, '15000.00', 'General'),
(4, 'Cyber Security', 'Alex Johnson', 14, '25000.00', 'General'),
(5, 'Cloud Computing', 'Emma Wilson', 8, '18000.00', 'General');

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `enrollment_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `enrollment_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `payment_status` enum('Paid','Pending','Canceled') DEFAULT 'Pending',
  `grade` char(2) DEFAULT NULL,
  `completion_status` enum('Completed','In Progress','Dropped') DEFAULT 'In Progress'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`enrollment_id`, `student_id`, `course_id`, `enrollment_date`, `payment_status`, `grade`, `completion_status`) VALUES
(1, 1, 1, '2025-04-07 10:59:34', 'Paid', 'A', 'In Progress'),
(2, 1, 2, '2025-04-07 10:59:34', 'Pending', NULL, 'In Progress'),
(3, 2, 3, '2025-04-07 10:59:34', 'Paid', 'B+', 'In Progress'),
(4, 3, 1, '2025-04-07 10:59:34', 'Paid', 'A-', 'In Progress'),
(5, 3, 4, '2025-04-07 10:59:34', 'Canceled', NULL, 'In Progress'),
(6, 4, 5, '2025-04-07 10:59:34', 'Paid', 'B', 'In Progress'),
(7, 5, 3, '2025-04-07 10:59:34', 'Pending', NULL, 'In Progress'),
(8, 5, 4, '2025-04-07 10:59:34', 'Paid', 'B+', 'In Progress'),
(9, 6, 1, '2025-04-12 08:34:01', 'Paid', 'A', 'Completed'),
(10, 7, 2, '2025-04-12 08:34:01', 'Pending', NULL, 'In Progress'),
(11, 8, 3, '2025-04-12 08:34:01', 'Canceled', NULL, 'Dropped'),
(12, 9, 4, '2025-04-12 08:34:01', 'Paid', 'B+', 'Completed'),
(13, 10, 5, '2025-04-12 08:34:01', 'Paid', 'A-', 'Completed'),
(14, 11, 2, '2025-04-12 08:34:01', 'Paid', 'B', 'Completed'),
(15, 12, 1, '2025-04-12 08:34:01', 'Pending', NULL, 'In Progress'),
(16, 13, 3, '2025-04-12 08:34:01', 'Paid', 'A+', 'Completed'),
(17, 14, 4, '2025-04-12 08:34:01', 'Canceled', NULL, 'Dropped'),
(18, 15, 5, '2025-04-12 08:34:01', 'Pending', NULL, 'In Progress');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `age` int(11) DEFAULT NULL CHECK (`age` >= 18),
  `phone` varchar(15) NOT NULL,
  `city` varchar(50) NOT NULL,
  `registration_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `gender` enum('Male','Female','Other') DEFAULT 'Other'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `name`, `email`, `age`, `phone`, `city`, `registration_date`, `gender`) VALUES
(1, 'Ali Khan', 'ali.khan@email.com', 22, '03001234567', 'Lahore', '2025-04-07 10:59:34', 'Male'),
(2, 'Sara Ahmed', 'sara.ahmed@email.com', 19, '03111234567', 'Karachi', '2025-04-07 10:59:34', 'Female'),
(3, 'Usman Raza', 'usman.raza@email.com', 25, '03221234567', 'Islamabad', '2025-04-07 10:59:34', 'Male'),
(4, 'Ayesha Noor', 'ayesha.noor@email.com', 21, '03331234567', 'Lahore', '2025-04-07 10:59:34', 'Female'),
(5, 'Bilal Sheikh', 'bilal.sheikh@email.com', 24, '03451234567', 'Karachi', '2025-04-07 10:59:34', 'Male'),
(6, 'Hassan Ali', 'hassan.ali@email.com', 23, '03051234567', 'Lahore', '2025-04-12 08:33:52', 'Male'),
(7, 'Fatima Zahra', 'fatima.zahra@email.com', 20, '03121234567', 'Karachi', '2025-04-12 08:33:52', 'Female'),
(8, 'Zainab Fatima', 'zainab.fatima@email.com', 22, '03231234567', 'Islamabad', '2025-04-12 08:33:52', 'Female'),
(9, 'Hamza Tariq', 'hamza.tariq@email.com', 24, '03341234567', 'Rawalpindi', '2025-04-12 08:33:52', 'Male'),
(10, 'Ahmed Saeed', 'ahmed.saeed@email.com', 26, '03461234567', 'Multan', '2025-04-12 08:33:52', 'Male'),
(11, 'Mariam Khan', 'mariam.khan@email.com', 21, '03571234567', 'Quetta', '2025-04-12 08:33:52', 'Female'),
(12, 'Imran Bhatti', 'imran.bhatti@email.com', 23, '03681234567', 'Faisalabad', '2025-04-12 08:33:52', 'Male'),
(13, 'Noor Jahan', 'noor.jahan@email.com', 22, '03791234567', 'Lahore', '2025-04-12 08:33:52', 'Female'),
(14, 'Omar Bashir', 'omar.bashir@email.com', 25, '03801234567', 'Karachi', '2025-04-12 08:33:52', 'Male'),
(15, 'Sana Sheikh', 'sana.sheikh@email.com', 20, '03911234567', 'Islamabad', '2025-04-12 08:33:52', 'Female');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`enrollment_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `enrollment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD CONSTRAINT `enrollments_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enrollments_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
