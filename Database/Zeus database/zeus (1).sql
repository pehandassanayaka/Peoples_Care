-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2022 at 07:04 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zeus`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `name` varchar(100) NOT NULL,
  `nic` varchar(100) NOT NULL,
  `contct_no` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  `doctor_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`name`, `nic`, `contct_no`, `date`, `time`, `doctor_name`) VALUES
('MAMAMIA!', '1234567891', '0712193303', '2001822', '12.00', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `name` varchar(100) NOT NULL,
  `desc` varchar(400) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `desc`, `email`) VALUES
('MAMAMIA!', 'test', 'ranminamanditha1234@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `icu`
--

CREATE TABLE `icu` (
  `icu_bed_number` varchar(20) NOT NULL,
  `availability` int(20) NOT NULL,
  `patient_id` varchar(20) NOT NULL,
  `patient_nic` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `contact_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `icu`
--

INSERT INTO `icu` (`icu_bed_number`, `availability`, `patient_id`, `patient_nic`, `address`, `contact_number`) VALUES
('1', 1, 'P12', '1234567891', '5409 Rosendo Meadows', '0874567134'),
('2', 3, 'P14', '20027845671	', '50365 German Crossro', '0112787679'),
('3', 5, 'P16', '20027845671	', '50365 German Crossro', '0874567134'),
('4', 6, 'P16', '20027845671', '5409 Rosendo Meadows', '0436712367'),
('6', 9, 'P18', '1278906523', '28529 Aufderhar Lock', '0712193303');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `userName` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `patient_id` varchar(20) NOT NULL,
  `nic` varchar(20) NOT NULL,
  `patient_name` varchar(20) NOT NULL,
  `patient_age` int(20) NOT NULL,
  `patient_address` varchar(20) NOT NULL,
  `patient_contact` varchar(20) NOT NULL,
  `patient_admission` varchar(20) NOT NULL,
  `patient_state` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`patient_id`, `nic`, `patient_name`, `patient_age`, `patient_address`, `patient_contact`, `patient_admission`, `patient_state`) VALUES
('P12', '1234567891', 'Ali Montgomery', 22, '5409 Rosendo Meadows', '0874567134', '2022/4/20', 'normal'),
('P13', '200123507834', 'Miracle Caldwell', 45, '9727 Nicolas Cape', '0436712367', '2001822', 'critical'),
('P14', '20027845671', 'Hayden Rivers', 34, '50365 German Crossro', '0112787679', '2022/5/12', 'critical'),
('P15', '234870134581', 'Lorelei Davila', 18, 'Amanda Glover', '0636798712', '2022/3/2', 'discharged'),
('P16', '8712095612', 'Samson Ellis', 65, '78882 Marlen Stream ', '0113123123', '2022/6/4', 'death');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `userName` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `contct_no` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`userName`, `password`, `contct_no`, `email`, `address`) VALUES
('Ranmini', '1234', '0712193303', 'ranminamanditha1234@gmail.com', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id_number` varchar(20) NOT NULL,
  `full_name` varchar(20) NOT NULL,
  `job_role` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `home_address` varchar(20) NOT NULL,
  `telephone_number` varchar(20) NOT NULL,
  `duty_shift` varchar(20) NOT NULL,
  `vaccination` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id_number`, `full_name`, `job_role`, `age`, `home_address`, `telephone_number`, `duty_shift`, `vaccination`) VALUES
('ATD', 'Alexandra Hawkins', 'attendent', 47, '84870 Parisian Well', '0112786534', 'night', 'vaccinated'),
('ATD1', 'Peter Sweeney', 'attendent', 56, '451 Hartmann Way Apt', '0998765123', 'day', 'non_vaccinated'),
('DRIC', 'Valeria Randolph', 'doctor', 28, '281 Boehm Lock Apt. ', '0712193303', 'day', 'vaccinated'),
('NER', 'Abbigail Swanson', 'nurse', 39, 'South Carolina', '0981278632', 'day', 'vaccinated'),
('NUR', 'Amanda Scott', 'nurse', 35, '25658 Christiana Cov', '0967812783', 'night', 'vaccinated');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `category` varchar(30) NOT NULL,
  `brand` varchar(30) NOT NULL,
  `quantity` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `name`, `category`, `brand`, `quantity`) VALUES
('IT123', 'Arely Rangel', 'vaccine', 'Sinopharm', '100'),
('IT345', 'Ashly Hudson', 'Oxygen Bottles', 'OXYGEN', '50'),
('IT789', 'Jalen Mason', 'medicine', 'Abilify', '200');

-- --------------------------------------------------------

--
-- Table structure for table `testing`
--

CREATE TABLE `testing` (
  `nic` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `brand` varchar(30) NOT NULL,
  `first_dose_date` varchar(30) NOT NULL,
  `second_dose_date` varchar(30) NOT NULL,
  `price` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testing`
--

INSERT INTO `testing` (`nic`, `name`, `address`, `contact`, `brand`, `first_dose_date`, `second_dose_date`, `price`) VALUES
('12907834', 'Abbie Frye', '828 Kieran Track Suite 255', '8685572504', 'moderna', '2022/2/4', '2022/5/10', '650'),
('7890457812', 'Octavio Schneider', '63997 Nicola Via Apt. 509', '6308261801', 'astrazeneca', '2022/1/5', '2022/4/5', '550'),
('9806768934', 'Jemima Grace Zamora', '11690 Ferry Fords', '6392089068', 'Sinopharm', '2021/5/8', '2021/8/10', '500');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `icu`
--
ALTER TABLE `icu`
  ADD PRIMARY KEY (`icu_bed_number`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id_number`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testing`
--
ALTER TABLE `testing`
  ADD PRIMARY KEY (`nic`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
