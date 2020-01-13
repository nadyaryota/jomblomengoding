-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 13 Jan 2020 pada 08.08
-- Versi Server: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk_mvp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `match`
--

CREATE TABLE `match` (
  `id` int(11) NOT NULL,
  `id_match` varchar(10) NOT NULL,
  `tanggal` date NOT NULL,
  `tim` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `match`
--

INSERT INTO `match` (`id`, `id_match`, `tanggal`, `tim`) VALUES
(3, '5e18910e06', '2020-01-09', 12),
(4, '5e18910e06', '2020-01-09', 14),
(5, '5e18928067', '2020-01-09', 12),
(6, '5e18938edc', '2020-01-11', 12),
(7, '5e18938edc', '2020-01-11', 14),
(8, '5e1893903f', '2020-01-11', 12),
(9, '5e1893903f', '2020-01-11', 14),
(10, '5e18950e5f', '2020-01-12', 12),
(12, '5e18950ea4', '2020-01-12', 12),
(14, '5e18957695', '2020-01-12', 12),
(16, '5e18957705', '2020-01-12', 12),
(18, '5e1c050a3c', '2020-01-13', 15),
(19, '5e1c050a3c', '2020-01-13', 14),
(20, '5e1c050b3f', '2020-01-13', 15),
(21, '5e1c050b3f', '2020-01-13', 14);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemain`
--

CREATE TABLE `pemain` (
  `id_pemain` int(11) NOT NULL,
  `nama_pemain` varchar(100) NOT NULL,
  `no_punggung` int(11) NOT NULL,
  `tim` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pemain`
--

INSERT INTO `pemain` (`id_pemain`, `nama_pemain`, `no_punggung`, `tim`) VALUES
(19, 'mukidi', 1, 12),
(23, 'Nadya', 17, 14),
(24, 'Rizky', 7, 14),
(25, 'Aish', 98, 14),
(26, 'Elsa', 4, 15),
(27, 'Anna', 5, 15),
(28, 'Olaf', 7, 15),
(29, 'Kristoff', 8, 15);

-- --------------------------------------------------------

--
-- Struktur dari tabel `statistik`
--

CREATE TABLE `statistik` (
  `id` int(11) NOT NULL,
  `pemain` int(11) DEFAULT NULL,
  `id_match` varchar(10) NOT NULL,
  `point` int(11) DEFAULT NULL,
  `assist` int(11) DEFAULT NULL,
  `off_rebound` int(11) DEFAULT NULL,
  `def_rebound` int(11) DEFAULT NULL,
  `steal` int(11) DEFAULT NULL,
  `block` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `statistik`
--

INSERT INTO `statistik` (`id`, `pemain`, `id_match`, `point`, `assist`, `off_rebound`, `def_rebound`, `steal`, `block`) VALUES
(1, 19, '5', 10, 9, 8, 7, 5, 6),
(2, 19, '6', 10, 10, 20, 10, 8, 8),
(3, 23, '7', 8, 6, 10, 5, 7, 6),
(4, 24, '7', 4, 3, 4, 5, 5, 10),
(5, 25, '7', 15, 12, 10, 8, 4, 5),
(6, 19, '8', 10, 10, 20, 10, 8, 8),
(7, 23, '9', 8, 6, 10, 5, 7, 6),
(8, 24, '9', 4, 3, 4, 5, 5, 10),
(9, 25, '9', 15, 12, 10, 8, 4, 5),
(10, 19, '10', 1, 1, 1, 1, 1, 1),
(14, 19, '12', 1, 1, 1, 1, 1, 1),
(18, 19, '14', 1, 1, 1, 1, 1, 1),
(22, 19, '16', 1, 1, 1, 1, 1, 1),
(26, 26, '18', 10, 10, 10, 10, 10, 10),
(27, 27, '18', 5, 6, 7, 8, 0, 9),
(28, 28, '18', 1, 2, 3, 4, 7, 5),
(29, 29, '18', 1, 2, 3, 4, 6, 5),
(30, 23, '19', 1, 2, 4, 1, 4, 2),
(31, 24, '19', 3, 4, 3, 3, 2, 3),
(32, 25, '19', 3, 1, 2, 3, 4, 3),
(33, 26, '20', 10, 10, 10, 10, 10, 10),
(34, 27, '20', 5, 6, 7, 8, 0, 9),
(35, 28, '20', 1, 2, 3, 4, 7, 5),
(36, 29, '20', 1, 2, 3, 4, 6, 5),
(37, 23, '21', 1, 2, 4, 1, 4, 2),
(38, 24, '21', 3, 4, 3, 3, 2, 3),
(39, 25, '21', 3, 1, 2, 3, 4, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tim`
--

CREATE TABLE `tim` (
  `id_tim` int(11) NOT NULL,
  `nama_tim` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tim`
--

INSERT INTO `tim` (`id_tim`, `nama_tim`) VALUES
(12, 'bambang'),
(14, 'Bidadari'),
(15, 'frozen');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `match`
--
ALTER TABLE `match`
  ADD PRIMARY KEY (`id`),
  ADD KEY `match_ibfk_1` (`tim`);

--
-- Indexes for table `pemain`
--
ALTER TABLE `pemain`
  ADD PRIMARY KEY (`id_pemain`),
  ADD KEY `tim` (`tim`);

--
-- Indexes for table `statistik`
--
ALTER TABLE `statistik`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pemain` (`pemain`);

--
-- Indexes for table `tim`
--
ALTER TABLE `tim`
  ADD PRIMARY KEY (`id_tim`),
  ADD KEY `nama_tim` (`nama_tim`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `match`
--
ALTER TABLE `match`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `pemain`
--
ALTER TABLE `pemain`
  MODIFY `id_pemain` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `statistik`
--
ALTER TABLE `statistik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `tim`
--
ALTER TABLE `tim`
  MODIFY `id_tim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `match`
--
ALTER TABLE `match`
  ADD CONSTRAINT `match_ibfk_1` FOREIGN KEY (`tim`) REFERENCES `tim` (`id_tim`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pemain`
--
ALTER TABLE `pemain`
  ADD CONSTRAINT `pemain_ibfk_1` FOREIGN KEY (`tim`) REFERENCES `tim` (`id_tim`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `statistik`
--
ALTER TABLE `statistik`
  ADD CONSTRAINT `statistik_ibfk_1` FOREIGN KEY (`pemain`) REFERENCES `pemain` (`id_pemain`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
