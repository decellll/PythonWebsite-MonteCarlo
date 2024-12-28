-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2024 at 01:13 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_lembaga_kesenian`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_lembaga`
--

CREATE TABLE `data_lembaga` (
  `id` int(11) NOT NULL,
  `tahun` int(11) NOT NULL,
  `jumlah_lembaga` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_lembaga`
--

INSERT INTO `data_lembaga` (`id`, `tahun`, `jumlah_lembaga`, `created_at`, `updated_at`) VALUES
(1, 2017, 150, '2024-12-26 04:25:32', '2024-12-26 04:25:32'),
(2, 2018, 150, '2024-12-26 04:25:32', '2024-12-26 04:25:32'),
(3, 2019, 150, '2024-12-26 04:25:32', '2024-12-26 04:25:32'),
(4, 2020, 150, '2024-12-26 04:25:32', '2024-12-26 04:25:32'),
(5, 2021, 150, '2024-12-26 04:25:32', '2024-12-26 04:25:32'),
(6, 2022, 300, '2024-12-26 04:25:32', '2024-12-26 04:25:32'),
(7, 2023, 400, '2024-12-26 04:25:32', '2024-12-26 04:25:32'),
(8, 2024, 400, '2024-12-26 04:25:32', '2024-12-26 04:25:32');

-- --------------------------------------------------------

--
-- Table structure for table `hasil_simulasi`
--

CREATE TABLE `hasil_simulasi` (
  `id` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `tahun_prediksi` int(11) NOT NULL,
  `hasil_prediksi` int(11) NOT NULL,
  `probabilitas_naik` float DEFAULT NULL,
  `probabilitas_turun` float DEFAULT NULL,
  `probabilitas_stabil` float DEFAULT NULL,
  `intervals` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`intervals`)),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_lembaga`
--
ALTER TABLE `data_lembaga`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hasil_simulasi`
--
ALTER TABLE `hasil_simulasi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_lembaga`
--
ALTER TABLE `data_lembaga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `hasil_simulasi`
--
ALTER TABLE `hasil_simulasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
