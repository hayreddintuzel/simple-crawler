-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2018 at 07:13 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctors`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `city` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `field` varchar(80) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `city`, `field`) VALUES
(0, 'Op. Dr. Mehmet Ali Mungan', 'istanbul', 'kadin-hastaliklari-ve-dogum'),
(1, 'Op. Dr. Mehmet Ali Mungan', 'istanbul', 'kadin-hastaliklari-ve-dogum'),
(2, 'Prof. Dr. Nilgün Turhan', 'istanbul', 'kadin-hastaliklari-ve-dogum'),
(3, 'Op. Dr. Barış Pilancı', 'istanbul', 'kadin-hastaliklari-ve-dogum'),
(4, 'Doç. Dr. Faruk Abike', 'istanbul', 'kadin-hastaliklari-ve-dogum'),
(5, 'Dr. Öğr. Üyesi Hediye Dağdeviren', 'istanbul', 'kadin-hastaliklari-ve-dogum'),
(6, 'Op. Dr. Soner Doğanyılmaz', 'istanbul', 'kadin-hastaliklari-ve-dogum'),
(7, 'Prof. Dr. Teksen Çamlıbel', 'istanbul', 'kadin-hastaliklari-ve-dogum'),
(8, 'Prof. Dr. İskender Başer', 'istanbul', 'kadin-hastaliklari-ve-dogum'),
(9, 'Doç. Dr. Murat Bozkurt', 'istanbul', 'kadin-hastaliklari-ve-dogum'),
(10, 'Uzm. Dr. Hüseyin Ekici', 'istanbul', 'kadin-hastaliklari-ve-dogum'),
(11, 'Op. Dr. Fatih Kaya', 'istanbul', 'kadin-hastaliklari-ve-dogum'),
(12, 'Op. Dr. Kemale Musayeva', 'istanbul', 'kadin-hastaliklari-ve-dogum'),
(13, 'Op. Dr. Hande Akbaş Güleç', 'istanbul', 'kadin-hastaliklari-ve-dogum'),
(14, 'Op. Dr. Saime Şirin Çuhadar', 'istanbul', 'kadin-hastaliklari-ve-dogum'),
(15, 'Op. Dr. Rami Asker', 'istanbul', 'kadin-hastaliklari-ve-dogum'),
(16, 'Op. Dr. Ceyhun Ateş', 'istanbul', 'kadin-hastaliklari-ve-dogum'),
(17, 'Op. Dr. Semra Özer', 'istanbul', 'kadin-hastaliklari-ve-dogum'),
(18, 'Prof. Dr. Cem Batukan', 'istanbul', 'kadin-hastaliklari-ve-dogum'),
(19, 'Prof. Dr. Umur Kuyumcuoğlu', 'istanbul', 'kadin-hastaliklari-ve-dogum'),
(20, 'Op. Dr. Bilgi Gökcan', 'istanbul', 'kadin-hastaliklari-ve-dogum'),
(25, 'Op. Dr. Seval Taşdemir', 'istanbul', 'kadin-hastaliklari-ve-dogum'),
(26, 'Prof. Dr. Özay Oral', 'istanbul', 'kadin-hastaliklari-ve-dogum'),
(27, 'Prof. Dr. Ulun Uluğ', 'istanbul', 'kadin-hastaliklari-ve-dogum'),
(28, 'Op. Dr. Süleyman Eserdağ', 'istanbul', 'kadin-hastaliklari-ve-dogum'),
(29, 'Op. Dr. Nurdan Okuyucuoğlu Leylek', 'istanbul', 'kadin-hastaliklari-ve-dogum'),
(30, 'Op. Dr. Züleyha Gedik Cevahir', 'istanbul', 'kadin-hastaliklari-ve-dogum'),
(31, 'Op. Dr. Sertan Aksu', 'istanbul', 'kadin-hastaliklari-ve-dogum'),
(32, 'Op. Dr. Esra Tuştaş Haberal', 'istanbul', 'kadin-hastaliklari-ve-dogum'),
(33, 'Prof. Dr. Melahat Emine Dönmez', 'istanbul', 'kadin-hastaliklari-ve-dogum'),
(34, 'Prof. Dr. Alparslan Baksu', 'istanbul', 'kadin-hastaliklari-ve-dogum'),
(35, 'Op. Dr. Filip Taşhan', 'istanbul', 'kadin-hastaliklari-ve-dogum'),
(36, 'Op. Dr. Savaş Özkan', 'istanbul', 'kadin-hastaliklari-ve-dogum'),
(37, 'Op. Dr. Fatma Gençtürk Özer', 'istanbul', 'kadin-hastaliklari-ve-dogum'),
(38, 'Op. Dr. Halide Yüksel', 'istanbul', 'kadin-hastaliklari-ve-dogum'),
(39, 'Doç. Dr. Osman Temizkan', 'istanbul', 'kadin-hastaliklari-ve-dogum'),
(40, 'Op. Dr. Bülent Arıcı', 'istanbul', 'kadin-hastaliklari-ve-dogum'),
(41, 'Prof. Dr. Ali Süha Sönmez', 'istanbul', 'kadin-hastaliklari-ve-dogum'),
(42, 'Doç. Dr. Eralp Başer', 'istanbul', 'kadin-hastaliklari-ve-dogum'),
(43, 'Op. Dr. Mehtap Şentürk Çiçek', 'istanbul', 'kadin-hastaliklari-ve-dogum'),
(44, 'Dr. Öğr. Üyesi Algül Anıl', 'istanbul', 'kadin-hastaliklari-ve-dogum');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
