-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 17, 2018 at 07:55 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `NMD`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `AnswerID` int(11) NOT NULL,
  `SurveyID` int(11) NOT NULL,
  `PatientID` int(11) NOT NULL,
  `QuestionID` int(11) NOT NULL,
  `Answer` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`AnswerID`, `SurveyID`, `PatientID`, `QuestionID`, `Answer`) VALUES
(1, 1, 1, 101, 'Yes'),
(1, 1, 1, 102, 'Yes'),
(1, 1, 1, 1031, '1-3days'),
(1, 1, 1, 1032, '2'),
(1, 1, 1, 1033, '1'),
(1, 1, 1, 1034, 'A days ago'),
(1, 1, 1, 1035, 'Childhood'),
(1, 1, 1, 1036, '5'),
(1, 1, 1, 1041, 'Most of the day'),
(1, 1, 1, 1042, 'More than two weeks'),
(1, 1, 1, 1043, 'Every two months'),
(1, 1, 1, 1044, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `AppointmentID` int(11) NOT NULL,
  `PatientID` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `Time` time(6) DEFAULT NULL,
  `Doctor` varchar(100) DEFAULT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `PhoneNumber` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`AppointmentID`, `PatientID`, `Date`, `Time`, `Doctor`, `Location`, `PhoneNumber`) VALUES
(1, 1, '2016-11-10', '09:00:00.000000', 'Doctor 1', 'Location 1', '(555) 555-5555'),
(2, 1, '2016-11-10', '10:00:00.000000', 'Doctor 1', 'Location 2', '(555) 555-5555');

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis`
--

CREATE TABLE `diagnosis` (
  `DiagnosisID` int(11) NOT NULL,
  `Diagnosis` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diagnosis`
--

INSERT INTO `diagnosis` (`DiagnosisID`, `Diagnosis`) VALUES
(1, 'Attention Deficit / Hyperactivity Disorder (ADHD)'),
(2, 'Generalized Anxiety Disorder (GAD)'),
(3, 'Persistent Depressive Disorder');

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `DocumentID` int(11) NOT NULL,
  `DocumentName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `document`
--

INSERT INTO `document` (`DocumentID`, `DocumentName`) VALUES
(1, 'Intake Packet'),
(2, 'Symptoms Questionnaire');

-- --------------------------------------------------------

--
-- Table structure for table `facility`
--

CREATE TABLE `facility` (
  `FacilityID` int(11) NOT NULL,
  `FacilityNo` varchar(10) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `AddressLine1` varchar(100) DEFAULT NULL,
  `AddressLine2` varchar(100) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `State` varchar(3) DEFAULT NULL,
  `ZipCode` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facility`
--

INSERT INTO `facility` (`FacilityID`, `FacilityNo`, `Name`, `AddressLine1`, `AddressLine2`, `City`, `State`, `ZipCode`) VALUES
(1, '1', 'NMC OUTPATIENT STC', '302 WEST MAIN STREET', NULL, 'ST. CLAIRSVILLE', 'OH', '43950-8801'),
(2, '2', 'NMC OUTPATIENT STEUB', '601 BRADY AVENUE', NULL, 'STEUBENVILLE', 'OH', '43952'),
(3, '001', 'NMC OUTPATIENT STC', '302 WEST MAIN STREET', NULL, 'ST. CLAIRSVILLE', 'OH', '43950-8801');

-- --------------------------------------------------------

--
-- Table structure for table `insurance`
--

CREATE TABLE `insurance` (
  `InsuranceID` int(11) NOT NULL,
  `InsuranceNo` varchar(10) DEFAULT NULL,
  `InsuranceName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `insurance`
--

INSERT INTO `insurance` (`InsuranceID`, `InsuranceNo`, `InsuranceName`) VALUES
(1, '12', 'OH MEDICAID'),
(2, '3', 'ANTHEM BLUE CROSS BLUE SHIELD'),
(3, '13', 'MEDICARE'),
(4, '00S', 'UNITED BEHAVIORAL HEALTH'),
(5, '200', 'MEDICARE OHIO CGS'),
(6, '2', 'HEALTH PLAN BEH HEALTH UNIT'),
(7, '4', 'BLUE CROSS BLUE SHIELD WV'),
(8, '00Z', 'OHIO MEDICAID SECONDARY CLAIMS'),
(9, '120', 'WV MEDICAID'),
(10, '1', 'AETNA'),
(11, '8', 'HUMANA'),
(12, '35', 'HEALTHSMART BENEFIT SOLUTIONS'),
(13, '21', 'AETNA-MAGELLAN'),
(14, '00J', 'UNITED HEALTHCARE'),
(15, '23', 'UPMC'),
(16, '14', 'MEDICAL MUTUAL OF OHIO'),
(17, '11', 'MENTAL HEALTH NETWORK-MHNET'),
(18, '02D', 'ASSOCIATION AND SOCIETY INSURANCE'),
(19, '36', 'MOUNTAIN HEALTH TRUST'),
(20, '02T', 'UNICARE OF WEST VIRGINIA MEDICAID'),
(21, '26', 'OPTIMUM CHOICE'),
(22, '110', 'UNITED HEALTHCARE COMMUNITY PLAN'),
(23, '6', 'CIGNA BEH HEALTH HMO'),
(24, '0', 'SELF PAY'),
(25, '37', 'BEACON HEALTH STRATEGIES MEDICAID'),
(26, '15', 'TRICARE CHAMPUS'),
(27, '29', 'AARP-UNITED HEALTHCARE');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `PatientID` int(11) NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `MRN` varchar(10) DEFAULT NULL,
  `LastName` varchar(30) DEFAULT NULL,
  `FirstName` varchar(20) DEFAULT NULL,
  `MiddleName` varchar(20) DEFAULT NULL,
  `AddressLine1` varchar(100) DEFAULT NULL,
  `AddressLine2` varchar(100) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `State` varchar(3) DEFAULT NULL,
  `ZipCode` varchar(10) DEFAULT NULL,
  `HomePhone` varchar(15) DEFAULT NULL,
  `WorkPhone` varchar(15) DEFAULT NULL,
  `CellPhone` varchar(15) DEFAULT NULL,
  `SSN` varchar(100) DEFAULT NULL,
  `Gender` char(1) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `AmountPending` decimal(19,4) DEFAULT NULL,
  `AmountDue` decimal(19,4) DEFAULT NULL,
  `TotalAR` decimal(19,4) DEFAULT NULL,
  `LastChargeDate` date DEFAULT NULL,
  `LastReceiptDate` date DEFAULT NULL,
  `Comments` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`PatientID`, `Email`, `Password`, `MRN`, `LastName`, `FirstName`, `MiddleName`, `AddressLine1`, `AddressLine2`, `City`, `State`, `ZipCode`, `HomePhone`, `WorkPhone`, `CellPhone`, `SSN`, `Gender`, `DOB`, `AmountPending`, `AmountDue`, `TotalAR`, `LastChargeDate`, `LastReceiptDate`, `Comments`) VALUES
(1, NULL, NULL, '8173', 'Skipper', 'Francine', NULL, '1112 Butler st', NULL, 'BETHESDA', 'OH', '43719', '740-782-1045', NULL, '740-213-4601', '-1111', 'F', '1983-12-02', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL),
(2, NULL, NULL, '1893', 'Keagle', 'Lavada', NULL, '1112 Butler st', NULL, 'MORRISTOWN', 'OH', '43759', '740-526-6409', NULL, NULL, '-1111', 'F', '1983-12-02', '0.0000', '-43.9500', '-43.9500', '2015-04-28', '2015-04-30', NULL),
(3, NULL, NULL, '8261', 'Rosenthal', 'Milagros', NULL, '1112 Butler st', NULL, 'BELLAIRE', 'OH', '43906', '304-218-4688', NULL, '740-340-5106', '-1111', 'M', '1983-12-02', '560.4800', '0.0000', '560.4800', '2015-05-14', NULL, 'PT CAN NOT READ,    JAIME DONAHUE WILL  ASSIST-HAND TO HER'),
(4, NULL, NULL, '8397', 'Neumeister', 'Brooke', NULL, '1112 Butler st', NULL, 'BELLAIRE', 'OH', '43906', '740-296-8710', NULL, NULL, '-1111', 'F', '1983-12-02', '225.0000', '0.0000', '225.0000', '2015-05-08', NULL, NULL),
(5, NULL, NULL, '8365', 'Pratts', 'Dawne', NULL, '1112 Butler st', NULL, 'BRIDGEPORT', 'OH', '43912', '740-391-2824', NULL, '740-391-2824', '-1111', 'M', '1983-12-02', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL),
(6, NULL, NULL, '6074', 'Rockhill', 'Milly', NULL, '1112 Butler st', NULL, 'CAMBRIDGE', 'OH', '43725', '740-801-8235', NULL, NULL, '-1111', 'F', '1983-12-02', '0.0000', '0.0000', '0.0000', '2015-04-30', NULL, NULL),
(7, NULL, NULL, '8373', 'Hosch', 'Calandra', NULL, '1112 Butler st', NULL, 'TILTONSVILLE', 'OH', '43963', '740-457-2424', NULL, NULL, '-1111', 'F', '1983-12-02', '78.0000', '0.0000', '78.0000', '2015-05-14', NULL, NULL),
(8, NULL, NULL, '1772', 'Mcpheeters', 'Leighann', NULL, '1112 Butler st', NULL, 'WHEELING', 'WV', '26003', '740-458-1579', NULL, '304-650-3743', '-1111', 'M', '1983-12-02', '225.0000', '534.1400', '759.1400', '2015-05-11', NULL, NULL),
(9, NULL, NULL, '6773', 'Donovan', 'Marguerita', NULL, '1112 Butler st', NULL, 'SHADYSIDE', 'OH', '43947', '740-827-7325', NULL, NULL, '-1111', 'M', '1983-12-02', '0.0000', '15.0000', '15.0000', '2015-04-29', '2015-04-30', NULL),
(10, NULL, NULL, '2156', 'Mcquaig', 'Elmira', NULL, '1112 Butler st', NULL, 'POWHATAN POINT', 'OH', '43942', '740-795-5770', NULL, '740-213-5653', '-1111', 'F', '1983-12-02', '0.0000', '0.0000', '0.0000', '2015-01-31', NULL, NULL),
(11, NULL, NULL, '7405', 'Deanda', 'Janine', NULL, '1112 Butler st', NULL, 'POWHATAN POINT', 'OH', '43942', '740-298-3452', NULL, NULL, '-1111', 'F', '1983-12-02', '0.0000', '0.0000', '0.0000', '2015-01-31', NULL, NULL),
(12, NULL, NULL, '578', 'Denning', 'Tatiana', NULL, '1112 Butler st', NULL, 'WHEELING', 'WV', '26003', '304-242-2376', NULL, '304-559-3895', '-1111', 'M', '1983-12-02', '0.0000', '67.2600', '67.2600', '2015-02-18', '2015-03-31', NULL),
(13, NULL, NULL, '2139', 'Rozzi', 'Andrea', NULL, '1112 Butler st', NULL, 'BETHESDA', 'OH', '43719', '330-599-9566', NULL, '614-359-0530', '-1111', 'F', '1983-12-02', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL),
(14, NULL, NULL, '3487', 'Kleckner', 'Kathlene', NULL, '1112 Butler st', NULL, 'ST CLAIRSVILLE', 'OH', '43950', '304-780-8009', NULL, '304-780-8009', '-1111', 'F', '1983-12-02', '0.0000', '50.0000', '50.0000', '2015-04-30', '2015-04-30', NULL),
(15, NULL, NULL, '5938', 'Claflin', 'Almeta', NULL, '1112 Butler st', NULL, 'BARNESVILLE', 'OH', '43713', '740-238-8128', NULL, NULL, '-1111', 'F', '1983-12-02', '684.7100', '42.6600', '727.3700', '2015-05-14', NULL, NULL),
(16, NULL, NULL, '603', 'Tarbell', 'Hue', NULL, '1112 Butler st', NULL, 'BELLAIRE', 'OH', '43906', '740-671-9212', NULL, NULL, '-1111', 'M', '1983-12-02', '412.8800', '147.8100', '560.6900', '2015-05-07', '2015-04-30', 'PATIENT WILL PAY 40.A MONTH'),
(17, NULL, NULL, '1138', 'Biro', 'Gabriel', NULL, '1112 Butler st', NULL, 'BARNESVILLE', 'OH', '43713', '740-827-7809', NULL, NULL, '-1111', 'F', '1983-12-02', '26.9800', '15.0400', '42.0200', '2015-04-28', NULL, NULL),
(18, NULL, NULL, '1081', 'Rideaux', 'Dalene', NULL, '1112 Butler st', NULL, 'POWHATAN POINT', 'OH', '43942', '740-795-5349', NULL, '740-310-1489', '-1111', 'M', '1983-12-02', '20.0000', '0.0000', '20.0000', '2015-03-31', NULL, NULL),
(19, NULL, NULL, '2577', 'Weintraub', 'Lakeesha', NULL, '1112 Butler st', NULL, 'MCMECHEN', 'WV', '26040', '304-780-7492', NULL, NULL, '-1111', 'M', '1983-12-02', '150.0000', '-30.0000', '120.0000', '2015-04-30', '2015-02-20', NULL),
(20, NULL, NULL, '728', 'Gammage', 'Doretta', NULL, '1112 Butler st', NULL, 'BELLAIRE', 'OH', '43906', '740-676-6654', NULL, '740-310-9711', '-1111', 'F', '1983-12-02', '0.0000', '-12.0000', '-12.0000', '2015-03-31', '2015-03-31', NULL),
(21, NULL, NULL, '1497', 'Purves', 'Sabrina', NULL, '1112 Butler st', NULL, 'WHEELING', 'WV', '26003', '304-905-0159', NULL, '304-238-8366', '-1111', 'F', '1983-12-02', '600.0000', '2383.0700', '2983.0700', '2015-05-19', NULL, 'LEFT MESSAGE ON CELL04/30/15:REFER TO   GUAR NOTE:MW'),
(22, NULL, NULL, '828', 'Ariola', 'Kimberlie', NULL, '1112 Butler st', NULL, 'CARROLLTON', 'OH', '44165', '304-374-1560', NULL, NULL, '-1111', 'M', '1983-12-02', '0.0000', '0.0000', '0.0000', '2015-04-30', NULL, NULL),
(23, NULL, NULL, '7957', 'Voris', 'Lawerence', NULL, '1112 Butler st', NULL, 'MOUNDSVILLE', 'WV', '26041', '304-830-0955', NULL, NULL, '-1111', 'M', '1983-12-02', '0.0000', '0.0000', '0.0000', '2015-04-28', NULL, NULL),
(24, NULL, NULL, '124', 'Campuzano', 'Hyacinth', NULL, '1112 Butler st', NULL, 'HOLLOWAY', 'OH', '43985', '740-968-7080', NULL, NULL, '-1111', 'M', '1983-12-02', '0.0000', '0.0000', '0.0000', '2015-04-30', NULL, NULL),
(25, NULL, NULL, '1502', 'Uber', 'Felicita', NULL, '1112 Butler st', NULL, 'NEW CUMBERLAND', 'WV', '26047', '304-564-5867', NULL, '231-510-5296', '-1111', 'M', '1983-12-02', '150.0000', '0.0000', '150.0000', '2015-04-28', '2015-02-11', NULL),
(26, NULL, NULL, '7178', 'Aquilino', 'Ardell', NULL, '1112 Butler st', NULL, 'MARTINS FERRY', 'OH', '43935', '740-609-3293', NULL, '740-312-0420', '-1111', 'F', '1983-12-02', '558.3300', '0.0000', '558.3300', '2015-05-11', NULL, NULL),
(27, NULL, NULL, '526', 'Bohrer', 'Willia', NULL, '1112 Butler st', NULL, 'MOUNDSVILLE', 'WV', '26041', '304-845-8241', NULL, NULL, '-1111', 'M', '1983-12-02', '110.1700', '115.4300', '225.6000', '2015-04-30', NULL, NULL),
(28, NULL, NULL, '430', 'Mcgrail', 'Josphine', NULL, '1112 Butler st', NULL, 'WHEELING', 'WV', '26003', '304-905-0895', NULL, '304-551-1285', '-1111', 'M', '1983-12-02', '0.0000', '65.0000', '65.0000', '2015-04-28', '2015-04-30', 'OWES $165.00 1/8/15 HAS $20 COPAY'),
(29, NULL, NULL, '1738', 'Hegna', 'Sueann', NULL, '1112 Butler st', NULL, 'CAMERON', 'WV', '26033', '304-686-3343', NULL, '304-551-3575', '-1111', 'M', '1983-12-02', '1230.0000', '0.0000', '1230.0000', '2015-04-30', '2014-11-28', 'PATIENT NOW HAS WV M'),
(30, NULL, NULL, '3099', 'Law', 'Manuela', NULL, '1112 Butler st', NULL, 'BETHESDA', 'OH', '43719', '740-298-0519', NULL, NULL, '-1111', 'M', '1983-12-02', '362.7400', '0.0000', '362.7400', '2015-05-11', NULL, NULL),
(31, NULL, NULL, '8515', 'Heidel', 'Jamila', NULL, '1112 Butler st', NULL, 'JEWETT', 'OH', '43986', '740-945-1774', NULL, NULL, '-1111', 'M', '1983-12-02', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL),
(32, NULL, NULL, '8516', 'Ritacco', 'Aron', NULL, '1112 Butler st', NULL, 'JEWETT', 'OH', '43986', '740-945-1774', NULL, NULL, '-1111', 'F', '1983-12-02', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL),
(33, NULL, NULL, '466', 'Dalzell', 'Trinidad', NULL, '1112 Butler st', NULL, 'MOUNDSVILLE', 'WV', '26041', '304-312-8677', NULL, NULL, '-1111', 'F', '1983-12-02', '10.0000', '0.0000', '10.0000', '2015-03-31', NULL, NULL),
(34, NULL, NULL, '8420', 'Germaine', 'Jacelyn', NULL, '1112 Butler st', NULL, 'BRILLIANT', 'OH', '43913', '740-274-3451', NULL, NULL, '-1111', 'M', '1983-12-02', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL),
(35, NULL, NULL, '2870', 'Heyen', 'Caitlin', NULL, '1112 Butler st', NULL, 'WHEELING', 'WV', '26003', '352-620-5763', NULL, NULL, '-1111', 'M', '1983-12-02', '525.0000', '138.7700', '663.7700', '2015-04-28', NULL, NULL),
(36, NULL, NULL, '1760', 'Holler', 'Johnathan', NULL, '1112 Butler st', NULL, 'MARTINS FERRY', 'OH', '43935', '740-738-0764', '740-546-3620', '304-780-5733', '-1111', 'M', '1983-12-02', '0.0000', '0.0000', '0.0000', '2015-04-30', NULL, NULL),
(37, NULL, NULL, '1373', 'Truss', 'Lavona', NULL, '1112 Butler st', NULL, 'WHEELING', 'WV', '26003', '304-232-0477', NULL, '304-281-2098', '-1111', 'F', '1983-12-02', '300.0000', '24.1400', '324.1400', '2015-05-11', '2015-03-31', NULL),
(38, NULL, NULL, '7063', 'Hermsen', 'Natalia', NULL, '1112 Butler st', NULL, 'DILLONVALE', 'OH', '43917', '740-769-1410', NULL, NULL, '-1111', 'M', '1983-12-02', '0.0000', '0.0000', '0.0000', '2014-10-31', NULL, NULL),
(39, NULL, NULL, '1526', 'Albers', 'Stormy', NULL, '1112 Butler st', NULL, 'SHADYSIDE', 'OH', '43947', '740-671-9153', NULL, NULL, '-1111', 'F', '1983-12-02', '0.0000', '0.0000', '0.0000', '2015-02-28', '2014-12-13', NULL),
(40, NULL, NULL, '1310', 'Quick', 'Lionel', NULL, '1112 Butler st', NULL, 'SHADYSIDE', 'OH', '43947', '740-232-8997', NULL, '740-232-8997', '-1111', 'F', '1983-12-02', '130.0000', '-40.3800', '89.6200', '2015-04-30', NULL, NULL),
(41, NULL, NULL, '3994', 'Tarrance', 'Carole', NULL, '1112 Butler st', NULL, 'BARNESVILLE', 'OH', '43713', '740-238-9626', NULL, NULL, '-1111', 'F', '1983-12-02', '0.0000', '0.0000', '0.0000', '2015-02-28', NULL, NULL),
(42, NULL, NULL, '8599', 'Dipasquale', 'Nichelle', NULL, '1112 Butler st', NULL, 'MOUNDSVILLE', 'WV', '26041', '304-551-3925', NULL, NULL, '-1111', 'M', '1983-12-02', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL),
(43, NULL, NULL, '3105', 'Cogdell', 'Tawny', NULL, '1112 Butler st', NULL, 'BELMONT', 'OH', '43718', '740-391-1721', NULL, NULL, '-1111', 'F', '1983-12-02', '405.0000', '0.0000', '405.0000', '2015-05-14', '2015-05-18', NULL),
(44, NULL, NULL, '7927', 'Arnott', 'Pierre', NULL, '1112 Butler st', NULL, 'YORKVILLE', 'OH', '43971', '740-317-6756', NULL, NULL, '-1111', 'M', '1983-12-02', '168.7500', '0.0000', '168.7500', '2015-05-08', NULL, NULL),
(45, NULL, NULL, '2070', 'Drozd', 'Vallie', NULL, '1112 Butler st', NULL, 'BRIDGEPORT', 'OH', '43912', '740-391-2824', NULL, NULL, '-1111', 'F', '1983-12-02', '884.0000', '1404.0000', '2288.0000', '2015-05-08', '2014-04-30', 'PT STATES SHE UPDATEINS - 01/07/15'),
(46, NULL, NULL, '3295', 'Blazier', 'Ofelia', NULL, '1112 Butler st', NULL, 'SHADYSIDE', 'OH', '43947', '740-232-8997', NULL, NULL, '-1111', 'M', '1983-12-02', '0.0000', '0.0000', '0.0000', '2015-04-30', NULL, NULL),
(47, NULL, NULL, '18', 'Dudas', 'Evangeline', NULL, '1112 Butler st', NULL, 'MOUNDSVILLE', 'WV', '26041', '304-238-4724', NULL, NULL, '-1111', 'F', '1983-12-02', '300.0000', '-105.0000', '195.0000', '2015-04-28', '2014-09-18', NULL),
(48, NULL, NULL, '5570', 'Pascarella', 'Neely', NULL, '1112 Butler st', NULL, 'YORKVILLE', 'OH', '43971', '740-859-3064', NULL, '740-278-7171', '-1111', 'M', '1983-12-02', '82.3000', '0.0000', '82.3000', '2015-04-28', NULL, NULL),
(49, NULL, NULL, '347', 'Ingles', 'Lina', NULL, '1112 Butler st', NULL, 'WHEELING', 'WV', '26003', '412-759-0777', NULL, '304-233-2157', '-1111', 'F', '1983-12-02', '0.0000', '0.0000', '0.0000', '2015-02-28', NULL, NULL),
(50, NULL, NULL, '6876', 'Bufford', 'Susanna', NULL, '1112 Butler st', NULL, 'BELLAIRE', 'OH', '43906', '740-325-1001', NULL, NULL, '-1111', 'M', '1983-12-02', '0.0000', '0.0000', '0.0000', '2015-04-30', NULL, NULL),
(51, NULL, NULL, '659', 'Fountaine', 'Michal', NULL, '1112 Butler st', NULL, 'MARTINS FERRY', 'OH', '43935', '740-738-0382', NULL, NULL, '-1111', 'F', '1983-12-02', '955.0000', '135.0000', '1090.0000', '2015-05-11', '2015-05-18', 'PT PAID CO-PAY ON   ALL OLD DATES IN    OFFICE'),
(52, NULL, NULL, '1245', 'Staley', 'Anton', NULL, '1112 Butler st', NULL, 'BELLAIRE', 'OH', '43906', '740-827-8711', NULL, '304-551-1205', '-1111', 'M', '1983-12-02', '0.0000', '0.0000', '0.0000', '2015-02-28', NULL, NULL),
(53, NULL, NULL, '2758', 'Sjoberg', 'Katheleen', NULL, '1112 Butler st', NULL, 'DILLONVALE', 'OH', '43917', '740-769-0016', NULL, NULL, '-1111', 'F', '1983-12-02', '150.0000', '61.7200', '211.7200', '2015-04-28', '2015-02-28', NULL),
(54, NULL, NULL, '4073', 'Rethman', 'Joni', NULL, '1112 Butler st', NULL, 'MOUNDSVILLE', 'WV', '26041', '304-845-4605', NULL, NULL, '-1111', 'M', '1983-12-02', '0.0000', '0.0000', '0.0000', '2014-05-30', NULL, NULL),
(55, NULL, NULL, '5316', 'Joy', 'Emmy', NULL, '1112 Butler st', NULL, 'ST. CLAIRSVILLE', 'OH', '43950', '740-827-1247', NULL, NULL, '-1111', 'M', '1983-12-02', '104.0000', '0.0000', '104.0000', '2015-05-08', NULL, NULL),
(56, NULL, NULL, '3343', 'Hennigan', 'Xuan', NULL, '1112 Butler st', NULL, 'NEW MARTINSVILLE', 'WV', '26155', '304-455-5719', NULL, NULL, '-1111', 'F', '1983-12-02', '0.0000', '40.0000', '40.0000', '2015-03-31', '2015-03-31', NULL),
(57, NULL, NULL, '8641', 'Puff', 'Mckinley', NULL, '1112 Butler st', NULL, 'WHEELING', 'WV', '26003', '304-215-3394', NULL, NULL, '-1111', 'M', '1983-12-02', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL),
(58, NULL, NULL, '3445', 'Hazlewood', 'Lucilla', NULL, '1112 Butler st', NULL, 'ST. CLAIRSVILLE', 'OH', '43950', '740-310-6474', NULL, NULL, '-1111', 'F', '1983-12-02', '2122.7600', '-215.2500', '1907.5100', '2015-05-13', NULL, NULL),
(59, NULL, NULL, '8514', 'Rochester', 'Kimiko', NULL, '1112 Butler st', NULL, 'BEALLSVILLE', 'OH', '43716', '740-458-0173', NULL, NULL, '-1111', 'F', '1983-12-02', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL),
(60, NULL, NULL, '8582', 'Tober', 'Rosalyn', NULL, '1112 Butler st', NULL, 'BARNESVILLE', 'OH', '43713', '740-338-1631', NULL, NULL, '-1111', 'F', '1983-12-02', '222.0000', '0.0000', '222.0000', '2015-05-14', NULL, NULL),
(61, NULL, NULL, '1232', 'Duck', 'Kim', NULL, '1112 Butler st', NULL, 'BARNESVILLE', 'OH', '43713', '740-425-2230', NULL, NULL, '-1111', 'F', '1983-12-02', '120.0000', '0.0000', '120.0000', '2015-03-31', NULL, NULL),
(62, NULL, NULL, '8418', 'Navarrette', 'Tamisha', NULL, '1112 Butler st', NULL, 'BELLAIRE', 'OH', '43906', '740-310-0115', NULL, NULL, '-1111', 'M', '1983-12-02', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL),
(63, NULL, NULL, '6574', 'Beachum', 'Beckie', NULL, '1112 Butler st', NULL, 'BLOOMINGDALE', 'OH', '43910', '740-264-6679', NULL, NULL, '-1111', 'F', '1983-12-02', '0.0000', '0.0000', '0.0000', '2015-02-28', NULL, NULL),
(64, NULL, NULL, '2453', 'Sell', 'Alec', NULL, '1112 Butler st', NULL, 'WOODSFIELD', 'OH', '43793', '740-213-7479', NULL, NULL, '-1111', 'M', '1983-12-02', '156.0000', '250.0000', '406.0000', '2015-03-31', NULL, NULL),
(65, NULL, NULL, '4037', 'Aguilera', 'Warren', NULL, '1112 Butler st', NULL, 'FORD CITY', 'PA', '16226', '724-763-9203', NULL, NULL, '-1111', 'F', '1983-12-02', '0.0000', '-320.0000', '-320.0000', '2015-02-28', '2015-02-28', 'NO AUTH NEEDED      UNLIMITED VISITS'),
(66, NULL, NULL, '5544', 'Gallion', 'Chastity', NULL, '1112 Butler st', NULL, 'BETHESDA', 'OH', '43719', '740-510-0476', NULL, NULL, '-1111', 'F', '1983-12-02', '130.0000', '0.0000', '130.0000', '2015-05-12', NULL, NULL),
(67, NULL, NULL, '1934', 'Myerson', 'Violeta', NULL, '1112 Butler st', NULL, 'ST. CLAIRSVILLE', 'OH', '43950', '740-310-6474', NULL, '740-310-6474', '-1111', 'M', '1983-12-02', '2122.7600', '-215.2500', '1907.5100', '2015-05-13', NULL, NULL),
(68, NULL, NULL, '6524', 'Ramer', 'Tyrone', NULL, '1112 Butler st', NULL, 'ST.CLAIRSVILLE', 'OH', '43950', '740-699-0779', NULL, NULL, '-1111', 'F', '1983-12-02', '1208.2500', '0.0000', '1208.2500', '2015-05-19', NULL, NULL),
(69, NULL, NULL, '7710', 'Meissner', 'Mazie', NULL, '1112 Butler st', NULL, 'BYESVILLE', 'OH', '43723', '740-241-9082', NULL, NULL, '-1111', 'M', '1983-12-02', '0.0000', '0.0000', '0.0000', '2015-03-31', NULL, NULL),
(70, NULL, NULL, '8000', 'Woolverton', 'Laci', NULL, '1112 Butler st', NULL, 'BELLAIRE', 'OH', '43906', '740-325-1488', NULL, NULL, '-1111', 'M', '1983-12-02', '0.0000', '30.0000', '30.0000', '2015-04-30', '2015-04-30', NULL),
(71, NULL, NULL, '8598', 'Hannold', 'Doreen', NULL, '1112 Butler st', NULL, 'ST CLAIRSVILLE', 'OH', '43950', '440-281-3386', NULL, NULL, '-1111', 'F', '1983-12-02', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL),
(72, NULL, NULL, '5932', 'Yanez', 'Ila', NULL, '1112 Butler st', NULL, 'WHEELING', 'WV', '26003', '304-232-3803', NULL, NULL, '-1111', 'M', '1983-12-02', '150.0000', '0.0000', '150.0000', '2015-04-28', NULL, NULL),
(73, NULL, NULL, '2434', 'Pierri', 'Herman', NULL, '1112 Butler st', NULL, 'WHEELING', 'WV', '26003', '304-639-4161', NULL, '304-639-4161', '-1111', 'F', '1983-12-02', '0.0000', '0.0000', '0.0000', '2015-01-19', NULL, NULL),
(74, NULL, NULL, '6826', 'Guider', 'Carol', NULL, '1112 Butler st', NULL, 'JACOBSBURG', 'OH', '43933', '740-298-2601', NULL, NULL, '-1111', 'M', '1983-12-02', '0.0000', '0.0000', '0.0000', '2015-04-28', '2015-04-28', NULL),
(75, NULL, NULL, '7653', 'Ocasio', 'Sarina', NULL, '1112 Butler st', NULL, 'ST CLAIRSVILLE', 'OH', '43950', '740-310-0427', NULL, NULL, '-1111', 'M', '1983-12-02', '225.0000', '30.4400', '255.4400', '2015-04-29', NULL, NULL),
(76, NULL, NULL, '3539', 'Cocke', 'Nydia', NULL, '1112 Butler st', NULL, 'POWHATAN POINT', 'OH', '43942', '740-296-3482', NULL, NULL, '-1111', 'F', '1983-12-02', '0.0000', '1467.6600', '1467.6600', '2015-01-31', '2015-01-31', '60.00 COPAY FOR     MED CHECK'),
(77, NULL, NULL, '1402', 'Vinzant', 'Karly', NULL, '1112 Butler st', NULL, 'WEIRTON', 'WV', '26062', '304-914-5514', NULL, NULL, '-1111', 'M', '1983-12-02', '0.0000', '0.0000', '0.0000', '2015-04-28', NULL, NULL),
(78, NULL, NULL, '3653', 'Holmgren', 'Oretha', NULL, '1112 Butler st', NULL, 'TRIADELPHIA', 'WV', '26059', '304-551-5266', NULL, NULL, '-1111', 'M', '1983-12-02', '602.7200', '78.1400', '680.8600', '2015-04-28', NULL, NULL),
(79, NULL, NULL, '8161', 'Lauritzen', 'Hermelinda', NULL, '1112 Butler st', NULL, 'GLENDALE', 'WV', '26038', '304-810-4135', NULL, '304-771-2189', '-1111', 'F', '1983-12-02', '225.0000', '0.0000', '225.0000', '2015-04-28', NULL, NULL),
(81, NULL, NULL, 'xxxx', 'John', 'Smith', NULL, '1112 Butler st', NULL, 'St. Clairsville', 'OH', '44026', '740-xxx-xxxx', NULL, NULL, '-1111', 'F', '1983-12-02', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL),
(83, 'anasneyaz@gmail.com', '1234', '2345', 'Neyaz', 'Anas', 'Hosain', '1112 Butler st', 'townhouse', 'Pittsburgh', 'PA', '15220', '6464044009', '7678776567', '987898765', '-1111', 'M', '1983-12-02', '0.0000', '0.0000', '0.0000', '2015-04-09', '2016-01-01', 'None'),
(84, ',kbjlnk', '', '', '', '', '', '1112 Butler st', '', '', '', '', NULL, '', '', '-1111', NULL, '1983-12-02', NULL, NULL, NULL, NULL, NULL, NULL),
(90, '', '', '2232', '', '', '', '1112 Butler st', '', '', '', '', '', '', '', '-1111', '', '1983-12-02', NULL, NULL, NULL, NULL, NULL, NULL),
(97, '', '', '0000', '', '', '', '1112 Butler st', '', '', '', '', '', '', '', '-1111', '', '1983-12-02', NULL, NULL, NULL, NULL, NULL, NULL),
(99, '', '', NULL, '', '', '', '1112 Butler st', '', '', '', '', '', '', '', '-1111', '', '1983-12-02', NULL, NULL, NULL, NULL, NULL, NULL),
(103, '', '', '1111', '', '', '', '1112 Butler st', '', '', '', '', '', '', '', '-1111', '', '1983-12-02', NULL, NULL, NULL, NULL, NULL, NULL),
(105, '', '', '8888', '', '', '', '1112 Butler st', '', '', '', '', '', '', '', '-1111', '', '1983-12-02', NULL, NULL, NULL, NULL, NULL, NULL),
(107, '', '', '9999', '', '', '', '1112 Butler st', '', '', '', '', '', '', '', '-1111', '1', '1983-12-02', NULL, NULL, NULL, NULL, NULL, NULL),
(109, '', '', '1234', '', '', '', '1112 Butler st', '', '', '', '', '', '', '', '-1111', 'F', '1983-12-02', NULL, NULL, NULL, NULL, NULL, NULL),
(110, '', '', '7777', '', '', '', '1112 Butler st', '', '', '', '', '', '', '', '-1111', 'M', '1983-12-02', NULL, NULL, NULL, NULL, NULL, NULL),
(111, '', '', '4444', '', '', '', '1112 Butler st', '', '', '', '', '', '', '', '-1111', 'M', '1983-12-02', NULL, NULL, NULL, NULL, NULL, NULL),
(113, '', '', '0', '', '', '', '1112 Butler st', '', '', '', '', '', '', '', '-1111', 'M', '1983-12-02', NULL, NULL, NULL, NULL, NULL, NULL),
(114, '', '', '3', '', '', '', '1112 Butler st', '', '', '', '', '', '', '', '-1111', 'M', '1983-12-02', NULL, NULL, NULL, NULL, NULL, NULL),
(115, '', '1000:1eeth9v/sXDyBCcusp4Riw7pUtLzpzwr:i4siWoLUO4CLjLkee4Z7imzpqOi74VU6', '1', '', '', '', '1112 Butler st', '', '', '', '', '', '', '', '-1111', 'F', '1983-12-02', NULL, NULL, NULL, NULL, NULL, NULL),
(121, '', '1000:BZNCUqpqM/bJA6cC5gjRDoINUo5RhPcu:WUbEjvqpXXJul+aLb9u+DRXe0o9eShva', '1223', '', '', '', '1112 Butler st', '', '', '', '', '', '', '', '-1111', 'M', '1983-12-02', NULL, NULL, NULL, NULL, NULL, NULL),
(125, '', '1000:LvjDyRtZ7QxMXKr0K+2QcuVcuZhsTHJs:Z8Roj12apvPeWm8PRVIFVNNHHQvs5opw', '1221', '', '', '', '1112 Butler st', '', '', '', '', '', '', '', '-1111', 'M', '1983-12-02', NULL, NULL, NULL, NULL, NULL, NULL),
(126, '', '1000:lsJwY3Gcz+UPDfbuitZOHTXxQ9L9K3oJ:ygEAIwHk7UPHRIJumElonWk52y6JuC9Z', '1233', '', '', '', '1112 Butler st', '', '', '', '', '', '', '', '-1111', 'F', '1983-12-02', NULL, NULL, NULL, NULL, NULL, NULL),
(135, '', '1000:MaAuJ78WQgKoG0N5EitdbN6z8i0Nq3T8:mjk28sMOxprcIgDO6ECM9wyim2M2MK4N', '5566', '', '', '', '1112 Butler st', '', '', '', '', '', '', '', '-1111', 'M', '1983-12-02', NULL, NULL, NULL, NULL, NULL, NULL),
(137, '', '1000:kubZaEqcAhauvegGs4AMhawrAEEkvPxI:EjudZ0KXHkfByIreeD+UVMO4DxB7xH9w', '8899', '', '', '', '1112 Butler st', '', '', '', '', '', '', '', '-1111', 'M', '1983-12-02', NULL, NULL, NULL, NULL, NULL, NULL),
(138, '', '1000:DWGMaz5eNdJdvp3hK0aXOMwKrQe3YhwV:7IQjqEda7whO+iOBMWGG6g8D9KIhSt1F', '9911', '', '', '', '1112 Butler st', '', '', '', '', '', '', '', '-1111', 'M', '1983-12-02', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL),
(139, '', '1000:IddGtSpTtqamw28PE1hy+HfBf8Ik9i0m:81zEJz0QkynPF5Ayq1tTrz8V+Kmket27', '1100', '', '', '', '1112 Butler st', '', '', '', '', '', '', '', '-1111', 'M', '1983-12-02', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL),
(140, 'anas@gmail.com', '1000:ioIiYViYC3Y0y38eihsFYggdAM8CvpLz:63Q+3tpiIBX+DpASE/1UXcOLIBfrTeYG', '1189', 'dcwEFW', 'WFWEw', 'WVERVER', '1112 Butler st', '', '', '', '', '2122545465', '', '', '-1111', 'M', '1983-12-02', '0.0000', '0.0000', '0.0000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `patientdiagnosis`
--

CREATE TABLE `patientdiagnosis` (
  `PatientID` int(11) NOT NULL,
  `DiagnosisID` int(11) NOT NULL,
  `CreatedDate` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patientdiagnosis`
--

INSERT INTO `patientdiagnosis` (`PatientID`, `DiagnosisID`, `CreatedDate`) VALUES
(1, 1, '2016-06-27 01:15:15.497000');

-- --------------------------------------------------------

--
-- Table structure for table `patientdocument`
--

CREATE TABLE `patientdocument` (
  `PatientDocumentID` int(11) NOT NULL,
  `PatientID` int(11) NOT NULL,
  `DocumentID` int(11) NOT NULL,
  `CreatedDate` datetime(6) DEFAULT NULL,
  `Status` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patientdocument`
--

INSERT INTO `patientdocument` (`PatientDocumentID`, `PatientID`, `DocumentID`, `CreatedDate`, `Status`) VALUES
(1, 3, 1, '2016-06-26 19:08:47.627000', 'P'),
(2, 3, 2, '2016-06-26 19:14:22.237000', 'P'),
(3, 3, 1, '2016-06-26 19:22:54.740000', 'P'),
(4, 4, 1, '2016-06-26 19:23:10.217000', 'P'),
(5, 1, 1, '2016-06-26 19:32:18.347000', 'P'),
(6, 1, 1, '2016-06-27 01:12:36.103000', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `patientsymptom`
--

CREATE TABLE `patientsymptom` (
  `PatientID` int(11) NOT NULL,
  `SymptomID` int(11) NOT NULL,
  `CreatedDate` datetime(6) DEFAULT NULL,
  `Score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patientsymptom`
--

INSERT INTO `patientsymptom` (`PatientID`, `SymptomID`, `CreatedDate`, `Score`) VALUES
(1, 2, '2016-06-27 01:31:55.897000', NULL),
(1, 4, '2016-06-27 01:31:49.060000', NULL),
(1, 5, '2016-06-27 01:32:52.617000', 5),
(1, 6, '2016-06-27 11:57:00.190000', 0),
(1, 7, '2016-06-27 01:32:45.307000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `patientsymptomlog`
--

CREATE TABLE `patientsymptomlog` (
  `PSLogID` int(11) NOT NULL,
  `PatientID` int(11) NOT NULL DEFAULT '0',
  `CreatedDate` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patientsymptomlog`
--

INSERT INTO `patientsymptomlog` (`PSLogID`, `PatientID`, `CreatedDate`) VALUES
(14, 1, '2016-06-28 00:08:53.217000'),
(15, 1, '2016-06-28 00:10:21.730000'),
(16, 1, '2016-06-28 00:18:14.430000'),
(17, 1, '2016-06-28 00:20:29.723000'),
(18, 1, '2016-06-28 00:22:56.357000'),
(19, 1, '2016-06-28 00:23:28.720000'),
(20, 1, '2016-06-28 00:30:45.963000'),
(21, 1, '2016-06-28 00:33:29.280000');

-- --------------------------------------------------------

--
-- Table structure for table `patientsymptomlogdetail`
--

CREATE TABLE `patientsymptomlogdetail` (
  `PSLogID` int(11) NOT NULL,
  `SymptomID` int(11) NOT NULL,
  `Score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patientsymptomlogdetail`
--

INSERT INTO `patientsymptomlogdetail` (`PSLogID`, `SymptomID`, `Score`) VALUES
(14, 2, 6),
(14, 4, 1),
(14, 5, 4),
(14, 6, 2),
(14, 7, 8),
(15, 2, 6),
(15, 4, 3),
(15, 5, 7),
(15, 6, 4),
(15, 7, 4),
(16, 2, 6),
(16, 4, 3),
(16, 5, 7),
(16, 6, 4),
(16, 7, 4),
(17, 4, 2),
(18, 4, 4),
(19, 4, 4),
(20, 6, 7),
(21, 4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `provider`
--

CREATE TABLE `provider` (
  `ProviderID` int(11) NOT NULL,
  `Username` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ProviderNo` varchar(10) DEFAULT NULL,
  `LastName` varchar(30) DEFAULT NULL,
  `FirstName` varchar(20) DEFAULT NULL,
  `MiddleName` varchar(20) DEFAULT NULL,
  `TaxID` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provider`
--

INSERT INTO `provider` (`ProviderID`, `Username`, `Email`, `Password`, `ProviderNo`, `LastName`, `FirstName`, `MiddleName`, `TaxID`) VALUES
(1, 'apickett', 'apickett@outlook.com', 'Password1', '123', 'Pickett', 'Adam', 'D', '234'),
(2, NULL, NULL, NULL, '20', 'BRADEN', 'RHONDA', 'L', '271216380'),
(4, NULL, NULL, NULL, '5', 'TIMBERLAKE', 'LORI', 'A', '271216380'),
(5, NULL, NULL, NULL, '12', 'STONE', 'LAURYN', NULL, '271216380'),
(6, NULL, NULL, NULL, '30', 'FEKETE', 'NICOLE', NULL, '271216380'),
(7, NULL, NULL, NULL, '16', 'KOTSANIS', 'JENNIFER', NULL, '271216380'),
(8, NULL, NULL, NULL, '11', 'WOLFGANG', 'ASHLEE', 'A', '271216380'),
(9, NULL, NULL, NULL, '22', 'FROHNAPFEL', 'JASON', NULL, '271216380'),
(10, NULL, NULL, NULL, '21', 'HUNTSMAN', 'TAMATHA', NULL, '271216380'),
(11, NULL, NULL, NULL, '2', 'MELHEM', 'IMAD', 'M', '271216380'),
(12, NULL, NULL, NULL, '1', 'MELHEM', 'ALI', 'M', '271216380'),
(13, 'jschmidt', NULL, 'Password1', NULL, 'Schmidt', 'Joe', NULL, NULL),
(14, NULL, NULL, NULL, '27', 'FADORSEN', 'LISA', 'A', '271216380'),
(15, NULL, NULL, NULL, '001', 'MELHEM', 'ALI', 'M', '271216380'),
(29, 'anasneyaz', 'anasneyaz@gmail.com', '1234', '12223', 'Neyaz', 'Anas', 'Hosain', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `QuestionID` int(11) NOT NULL,
  `SurveyID` int(11) NOT NULL,
  `Qtext` longtext NOT NULL,
  `Qpath` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`QuestionID`, `SurveyID`, `Qtext`, `Qpath`) VALUES
(101, 1, 'Have you ever felt depressed (sad, empty, hopeless)?', ''),
(102, 1, 'Have others observed you to be experiencing a depressed mood most of the day nearly every day?', ''),
(1031, 1, 'When you felt depressed, how long did you feel that way?', ''),
(1032, 1, 'How many days in a row have you felt depressed?', ''),
(1033, 1, 'How much time occurs between episodes of depressive symptoms?', ''),
(1034, 1, 'When was the last time you felt depressed recurrently?', ''),
(1035, 1, 'When did your depressive symptoms first begin?', ''),
(1036, 1, 'Rate your current feelings of depression on a scale from 1-10 with 10 being the worst and 1 being the least?', ''),
(1041, 1, 'When you felt a diminished interest, how long did you feel that way?', ''),
(1042, 1, 'How many days in a row have you felt a lack of interest or pleasure?', ''),
(1043, 1, 'When feeling more interest in pleasurable activities, how often do you feel the lack of interest reoccur?', ''),
(1044, 1, 'Have others observed you to be lacking interest in pleasurable activities?', '');

-- --------------------------------------------------------

--
-- Table structure for table `survey`
--

CREATE TABLE `survey` (
  `SurveyID` int(11) NOT NULL,
  `Title` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survey`
--

INSERT INTO `survey` (`SurveyID`, `Title`) VALUES
(1, 'E.M.R');

-- --------------------------------------------------------

--
-- Table structure for table `symptom`
--

CREATE TABLE `symptom` (
  `SymptomID` int(11) NOT NULL,
  `Symptom` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `symptom`
--

INSERT INTO `symptom` (`SymptomID`, `Symptom`) VALUES
(1, 'Inattention'),
(2, 'Hyperactivity'),
(3, 'Impulsivity'),
(4, 'Excessive anxiety'),
(5, 'Poor appetite'),
(6, 'Insomnia'),
(7, 'Low energy'),
(8, 'Low self-esteem'),
(9, 'Poor concentration'),
(10, 'Feelings of hopelessness');

-- --------------------------------------------------------

--
-- Table structure for table `sysdiagrams`
--

CREATE TABLE `sysdiagrams` (
  `name` varchar(128) CHARACTER SET utf8mb4 NOT NULL,
  `principal_id` int(11) NOT NULL,
  `diagram_id` int(11) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `definition` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `visit`
--

CREATE TABLE `visit` (
  `VisitID` int(11) NOT NULL,
  `PatientID` int(11) NOT NULL,
  `ProviderID` int(11) NOT NULL DEFAULT '0',
  `FacilityID` int(11) NOT NULL DEFAULT '0',
  `VisitDateStart` datetime(6) DEFAULT NULL,
  `VisitDateEnd` datetime(6) DEFAULT NULL,
  `VisitTypeID` int(11) NOT NULL DEFAULT '0',
  `ChartNumber` varchar(50) DEFAULT NULL,
  `Copay` decimal(19,4) DEFAULT NULL,
  `SchedComments` varchar(2000) DEFAULT NULL,
  `CreatedWhen` datetime(6) DEFAULT NULL,
  `CreatedBy` varchar(5) DEFAULT NULL,
  `AmountCollected` decimal(19,4) DEFAULT NULL,
  `CheckIn` varchar(10) DEFAULT NULL,
  `CheckOut` varchar(10) DEFAULT NULL,
  `ProviderNoteSigned` varchar(10) DEFAULT NULL,
  `NursingNote` varchar(10) DEFAULT NULL,
  `AIMS` varchar(10) DEFAULT NULL,
  `TrxPlan` varchar(10) DEFAULT NULL,
  `Labs` varchar(10) DEFAULT NULL,
  `NurseStart` datetime(6) DEFAULT NULL,
  `NurseStop` datetime(6) DEFAULT NULL,
  `ProvStart` datetime(6) DEFAULT NULL,
  `ProvStop` datetime(6) DEFAULT NULL,
  `VisitComments` varchar(2000) DEFAULT NULL,
  `PaymentMethod` varchar(10) DEFAULT NULL,
  `CheckNum` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visit`
--

INSERT INTO `visit` (`VisitID`, `PatientID`, `ProviderID`, `FacilityID`, `VisitDateStart`, `VisitDateEnd`, `VisitTypeID`, `ChartNumber`, `Copay`, `SchedComments`, `CreatedWhen`, `CreatedBy`, `AmountCollected`, `CheckIn`, `CheckOut`, `ProviderNoteSigned`, `NursingNote`, `AIMS`, `TrxPlan`, `Labs`, `NurseStart`, `NurseStop`, `ProvStart`, `ProvStop`, `VisitComments`, `PaymentMethod`, `CheckNum`) VALUES
(1, 1, 4, 1, '2015-05-22 09:00:00.000000', '2015-05-22 10:00:00.000000', 1, NULL, NULL, NULL, '2015-04-20 00:00:00.000000', 'MLA', NULL, 'NS', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'WILL CALL BACK TO RESCHEDULE', NULL, NULL),
(2, 2, 8, 1, '2015-05-22 09:00:00.000000', '2015-05-22 10:00:00.000000', 2, '5729', NULL, NULL, '2015-04-17 00:00:00.000000', 'MLA', NULL, 'Y', 'Y', 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL),
(3, 3, 9, 1, '2015-05-22 09:00:00.000000', '2015-05-22 10:00:00.000000', 2, NULL, NULL, NULL, '2015-05-08 00:00:00.000000', 'MLA', NULL, 'CX', 'CX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL),
(4, 4, 10, 1, '2015-05-22 09:00:00.000000', '2015-05-22 10:00:00.000000', 2, NULL, NULL, NULL, '2015-05-04 00:00:00.000000', 'MLA', NULL, 'NS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LEFT MESSAGE TO RESCHEDULE', NULL, NULL),
(5, 5, 11, 1, '2015-05-22 10:00:00.000000', '2015-05-22 11:00:00.000000', 1, NULL, NULL, NULL, '2015-04-10 00:00:00.000000', 'MLA', NULL, 'NS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PT DOES NOT WANT TO RESCHEDULE', NULL, NULL),
(6, 6, 12, 1, '2015-05-22 10:00:00.000000', '2015-05-22 10:15:00.000000', 3, NULL, NULL, NULL, '2015-04-24 00:00:00.000000', 'BLC', NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 6, 4, 1, '2015-05-22 10:00:00.000000', '2015-05-22 10:15:00.000000', 4, NULL, NULL, NULL, '2015-04-24 00:00:00.000000', 'BLC', NULL, 'Y', 'Y', 'Yes', 'Yes', NULL, NULL, NULL, '1900-01-01 10:19:00.000000', '1900-01-01 10:40:00.000000', '1900-01-01 09:50:00.000000', '1900-01-01 10:10:00.000000', NULL, NULL, NULL),
(8, 7, 9, 1, '2015-05-22 10:00:00.000000', '2015-05-22 11:00:00.000000', 2, NULL, NULL, NULL, '2015-05-07 00:00:00.000000', 'MLA', NULL, 'Y', 'Y', 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 8, 10, 1, '2015-05-22 10:00:00.000000', '2015-05-22 11:00:00.000000', 2, '4187', NULL, NULL, '2015-05-08 00:00:00.000000', 'MLA', NULL, 'Y', 'Y', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 9, 4, 1, '2015-05-22 10:15:00.000000', '2015-05-22 10:30:00.000000', 5, NULL, '25.0000', NULL, '2015-05-07 00:00:00.000000', 'WBW', '25.0000', 'Y', 'Y', 'Yes', NULL, 'Done', 'Done', NULL, NULL, NULL, NULL, NULL, 'send bill not sure wht 15 bal', NULL, NULL),
(11, 10, 4, 1, '2015-05-22 10:30:00.000000', '2015-05-22 10:45:00.000000', 5, 'NBC2413', NULL, NULL, '2015-05-05 00:00:00.000000', 'WBW', NULL, 'Y', 'Y', 'Yes', NULL, 'Due', 'Done', 'Due', NULL, NULL, NULL, NULL, 'FAX OTR TODAY!!!!!!!', NULL, NULL),
(12, 11, 4, 1, '2015-05-22 10:45:00.000000', '2015-05-22 11:00:00.000000', 5, NULL, NULL, NULL, '2015-05-05 00:00:00.000000', 'WBW', NULL, 'Y', 'Y', 'Yes', NULL, 'Done', 'Not Done', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 12, 11, 1, '2015-05-22 11:00:00.000000', '2015-05-22 11:15:00.000000', 5, NULL, '0.0000', NULL, '2015-02-20 00:00:00.000000', 'BLB', '67.2600', 'Y', 'Y', 'Yes', NULL, NULL, 'Done', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 13, 4, 1, '2015-05-22 11:00:00.000000', '2015-05-22 12:00:00.000000', 1, NULL, '60.0000', NULL, '2015-04-20 00:00:00.000000', 'MLA', NULL, 'Y', 'Y', 'Yes', NULL, 'Done', 'Done', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 14, 8, 1, '2015-05-22 11:00:00.000000', '2015-05-22 12:00:00.000000', 2, '11308070', '25.0000', NULL, '2015-05-06 00:00:00.000000', 'BLC', '25.0000', 'Y', 'Y', 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 15, 9, 1, '2015-05-22 11:00:00.000000', '2015-05-22 12:00:00.000000', 2, NULL, NULL, NULL, '2015-05-01 00:00:00.000000', 'BLC', NULL, 'CX', 'CX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RESCHEDULED FOR 6/12/15', NULL, NULL),
(17, 16, 10, 1, '2015-05-22 11:00:00.000000', '2015-05-22 12:00:00.000000', 2, '5783', NULL, NULL, '2015-05-06 00:00:00.000000', 'BLC', NULL, 'Y', 'Y', 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 17, 11, 1, '2015-05-22 11:15:00.000000', '2015-05-22 11:30:00.000000', 5, '11206061', NULL, NULL, '2015-02-23 00:00:00.000000', 'KAM', NULL, 'Y', 'Y', 'Yes', NULL, 'Done', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 18, 11, 1, '2015-05-22 11:30:00.000000', '2015-05-22 11:45:00.000000', 3, NULL, NULL, NULL, '2015-04-20 00:00:00.000000', 'AKH', NULL, 'Y', 'Y', NULL, NULL, NULL, 'Due', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 18, 11, 1, '2015-05-22 11:30:00.000000', '2015-05-22 11:45:00.000000', 5, NULL, NULL, NULL, '2015-03-20 00:00:00.000000', 'JAK', NULL, 'Y', 'Y', 'No', 'Yes', 'Done', 'Done', NULL, '1900-01-01 12:19:00.000000', '1900-01-01 12:40:00.000000', NULL, NULL, NULL, NULL, NULL),
(21, 19, 11, 1, '2015-05-22 11:45:00.000000', '2015-05-22 12:00:00.000000', 5, '11305004', NULL, NULL, '2015-04-10 00:00:00.000000', 'JAK', NULL, 'NS', NULL, NULL, NULL, 'Due', NULL, NULL, NULL, NULL, NULL, NULL, 'RESCHEDULED FOR 6/15/15', NULL, NULL),
(22, 20, 11, 1, '2015-05-22 12:00:00.000000', '2015-05-22 12:15:00.000000', 5, '3952', '12.0000', NULL, '2015-03-24 00:00:00.000000', 'JAK', NULL, 'Y', 'Y', 'Yes', NULL, 'Done', 'Done', NULL, NULL, NULL, NULL, NULL, 'USED 12 CREDIT TOWARDS COPAY', NULL, NULL),
(23, 21, 8, 1, '2015-05-22 12:00:00.000000', '2015-05-22 13:00:00.000000', 2, '4852', NULL, NULL, '2015-03-19 00:00:00.000000', 'MLA', NULL, 'Y', 'Y', 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'INCIDENT TO', NULL, NULL),
(24, 22, 11, 1, '2015-05-22 12:15:00.000000', '2015-05-22 12:30:00.000000', 5, '11304046', NULL, NULL, '2015-04-10 00:00:00.000000', 'JAK', NULL, 'NS', NULL, NULL, NULL, 'Due', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 23, 11, 1, '2015-05-22 12:30:00.000000', '2015-05-22 12:45:00.000000', 5, NULL, NULL, NULL, '2015-04-17 00:00:00.000000', 'AMS', NULL, 'CX', 'CX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 24, 4, 1, '2015-05-22 12:30:00.000000', '2015-05-22 12:45:00.000000', 4, NULL, NULL, NULL, '2015-05-06 00:00:00.000000', 'KAM', NULL, 'Y', 'Y', 'Yes', 'Yes', 'Done', NULL, NULL, '1900-01-01 12:45:00.000000', '1900-01-01 12:53:00.000000', '1900-01-01 12:55:00.000000', '1900-01-01 13:15:00.000000', '', NULL, NULL),
(27, 25, 11, 1, '2015-05-22 12:45:00.000000', '2015-05-22 13:00:00.000000', 5, '165', NULL, NULL, '2015-04-21 00:00:00.000000', 'KAM', NULL, 'NS', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LEFT MESSAGE TO RESCHEDULE', NULL, NULL),
(28, 26, 4, 1, '2015-05-22 12:45:00.000000', '2015-05-22 13:00:00.000000', 4, NULL, NULL, NULL, '2015-05-07 00:00:00.000000', 'WBW', NULL, 'OC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PATIENT WAS SEEN 5/21/15', NULL, NULL),
(29, 27, 11, 1, '2015-05-22 13:00:00.000000', '2015-05-22 13:15:00.000000', 5, '11212036', NULL, NULL, '2015-05-04 00:00:00.000000', 'BLC', NULL, 'Y', 'Y', 'Yes', NULL, 'Done', 'Done', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 28, 11, 1, '2015-05-22 13:00:00.000000', '2015-05-22 13:15:00.000000', 5, '11209137', '20.0000', NULL, '2015-04-22 00:00:00.000000', 'MLA', '20.0000', 'Y', 'Y', 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 29, 12, 1, '2015-05-22 13:00:00.000000', '2015-05-22 13:15:00.000000', 3, '5727', NULL, NULL, '2015-04-27 00:00:00.000000', 'WBW', NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 29, 4, 1, '2015-05-22 13:00:00.000000', '2015-05-22 13:15:00.000000', 5, '5727', NULL, NULL, '2015-04-27 00:00:00.000000', 'WBW', NULL, 'Y', 'Y', 'Yes', NULL, 'Done', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 30, 8, 1, '2015-05-22 13:00:00.000000', '2015-05-22 14:00:00.000000', 2, '11310064', NULL, NULL, '2015-05-07 00:00:00.000000', 'MLA', NULL, 'Y', 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 31, 9, 1, '2015-05-22 13:00:00.000000', '2015-05-22 14:00:00.000000', 1, NULL, NULL, NULL, '2015-04-29 00:00:00.000000', 'MLA', NULL, 'NS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PT DOES NOT WANT TO RESCHEDULE', NULL, NULL),
(35, 32, 10, 1, '2015-05-22 13:00:00.000000', '2015-05-22 14:00:00.000000', 1, NULL, NULL, NULL, '2015-04-29 00:00:00.000000', 'MLA', NULL, 'NS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PT DOES NOT WANT TO RESCHEDULE', NULL, NULL),
(36, 33, 11, 1, '2015-05-22 13:15:00.000000', '2015-05-22 13:30:00.000000', 5, NULL, NULL, NULL, '2015-05-06 00:00:00.000000', 'BLC', NULL, 'NS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RESCHEDULED FOR 6/19/15', NULL, NULL),
(37, 34, 11, 1, '2015-05-22 13:15:00.000000', '2015-05-22 14:15:00.000000', 1, NULL, NULL, NULL, '2015-04-16 00:00:00.000000', 'WBW', NULL, 'CX', 'CX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PT WENT TO STEUBENVILLE', NULL, NULL),
(38, 35, 4, 1, '2015-05-22 13:15:00.000000', '2015-05-22 13:30:00.000000', 5, NULL, NULL, 'DR I TO POP IN', '2015-05-07 00:00:00.000000', 'WBW', NULL, 'Y', 'Y', 'No', NULL, 'Done', 'Not Done', 'Due', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 36, 11, 1, '2015-05-22 13:30:00.000000', '2015-05-22 13:45:00.000000', 4, '11211012', NULL, NULL, '2015-05-06 00:00:00.000000', 'BLC', NULL, 'Y', 'Y', 'No', 'Yes', 'Not Done', 'Not Done', NULL, '1900-01-01 14:07:00.000000', '1900-01-01 14:16:00.000000', '1900-01-01 13:30:00.000000', '1900-01-01 13:55:00.000000', NULL, NULL, NULL),
(40, 37, 4, 1, '2015-05-22 13:30:00.000000', '2015-05-22 13:45:00.000000', 5, 'NBC2064', '0.0000', 'DR I TO POP IN', '2015-05-07 00:00:00.000000', 'WBW', NULL, 'Y', 'Y', 'Yes', NULL, NULL, NULL, 'Due', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 38, 11, 1, '2015-05-22 13:45:00.000000', '2015-05-22 14:00:00.000000', 4, NULL, NULL, NULL, '2015-05-13 00:00:00.000000', 'BLC', NULL, 'Y', 'Y', 'Yes', 'Yes', 'Not Done', 'Done', NULL, '1900-01-01 13:45:00.000000', '1900-01-01 14:04:00.000000', '1900-01-01 14:05:00.000000', '1900-01-01 14:30:00.000000', NULL, NULL, NULL),
(42, 39, 4, 1, '2015-05-22 13:45:00.000000', '2015-05-22 14:00:00.000000', 5, '5744', '0.0000', NULL, '2015-02-18 00:00:00.000000', 'JAK', NULL, 'Y', 'Y', 'Yes', NULL, 'Done', 'Done', 'Due', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 40, 11, 1, '2015-05-22 14:00:00.000000', '2015-05-22 14:15:00.000000', 4, '11304068', NULL, NULL, '2015-05-04 00:00:00.000000', 'KAM', NULL, 'Y', 'Y', 'Yes', 'Yes', 'Done', NULL, NULL, '1900-01-01 14:13:00.000000', '1900-01-01 14:21:00.000000', '1900-01-01 14:54:00.000000', '1900-01-01 15:10:00.000000', NULL, NULL, NULL),
(44, 41, 5, 1, '2015-05-22 14:00:00.000000', '2015-05-22 14:15:00.000000', 4, NULL, NULL, NULL, '2015-02-23 00:00:00.000000', 'KAM', NULL, 'NS', NULL, NULL, NULL, 'Due', 'Due', NULL, NULL, NULL, NULL, NULL, 'LEFT MESSAGE TO RESCHEDULE', NULL, NULL),
(45, 42, 4, 1, '2015-05-22 14:00:00.000000', '2015-05-22 14:45:00.000000', 1, NULL, NULL, NULL, '2015-05-06 00:00:00.000000', 'JAK', NULL, 'NS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'WAS UNABLE TO LEAVE MESSAGE', NULL, NULL),
(46, 43, 8, 1, '2015-05-22 14:00:00.000000', '2015-05-22 15:00:00.000000', 2, '11309037', '15.0000', NULL, '2015-04-17 00:00:00.000000', 'AMS', NULL, 'CX', 'CX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 44, 9, 1, '2015-05-22 14:00:00.000000', '2015-05-22 15:00:00.000000', 2, NULL, NULL, NULL, '2015-05-01 00:00:00.000000', 'BLC', NULL, 'CX', 'CX', NULL, NULL, 'Due', 'Due', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 45, 10, 1, '2015-05-22 14:00:00.000000', '2015-05-22 15:00:00.000000', 1, '4535', NULL, 'NEW TO THERAPY', '2015-05-04 00:00:00.000000', 'WBW', NULL, 'NS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RESCHEDULED FOR 6-2-15', NULL, NULL),
(49, 46, 11, 1, '2015-05-22 14:15:00.000000', '2015-05-22 14:30:00.000000', 4, '5549', NULL, NULL, '2015-05-04 00:00:00.000000', 'KAM', NULL, 'Y', 'Y', 'Yes', 'Yes', 'Done', NULL, 'Due', '1900-01-01 14:22:00.000000', '1900-01-01 14:32:00.000000', '1900-01-01 14:30:00.000000', '1900-01-01 14:53:00.000000', NULL, NULL, NULL),
(50, 47, 11, 1, '2015-05-22 14:15:00.000000', '2015-05-22 14:30:00.000000', 5, '4872', NULL, NULL, '2015-04-20 00:00:00.000000', 'WBW', NULL, 'Y', 'Y', 'No', NULL, 'Not Done', NULL, NULL, NULL, NULL, NULL, NULL, 'WV CHIP', NULL, NULL),
(51, 48, 5, 1, '2015-05-22 14:15:00.000000', '2015-05-22 14:30:00.000000', 5, NULL, NULL, NULL, '2015-05-11 00:00:00.000000', 'WBW', NULL, 'CX', 'CX', NULL, NULL, NULL, 'Due', NULL, NULL, NULL, NULL, NULL, 'RESCHEDULED FOR 6/8/15', NULL, NULL),
(52, 49, 11, 1, '2015-05-22 14:30:00.000000', '2015-05-22 14:45:00.000000', 5, '11306060', NULL, NULL, '2015-02-25 00:00:00.000000', 'JAK', NULL, 'Y', 'Y', 'No', NULL, 'Not Done', 'Not Done', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 50, 5, 1, '2015-05-22 14:30:00.000000', '2015-05-22 14:45:00.000000', 4, NULL, NULL, NULL, '2015-05-11 00:00:00.000000', 'WBW', NULL, 'Y', 'Y', 'Yes', 'No', 'Done', 'Not Done', NULL, NULL, NULL, '1900-01-01 13:55:00.000000', '1900-01-01 14:15:00.000000', NULL, NULL, NULL),
(54, 51, 11, 1, '2015-05-22 14:45:00.000000', '2015-05-22 15:00:00.000000', 5, '11304086', '15.0000', NULL, '2015-05-07 00:00:00.000000', 'WBW', NULL, 'Y', 'Y', 'Yes', NULL, 'Done', 'Done', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 52, 11, 1, '2015-05-22 14:45:00.000000', '2015-05-22 15:00:00.000000', 4, '4355', NULL, NULL, '2015-04-20 00:00:00.000000', 'WBW', NULL, 'Y', 'Y', NULL, NULL, 'Due', 'Due', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 45, 5, 1, '2015-05-22 14:45:00.000000', '2015-05-22 15:00:00.000000', 4, '4535', NULL, NULL, '2015-05-04 00:00:00.000000', 'WBW', NULL, 'NS', NULL, NULL, NULL, NULL, NULL, 'Due', NULL, NULL, NULL, NULL, 'RESCHEDULED FOR 6/10/15', NULL, NULL),
(57, 53, 4, 1, '2015-05-22 14:45:00.000000', '2015-05-22 15:00:00.000000', 5, '1710', NULL, NULL, '2015-05-14 00:00:00.000000', 'WBW', NULL, 'Y', 'Y', 'Yes', NULL, 'Done', 'Done', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 54, 11, 1, '2015-05-22 15:00:00.000000', '2015-05-22 15:15:00.000000', 5, NULL, NULL, NULL, '2015-05-11 00:00:00.000000', 'BLC', NULL, 'Y', 'Y', 'Yes', NULL, 'Done', 'Done', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 55, 11, 1, '2015-05-22 15:00:00.000000', '2015-05-22 15:15:00.000000', 4, NULL, NULL, NULL, '2015-05-04 00:00:00.000000', 'WBW', NULL, 'NS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LEFT MESSAGE TO RESCHEDULE', NULL, NULL),
(60, 56, 5, 1, '2015-05-22 15:00:00.000000', '2015-05-22 15:15:00.000000', 5, '11310044', '20.0000', 'DR I TO POP IN', '2015-04-21 00:00:00.000000', 'WBW', '20.0000', 'Y', 'Y', NULL, NULL, 'Due', 'Due', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 57, 4, 1, '2015-05-22 15:00:00.000000', '2015-05-22 16:00:00.000000', 1, NULL, NULL, 'Per Dr. A, to be scheduled earlier', '2015-05-14 00:00:00.000000', 'MLA', NULL, NULL, 'CX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 58, 8, 1, '2015-05-22 15:00:00.000000', '2015-05-22 16:00:00.000000', 2, '11306043', NULL, NULL, '2015-04-09 00:00:00.000000', 'MLA', NULL, 'CX', 'CX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 59, 9, 1, '2015-05-22 15:00:00.000000', '2015-05-22 16:00:00.000000', 1, NULL, NULL, NULL, '2015-05-04 00:00:00.000000', 'WBW', NULL, 'NS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'LEFT MESSAGE TO RESCHEDULE', NULL, NULL),
(64, 60, 10, 1, '2015-05-22 15:00:00.000000', '2015-05-22 16:00:00.000000', 2, NULL, NULL, NULL, '2015-05-13 00:00:00.000000', 'BLC', NULL, 'NS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PT WILL CALL BACK TO RESCHEDULE', NULL, NULL),
(65, 61, 11, 1, '2015-05-22 15:15:00.000000', '2015-05-22 15:30:00.000000', 5, NULL, '0.0000', NULL, '2015-05-05 00:00:00.000000', 'WBW', NULL, 'Y', 'Y', 'Yes', NULL, 'Done', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 62, 5, 1, '2015-05-22 15:15:00.000000', '2015-05-22 16:15:00.000000', 1, NULL, NULL, NULL, '2015-04-21 00:00:00.000000', 'WBW', NULL, 'CX', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RESCHEDULED FOR 6/22/15', NULL, NULL),
(67, 63, 11, 1, '2015-05-22 15:30:00.000000', '2015-05-22 15:45:00.000000', 4, NULL, NULL, NULL, '2015-05-05 00:00:00.000000', 'WBW', NULL, 'Y', 'Y', NULL, NULL, 'Due', 'Due', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 64, 11, 1, '2015-05-22 15:45:00.000000', '2015-05-22 16:00:00.000000', 4, '11209153', NULL, NULL, '2015-05-05 00:00:00.000000', 'BLC', NULL, 'Y', 'Y', NULL, NULL, 'Due', 'Due', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 65, 11, 1, '2015-05-22 16:00:00.000000', '2015-05-22 16:15:00.000000', 5, NULL, '40.0000', NULL, '2015-02-20 00:00:00.000000', 'JAK', NULL, 'Y', 'Y', NULL, NULL, 'Due', 'Due', NULL, NULL, NULL, NULL, NULL, 'USED CREDIT TOWARDS COPAY', NULL, NULL),
(70, 66, 4, 1, '2015-05-22 16:00:00.000000', '2015-05-22 16:15:00.000000', 4, NULL, NULL, NULL, '2015-05-18 00:00:00.000000', 'WBW', NULL, 'Y', 'Y', NULL, NULL, 'Due', 'Due', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 67, 8, 1, '2015-05-22 16:00:00.000000', '2015-05-22 17:00:00.000000', 2, '11207070', '20.0000', NULL, '2015-04-09 00:00:00.000000', 'MLA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 55, 9, 1, '2015-05-22 16:00:00.000000', '2015-05-22 17:00:00.000000', 1, NULL, NULL, 'NEW TO THERAPY', '2015-05-04 00:00:00.000000', 'WBW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 68, 10, 1, '2015-05-22 16:00:00.000000', '2015-05-22 17:00:00.000000', 2, NULL, NULL, NULL, '2015-05-15 00:00:00.000000', 'BLC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 69, 11, 1, '2015-05-22 16:15:00.000000', '2015-05-22 16:30:00.000000', 5, NULL, '0.0000', NULL, '2015-03-19 00:00:00.000000', 'JAK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 70, 5, 1, '2015-05-22 16:15:00.000000', '2015-05-22 16:30:00.000000', 5, NULL, '25.0000', NULL, '2015-04-30 00:00:00.000000', 'WBW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 71, 4, 1, '2015-05-22 16:15:00.000000', '2015-05-22 17:00:00.000000', 1, NULL, NULL, NULL, '2015-05-06 00:00:00.000000', 'JAK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 72, 11, 1, '2015-05-22 16:30:00.000000', '2015-05-22 16:45:00.000000', 5, NULL, '0.0000', NULL, '2015-03-24 00:00:00.000000', 'JAK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 73, 5, 1, '2015-05-22 16:30:00.000000', '2015-05-22 16:45:00.000000', 5, NULL, NULL, 'Dr. I to come in due to WV medicaid, also told mom to call that afternoon prior to appt as pt has difficulty waiting, this way they can come a little later if n', '2015-04-29 00:00:00.000000', 'AKH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 74, 11, 1, '2015-05-22 16:45:00.000000', '2015-05-22 17:00:00.000000', 5, NULL, '12.0000', NULL, '2015-05-13 00:00:00.000000', 'BLC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 75, 5, 1, '2015-05-22 16:45:00.000000', '2015-05-22 17:00:00.000000', 5, NULL, '0.0000', NULL, '2015-04-06 00:00:00.000000', 'JAK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 76, 11, 1, '2015-05-22 17:00:00.000000', '2015-05-22 17:15:00.000000', 5, '11310110', '40.0000', NULL, '2015-04-14 00:00:00.000000', 'WBW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 77, 11, 1, '2015-05-22 17:15:00.000000', '2015-05-22 17:30:00.000000', 5, 'NBH7', NULL, NULL, '2015-04-17 00:00:00.000000', 'AMS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 78, 11, 1, '2015-05-22 17:30:00.000000', '2015-05-22 17:45:00.000000', 5, '11308083', NULL, NULL, '2015-04-20 00:00:00.000000', 'MLA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 79, 11, 1, '2015-05-22 17:45:00.000000', '2015-05-22 18:00:00.000000', 5, NULL, NULL, NULL, '2015-04-17 00:00:00.000000', 'AMS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 81, 10, 1, '2016-04-14 16:00:00.000000', '2016-04-14 17:00:00.000000', 2, NULL, NULL, NULL, '2016-03-01 00:00:00.000000', 'BLC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(90, 81, 14, 1, '2016-04-14 15:00:00.000000', '2016-04-14 16:00:00.000000', 2, NULL, '0.0000', NULL, '2016-04-01 00:00:00.000000', 'BLC', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(91, 81, 6, 1, '2016-04-14 09:30:00.000000', '2016-04-14 09:45:00.000000', 3, NULL, NULL, NULL, '2016-04-12 00:00:00.000000', 'BLC', '10.0000', 'Y', 'Y', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'CC', ''),
(92, 81, 11, 1, '2016-04-14 17:00:00.000000', '2016-04-14 18:00:00.000000', 1, NULL, '0.0000', NULL, '2016-03-03 00:00:00.000000', 'JKR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(93, 81, 11, 1, '2016-04-14 16:45:00.000000', '2016-04-14 17:00:00.000000', 5, 'MNC5065', '0.0000', NULL, '2016-02-18 00:00:00.000000', 'WBW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL),
(94, 81, 12, 1, '2016-04-14 16:45:00.000000', '2016-04-14 17:00:00.000000', 5, NULL, NULL, NULL, '2016-03-17 00:00:00.000000', 'WBW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 81, 11, 1, '2016-04-14 16:00:00.000000', '2016-04-14 16:15:00.000000', 4, '11307052', NULL, NULL, '2016-02-22 00:00:00.000000', 'BLC', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 81, 12, 1, '2016-04-14 16:45:00.000000', '2016-04-14 17:00:00.000000', 4, NULL, NULL, NULL, '2016-03-29 00:00:00.000000', 'WBW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 81, 12, 1, '2016-04-14 16:00:00.000000', '2016-04-14 16:45:00.000000', 1, NULL, NULL, 'PT TO TALK TO DR A REGARDING TMS', '2016-03-22 00:00:00.000000', 'KAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 81, 14, 1, '2016-04-14 16:00:00.000000', '2016-04-14 17:00:00.000000', 1, NULL, '25.0000', 'to therapy only', '2016-04-05 00:00:00.000000', 'WBW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 81, 5, 1, '2016-04-14 16:45:00.000000', '2016-04-14 17:00:00.000000', 5, NULL, '0.0000', NULL, '2016-04-04 00:00:00.000000', 'KAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `visitinsurance`
--

CREATE TABLE `visitinsurance` (
  `VisitID` int(11) NOT NULL,
  `SeqNo` int(11) NOT NULL,
  `InsuranceID` int(11) NOT NULL DEFAULT '0',
  `PolicyNum` varchar(50) DEFAULT NULL,
  `GroupNum` varchar(50) DEFAULT NULL,
  `Relation` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitinsurance`
--

INSERT INTO `visitinsurance` (`VisitID`, `SeqNo`, `InsuranceID`, `PolicyNum`, `GroupNum`, `Relation`) VALUES
(1, 1, 1, '1.06E+11', NULL, '1'),
(2, 1, 4, '906440319', '712667', '1'),
(3, 1, 1, '7403011806', NULL, '1'),
(4, 1, 1, '74032701013', NULL, '1'),
(5, 1, 1, '1.09E+11', NULL, '1'),
(6, 1, 1, '3.04E+11', NULL, '1'),
(7, 1, 1, '3.04E+11', NULL, '1'),
(8, 1, 1, '1.05E+11', NULL, '1'),
(9, 1, 5, '236251484A', NULL, '1'),
(10, 1, 2, 'CGB840438416', NULL, '1'),
(11, 1, 6, 'H1200129501', NULL, '1'),
(12, 1, 6, 'H1200129503', NULL, '1'),
(13, 1, 2, 'YYM115826848001', '17322873', '1'),
(14, 1, 2, 'YRP172M70087', '215099', '1'),
(15, 1, 7, 'ZPJ120790078001', NULL, '1'),
(16, 1, 1, '74035441002', NULL, '1'),
(17, 1, 5, '233218888A', NULL, '1'),
(17, 2, 8, '1.10E+11', NULL, '1'),
(18, 1, 5, '282625382A', NULL, '1'),
(18, 2, 8, '1.05E+11', NULL, '1'),
(19, 1, 7, 'ZPJ106027401001', NULL, '1'),
(19, 2, 2, 'XXP960587361', NULL, '1'),
(19, 3, 8, '1.06E+11', NULL, '1'),
(20, 1, 7, 'ZPJ106027401001', NULL, '1'),
(20, 2, 2, 'XXP960587361', NULL, '1'),
(20, 3, 8, '1.06E+11', NULL, '1'),
(21, 1, 9, '601317997', NULL, '1'),
(22, 1, 10, 'MEBJFK6L', '465936', '1'),
(23, 1, 5, '283747527A', NULL, '1'),
(24, 1, 1, '1.08E+11', NULL, '1'),
(25, 1, 9, '3377395', NULL, '1'),
(26, 1, 1, '1.03E+11', NULL, '1'),
(27, 1, 10, 'W165648062', NULL, '5'),
(28, 1, 1, '1.03E+11', NULL, '1'),
(29, 1, 5, '232762095TA', NULL, '1'),
(29, 2, 7, 'R15481893', NULL, '1'),
(30, 1, 11, 'H57020354', NULL, '1'),
(31, 1, 9, '700408580', NULL, '1'),
(32, 1, 9, '700408580', NULL, '1'),
(33, 1, 1, '1.04E+11', NULL, '1'),
(34, 1, 1, '1.08E+11', NULL, '1'),
(35, 1, 1, '1.08E+11', NULL, '1'),
(36, 1, 6, 'H0316933303', NULL, '1'),
(36, 2, 9, '400864085', NULL, '1'),
(37, 1, 1, '1.10E+11', NULL, '1'),
(38, 1, 5, '074608747A', NULL, '1'),
(38, 2, 9, '503728638', NULL, '1'),
(39, 1, 1, '1.06E+11', NULL, '1'),
(40, 1, 10, 'W08841665005', '8.12E+13', '1'),
(41, 1, 1, '1.07E+11', NULL, '1'),
(42, 1, 2, 'WNF102291752001', '1733931', '1'),
(43, 1, 1, '1.07E+11', NULL, '1'),
(44, 1, 1, '75035300503', NULL, '1'),
(45, 1, 9, '803582255', NULL, '1'),
(46, 1, 6, 'H05042134003', NULL, '1'),
(47, 1, 1, '1.06E+11', NULL, '1'),
(48, 1, 1, '1.09E+11', NULL, '1'),
(49, 1, 1, '1.07E+11', NULL, '1'),
(50, 1, 12, '5025235839', '7771', '1'),
(51, 1, 5, '239330562A', NULL, '1'),
(51, 2, 8, '1.09E+11', NULL, '1'),
(52, 1, 9, '801311696', NULL, '1'),
(53, 1, 1, '1.03E+11', NULL, '1'),
(54, 1, 13, '29866801102', NULL, '4'),
(55, 1, 1, '89025938680', NULL, '1'),
(56, 1, 1, '1.09E+11', NULL, '1'),
(57, 1, 5, '299761106A', NULL, '1'),
(58, 1, 9, '102805117', NULL, '1'),
(59, 1, 1, '1.09E+11', NULL, '1'),
(60, 1, 10, 'W215411734', NULL, '1'),
(62, 1, 14, '10003397', '702097', '1'),
(62, 2, 8, '1.08E+11', NULL, '1'),
(63, 1, 1, '1.07E+11', NULL, '1'),
(64, 1, 1, '1.10E+11', NULL, '1'),
(65, 1, 6, 'H0402043902', NULL, '1'),
(66, 1, 1, '79042417003', NULL, '1'),
(67, 1, 1, '1.07E+11', NULL, '1'),
(68, 1, 1, '89034294980', NULL, '1'),
(69, 1, 15, '47906904', NULL, '4'),
(70, 1, 1, '74008236706', NULL, '1'),
(71, 1, 4, '10003397', '72097', '1'),
(71, 2, 8, '1.08E+11', NULL, '1'),
(72, 1, 1, '1.09E+11', NULL, '1'),
(73, 1, 1, '1.06E+11', NULL, '1'),
(74, 1, 1, '1.07E+11', NULL, '1'),
(75, 1, 16, '4.76E+11', NULL, '1'),
(76, 1, 1, '1.06E+11', NULL, '1'),
(77, 1, 9, '689726', NULL, '1'),
(78, 1, 9, '700661895', NULL, '1'),
(79, 1, 2, 'WNF117557355001', 'WNF363', '1'),
(80, 1, 2, 'TCH216078734', '000TCH834', '1'),
(81, 1, 17, '80372385601', NULL, '1'),
(82, 1, 9, '602885937', NULL, '1'),
(83, 1, 3, '669037464', NULL, '1'),
(83, 2, 18, '1058742', NULL, '5'),
(84, 1, 12, '7700674527', '7770', '1'),
(89, 1, 1, 'yyyyyy-yyy', NULL, '1'),
(90, 1, 1, 'yyyyyy-yyy', NULL, '1'),
(91, 1, 1, 'yyyyyy-yyy', NULL, '1'),
(92, 1, 19, 'yyyyyy-yyy', NULL, '1'),
(93, 1, 7, 'yyyyyy-yyy', NULL, '1'),
(94, 1, 5, 'yyyyyy-yyy', NULL, '1'),
(94, 2, 27, NULL, NULL, '1'),
(95, 1, 1, 'yyyyyy-yyy', NULL, '1'),
(96, 1, 1, 'yyyyyy-yyy', NULL, '1'),
(97, 1, 5, 'yyyyyy-yyy', NULL, '1'),
(97, 2, 7, NULL, NULL, '1'),
(98, 1, 6, 'yyyyyy-yyy', NULL, '1'),
(99, 1, 12, 'yyyyyy-yyy', NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `visitstatus`
--

CREATE TABLE `visitstatus` (
  `VisitStatusID` int(11) NOT NULL,
  `VisitStatusType` varchar(20) DEFAULT NULL,
  `VisitStatusValue` varchar(10) DEFAULT NULL,
  `VisitStatusColor` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitstatus`
--

INSERT INTO `visitstatus` (`VisitStatusID`, `VisitStatusType`, `VisitStatusValue`, `VisitStatusColor`) VALUES
(1, 'CheckIn', 'Y', '#53a93f'),
(2, 'CheckIn', 'CX', '#f4b400'),
(3, 'CheckIn', 'NS', '#d73d32'),
(4, 'CheckIn', 'OC', '#337ab7'),
(5, 'CheckOut', 'Y', '#337ab7'),
(6, 'CheckOut', 'CX', '#f4b400'),
(8, 'ProviderNoteSigned', 'Yes', '#53a93f'),
(9, 'ProviderNoteSigned', 'No', '#d73d32'),
(11, 'NursingNote', 'Yes', '#53a93f'),
(12, 'NursingNote', 'No', '#d73d32'),
(13, 'AIMS', 'Due', '#f4b400'),
(14, 'AIMS', 'Done', '#53a93f'),
(15, 'AIMS', 'Not Done', '#d73d32'),
(16, 'TrxPlan', 'Due', '#f4b400'),
(17, 'TrxPlan', 'Done', '#53a93f'),
(18, 'TrxPlan', 'Not Done', '#d73d32'),
(19, 'Labs', 'Due', '#f4b400'),
(20, 'Labs', 'Done', '#53a93f'),
(21, 'Labs', 'Not Done', '#d73d32');

-- --------------------------------------------------------

--
-- Table structure for table `visittype`
--

CREATE TABLE `visittype` (
  `VisitTypeID` int(11) NOT NULL,
  `VisitTypeCode` varchar(3) DEFAULT NULL,
  `VisitTypeDesc` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visittype`
--

INSERT INTO `visittype` (`VisitTypeID`, `VisitTypeCode`, `VisitTypeDesc`) VALUES
(1, 'NP', 'NEW PATIENT'),
(2, 'TH', 'THERAPY - INDIVIDUAL'),
(3, 'IN', 'INJECTION'),
(4, 'OH', 'OHIO MEDICAID FOLLOW-UP'),
(5, 'FO', 'FOLLOW-UP APPT - MEDICAL'),
(6, 'OO', 'OUT OF OFFICE'),
(7, 'BH', 'BEFORE HOURS');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`AnswerID`,`SurveyID`,`PatientID`,`QuestionID`),
  ADD KEY `aPK1` (`SurveyID`),
  ADD KEY `aPK3` (`QuestionID`),
  ADD KEY `aPK2` (`PatientID`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`AppointmentID`,`PatientID`),
  ADD KEY `PatientID` (`PatientID`);

--
-- Indexes for table `diagnosis`
--
ALTER TABLE `diagnosis`
  ADD PRIMARY KEY (`DiagnosisID`);

--
-- Indexes for table `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`DocumentID`);

--
-- Indexes for table `facility`
--
ALTER TABLE `facility`
  ADD PRIMARY KEY (`FacilityID`);

--
-- Indexes for table `insurance`
--
ALTER TABLE `insurance`
  ADD PRIMARY KEY (`InsuranceID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`PatientID`);

--
-- Indexes for table `patientdiagnosis`
--
ALTER TABLE `patientdiagnosis`
  ADD PRIMARY KEY (`PatientID`,`DiagnosisID`),
  ADD KEY `pdPK2` (`DiagnosisID`);

--
-- Indexes for table `patientdocument`
--
ALTER TABLE `patientdocument`
  ADD PRIMARY KEY (`PatientDocumentID`,`PatientID`,`DocumentID`),
  ADD KEY `pdoPK2` (`DocumentID`),
  ADD KEY `PatientID` (`PatientID`);

--
-- Indexes for table `patientsymptom`
--
ALTER TABLE `patientsymptom`
  ADD PRIMARY KEY (`PatientID`,`SymptomID`),
  ADD KEY `psPK2` (`SymptomID`);

--
-- Indexes for table `patientsymptomlog`
--
ALTER TABLE `patientsymptomlog`
  ADD PRIMARY KEY (`PSLogID`,`PatientID`),
  ADD KEY `PatientID` (`PatientID`);

--
-- Indexes for table `patientsymptomlogdetail`
--
ALTER TABLE `patientsymptomlogdetail`
  ADD PRIMARY KEY (`PSLogID`,`SymptomID`),
  ADD KEY `psldPK1` (`SymptomID`);

--
-- Indexes for table `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`ProviderID`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`QuestionID`,`SurveyID`),
  ADD KEY `qPK1` (`SurveyID`);

--
-- Indexes for table `survey`
--
ALTER TABLE `survey`
  ADD PRIMARY KEY (`SurveyID`);

--
-- Indexes for table `symptom`
--
ALTER TABLE `symptom`
  ADD PRIMARY KEY (`SymptomID`);

--
-- Indexes for table `visit`
--
ALTER TABLE `visit`
  ADD PRIMARY KEY (`VisitID`,`PatientID`,`ProviderID`,`FacilityID`,`VisitTypeID`),
  ADD KEY `vPK2` (`ProviderID`),
  ADD KEY `vPK3` (`FacilityID`),
  ADD KEY `vPK4` (`VisitTypeID`),
  ADD KEY `PatientID` (`PatientID`);

--
-- Indexes for table `visitinsurance`
--
ALTER TABLE `visitinsurance`
  ADD PRIMARY KEY (`VisitID`,`SeqNo`,`InsuranceID`),
  ADD KEY `viPK1` (`InsuranceID`);

--
-- Indexes for table `visitstatus`
--
ALTER TABLE `visitstatus`
  ADD PRIMARY KEY (`VisitStatusID`);

--
-- Indexes for table `visittype`
--
ALTER TABLE `visittype`
  ADD PRIMARY KEY (`VisitTypeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `AnswerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1037;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `PatientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `aPK1` FOREIGN KEY (`SurveyID`) REFERENCES `survey` (`SurveyID`) ON DELETE CASCADE,
  ADD CONSTRAINT `aPK2` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`PatientID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `aPK3` FOREIGN KEY (`QuestionID`) REFERENCES `questions` (`QuestionID`) ON DELETE CASCADE;

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`PatientID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `patientdiagnosis`
--
ALTER TABLE `patientdiagnosis`
  ADD CONSTRAINT `patientdiagnosis_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`PatientID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pdPK2` FOREIGN KEY (`DiagnosisID`) REFERENCES `diagnosis` (`DiagnosisID`) ON DELETE CASCADE;

--
-- Constraints for table `patientdocument`
--
ALTER TABLE `patientdocument`
  ADD CONSTRAINT `patientdocument_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`PatientID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pdoPK2` FOREIGN KEY (`DocumentID`) REFERENCES `document` (`DocumentID`) ON DELETE CASCADE;

--
-- Constraints for table `patientsymptom`
--
ALTER TABLE `patientsymptom`
  ADD CONSTRAINT `patientsymptom_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`PatientID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `psPK2` FOREIGN KEY (`SymptomID`) REFERENCES `symptom` (`SymptomID`) ON DELETE CASCADE;

--
-- Constraints for table `patientsymptomlog`
--
ALTER TABLE `patientsymptomlog`
  ADD CONSTRAINT `patientsymptomlog_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`PatientID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `patientsymptomlogdetail`
--
ALTER TABLE `patientsymptomlogdetail`
  ADD CONSTRAINT `psldPK1` FOREIGN KEY (`SymptomID`) REFERENCES `symptom` (`SymptomID`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `qPK1` FOREIGN KEY (`SurveyID`) REFERENCES `survey` (`SurveyID`) ON DELETE CASCADE;

--
-- Constraints for table `visit`
--
ALTER TABLE `visit`
  ADD CONSTRAINT `vPK2` FOREIGN KEY (`ProviderID`) REFERENCES `provider` (`ProviderID`) ON DELETE CASCADE,
  ADD CONSTRAINT `vPK3` FOREIGN KEY (`FacilityID`) REFERENCES `facility` (`FacilityID`) ON DELETE CASCADE,
  ADD CONSTRAINT `vPK4` FOREIGN KEY (`VisitTypeID`) REFERENCES `visittype` (`VisitTypeID`) ON DELETE CASCADE,
  ADD CONSTRAINT `visit_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`PatientID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `visitinsurance`
--
ALTER TABLE `visitinsurance`
  ADD CONSTRAINT `viPK1` FOREIGN KEY (`InsuranceID`) REFERENCES `insurance` (`InsuranceID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
