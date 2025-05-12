-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Bulan Mei 2025 pada 17.32
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jam_tidur_mahasiswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `catatan_tidur`
--

CREATE TABLE `catatan_tidur` (
  `id_catatan` int(11) NOT NULL,
  `id_mahasiswa` varchar(10) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_tidur` time NOT NULL,
  `jam_bangun` time NOT NULL,
  `kualitas_tidur` enum('Baik','Sedang','Buruk') NOT NULL,
  `catatan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `catatan_tidur`
--

INSERT INTO `catatan_tidur` (`id_catatan`, `id_mahasiswa`, `tanggal`, `jam_tidur`, `jam_bangun`, `kualitas_tidur`, `catatan`) VALUES
(1, '220301001', '2025-05-01', '23:00:00', '06:30:00', 'Baik', 'Tidur nyenyak, tanpa gangguan'),
(2, '220301001', '2025-05-02', '01:30:00', '06:00:00', 'Buruk', 'Main game terlalu malam'),
(3, '220301002', '2025-05-01', '22:45:00', '05:45:00', 'Sedang', 'Tidur kurang nyenyak'),
(4, '220301003', '2025-05-03', '00:15:00', '07:00:00', 'Baik', 'Bangun segar'),
(5, '220301004', '2025-05-03', '02:00:00', '06:00:00', 'Buruk', 'Begadang ngerjain tugas'),
(6, '220301001', '2025-05-04', '23:30:00', '06:00:00', 'Baik', 'Bangun lebih awal dari biasanya'),
(7, '220301002', '2025-05-04', '01:00:00', '07:00:00', 'Sedang', 'Tertidur di depan laptop'),
(8, '220301005', '2025-05-04', '22:30:00', '06:30:00', 'Baik', 'Tidur awal karena kelelahan'),
(9, '220301006', '2025-05-05', '00:00:00', '08:00:00', 'Baik', 'Weekend, tidur lebih lama'),
(10, '220301003', '2025-05-05', '01:45:00', '06:30:00', 'Sedang', 'Mimpi buruk, sempat terbangun');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `catatan_tidur`
--
ALTER TABLE `catatan_tidur`
  ADD PRIMARY KEY (`id_catatan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `catatan_tidur`
--
ALTER TABLE `catatan_tidur`
  MODIFY `id_catatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
