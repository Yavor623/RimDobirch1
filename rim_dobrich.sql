-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2024 at 10:38 AM
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
-- Database: `rim_dobrich`
--

-- --------------------------------------------------------

--
-- Table structure for table `artefacts`
--

CREATE TABLE `artefacts` (
  `id` tinyint(6) NOT NULL,
  `museum_id` tinyint(2) NOT NULL,
  `section_id` tinyint(2) NOT NULL,
  `collection_id` tinyint(2) NOT NULL,
  `type_id` smallint(4) NOT NULL,
  `artefact_name` varchar(100) NOT NULL,
  `cipher` varchar(10) NOT NULL,
  `dateofregistration` date NOT NULL,
  `oldinventoryid` varchar(10) NOT NULL,
  `idofactofadmission` varchar(20) NOT NULL,
  `shape_id` smallint(6) NOT NULL,
  `material_id` smallint(6) NOT NULL,
  `technology` varchar(50) NOT NULL,
  `inscriptionordate` varchar(400) NOT NULL,
  `size` varchar(40) NOT NULL,
  `weight` varchar(40) NOT NULL,
  `era` varchar(50) NOT NULL,
  `conditionofartefact` varchar(30) NOT NULL,
  `amountoftheartefact` smallint(6) NOT NULL,
  `historicalenquiryid` smallint(6) NOT NULL,
  `sellerordonater` varchar(100) NOT NULL,
  `assesmentprotocol_id` varchar(10) NOT NULL,
  `storagelocation_id` tinyint(2) NOT NULL,
  `locationoffinding` varchar(125) NOT NULL,
  `idofphotonegative` varchar(10) NOT NULL,
  `registrationidofNMF` varchar(15) NOT NULL,
  `bibliographicenquiry` varchar(5) NOT NULL,
  `scientificpublications` varchar(5) NOT NULL,
  `conservationandrestorationid` varchar(5) NOT NULL,
  `participationinexhibitions` varchar(5) NOT NULL,
  `copiesmade` varchar(5) NOT NULL,
  `marriageprotocolandactofliquidation` varchar(5) NOT NULL,
  `madethescientificpassport` varchar(100) NOT NULL,
  `dateofcreationofthescientificpassport` date NOT NULL,
  `identification` varchar(75) NOT NULL,
  `pictureaddress` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artefacts`
--

INSERT INTO `artefacts` (`id`, `museum_id`, `section_id`, `collection_id`, `type_id`, `artefact_name`, `cipher`, `dateofregistration`, `oldinventoryid`, `idofactofadmission`, `shape_id`, `material_id`, `technology`, `inscriptionordate`, `size`, `weight`, `era`, `conditionofartefact`, `amountoftheartefact`, `historicalenquiryid`, `sellerordonater`, `assesmentprotocol_id`, `storagelocation_id`, `locationoffinding`, `idofphotonegative`, `registrationidofNMF`, `bibliographicenquiry`, `scientificpublications`, `conservationandrestorationid`, `participationinexhibitions`, `copiesmade`, `marriageprotocolandactofliquidation`, `madethescientificpassport`, `dateofcreationofthescientificpassport`, `identification`, `pictureaddress`) VALUES
(1, 1, 2, 1, 17, 'Икона на Иисус Христос', '12305', '2019-11-06', 'няма', '456', 0, 0, 'ръчна', 'няма', '90см x 45см', '4 кг', 'Средновековие', 'добро', 1, 32767, 'няма информация ', '2', 0, 'Област Добрич', 'няма', '1345', 'няма', 'няма', 'да', 'да', 'да', 'да', 'няма информация ', '2020-07-22', 'няма', 'златна икона на Иисус Христос.jpg'),
(2, 2, 2, 1, 31, 'чиния на аристократ', '10307', '2003-07-08', '0978', '34', 6, 3, 'ръчна', 'няма', '25см x 40см', '0,400 кг', 'Началото на 1 в. сл.Хр.', 'добро', 1, 0, 'няма', '3', 0, 'Община Каварна', 'няма', '16548', 'няма', 'няма', 'няма', 'няма', 'няма', 'няма', 'няма', '2003-07-10', 'няма', 'сребърна чиния.jpg'),
(7, 1, 1, 1, 17, 'Икона', '123', '2019-06-05', '12345', '124241', 1, 1, 'ръчна', 'няма', '1 м', ' 5 кг', 'X в.', 'добро', 1, 0, 'няма', '2', 0, 'Добрич', 'няма', '0987421', '13931', 'няма', 'добра', 'няма', 'няма', '98765', 'Елена Георгиева', '2019-06-17', 'няма', 'златна икона на Иисус Христос.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `assesmentprotocol`
--

CREATE TABLE `assesmentprotocol` (
  `assesmentpr_id` smallint(6) NOT NULL,
  `assesmentpr_date` date NOT NULL,
  `assesmentpr_price` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assesmentprotocol`
--

INSERT INTO `assesmentprotocol` (`assesmentpr_id`, `assesmentpr_date`, `assesmentpr_price`) VALUES
(1, '2020-06-11', '1200'),
(2, '2019-11-15', '100'),
(3, '2003-07-10', '40');

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

CREATE TABLE `collections` (
  `collection_id` smallint(6) NOT NULL,
  `collection_name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`collection_id`, `collection_name`) VALUES
(1, 'Занаяти');

-- --------------------------------------------------------

--
-- Table structure for table `description`
--

CREATE TABLE `description` (
  `shape_id` smallint(6) NOT NULL,
  `shape_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `description`
--

INSERT INTO `description` (`shape_id`, `shape_name`) VALUES
(1, 'Сфера');

-- --------------------------------------------------------

--
-- Table structure for table `materials`
--

CREATE TABLE `materials` (
  `material_id` smallint(6) NOT NULL,
  `material_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `materials`
--

INSERT INTO `materials` (`material_id`, `material_name`) VALUES
(1, 'желязо');

-- --------------------------------------------------------

--
-- Table structure for table `nameofmuseum`
--

CREATE TABLE `nameofmuseum` (
  `museum_id` tinyint(2) NOT NULL,
  `museum_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nameofmuseum`
--

INSERT INTO `nameofmuseum` (`museum_id`, `museum_name`) VALUES
(1, 'Регионален-исторически музей'),
(2, 'Архитектурен музей');

-- --------------------------------------------------------

--
-- Table structure for table `privileges`
--

CREATE TABLE `privileges` (
  `privilege_Id` tinyint(4) NOT NULL,
  `privilege_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `privileges`
--

INSERT INTO `privileges` (`privilege_Id`, `privilege_name`) VALUES
(1, 'Директор'),
(2, 'Работник');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `section_id` tinyint(2) NOT NULL,
  `section_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`section_id`, `section_name`) VALUES
(1, 'Средновековие'),
(2, 'Античност'),
(3, 'Ново Време');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`type_id`, `type_name`) VALUES
(1, 'аршини, метри'),
(2, 'бакъри'),
(3, 'бакърчета'),
(4, 'бастуни'),
(5, 'бъклици'),
(6, 'вериги за огнище'),
(7, 'вретена'),
(8, 'газеници'),
(9, 'геги'),
(10, 'глобус земя'),
(11, 'декоративни предмети'),
(12, 'джезвета и кафеници'),
(13, 'домакински предмети'),
(14, 'звънци, хлопки, чанове'),
(15, 'зъбци за пъкане'),
(16, 'ибрици м.'),
(17, 'икони'),
(18, 'камшици'),
(19, 'кани, канчета'),
(20, 'кантари, теглилки'),
(21, 'кофи, манерка'),
(22, 'кошници, панери, бонбониера м.'),
(23, 'кратуни'),
(24, 'крик'),
(25, 'кръклици'),
(26, 'кучешки гердани'),
(27, 'легени'),
(28, 'лъжици д.'),
(29, 'лъжичници д.'),
(30, 'мангали'),
(31, 'чиния'),
(32, 'g'),
(33, 'h'),
(38, 'd');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `privilegeId` tinyint(4) NOT NULL,
  `email` varchar(65) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `nameofmuseum_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`firstName`, `lastName`, `username`, `password`, `privilegeId`, `email`, `dateOfBirth`, `nameofmuseum_id`) VALUES
('Мартин', 'Цанев', 'Martin', 'mar123', 1, 'marto@abv.bg', '0000-00-00', 0),
('Явор', 'Марков', 'Yavor', '12345', 2, 'qvor@abv.bg', '2001-11-11', 0),
('Ивета', 'Иванова', 'Iveta', 'ive123', 2, 'ivi@abv.bg', '1994-07-06', 0),
('Светлана', 'Василева', 'Svetlana', 'sve123', 2, 'sve@abv.bg', '1965-07-15', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artefacts`
--
ALTER TABLE `artefacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assesmentprotocol`
--
ALTER TABLE `assesmentprotocol`
  ADD PRIMARY KEY (`assesmentpr_id`);

--
-- Indexes for table `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`collection_id`);

--
-- Indexes for table `description`
--
ALTER TABLE `description`
  ADD PRIMARY KEY (`shape_id`);

--
-- Indexes for table `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`material_id`);

--
-- Indexes for table `nameofmuseum`
--
ALTER TABLE `nameofmuseum`
  ADD PRIMARY KEY (`museum_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`section_id`) USING BTREE;

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD KEY `privilegeId` (`privilegeId`),
  ADD KEY `nameofmuseum_id` (`nameofmuseum_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `description`
--
ALTER TABLE `description`
  MODIFY `shape_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `materials`
--
ALTER TABLE `materials`
  MODIFY `material_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
