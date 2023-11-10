-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2023 at 09:18 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydata`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `Dept_Id` int(8) NOT NULL,
  `Dept_Name` varchar(20) NOT NULL,
  `Std_ID` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`Dept_Id`, `Dept_Name`, `Std_ID`) VALUES
(1001, 'AI', 1);

-- --------------------------------------------------------

--
-- Table structure for table `std_details`
--

CREATE TABLE `std_details` (
  `Std_ID` int(11) NOT NULL,
  `Std_Name` varchar(100) NOT NULL,
  `Std_Mail` varchar(100) NOT NULL,
  `Std_Contact` bigint(20) NOT NULL,
  `Std_Dept` varchar(50) NOT NULL,
  `Std_Place` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `std_details`
--

INSERT INTO `std_details` (`Std_ID`, `Std_Name`, `Std_Mail`, `Std_Contact`, `Std_Dept`, `Std_Place`) VALUES
(1, 'Arun', 'abcd@gmail.com', 9322456734, 'AI', 'Namakkal'),
(2, 'Mani', 'mani@gmail.com', 9322456564, 'MCA', 'Namakkal'),
(3, 'Tamil', 'tamil@gmail.com', 9322456724, 'AI', 'Trichy'),
(4, 'Jasir', 'jasir@gmail.com', 93224576859, 'CY', 'Trichy'),
(5, 'Ranjith', 'ranjith@gmail.com', 9322456546, 'AI', 'Salem'),
(6, 'Venky', 'venky@gmail.com', 9322456365, 'CY', 'Namakkal'),
(7, 'haris', 'haris@gmail.com', 9334384368, 'AI', 'Salem');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Name` varchar(100) NOT NULL,
  `Age` int(3) NOT NULL,
  `Place` varchar(100) NOT NULL,
  `Passing_year` int(11) NOT NULL,
  `mobile_number` bigint(20) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `regno` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Name`, `Age`, `Place`, `Passing_year`, `mobile_number`, `Department`, `regno`) VALUES
('Sai', 21, 'Kurnool', 2024, 9394535453, 'MBA', 202016),
('Tamil', 21, 'Trichy', 2024, 9344089944, 'AI&DS', 202051),
('Jasir', 21, 'Trichy', 2024, 9837546343, 'AI&DS', 202118),
('Rolex', 21, 'Trichy', 2024, 97652439363, 'AI&DS', 202120),
('Dilli', 21, 'Chennai', 2024, 976524534363, 'CSE', 202121),
('Ranjith', 23, 'Salem', 2023, 9344509543, 'MBA', 202122),
('Elango', 22, 'ERODE', 2022, 9344509536, 'IT', 202124),
('Anand', 23, 'Salem', 2025, 9785637564, 'ECE', 202126),
('Vijay', 26, 'Chennai', 2024, 9741003452, 'CSE', 202128),
('Ajith', 27, 'Chennai', 2024, 9741056439, 'MECH', 202129);

-- --------------------------------------------------------

--
-- Table structure for table `tech_details`
--

CREATE TABLE `tech_details` (
  `Tech_Name` varchar(100) NOT NULL,
  `Tech_Ints` varchar(100) NOT NULL,
  `Tech_City` varchar(100) NOT NULL,
  `Std_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tech_details`
--

INSERT INTO `tech_details` (`Tech_Name`, `Tech_Ints`, `Tech_City`, `Std_ID`) VALUES
('JAVA', 'MEC', 'Namakkal', 1),
('PYTHON', 'MCE', 'Covai', 2),
('SQL', 'TEC', 'Trichy', 3),
('Ruby', 'TOC', 'Trichy', 4),
('SQL', 'GEF', 'Chennai', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD KEY `Std_ID` (`Std_ID`);

--
-- Indexes for table `std_details`
--
ALTER TABLE `std_details`
  ADD PRIMARY KEY (`Std_ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`regno`);

--
-- Indexes for table `tech_details`
--
ALTER TABLE `tech_details`
  ADD PRIMARY KEY (`Std_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `std_details`
--
ALTER TABLE `std_details`
  MODIFY `Std_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `regno` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202130;

--
-- AUTO_INCREMENT for table `tech_details`
--
ALTER TABLE `tech_details`
  MODIFY `Std_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`Std_ID`) REFERENCES `std_details` (`Std_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
