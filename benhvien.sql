-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2017 at 02:07 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `benhvien`
--

-- --------------------------------------------------------

--
-- Table structure for table `bacsy`
--

CREATE TABLE `bacsy` (
  `msbacsy` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `hotenbacsy` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bacsy`
--

INSERT INTO `bacsy` (`msbacsy`, `hotenbacsy`) VALUES
('BS01', 'Luc Van A');

-- --------------------------------------------------------

--
-- Table structure for table `benhnhan`
--

CREATE TABLE `benhnhan` (
  `msbn` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `socmnd` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `benhnhan`
--

INSERT INTO `benhnhan` (`msbn`, `socmnd`, `hoten`, `diachi`) VALUES
('001', '01234567', 'Nguyen Van G', '10 Nguyen Hien'),
('002', '01234568', 'Tran Thi N', '2 Tran Hung Dao'),
('003', '012345679', 'Le Thi B', '7 Le Thi Rieng'),
('004', '012345677', 'Le Van T', '70 Le Loi'),
('005', '012345671', 'Phan Thi A', '9 Phan Boi Chau'),
('006', '012345672', 'Nguyen Van M', '1 Nguyen Van Troi'),
('007', '012345673', 'Nguyen Dang Nh', '10 Nguyen Dinh Chieu'),
('008', '0123456788', 'Tran Van L', '20 Tran Khac Chan'),
('009', '0123456789', 'Pham Phu T', '13 Pham Tuan'),
('010', '032177574', 'Lam Van B', '86 Suong Nguyet Anh');

-- --------------------------------------------------------

--
-- Table structure for table `khambenh`
--

CREATE TABLE `khambenh` (
  `msbn` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `msbacsy` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `ngaykham` date NOT NULL,
  `ghichu` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khambenh`
--

INSERT INTO `khambenh` (`msbn`, `msbacsy`, `ngaykham`, `ghichu`) VALUES
(' 002', 'BS01', '2017-03-02', 'Benh ngoai da'),
(' 007', 'BS01', '2017-03-02', 'Nhuc dau'),
(' 008', 'BS01', '2017-03-02', 'Benh thap khop'),
('001', 'BS01', '2017-03-02', 'Benh tieu duong');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bacsy`
--
ALTER TABLE `bacsy`
  ADD PRIMARY KEY (`msbacsy`);

--
-- Indexes for table `benhnhan`
--
ALTER TABLE `benhnhan`
  ADD PRIMARY KEY (`msbn`);

--
-- Indexes for table `khambenh`
--
ALTER TABLE `khambenh`
  ADD PRIMARY KEY (`msbn`,`msbacsy`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
