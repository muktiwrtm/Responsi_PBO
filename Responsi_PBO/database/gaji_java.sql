-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Bulan Mei 2020 pada 09.32
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gaji_java`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_pegawai` int(11) NOT NULL,
  `nama_a` varchar(20) NOT NULL,
  `alamat_a` varchar(255) NOT NULL,
  `hp_a` varchar(20) NOT NULL,
  `posisi_a` varchar(20) NOT NULL,
  `gaji_a` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_pegawai`, `nama_a`, `alamat_a`, `hp_a`, `posisi_a`, `gaji_a`) VALUES
(22222, 'cech', 'muntilan', '012365485', 'database', 4000000),
(123456, 'hardi', 'balaraja', '012458623', 'frontend', 5000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nama_p` varchar(20) NOT NULL,
  `posisi_p` varchar(20) NOT NULL,
  `alamat_p` varchar(255) NOT NULL,
  `hp_p` varchar(20) NOT NULL,
  `gaji_p` int(11) NOT NULL,
  `jam` int(11) NOT NULL,
  `tunjangan` int(11) NOT NULL,
  `pajak` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama_p`, `posisi_p`, `alamat_p`, `hp_p`, `gaji_p`, `jam`, `tunjangan`, `pajak`, `total`) VALUES
(1111, 'andro', 'Manajer', 'mustika', '02145458747', 4000000, 10, 150000, 40000, 4110000),
(1212, 'ronaldo', 'Programmer', 'portugal', '032564587', 1000000, 50, 750000, 10000, 1740000),
(2222, 'sodikin', 'Marketing', 'seturan', '08741', 3500000, 30, 450000, 35000, 3915000),
(5555, 'ditto', 'Diretor', 'batam', '089566332211', 3000000, 40, 600000, 30000, 3570000),
(12123, 'messi', 'Programmer', 'bali', '021453688', 5000000, 15, 225000, 50000, 5175000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
