-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 12, 2018 at 11:41 AM
-- Server version: 5.5.57-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtools`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_location`
--

CREATE TABLE `tb_location` (
  `Locatio_ID` int(11) NOT NULL,
  `Location_Name` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_location`
--

INSERT INTO `tb_location` (`Locatio_ID`, `Location_Name`) VALUES
(1, 'FL5_CAB1'),
(2, 'FL5_CAB2'),
(3, 'FL5_CAB3');

-- --------------------------------------------------------

--
-- Table structure for table `tb_main_category`
--

CREATE TABLE `tb_main_category` (
  `Main_Category_Abbv` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `Main_Category_Name` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_main_category`
--

INSERT INTO `tb_main_category` (`Main_Category_Abbv`, `Main_Category_Name`) VALUES
('EP', 'Electrical Power Equipment'),
('HP', 'Hand Power Tools'),
('HT', 'Hand Tools'),
('MA', 'Measuring Instrument'),
('SE', 'Safety Equipment'),
('ST', 'Soldering Tools');

-- --------------------------------------------------------

--
-- Table structure for table `tb_status`
--

CREATE TABLE `tb_status` (
  `Status_ID` int(11) NOT NULL,
  `Status_Name` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_status`
--

INSERT INTO `tb_status` (`Status_ID`, `Status_Name`) VALUES
(1, 'In Stock'),
(2, 'Borrow'),
(3, 'Missing');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sub_category`
--

CREATE TABLE `tb_sub_category` (
  `Sub_Category_ID` int(11) NOT NULL,
  `Sub_Category_Abbv` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `Sub_Category_Name` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `Main_Category_Abbv` varchar(2) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_sub_category`
--

INSERT INTO `tb_sub_category` (`Sub_Category_ID`, `Sub_Category_Abbv`, `Sub_Category_Name`, `Main_Category_Abbv`) VALUES
(1, 'PUN', 'Chisels, Puncher, Pin Punch', 'HT'),
(2, 'CUT', 'Cutters/Knife/Wire Cutter/Stripper', 'HT'),
(3, 'IET', 'Insertion/Extraction Tools', 'HT'),
(4, 'RIV', 'Rivet Tools,Fastening Tools', 'HT'),
(5, 'HAM', 'Hammers', 'HT'),
(6, 'SAW', 'Hand Saws', 'HT'),
(7, 'HEX', 'Hex Key', 'HT'),
(8, 'HOK', 'Hook', 'HT'),
(9, 'CRI', 'Crimp Tools', 'HT'),
(10, 'PIL', 'Pliers', 'HT'),
(11, 'PRY', 'Pry Bar', 'HT'),
(12, 'SCR', 'Scrapers', 'HT'),
(13, 'RAT', 'Ratchets', 'HT'),
(14, 'SCR', 'Screw + Nut Drivers', 'HT'),
(15, 'SOC', 'Socket', 'HT'),
(16, 'TAP', 'Tap & Die', 'HT'),
(17, 'CLA', 'Vises+Clamps', 'HT'),
(18, 'WRE', 'Wrenches/Spanner', 'HT'),
(19, 'MEA', 'Measuring Tape', 'HT'),
(20, 'FLA', 'Flashlight', 'HT'),
(21, 'BRU', 'Brushes', 'HT'),
(22, 'FIL', 'Files', 'HT'),
(23, 'ADA', 'Adapter Tool', 'HT'),
(24, 'IMP', 'Impact Wrench', 'HP'),
(25, 'DRI', 'Drills + Screwdriver', 'HP'),
(26, 'DIB', 'Drill Bits + Drill Jig', 'HP'),
(27, 'POL', 'Polisher + Sanders', 'HP'),
(28, 'HOT', 'Hot Air Gun', 'HP'),
(32, 'GLA', 'Glasses/Eye Protection', 'SE'),
(37, 'SIR', 'Soldering Iron', 'ST'),
(38, 'SSA', 'Solderint Station/Stand', 'ST'),
(39, 'SEX', 'Solder Extractor', 'ST'),
(43, 'PIC', 'Pick Tools/Tweezer', 'ST'),
(49, 'MUL', 'Mulltimeter', 'MA'),
(50, 'LCR', 'LCR Meter', 'MA'),
(51, 'THE', 'Thermometer', 'MA'),
(58, 'VER', 'Vernier Caliper', 'MA'),
(59, 'FIB', 'Fiber Optic Tester', 'MA'),
(60, 'EAR', 'Earth/Ground Tester', 'MA'),
(61, 'MAN', 'Manometer/Pressure Meter', 'MA'),
(62, 'VER', 'Data Tester Tools', 'MA'),
(63, 'OTH', 'Other Instruments', 'MA'),
(99, 'MSC', 'Miscellaneous', 'HT'),
(100, 'MSC', 'Miscellaneous', 'MA');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tools`
--

CREATE TABLE `tb_tools` (
  `Tool_ID` int(11) NOT NULL,
  `Tool_Asset_No` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `Tool_Avia_ID` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `Tool_Name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Tool_Image` text COLLATE utf8_unicode_ci NOT NULL,
  `Tool_SubCat_ID` int(11) NOT NULL,
  `Tool_MFG` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Tool_MFG_PN` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Tool_Location_ID` int(11) NOT NULL,
  `Tool_Status_ID` int(11) NOT NULL,
  `Remark` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_tools`
--

INSERT INTO `tb_tools` (`Tool_ID`, `Tool_Asset_No`, `Tool_Avia_ID`, `Tool_Name`, `Tool_Image`, `Tool_SubCat_ID`, `Tool_MFG`, `Tool_MFG_PN`, `Tool_Location_ID`, `Tool_Status_ID`, `Remark`) VALUES
(1, 'As G-194', '', 'GREENLEE Sets Punch', 'As_G-194.png', 1, '', '', 1, 1, ''),
(2, '', '', 'LINK Network Crimp Tool & Tester', '2.png', 9, 'LINK', '', 1, 1, ''),
(3, '', '', 'Airflow Digital Manometer DM2', '3.png', 61, 'AIRFLOW', 'DM2', 1, 1, ''),
(4, 'As G-029', 'TL-CT-02', 'Crimp Tool Kit', 'As_G-029.png', 9, '', '', 1, 1, ''),
(5, '', 'MS-IF-01', 'Fluke 561 IR Thermometers', 'ms-if-01.png', 51, 'FLUKE', '561', 1, 1, ''),
(8, '', 'TL-FL-01', 'Files', 'tl-fl-01.png', 22, '', '', 1, 1, ''),
(9, '', 'TL-FJ-01', 'File JK 6EA 100mm', 'tl-fj-01.png', 22, '', '', 1, 1, ''),
(10, '', '', 'File (Blue)', '10.png', 22, '', '', 1, 1, ''),
(11, '', 'TL-RF-03', 'Round Files (Orange)', 'tl-rf-03.png', 22, '', '', 1, 1, ''),
(12, '', 'TL-RF-04', 'Round Files 3pc SET', 'tl-rf-04.png', 22, '', '', 1, 1, ''),
(16, '', 'TL-HA-01', 'Hammer', 'tl-ha-01.png', 5, '', '', 1, 1, ''),
(17, '', 'TL-WP-01', 'Wire Plier (Blue)', 'tl-wp-01.png', 10, '', '', 1, 1, ''),
(18, '', 'TL-WP-02', 'Wire Plier (Green)', 'tl-wp-02.png', 10, '', '', 1, 1, ''),
(19, '', 'TL-PU-01', 'Vacuum Pick-UP Tool', 'tl-pu-01.png', 43, '', '', 1, 1, ''),
(20, '', 'TL-IC-01', 'IC Prokit (ตัวถอด IC)', 'tl-ic-01.png', 43, '', '', 1, 1, ''),
(21, '', 'TL-PE-05', 'Vacuum Pick-UP PEN(ตัวดูดชิ้นส่วนอุปกรณ์)', 'tl-pe-05.png', 43, '', '', 1, 1, ''),
(22, '', 'TL-SP-01', 'Wire Plier', 'tl-sp-01.png', 10, '', '', 1, 1, ''),
(23, '', 'TL-PE-01', 'Plier', 'tl-pe-01.png', 10, '', '', 1, 1, ''),
(24, '', 'TL-PE-03', 'Needle Nose Pliers (Green)', 'tl-pe-03.png', 10, '', '', 1, 1, ''),
(25, '', 'TL-TZ-01', 'Mechanical Flex Finger Tool', 'tl-tz-01.png', 99, '', '', 1, 1, ''),
(26, '', 'TL-BC-02', 'Adjustable Wrench 12\' 8073', 'tl-bc-02.png', 18, '', '', 1, 1, ''),
(27, '', 'TL-WH-01', 'Adjustable Wrench ', 'tl-wh-01.png', 18, '', '', 1, 1, ''),
(28, '', 'TL-WH-02', 'Wrench', 'tl-wh-02.png', 18, '', '', 1, 1, ''),
(29, '', 'TL-WH-03', 'Wrench No.8-9', 'tl-wh-03.png', 18, '', '', 1, 1, ''),
(30, '', 'TL-WH-04', 'Wrench No.10-11', 'tl-wh-04.png', 18, '', '', 1, 1, ''),
(31, '', 'TL-WH-05', 'Wrench No.12-13', 'tl-wh-05.png', 18, '', '', 1, 1, ''),
(32, '', 'TL-WH-06', 'Wrench No.14-15', 'tl-wh-06.png', 18, '', '', 1, 1, ''),
(33, '', '', 'Cutting Pliers', '33.png', 10, '', '', 1, 1, ''),
(34, '', 'TL-CP-01', 'Cutting Pliers', 'tl-cp-01.png', 10, '', '', 1, 1, ''),
(35, '', 'TL-TCL-04', 'T-Cutting lite For Standard', 'tl-tcl-04.png', 10, '', '', 1, 1, ''),
(37, '', 'TL-HT-01', 'HSS Thread Tap & Die Set 32 Piece', 'tl-ht-01.png', 16, '', '', 1, 1, ''),
(38, '', 'TL-DS-01', 'Drill Bit SET Keiba', 'tl-ds-01.png', 26, '', '', 1, 1, ''),
(39, '', 'TL-DS-02', 'Drill Bit SET', 'tl-ds-02.png', 26, '', '', 1, 1, ''),
(40, '', 'TL-DS-03', 'TCT Drill SET (For CNC)', 'tl-ds-03.png', 26, '', '', 1, 1, ''),
(41, '', 'TL-DS-04', 'Micro Drill', 'tl-ds-04.png', 26, '', '', 1, 1, ''),
(42, '', 'MS-FO-01', 'EXFO FPM-300 Optical Power Meter', 'ms-fo-01.png', 59, 'EXFO', 'FPM-300', 1, 1, ''),
(43, '', 'MS-FO-02', 'EXFO FPM-300 Optical Power Meter', 'ms-fo-02.png', 59, 'EXFO', 'FPM-300', 1, 1, ''),
(44, 'As G030(2)', 'TL-WE-01', 'BLUE POINT Combination Wrench SET (No.8-19)', 'tl-we-02.png', 18, '', '', 1, 1, ''),
(45, 'As G030(2)', 'TL-WE-02', 'BLUE POINT Combination Wrench SET (No.8-19)', 'tl-we-02.png', 18, '', '', 1, 1, ''),
(46, '', 'TL-UV-01', 'Safety Glass 3 SETs', 'tl-uv-01.png', 32, '', '', 1, 1, ''),
(47, '', '', 'Goggle 3M', '47.png', 32, '', '', 1, 1, ''),
(48, '', 'GLASSES', 'Safety Glass ', '48.png', 32, '', '', 1, 1, ''),
(49, '', 'GLASSES', 'Safety Glass (Orange)', '49.png', 32, '', '', 1, 1, ''),
(50, '', 'TL-CO-01', 'Stripper Coaxial LC CST-11', 'tl-co-01.png', 2, '', '', 1, 1, ''),
(51, '', 'TL-CO-02', 'Stripper Coaxial LC CST-11', 'tl-co-02.png', 2, '', '', 1, 1, ''),
(52, '', 'TL-CO-03', 'Stripper Coaxial LC CST-11', 'tl-co-03.png', 2, '', '', 1, 1, ''),
(53, '', 'TL-CO-04', 'Stripper Coaxial LC CST-11', 'tl-co-04.png', 2, '', '', 1, 1, ''),
(54, '', 'TL-CE-01', 'RENNSTEIG 430 129 Automatic Centre Punch', 'tl-ce-01.png', 1, '', '', 1, 1, ''),
(55, '', 'TL-CE-02', 'RENNSTEIG 430 129 Automatic Centre Punch', 'tl-ce-02.png', 1, '', '', 1, 1, ''),
(56, '', 'TL-CE-03', 'Centre Punch', 'tl-ce-03.png', 1, '', '', 1, 1, ''),
(57, '', 'TL-CE-04', 'Centre Punch', 'tl-ce-04.png', 1, '', '', 1, 1, ''),
(58, '', 'TL-CE-05', 'Centre Punch', 'tl-ce-05.png', 1, '', '', 1, 1, ''),
(59, '', 'TL-CE-06', 'Centre Punch', 'tl-ce-06.png', 1, '', '', 1, 1, ''),
(60, '', 'TL-SA-01', 'Socket Adapter 1/4\' 50 mm', 'tl-sa-01.png', 15, '', '', 1, 1, ''),
(61, '', 'TL-GN-01', 'G125 Go-no-go Gauge for Cable Crimping Tools', 'tl-gn-01.png', 9, '', '', 1, 1, ''),
(63, '', 'TL-DH-02', 'DMC TH501 Crimpers Turret Head', 'tl-dh-02.png', 9, '', '', 1, 1, ''),
(64, '', 'TL-DH-03', 'DMC TH501 Crimpers Turret Head', 'tl-dh-03.png', 9, '', '', 1, 1, ''),
(65, '', 'TL-DH-04', 'DMC TH501 Crimpers Turret Head', 'tl-dh-04.png', 9, '', '', 1, 1, ''),
(66, '', 'TL-DH-05', 'DMC TH501 Crimpers Turret Head', 'tl-dh-05.png', 9, '', '', 1, 1, ''),
(67, '', 'TL-PN-01', 'DMC Positioner K43 Crimper', 'tl-pn-01.png', 9, '', '', 1, 1, ''),
(68, '', 'TL-PN-03', 'DMC Positioner K43 Crimper', 'tl-pn-03.png', 9, '', '', 1, 1, ''),
(69, '', 'TL-PN-04', 'DMC Positioner K43 Crimper', 'tl-pn-04.png', 9, '', '', 1, 1, ''),
(70, '', 'TL-PN-06', 'DMC Positioner K43 Crimper', 'tl-pn-06.png', 9, '', '', 1, 1, ''),
(71, '', 'TL-PN-07', 'DMC Positioner K43 Crimper', 'tl-pn-07.png', 9, '', '', 1, 1, ''),
(72, '', 'TL-PN-10', 'DMC Positioner K1S', 'tl-pn-10.png', 9, '', '', 1, 1, ''),
(73, '', 'TL-PN-11', 'DMC Positioner K1S', 'tl-pn-11.png', 9, '', '', 1, 1, ''),
(75, '', 'TL-CX-01', 'Contact Positioner Circular', 'tl-cx-01.png', 9, '', '', 1, 1, ''),
(76, '', 'TL-LT-04', 'KRONE Insertion Tool', 'tl-lt-04.png', 3, '', '', 1, 1, ''),
(78, '', 'TL-EP-02', 'Electric Pole Tester', 'tl-ep-02.png', 100, '', '', 1, 1, ''),
(79, '', 'TL-EP-03', 'Electric Pole Tester', 'tl-ep-03.png', 100, '', '', 1, 1, ''),
(80, '', 'TL-EP-04', 'Electric Pole Tester', 'tl-ep-04.png', 100, '', '', 1, 1, ''),
(81, '', 'TL-EP-05', 'Electric Pole Tester', 'tl-ep-05.png', 100, '', '', 1, 1, ''),
(82, '', 'TL-ET-05', 'Extractor (Red)', 'tl-et-05.png', 3, '', '', 1, 1, ''),
(83, '', 'TL-ET-06', 'Extractor (Green)', 'tl-et-06.png', 3, '', '', 1, 1, ''),
(84, '', 'TL-AX-01', 'AMP Extractor', 'tl-ax-01.png', 3, '', '', 1, 1, ''),
(85, '', 'TL-AX-02', 'AMP Extractor', 'tl-ax-02.png', 3, '', '', 1, 1, ''),
(86, '', 'TL-ER-03', 'AMP Extractor', 'tl-er-03.png', 3, '', '', 1, 1, ''),
(87, '', 'TL-ER-04', 'AMP Extractor', 'tl-er-04.png', 3, '', '', 1, 1, ''),
(88, '', 'MS-LC-01', 'LCR 612 Meter', 'ms-lc-01.png', 50, 'TECPEL', '612', 1, 1, ''),
(89, '', 'MS-HN-01', 'VEEX TX130/E+ PDH and Datacom Tester', 'ms-hn-01.png', 62, 'VEEX', 'TX130/E+', 1, 1, ''),
(90, '', 'MS-GT-01', 'KYORITSU 4105A Digital Earth Tester', 'ms-gt-01.png', 60, 'KYORITSU', '4105A', 1, 1, ''),
(91, '', 'MS-GT-02', 'KYORITSU 4105A Digital Earth Tester', 'ms-gt-02.png', 60, 'KYORITSU', '4105A', 1, 1, ''),
(92, '', 'TL-CP-01', 'Pro Crimper Hand Crimping', '92.png', 10, '', '', 1, 1, ''),
(93, '', '93', 'Balmar ED M22520 Crimp Tool', '93.png', 9, '', '', 1, 1, ''),
(94, '', 'TL-CPT-20', 'Crimp Tool M22520/1-01', 'tl-cpt-20.png', 9, '', '', 1, 1, ''),
(95, '', 'TL-DZ-01', 'DMC Miniature Adjustable Hand Crim Tool AFM8 ', 'tl-dz-01.png', 9, '', '', 1, 1, ''),
(96, '', 'MS-TW-02', 'Touque Wrench 120N/cm', 'ms-tw-02.png', 18, '', '', 1, 1, ''),
(97, '', 'TL-ID-01', 'Impact Driver ', 'tl-id-01.png', 24, '', '', 1, 1, ''),
(98, '', 'TL-WP-01', 'Wire Stripper', '98.png', 2, '', '', 1, 1, ''),
(99, '', '99', 'BICC-BURNDY S/N:20162', '99.png', 2, '', '', 1, 1, ''),
(100, '', 'TL-BU-01', 'Buchanan Crimping Tool S/N10881', 'tl-bu-01.png', 9, '', '', 1, 1, ''),
(101, '', 'TL-CJ-01', 'CLECO Plier', 'tl-cj-01.png', 10, '', '', 1, 1, ''),
(102, '', 'TL-CJ-02', 'CAMLOC Plier', 'tl-cj-02.png', 10, '', '', 1, 1, ''),
(103, '', 'TL-PJ-02', 'Heavy Duty Crimp Press', 'tl-pj-02.png', 9, '', '', 1, 1, ''),
(104, '', 'TL-LR-01', 'กรรไกรตัดสังกะสี LACROC ขนาด 10\" รหัส P6716 ', 'tl-lr-01.png', 2, '', '', 1, 1, ''),
(106, '', 'TL-VR-02', 'Vise-Grip10\'', 'tl-vr-02.png', 9, '', '', 1, 1, ''),
(107, '', 'TL-WT-01', 'Wire Twister', 'tl-wt-01.png', 9, '', '', 1, 1, ''),
(108, '', 'TL-WT-02', 'Wire Twister', 'tl-wt-02.png', 9, '', '', 1, 1, ''),
(109, '', 'TL-DB-01', 'Drill Jig T12/T16', 'tl-db-01.png', 26, '', '', 1, 1, ''),
(110, '', 'TL-AP-01', 'Averry Plate Nut Drill jig', 'tl-ap-01.png', 26, '', '', 1, 1, ''),
(111, '', 'TL-AP-03', 'Averry Plate Nut Drill jig', 'tl-ap-03.png', 26, '', '', 1, 1, ''),
(112, '', 'MS-MA-01', 'EXFO Multilayer Access Test Set', 'ms-ma-01.png', 62, '', 'ETS-1000', 1, 1, ''),
(113, '', 'MS-MA-02', 'EXFO Multilayer Access Test Set', 'ms-ma-02.png', 62, '', 'ETS-1000', 1, 1, ''),
(115, '', 'TL-RH-02', 'Rotary Hammer Drill (สว่านเจาะปูน)', 'tl-rh-02.png', 25, '', '', 1, 1, ''),
(116, '', 'TL-MM-01', 'Multilayer (เครื่องเจียพื้นให้เรียบ)', 'tl-mm-01.png', 27, '', '', 1, 1, ''),
(117, '', 'TL-HG-02', 'Heat Gun/ED P/N:02083 2009.01/ED', 'tl-hg-02.png', 28, '', '', 1, 1, ''),
(118, '', 'TL-HGU-03', 'Heat Gun/ED P/N:HG6500', 'tl-hgu-03.png', 28, '', '', 1, 1, ''),
(119, '', '', 'Heat Gun (BLACK)', '119.png', 28, '', '', 1, 1, ''),
(120, '', 'TL-TT-01', 'Tru Torque Wrench', 'tl-tt-01.png', 18, '', '', 1, 1, ''),
(121, '', 'TL-CW-02', 'Combination Wrench SET', 'tl-cw-02.png', 18, '', '', 1, 1, ''),
(122, 'As GSS-003', '', 'Window Clicker Torque Wrench', '122.png', 18, '', '', 1, 1, ''),
(123, '', 'TL-KK-01', 'Socket Set', 'tl-kk-01.png', 15, '', '', 1, 1, ''),
(124, 'As-G169(1)', 'TL-BW-01', 'Blower', 'tl-bw-01.png', 99, '', '', 1, 1, ''),
(125, 'As-G169(1)', 'TL-BW-03', 'Blower', 'tl-bw-03.png', 99, '', '', 1, 1, ''),
(126, '', '', 'Aircraft Static Test Adapter', '126.png', 63, 'SA34-P', 'Aircraft Instrument ', 1, 1, '1'),
(127, '', '', 'Digital DC Fuel Quantity Test Set', '127.png', 63, 'Barfield', 'DC-400A', 1, 1, ''),
(128, '', 'TL-RT-03', 'Rivet Nut Tool', 'tl-rt-03.png', 4, '', '', 1, 1, ''),
(129, '', 'TL-RT-04', 'Rivet Nut Tool', 'tl-rt-04.png', 4, '', '', 1, 1, ''),
(130, '', '', 'Vernier Caliper', '130.png', 58, '', '', 1, 1, ''),
(131, '', 'TL-FP-01', 'Floor Pump', 'tl-fp-01.png', 99, '', '', 1, 1, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_location`
--
ALTER TABLE `tb_location`
  ADD PRIMARY KEY (`Locatio_ID`);

--
-- Indexes for table `tb_main_category`
--
ALTER TABLE `tb_main_category`
  ADD PRIMARY KEY (`Main_Category_Abbv`);

--
-- Indexes for table `tb_status`
--
ALTER TABLE `tb_status`
  ADD PRIMARY KEY (`Status_ID`);

--
-- Indexes for table `tb_sub_category`
--
ALTER TABLE `tb_sub_category`
  ADD PRIMARY KEY (`Sub_Category_ID`),
  ADD KEY `fk_main_category` (`Main_Category_Abbv`);

--
-- Indexes for table `tb_tools`
--
ALTER TABLE `tb_tools`
  ADD PRIMARY KEY (`Tool_ID`),
  ADD KEY `fk_location` (`Tool_Location_ID`),
  ADD KEY `fk_sub_cat` (`Tool_SubCat_ID`),
  ADD KEY `fk_status` (`Tool_Status_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_location`
--
ALTER TABLE `tb_location`
  MODIFY `Locatio_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_status`
--
ALTER TABLE `tb_status`
  MODIFY `Status_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_sub_category`
--
ALTER TABLE `tb_sub_category`
  MODIFY `Sub_Category_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `tb_tools`
--
ALTER TABLE `tb_tools`
  MODIFY `Tool_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_sub_category`
--
ALTER TABLE `tb_sub_category`
  ADD CONSTRAINT `fk_main_category` FOREIGN KEY (`Main_Category_Abbv`) REFERENCES `tb_main_category` (`Main_Category_Abbv`) ON UPDATE CASCADE;

--
-- Constraints for table `tb_tools`
--
ALTER TABLE `tb_tools`
  ADD CONSTRAINT `fk_location` FOREIGN KEY (`Tool_Location_ID`) REFERENCES `tb_location` (`Locatio_ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_status` FOREIGN KEY (`Tool_Status_ID`) REFERENCES `tb_status` (`Status_ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_sub_cat` FOREIGN KEY (`Tool_SubCat_ID`) REFERENCES `tb_sub_category` (`Sub_Category_ID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
