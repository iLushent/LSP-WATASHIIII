-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Mar 2024 pada 14.44
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_ticketing`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_penerbangan`
--

CREATE TABLE `jadwal_penerbangan` (
  `id_jadwal` int(11) NOT NULL,
  `id_rute` int(11) NOT NULL,
  `waktu_berangkat` time NOT NULL,
  `waktu_tiba` time NOT NULL,
  `harga` int(11) NOT NULL,
  `kapasitas_kursi` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jadwal_penerbangan`
--

INSERT INTO `jadwal_penerbangan` (`id_jadwal`, `id_rute`, `waktu_berangkat`, `waktu_tiba`, `harga`, `kapasitas_kursi`) VALUES
(1, 1, '13:00:00', '14:00:00', 1000000, 50),
(2, 2, '15:00:00', '16:00:00', 950000, 48),
(4, 8, '13:00:00', '13:30:00', 900000, 42),
(5, 7, '18:00:00', '19:00:00', 1200000, 32),
(6, 1, '11:00:00', '12:00:00', 50000000, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kota`
--

CREATE TABLE `kota` (
  `id_kota` int(11) NOT NULL,
  `nama_kota` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kota`
--

INSERT INTO `kota` (`id_kota`, `nama_kota`) VALUES
(1, 'Jakartaaa'),
(2, 'Bali'),
(3, 'Surabaya'),
(4, 'Yogyakarta'),
(5, 'Bengkulu'),
(6, 'Lombok'),
(7, 'Aceh'),
(8, 'Banten'),
(10, 'Medan'),
(11, 'Padang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `maskapai`
--

CREATE TABLE `maskapai` (
  `id_maskapai` int(11) NOT NULL,
  `logo_maskapai` text DEFAULT NULL,
  `nama_maskapai` varchar(50) NOT NULL,
  `kapasitas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `maskapai`
--

INSERT INTO `maskapai` (`id_maskapai`, `logo_maskapai`, `nama_maskapai`, `kapasitas`) VALUES
(1, 'logo-garuda.jpg', 'Garuda Indonesia', 24),
(2, 'air-asia.png', 'Air Asia', 200),
(3, 'lion-air.png', 'Lion Air', 150);

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_detail`
--

CREATE TABLE `order_detail` (
  `id_order_detail` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_penerbangan` int(11) NOT NULL,
  `id_order` varchar(20) NOT NULL,
  `jumlah_tiket` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `order_detail`
--

INSERT INTO `order_detail` (`id_order_detail`, `id_user`, `id_penerbangan`, `id_order`, `jumlah_tiket`, `total_harga`) VALUES
(16, 3, 2, '65e021e7b9564', 10, 10000000),
(17, 3, 2, '65e021e7b9564', 5, 4750000),
(18, 3, 6, '65f256e2384da', 3, 150000000),
(19, 3, 4, '65f256e2384da', 2, 1800000),
(20, 3, 6, '65f2575730088', 4, 200000000),
(22, 3, 6, '65f261d959809', 1, 50000000),
(23, 3, 6, '65fc2d9e1e947', 1, 50000000),
(24, 3, 2, '65fd08275d896', 2, 1900000),
(25, 3, 6, '65fd08275d896', 2, 100000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_tiket`
--

CREATE TABLE `order_tiket` (
  `id_order` varchar(20) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `struk` varchar(100) NOT NULL,
  `status` enum('proses','berhasil','gagal') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `order_tiket`
--

INSERT INTO `order_tiket` (`id_order`, `tanggal_transaksi`, `struk`, `status`) VALUES
('65e021e7b9564', '2024-02-29', 'd0424da6f155c99ea982', 'berhasil'),
('65f256e2384da', '2024-03-14', 'd2a1ae396ee19e3a68b3', 'berhasil'),
('65f2575730088', '2024-03-14', 'baf6e96adc222a1b0eb4', 'berhasil'),
('65f261d959809', '2024-03-14', '6123d845c10e276c9314', 'berhasil'),
('65fc2d9e1e947', '2024-03-21', 'cd8d21960a8c5b738edd', 'gagal'),
('65fd08275d896', '2024-03-22', 'e72a3dc5c7ec578c461e', 'proses');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rute`
--

CREATE TABLE `rute` (
  `id_rute` int(11) NOT NULL,
  `id_maskapai` int(11) NOT NULL,
  `rute_asal` varchar(100) NOT NULL,
  `rute_tujuan` varchar(100) NOT NULL,
  `tanggal_pergi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `rute`
--

INSERT INTO `rute` (`id_rute`, `id_maskapai`, `rute_asal`, `rute_tujuan`, `tanggal_pergi`) VALUES
(1, 1, 'Jakarta', 'Bali', '2024-02-24'),
(2, 2, 'Jakarta', 'Bali', '2024-02-25'),
(3, 3, 'Bali', 'Yogyakarta', '2024-02-24'),
(7, 3, 'Jakarta', 'Bali', '2024-02-24'),
(8, 1, 'Jakartaaa', 'Yogyakarta', '0000-00-00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `roles` enum('Admin','Petugas','Penumpang') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `nama_lengkap`, `password`, `roles`) VALUES
(1, 'admin', 'Rendi Admin', '123', 'Admin'),
(2, 'petugas VVIP', 'Rendi Petugas', 'rendipetugas', 'Petugas'),
(3, 'user', 'Rendi User', '123', 'Penumpang'),
(6, 'teshhh', 'teshhh', 'teshh', 'Petugas');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jadwal_penerbangan`
--
ALTER TABLE `jadwal_penerbangan`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `id_rute` (`id_rute`);

--
-- Indeks untuk tabel `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id_kota`);

--
-- Indeks untuk tabel `maskapai`
--
ALTER TABLE `maskapai`
  ADD PRIMARY KEY (`id_maskapai`);

--
-- Indeks untuk tabel `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id_order_detail`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_penerbangan` (`id_penerbangan`),
  ADD KEY `id_order` (`id_order`);

--
-- Indeks untuk tabel `order_tiket`
--
ALTER TABLE `order_tiket`
  ADD PRIMARY KEY (`id_order`);

--
-- Indeks untuk tabel `rute`
--
ALTER TABLE `rute`
  ADD PRIMARY KEY (`id_rute`),
  ADD KEY `id_maskapai` (`id_maskapai`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jadwal_penerbangan`
--
ALTER TABLE `jadwal_penerbangan`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kota`
--
ALTER TABLE `kota`
  MODIFY `id_kota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `maskapai`
--
ALTER TABLE `maskapai`
  MODIFY `id_maskapai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id_order_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `rute`
--
ALTER TABLE `rute`
  MODIFY `id_rute` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `jadwal_penerbangan`
--
ALTER TABLE `jadwal_penerbangan`
  ADD CONSTRAINT `jadwal_penerbangan_ibfk_1` FOREIGN KEY (`id_rute`) REFERENCES `rute` (`id_rute`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`id_penerbangan`) REFERENCES `jadwal_penerbangan` (`id_jadwal`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_detail_ibfk_3` FOREIGN KEY (`id_order`) REFERENCES `order_tiket` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rute`
--
ALTER TABLE `rute`
  ADD CONSTRAINT `rute_ibfk_1` FOREIGN KEY (`id_maskapai`) REFERENCES `maskapai` (`id_maskapai`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
