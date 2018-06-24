-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2018 at 12:32 PM
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
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `lab_components` varchar(40) NOT NULL,
  `quantity` int(10) NOT NULL,
  `container_no` int(10) NOT NULL,
  `date_requested` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `lab_components`, `quantity`, `container_no`, `date_requested`) VALUES
(138, 3, '7430NA', 1, 1, '2018-05-23 11:54:02.81');

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
-- Table structure for table `exercise`
--

CREATE TABLE `exercise` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exercise`
--

INSERT INTO `exercise` (`id`, `name`, `date`) VALUES
(1, '', '0000-00-00 00:00:00.000000'),
(2, '', '0000-00-00 00:00:00.000000'),
(3, '', '0000-00-00 00:00:00.000000');

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
(0, '71HCT221 Dual Mono. Multivibrator Schmitt Tri', 5, 1, 1),
(1, '7430NA', 2, 1, 1),
(2, ' 7483 4- bit Binary Full Adder', 10, 1, 1),
(3, '7486 quad 2-input XOR gate', 12, 1, 1),
(4, '7491 8-bit shift register', 17, 1, 1),
(5, '74HC00 Quad 2-Input NAND Gate', 56, 1, 1),
(6, '74HC02  Quad 2-input NOR Gate', 88, 1, 1),
(7, '74HC03', 6, 1, 1),
(8, '74HC04 Hex Inverter', 12, 1, 1),
(9, '74HC04 Hex Inverter', 9, 1, 1),
(10, '74HC08 Quad 2-input AND Gate', 17, 1, 1),
(11, '74HC10 Triple 3-input NAND Gate', 6, 1, 1),
(12, '74HC123 Dual Mono Multivibrator', 17, 1, 1),
(13, '74HC125 Quad Bus Buffer Tri-State', 8, 1, 1),
(14, '74HC137', 12, 1, 1),
(15, '74HC138  3 to 8 Decoder/Demultiplexer', 8, 1, 1),
(16, '74HC14  Hex Inverter Schmitt Trigger', 18, 1, 1),
(17, '74HC154  4 to 16 Line Decoder/Demultiplexer', 19, 1, 1),
(18, '74HC160   Decade Counter with Asynchronous Cl', 5, 1, 1),
(19, '74HC160   Decade Counter with Asynchronous Cl', 7, 1, 1),
(20, '74HC161  Synchronous 4-bit Counter', 8, 1, 1),
(21, '74HC162', 13, 1, 1),
(22, '74HC163  Fully Synchronous 4-bit Counter', 13, 1, 1),
(23, '74HC164   8-bit Serial Shift Register', 19, 1, 1),
(24, '74HC173', 14, 1, 1),
(25, '74HC174    Hex D Flip-Flop with Clear', 5, 1, 1),
(26, '74HC175', 13, 1, 1),
(27, '74HC190', 16, 1, 1),
(28, '74HC191   Presettable Synchronous 4-bit Count', 2, 1, 1),
(29, '74HC192    Decade Up/Down Counter with Clear', 11, 1, 1),
(30, '74HC193    Binary Up/Down Counter with Clear', 13, 1, 1),
(31, '74HC193    Binary Up/Down Counter with Clear', 13, 1, 1),
(32, '74HC194    4-bit Bidirectional Shift Register', 10, 1, 1),
(33, '74HC195', 6, 1, 1),
(34, '74HC20       Dual 4-input NAND Gate', 13, 1, 1),
(35, '74HC21', 8, 1, 1),
(36, '74HC221      Dual Mono. Multivibrator Schmitt', 15, 1, 1),
(37, '74HC237      3 to 8 Line Decoder', 5, 1, 1),
(38, '74HC238     3 to 8 Line Decoder/Demultiplexer', 16, 1, 1),
(39, '74HC244     Octal Driver Tri-State', 14, 1, 1),
(40, '74HC259', 18, 1, 1),
(41, '74HC27', 9, 1, 1),
(42, '74HC273     Octal D-type Flip-Flop with Clear', 7, 1, 1),
(43, '74HC30       8-input NAND Gate', 10, 1, 1),
(44, '74HC32       Quad 2-input OR Gate', 7, 1, 1),
(45, '74HC367', 4, 1, 1),
(46, '74HC374     Octal D Flip-Flop Edge-triggered ', 4, 1, 1),
(47, '74HC42', 7, 1, 1),
(48, '74HC58', 6, 1, 1),
(49, '74HC640', 15, 1, 1),
(50, '74HC688    8-bit Magnitude Comparator', 14, 1, 1),
(51, '74HC73', 19, 1, 1),
(52, '74HC74', 3, 1, 1),
(53, '74HC75', 12, 1, 1),
(54, '74HC76', 10, 1, 1),
(55, '74HC85', 3, 1, 1),
(56, '74HC86', 18, 1, 1),
(57, '74HC93', 8, 1, 1),
(58, '74HCT00  Quad 2-input NAND Gate', 15, 1, 1),
(59, '74HCT02  Quad 2-input NOR Gate', 17, 1, 1),
(60, '74HCT08  Quad 2-input AND Gate', 17, 1, 1),
(61, '74HCT11   Triple 3-input AND Gate', 15, 1, 1),
(62, '74HCT123  Triple 3-input AND Gate', 10, 1, 1),
(63, '74HCT132  Quad 2-input NAND Schmitt Trigger', 15, 1, 1),
(64, '74HCT138   3 to 8 Decoder/Demultiplexer', 9, 1, 1),
(65, '74HCT14      Hex Inverter Schmitt Trigger', 9, 1, 1),
(66, '74HCT154   4 to 16 Line Decoder/Demultiplexer', 5, 1, 1),
(67, '74HCT162', 2, 1, 1),
(68, '74HCT174', 3, 1, 1),
(69, '74HCT175', 3, 1, 1),
(70, '74HCT194', 7, 1, 1),
(71, '74HCT195', 8, 1, 1),
(72, '74HCT21', 13, 1, 1),
(73, '74HCT244   Octal Driver Tri-State', 17, 1, 1),
(74, '74HCT244   Octal Driver Tri-State', 2, 1, 1),
(75, '74HCT259    8-bit Addressable Latch', 5, 1, 1),
(76, '74HCT273   Octal D-type Flip-Flop with Clear', 15, 1, 1),
(77, '74HCT30     8-input NAND Gate', 12, 1, 1),
(78, '74HCT374  Octal D F/F Edge-triggered Tri-Stat', 12, 1, 1),
(79, '74HCT73', 7, 1, 1),
(80, '74HCTLS10', 2, 1, 1),
(81, '74HCTLS367', 7, 1, 1),
(82, '74LS00    Quad 2-input NAND Gate', 3, 1, 1),
(83, '74LS02     Quad 2-input NOR Gate', 9, 1, 1),
(84, '74LS107   Dual J-K Flip-Flop with Clear', 15, 1, 1),
(85, '74LS122    Retriggerable Mono Multi. Comm Clo', 3, 1, 1),
(86, '74LS123    Dual Mono Multivibrator With Clear', 7, 1, 1),
(87, '74LS125    Quad Bus Buffer Negative Enable Tr', 17, 1, 1),
(88, '74LS125    Quad Bus Buffer Negative Enable Tr', 19, 1, 1),
(89, '74LS132    Quad 2-input NAND Schmitt Trigger', 11, 1, 1),
(90, '74LS138     3 to 8 Decoder/Demultiplexer', 13, 1, 1),
(91, '74LS148     8 to 3 Priority Encoder', 2, 1, 1),
(92, '74LS151      8-input Multiplexer', 19, 1, 1),
(93, '74LS153      Dual 4 to 1 Selector/Multiplexer', 11, 1, 1),
(94, '74LS154     4 to 16 Line Decoder/Demultiplexe', 15, 1, 1),
(95, '74LS156    2/4 Demultiplexer (Open Collector)', 18, 1, 1),
(96, '74LS157     Quad 2/1 Data Selector', 19, 1, 1),
(97, '74LS158   Quad 2/1 Multiplexer Inverter', 11, 1, 1),
(98, '74LS160     Decade Counter with Asynchronous ', 12, 1, 1),
(99, '74LS161     Synch 4-bit Counter', 17, 1, 1),
(100, '74LS162     BCD Decade Counter', 15, 1, 1),
(101, '74LS163     Fully Synchronous 4-bit Counter', 13, 1, 1),
(102, '74LS164    8-bit Serial Shift Register', 7, 1, 1),
(103, '74LS165    8-bit Serial Shift Register, Paral', 2, 1, 1),
(104, '74LS165    8-bit Serial Shift Register, Paral', 6, 1, 1),
(105, '74LS18', 2, 1, 1),
(106, '74LS190   Up/Down Decade Counter', 13, 1, 1),
(107, '74LS191    Up/Down Binary Counter', 7, 1, 1),
(108, '74LS192    Decade Up/Down Counter with Clear', 2, 1, 1),
(109, '74LS193    Binary Up/Down Counter with Clear', 3, 1, 1),
(110, '74LS195    Binary Up/Down Counter with Clear', 18, 1, 1),
(111, '74LS20       ', 18, 1, 1),
(112, '74LS244      Octal Driver Tri-State', 8, 1, 1),
(113, '74LS259     8-Bit Addressable Latch', 13, 1, 1),
(114, '74LS27        Triple 3-input NOR Gate', 3, 1, 1),
(115, '74LS273      Octal D-type Flip-Flop with Clea', 8, 1, 1),
(116, '74LS290', 16, 1, 1),
(117, '74LS290', 6, 1, 1),
(118, '74LS367', 5, 1, 1),
(119, '74LS640', 14, 1, 1),
(120, '74LS688', 17, 1, 1),
(121, '74LS74', 3, 1, 1),
(122, '74LS85', 6, 1, 1),
(123, '74LS85', 10, 1, 1),
(124, '74LS90', 14, 1, 1),
(125, '74LS958N', 14, 1, 1),
(126, '74LS96', 19, 1, 1),
(127, 'A01', 12, 1, 1),
(128, 'M74HC112', 17, 1, 1),
(129, 'M74HC126', 8, 1, 1),
(130, 'M74HC132', 8, 1, 1),
(131, 'M74HC161', 3, 1, 1),
(132, 'M74HC165', 6, 1, 1),
(133, 'MC74HC109', 8, 1, 1),
(134, 'MC74HC137N', 6, 1, 1),
(135, 'MC74HC138AN', 15, 1, 1),
(136, 'MC74HC154', 14, 1, 1),
(137, 'SN74121N', 17, 1, 1),
(138, 'SN74123', 18, 1, 1),
(139, 'SN74125', 18, 1, 1),
(140, 'SN74132', 12, 1, 1),
(141, 'SN74151N', 16, 1, 1),
(142, 'SN74154', 16, 1, 1),
(143, 'SN74166N', 10, 1, 1),
(144, 'SN74180N', 4, 1, 1),
(145, 'SN74185N', 13, 1, 1),
(146, 'SN74190', 7, 1, 1),
(147, 'SN74192', 11, 1, 1),
(148, 'SN7442', 18, 1, 1),
(149, 'SN7472', 19, 1, 1),
(150, 'SN7489', 8, 1, 1),
(151, 'SN74LS01', 14, 1, 1),
(152, 'SN74LS02', 4, 1, 1),
(153, 'SN74LS04', 2, 1, 1),
(154, 'SN74LS05', 14, 1, 1),
(155, 'SN74LS10', 19, 1, 1),
(156, 'SN74LS11', 5, 1, 1),
(157, 'SN74LS13', 19, 1, 1),
(158, 'SN74LS132', 3, 1, 1),
(159, 'SN74LS138', 8, 1, 1),
(160, 'SN74LS148', 2, 1, 1),
(161, 'SN74LS156', 10, 1, 1),
(162, 'SN74LS163', 12, 1, 1),
(163, 'SN74LS28', 12, 1, 1),
(164, 'SN74LS640', 4, 1, 1),
(165, 'SN74LS75N', 4, 1, 1),
(166, 'SN74LS76', 10, 1, 1),
(167, 'RC4136', 3, 2, 2),
(168, 'ÂµA723', 12, 2, 2),
(169, 'LM339', 2, 2, 2),
(170, 'ÂµA710', 15, 2, 2),
(171, 'AN1319', 4, 2, 2),
(172, 'LM348', 13, 2, 2),
(173, 'NE556', 18, 2, 2),
(174, 'LM383', 3, 2, 2),
(175, 'CA3140', 11, 2, 2),
(176, 'LM1458', 16, 2, 2),
(177, 'LM555', 12, 2, 2),
(178, 'LM311', 7, 2, 2),
(179, 'LM307', 11, 2, 2),
(180, 'TAA865', 15, 2, 2),
(181, 'CA3130', 8, 2, 2),
(183, 'LM318', 6, 2, 2),
(184, 'L78S18', 3, 2, 2),
(185, 'L78S12', 4, 2, 2),
(186, 'L7815', 6, 2, 2),
(187, 'L7805', 16, 2, 2),
(188, 'LM317', 8, 2, 2),
(189, 'L78S15', 10, 2, 2),
(190, 'L78S05', 15, 2, 2),
(191, 'LM308', 9, 2, 2),
(192, 'L7812', 17, 2, 2),
(193, 'M272001', 19, 2, 2),
(194, 'SA52-LCD', 12, 2, 2),
(195, 'LM567', 8, 2, 2),
(196, 'RC455', 6, 2, 2),
(197, 'LM325', 5, 2, 2),
(198, 'ÂµA710', 7, 2, 2),
(199, 'LM319', 8, 2, 2),
(200, 'NE531', 15, 2, 2),
(201, 'TAA865', 9, 2, 2),
(202, 'CA3130E', 18, 2, 2),
(203, 'ÂµA7909', 14, 2, 2),
(204, 'L7924', 10, 2, 2),
(205, 'ÂµA7824', 11, 2, 2),
(206, 'NE556', 11, 2, 2),
(207, 'Âµ112', 19, 2, 2),
(208, 'ÂµAA145', 3, 2, 2),
(209, '78L05', 15, 2, 2),
(210, '79L15', 3, 2, 2),
(211, '78L12', 13, 2, 2),
(212, 'L7824', 2, 2, 2),
(213, 'L7810', 14, 2, 2),
(214, 'ÂµA78L10', 11, 2, 2),
(215, 'L7915', 17, 2, 2),
(216, 'L7912', 8, 2, 2),
(217, 'L7905', 12, 2, 2),
(218, 'MC79L05', 10, 2, 2),
(219, '78L15', 12, 2, 2),
(220, '78L24', 11, 2, 2),
(221, 'L7818', 13, 2, 2),
(222, '78L12', 15, 2, 2),
(223, 'L7918', 7, 2, 2),
(224, 'L7820', 7, 2, 2),
(225, 'ÂµA78L18', 8, 2, 2),
(226, 'ÂµA723', 13, 2, 2),
(227, 'LM307', 5, 2, 2),
(228, 'AD522AD', 18, 2, 2),
(229, 'ÂµP Chip M5L8156P', 2, 2, 2),
(230, 'ÂµP Chip M5L8155P', 9, 2, 2),
(231, 'ÂµP Chip D8279C-2', 8, 2, 2),
(232, 'ÂµP Chip M2716-IFI', 2, 2, 2),
(233, 'ÂµP Chip 256CP8531', 11, 2, 2),
(234, 'ÂµP Chip 51C64H-12', 9, 2, 2),
(235, 'ADC AM2732ADC', 5, 2, 2),
(236, 'D2764D', 11, 2, 2),
(237, 'TDB0148DP8407', 16, 2, 2),
(238, 'M41256-15', 4, 2, 2),
(239, 'LM358DP', 12, 2, 2),
(240, 'Pulse Transformer ZKB421/097', 11, 2, 2),
(241, 'Pulse Transformer ZKB409/018-01-PF', 18, 2, 2),
(242, 'Glimmlamp 220V (pcs)', 2, 2, 2),
(243, 'Pissello 12V, 50mA (Boxes)', 5, 2, 2),
(244, 'Capacitor 0.068ÂµF, 63V', 16, 3, 3),
(245, 'Capacitor 0.015ÂµF, 63V', 14, 3, 3),
(246, 'Capacitor 0.68ÂµF, 63V', 9, 3, 3),
(247, 'Capacitor 4700pF, 100V', 18, 3, 3),
(248, 'Capacitor 1000pF, V', 14, 3, 3),
(249, 'Capacitor 0.1ÂµF, 63V', 5, 3, 3),
(250, 'Capacitor 0.15ÂµF, 63V', 10, 3, 3),
(251, 'Capacitor 6800pF, 100V', 2, 3, 3),
(252, 'Capacitor 0.033ÂµF, 250V', 6, 3, 3),
(253, 'Capacitor 0.033ÂµF, 63V', 15, 3, 3),
(254, 'Capacitor 0.22ÂµF, 63V', 14, 3, 3),
(255, 'Capacitor 1500pF, 100V', 13, 3, 3),
(256, 'Capacitor 0.047ÂµF, 63V', 12, 3, 3),
(257, 'Capacitor 2200pF, 100V', 16, 3, 3),
(258, 'Capacitor 1pF, 500V', 10, 3, 3),
(259, 'Capacitor 330pF, 500V', 8, 3, 3),
(260, 'Capacitor 2.2nF, 500V', 14, 3, 3),
(261, 'Capacitor 2.2pF, 500V', 3, 3, 3),
(262, 'Capacitor 15pF, 500V', 3, 3, 3),
(263, 'Capacitor 470pF, 500V', 7, 3, 3),
(264, 'Capacitor 3.3nF, 500V', 3, 3, 3),
(265, 'Capacitor 3.3pF, 500V', 10, 3, 3),
(266, 'Capacitor 560pF, 500V', 5, 3, 3),
(267, 'Capacitor 4.7nF, 500V', 15, 3, 3),
(268, 'Capacitor 4.7pF, 500V', 7, 3, 3),
(269, 'Capacitor 22pF, 500V', 17, 3, 3),
(270, 'Capacitor 5.6nF, 500V', 12, 3, 3),
(271, 'Capacitor 5.6pF, 500V', 5, 3, 3),
(272, 'Capacitor 1.5nF, 500V', 14, 3, 3),
(273, 'Capacitor 10nF, 500V', 13, 3, 3),
(274, 'Capacitor 0.047ÂµF, 1000V', 16, 3, 3),
(275, 'Capacitor 0.01ÂµF, 1000V', 2, 3, 3),
(276, 'Capacitor 0.082ÂµF, 1250VDC;600VAC', 13, 3, 3),
(277, 'Capacitor 0.1ÂµF, 1250VDC;600VAC', 4, 3, 3),
(278, 'Capacitor 0.01ÂµF, 1600VDC;500VAC', 18, 3, 3),
(279, 'Capacitor 0.022ÂµF, 1600VDC;500VAC', 2, 3, 3),
(280, 'Capacitor 0.068ÂµF, 1250VDC;600VAC', 14, 3, 3),
(281, 'Capacitor 0.12ÂµF, 1250VDC;600VAC', 10, 3, 3),
(282, 'Capacitor 0.056ÂµF, 1250VDC;400VAC', 16, 3, 3),
(283, 'Capacitor 0.047ÂµF, 1250VDC;600VAC', 15, 3, 3),
(284, 'Capacitor 0.22ÂµF, 1250VDC;600VAC', 2, 3, 3),
(285, 'Capacitor 0.056ÂµF, 1250VDC;600VAC', 11, 3, 3),
(286, 'Capacitor 0.15ÂµF, 1250VDC;600VAC', 8, 3, 3),
(287, 'Capacitor 0.1ÂµF, 1250VDC;600VAC', 11, 3, 3),
(288, 'Capacitor 4700pF, 1600VDC;500VAC', 5, 3, 3),
(289, 'Capacitor 6800pF, 1250VDC;650VAC', 15, 3, 3),
(290, 'Capacitor 0.01ÂµF, 1600VDC;650VAC', 2, 3, 3),
(291, 'Capacitor 0.022ÂµF, 1250VDC;500VAC', 9, 3, 3),
(292, 'Capacitor 0.047ÂµF, 1250VDC;600VAC', 19, 3, 3),
(293, 'Capacitor 100pF, 160V', 7, 3, 3),
(294, 'Capacitor 150pF, 160V', 16, 3, 3),
(295, 'Capacitor 680pF, 160V', 13, 3, 3),
(296, 'Capacitor 1000pF, 100V', 8, 3, 3),
(297, 'Capacitor 1500pF, 100V', 11, 3, 3),
(298, 'Capacitor 2200pF, 100V', 7, 3, 3),
(299, 'Capacitor 3300pF, 100V', 18, 3, 3),
(300, 'Capacitor 4700pF, 100V', 10, 3, 3),
(301, 'Capacitor 6800pF, 100V', 17, 3, 3),
(302, 'Capacitor 0.01ÂµF, 100V', 6, 3, 3),
(303, 'Capacitor 0.015ÂµF, 100V', 5, 3, 3),
(304, 'Capacitor 0.022ÂµF, 100V', 4, 3, 3),
(305, 'Capacitor 0.033ÂµF, 100V', 5, 3, 3),
(306, 'Capacitor 0.047ÂµF, 100V', 3, 3, 3),
(307, 'Capacitor 0.068ÂµF, 100V', 11, 3, 3),
(308, 'Capacitor 0.1ÂµF, 100V', 16, 3, 3),
(309, 'Capacitor 0.15ÂµF, 100V', 8, 3, 3),
(310, 'Capacitor 0.22ÂµF, 100V', 17, 3, 3),
(311, 'Capacitor 0.47ÂµF, 63V', 8, 3, 3),
(312, 'Capacitor 0.68ÂµF, 63V', 3, 3, 3),
(313, 'Capacitor 1000pF, 400V', 2, 3, 3),
(314, 'Capacitor 1500pF, 400V', 17, 3, 3),
(315, 'Capacitor 2200pF, 400V', 3, 3, 3),
(316, 'Capacitor 3300pF, 400V', 4, 3, 3),
(317, 'Capacitor 4700pF, 400V', 19, 3, 3),
(318, 'Capacitor 6800pF, 400V', 12, 3, 3),
(319, 'Capacitor 0.01ÂµF, 400V', 7, 3, 3),
(320, 'Capacitor 0.015ÂµF, 400V', 18, 3, 3),
(321, 'Capacitor 0.022ÂµF, 250V', 3, 3, 3),
(322, 'Capacitor 0.033ÂµF, 250V', 18, 3, 3),
(323, 'Capacitor 0.047ÂµF, 250V', 7, 3, 3),
(324, 'Capacitor 0.068ÂµF, 250V', 13, 3, 3),
(325, 'Capacitor 0.1ÂµF, 100V', 3, 3, 3),
(326, 'Capacitor 0.22ÂµF, 100V', 13, 3, 3),
(327, 'Capacitor 0.15ÂµF, 100V', 7, 3, 3),
(328, 'Capacitor 0.33ÂµF, 100V', 15, 3, 3),
(329, 'Capacitor 0.47ÂµF, 100V', 19, 3, 3),
(330, 'Capacitor 6.8pF, 400V', 17, 3, 3),
(331, 'Capacitor 8.2nF, 400V', 3, 3, 3),
(332, 'Capacitor 2.2nF, 400V', 6, 3, 3),
(333, 'Capacitor 0.68ÂµF, 100V', 12, 3, 3),
(334, 'Capacitor 0.27ÂµF, 100V', 2, 3, 3),
(335, 'Capacitor 0.39ÂµF, 100V', 10, 3, 3),
(336, 'Capacitor 0.33ÂµF, 100V', 7, 3, 3),
(337, 'Capacitor 39nF, 250V', 11, 3, 3),
(338, 'Capacitor 82nF, 250V', 9, 3, 3),
(339, 'Capacitor 33nF, 250V', 17, 3, 3),
(340, 'Capacitor 18nF, 250V', 12, 3, 3),
(341, 'Capacitor 56nF, 250V', 9, 3, 3),
(342, 'Capacitor 0.56nF, 100V', 7, 3, 3),
(343, 'Capacitor 82pF', 15, 3, 3),
(344, 'Capacitor 3.6pF', 16, 3, 3),
(345, 'Capacitor 0.68nF', 13, 3, 3),
(346, 'Capacitor 0.56nF', 10, 3, 3),
(347, 'Capacitor 56pF', 15, 3, 3),
(348, 'Capacitor 3.8pF', 17, 3, 3),
(349, 'Capacitor 1.8pF', 8, 3, 3),
(350, 'Capacitor 1.5pF', 9, 3, 3),
(351, 'Capacitor 3.9pF', 5, 3, 3),
(352, 'Capacitor 2.7pF', 3, 3, 3),
(353, 'Capacitor 1.2pF', 6, 3, 3),
(354, 'Capacitor 3.3pF', 3, 3, 3),
(355, 'Capacitor 1.2nF', 10, 3, 3),
(356, 'Capacitor 100ÂµF, 63V', 16, 3, 3),
(357, 'Capacitor 47ÂµF, 63V', 5, 3, 3),
(358, 'Capacitor 10ÂµF, 63V', 2, 3, 3),
(359, 'Capacitor 1000ÂµF, 40V', 17, 3, 3),
(360, 'Capacitor 4700ÂµF, 40V', 16, 3, 3),
(361, 'Capacitor 47ÂµF, 350V', 12, 3, 3),
(362, 'Capacitor 10ÂµF, 350V', 11, 3, 3),
(363, 'Capacitor 42200ÂµF, 40V', 3, 3, 3),
(364, 'Capacitor 4.7ÂµF, 350V', 12, 3, 3),
(365, 'Capacitor 22ÂµF, 50V', 7, 3, 3),
(366, 'Capacitor 0.4ÂµF, 100V', 19, 3, 3),
(367, 'Capacitor 1ÂµF, 63V', 10, 3, 3),
(368, 'Capacitor 2.2ÂµF, 63V', 17, 3, 3),
(369, 'Capacitor 4.7ÂµF, 63V', 18, 3, 3),
(370, 'Capacitor 10ÂµF, 63V', 19, 3, 3),
(371, 'Capacitor 470ÂµF, 40V', 6, 3, 3),
(372, 'Assorted capacitors Comp Cards (box)', 2, 3, 3),
(373, 'Asort Cermc Caps [1, 2.2, 3.3, 4.7, 5.6]pF', 2, 3, 3),
(374, 'Asort Cermc Caps [10, 15, 18, 22, 33]pF', 8, 3, 3),
(375, 'Asort Cermc Caps [47, 56, 100, 150, 220]pF', 2, 3, 3),
(376, 'Asort Electr Caps [470, 270, 47]ÂµF', 8, 3, 3),
(377, 'Electrolytic Capacitor 220ÂµF, 100V', 5, 3, 3),
(378, 'Electrolytic Capacitor 100ÂµF, 63V', 13, 3, 3),
(379, 'Electrolytic Capacitor 47ÂµF, 63V', 12, 3, 3),
(380, 'Electrolytic Capacitor 10ÂµF, 63V', 18, 3, 3),
(381, 'Astd Res [1, 1.1, 1.2, 1.3, 1.5, 1.6, 1.8] Î©', 4, 4, 4),
(382, 'Astd Res [2, 2.2, 2.4, 2.7] Î©, 1/4W', 18, 4, 4),
(383, 'Astd Res [3, 3.3, 3.6, 3.9, 4.3, 4.7] Î©, 1/4', 14, 4, 4),
(384, 'Astd Res [5.1, 5.6, 6.2, 6.8, 7.5, 8.2] Î©, 1', 10, 4, 4),
(385, 'Astd Res [9.1, 10, 11, 12, 13, 15, 16, 18] Î©', 11, 4, 4),
(386, 'Astd Res [20, 22, 24, 27, 30, 33, 36, 39] Î©,', 12, 4, 4),
(387, 'Astd Res [43, 47, 51, 56, 62, 68, 75, 82, 91,', 11, 4, 4),
(388, 'Astd Res [110, 120, 130, 150, 160, 180, 200] ', 7, 4, 4),
(389, 'Astd Res [220, 240, 270, 300,330, 360, 390] Î', 12, 4, 4),
(390, 'Astd Res [430, 470, 510, 620, 680, 720, 820, ', 5, 4, 4),
(391, 'Astd Res [1, 1.1, 1.2, 1.3, 1.5, 1.6, 1.8, 2,', 4, 4, 4),
(392, 'Astd Res [2.4, 2.7, 3, 3.3, 3.6*, 3.9, 4.3] k', 6, 4, 4),
(393, 'Astd Res [4.7, 5.1*, 5.6, 6.2, 6.8, 7.5, 8.2,', 10, 4, 4),
(394, 'Astd Res [10*, 11, 12, 13, 15, 16*, 18, 20* ]', 2, 4, 4),
(395, 'Astd Res [22, 24, 27, 30*, 33, 36, 39] kÎ©, 1', 15, 4, 4),
(396, 'Astd Res [43, 47, 51, 56, 62, 66, 75, 91, 100', 11, 4, 4),
(397, 'Astd Res [200, 220, 240, 270, 300, 330, 360, ', 9, 4, 4),
(398, 'Astd Res [430, 470, 510, 530, 620, 680, 780, ', 19, 4, 4),
(399, 'Astd Res [1, 1.1, 1.2, 1.3, 1.5, 1.6, 1.8, 2]', 12, 4, 4),
(400, 'Astd Res [2.2, 2.4, 2.7, 3.3, 3.6, 3.9, 4.3, ', 2, 4, 4),
(401, 'Astd Res [5.6, 6.2, 6.8, 7.5, 8.2, 9.1, 10] M', 4, 4, 4),
(402, 'Astd Res [1, 1.2*, 1.5*, 1.8*, 2.2*, 2.7*] Î©', 18, 4, 4),
(403, 'Astd Res [3.3*, 3.9*, 4.7*, 5.7*, 6.8, 8.2*, ', 10, 4, 4),
(404, 'Astd Res [12, 15, 18, 22, 27, 33, 39, 47, 56,', 5, 4, 4),
(405, 'Astd Res [150*, 180, 220*, 270*, 330*, 390*, ', 19, 4, 4),
(406, 'Astd Res [12*, 15*, 18*, 22*, 27*, 33, 39*, 4', 9, 4, 4),
(407, 'Astd Res [1.5, 1.8*, 2.7*, 3.3*, 3.9*, 4.7*, ', 13, 4, 4),
(408, 'Astd Res [100*, 120*, 150*, 180*, 220*, 270*,', 16, 4, 4),
(409, 'Astd Res [1, 1.2*, 1.5*, 1.8*, 2.2*, 2.7*, 3.', 17, 4, 4),
(410, 'Potentiometer 100K', 15, 4, 4),
(411, 'Potentiometer 50K', 9, 4, 4),
(412, 'Potentiometer 250K', 8, 4, 4),
(413, 'Potentiometer 500K', 4, 4, 4),
(414, 'Potentiometer 5M', 4, 4, 4),
(415, 'Potentiometer 2.5M', 18, 4, 4),
(416, 'Potentiometer 5K', 10, 4, 4),
(417, 'Potentiometer 1K', 18, 4, 4),
(418, 'Potentiometer 500Î©', 10, 4, 4),
(419, 'Potentiometer 250Î©', 14, 4, 4),
(420, 'Potentiometer 100Î©', 17, 4, 4),
(421, 'Rectangular Pot 500Î©', 4, 4, 4),
(422, 'Rectangular Pot 100Î©', 9, 4, 4),
(423, 'Rectangular Pot 200Î©', 17, 4, 4),
(424, 'Rectangular Pot 220Î©', 4, 4, 4),
(425, 'Round Pot Small 100Î©', 7, 4, 4),
(426, 'Round Pot Big 1.1KÎ©', 12, 4, 4),
(427, 'Fuse 0.08A, 5x20mm - boxes', 14, 4, 4),
(428, 'Fuse 0.1A, 5x20mm - boxes', 4, 4, 4),
(429, 'Fuse 0.26, 5x20mm - boxes', 15, 4, 4),
(430, 'Fuse 0.125A, 5x20mm - boxes', 11, 4, 4),
(431, 'Fuse 0.2A, 5x20mm - boxes', 8, 4, 4),
(432, 'Fuse 0.5A, 5x20mm - boxes', 8, 4, 4),
(433, 'Fuse 6.3A, 5x20mm - boxes', 7, 4, 4),
(434, 'Fuse 0.5A, 6.2x32mm - boxes', 10, 4, 4),
(435, 'Fuse 1A, 6.2x32mm - boxes', 11, 4, 4),
(436, 'Fuse 10A, 6.2x32mm - boxes', 6, 4, 4),
(437, 'Fuse 8A, 6.2x32mm - boxes', 15, 4, 4),
(438, 'Fuse 9A, 6.2x32mm - boxes', 15, 4, 4),
(439, 'Fuse 10A, 5x20mm - boxes', 10, 4, 4),
(440, 'Fuse 1A, 5x20mm - boxes', 7, 4, 4),
(441, 'Astd Fuses Sortiment Nr. 9A - box', 13, 4, 4),
(442, 'Astd Fuses Sortiment Nr. 7A - box', 19, 4, 4),
(443, 'Inductor 0.33ÂµH', 14, 5, 5),
(444, 'Inductor 0.22ÂµH', 18, 5, 5),
(445, 'Inductor 0.15ÂµH', 5, 5, 5),
(446, 'Inductor 0.1ÂµH', 19, 5, 5),
(447, 'Inductor 1.5ÂµH', 7, 5, 5),
(448, 'Inductor 1ÂµH', 9, 5, 5),
(449, 'Inductor 0.68ÂµH', 3, 5, 5),
(450, 'Inductor 0.47ÂµH', 18, 5, 5),
(451, 'Inductor 2.2ÂµH', 18, 5, 5),
(452, 'Inductor 3.3ÂµH', 13, 5, 5),
(453, 'Inductor 4.7ÂµH', 5, 5, 5),
(454, 'Inductor 6.8ÂµH', 17, 5, 5),
(455, 'Inductor 10ÂµH', 5, 5, 5),
(456, 'Inductor 15ÂµH', 13, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `lab_exercise`
--

CREATE TABLE `lab_exercise` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lab_exercise`
--

INSERT INTO `lab_exercise` (`id`, `name`, `date`, `users_id`) VALUES
(41, 'te441-tutorial1.pdf', '2018-04-12 11:36:31.493590', 0),
(51, 'te441-tutorial1.pdf', '2018-04-13 12:02:20.329716', 0);

-- --------------------------------------------------------

--
-- Table structure for table `requested_components`
--

CREATE TABLE `requested_components` (
  `user_id` int(11) NOT NULL,
  `lab_component` int(11) NOT NULL,
  `date_requested` timestamp(6) NULL DEFAULT NULL,
  `date_returned` timestamp(6) NULL DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(10) NOT NULL,
  `users_id` int(20) NOT NULL,
  `requested_components` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(40) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` char(60) DEFAULT NULL,
  `reg_number` char(13) DEFAULT NULL,
  `user_roles_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `password`, `reg_number`, `user_roles_id`) VALUES
(0, 'issa hassan', 'issa hassan', '1266', 'reg_number', 3),
(1, 'madam teyana', 'madam teyana', '1111', '2010-02-07000', 1),
(2, 'andrew peter', 'andrew peter', '3333', '2000-04-11276', 2),
(3, 'mary abel', 'mary abel', '3333', '2014-04-02692', 3),
(4, '', 'andrew', '4444', '2010-02-07000', 2);

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
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_idx` (`user_id`);

--
-- Indexes for table `component_groups`
--
ALTER TABLE `component_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exercise`
--
ALTER TABLE `exercise`
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
  ADD PRIMARY KEY (`user_id`,`lab_component`),
  ADD KEY `fk_users_has_lab_components_lab_components1_idx` (`lab_component`),
  ADD KEY `fk_users_has_lab_components_users1_idx` (`user_id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;
--
-- AUTO_INCREMENT for table `exercise`
--
ALTER TABLE `exercise`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `lab_exercise`
--
ALTER TABLE `lab_exercise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
  ADD CONSTRAINT `fk_users_has_lab_components_lab_components1` FOREIGN KEY (`lab_component`) REFERENCES `lab_components` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_has_lab_components_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_user_roles` FOREIGN KEY (`user_roles_id`) REFERENCES `user_roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
