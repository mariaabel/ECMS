-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2018 at 10:28 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecms`
--

-- --------------------------------------------------------

--
-- Table structure for table `component_groups`
--

CREATE TABLE `component_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `component_groups`
--

INSERT INTO `component_groups` (`id`, `name`) VALUES
(1, 'Resistors'),
(2, 'Capacitors'),
(3, 'Inductors'),
(4, 'ICs'),
(5, 'Regulators & Microprocessors');

-- --------------------------------------------------------

--
-- Table structure for table `lab_components`
--

CREATE TABLE `lab_components` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `quantity` int(255) DEFAULT NULL,
  `component_group_id` int(11) NOT NULL,
  `container_no` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lab_components`
--

INSERT INTO `lab_components` (`id`, `name`, `quantity`, `component_group_id`, `container_no`) VALUES
(1, 'Astd Resistor [10 kΩ]', 100, 1, 1),
(2, 'Capacitor  0.1µF, 63 V', 30, 2, 2),
(3, 'Inductor 10µH', 40, 3, 3),
(4, '74HC04 Hex Inverter', 15, 4, 4),
(5, 'LM307', 12, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `lab_exercise`
--

CREATE TABLE `lab_exercise` (
  `id` int(11) NOT NULL,
  `subject_code` varchar(45) NOT NULL,
  `title` varchar(45) NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lab_exercise`
--

INSERT INTO `lab_exercise` (`id`, `subject_code`, `title`, `date`, `users_id`) VALUES
(1, 'TE 441', 'Oscillators', '0000-00-00 00:00:00.000000', 4),
(2, 'TE 411', 'Transmission line', '0000-00-00 00:00:00.000000', 2);

-- --------------------------------------------------------

--
-- Table structure for table `requested_components`
--

CREATE TABLE `requested_components` (
  `user_id` int(11) NOT NULL,
  `lab_component_id` int(11) NOT NULL,
  `date_requested` timestamp(6) NULL DEFAULT NULL,
  `date_returned` timestamp(6) NULL DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `requested_components`
--

INSERT INTO `requested_components` (`user_id`, `lab_component_id`, `date_requested`, `date_returned`, `quantity`) VALUES
(2, 2, '2018-03-12 14:17:26.356309', '2018-03-14 13:23:31.356497', 5),
(3, 1, '2018-03-12 11:10:09.114161', '2018-03-14 09:16:44.154130', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` char(60) DEFAULT NULL,
  `reg_number` char(13) DEFAULT NULL,
  `user_roles_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `reg_number`, `user_roles_id`) VALUES
(1, 'Maria', 'Abel', 'maryabel', '1234', '2014-04-02692', 3),
(2, 'Martina', 'kubagwa', 'martina', '3333', '2000-04-11276', 2),
(3, 'Madam', 'Teyana', 'madame', '1111', '2010-02-07000', 1),
(4, 'Andrew', 'Kwiyamba', 'andrew', '4444', '2010-02-07000', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `name`) VALUES
(1, 'lab_ engineer'),
(2, 'lecturer'),
(3, 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `component_groups`
--
ALTER TABLE `component_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lab_components`
--
ALTER TABLE `lab_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_lab_components_component_type1_idx` (`component_group_id`);

--
-- Indexes for table `lab_exercise`
--
ALTER TABLE `lab_exercise`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_lab_exercise_users1_idx` (`users_id`);

--
-- Indexes for table `requested_components`
--
ALTER TABLE `requested_components`
  ADD PRIMARY KEY (`user_id`,`lab_component_id`),
  ADD KEY `fk_users_has_lab_components_lab_components1_idx` (`lab_component_id`),
  ADD KEY `fk_users_has_lab_components_users1_idx` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_users_user_roles_idx` (`user_roles_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lab_exercise`
--
ALTER TABLE `lab_exercise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `lab_components`
--
ALTER TABLE `lab_components`
  ADD CONSTRAINT `fk_lab_components_component_type1` FOREIGN KEY (`component_group_id`) REFERENCES `component_groups` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `lab_exercise`
--
ALTER TABLE `lab_exercise`
  ADD CONSTRAINT `fk_lab_exercise_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `requested_components`
--
ALTER TABLE `requested_components`
  ADD CONSTRAINT `fk_users_has_lab_components_lab_components1` FOREIGN KEY (`lab_component_id`) REFERENCES `lab_components` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_has_lab_components_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_user_roles` FOREIGN KEY (`user_roles_id`) REFERENCES `user_roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
