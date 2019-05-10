-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Bulan Mei 2019 pada 17.19
-- Versi server: 10.1.34-MariaDB
-- Versi PHP: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbdata`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kabupaten`
--

CREATE TABLE `kabupaten` (
  `kode_provinsi` int(2) NOT NULL,
  `kode_kab` int(3) NOT NULL,
  `nama_kab` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kabupaten`
--

INSERT INTO `kabupaten` (`kode_provinsi`, `kode_kab`, `nama_kab`) VALUES
(13, 0, 'kokor'),
(13, 19, 'samosir'),
(13, 43, 'taput'),
(89, 11, 'kokoro');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kecamatan`
--

CREATE TABLE `kecamatan` (
  `kode_kab` int(3) NOT NULL,
  `kode_kec` int(3) NOT NULL,
  `nama_kec` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kecamatan`
--

INSERT INTO `kecamatan` (`kode_kab`, `kode_kec`, `nama_kec`) VALUES
(19, 30, 'pangaribuan'),
(43, 23, 'pahae');

-- --------------------------------------------------------

--
-- Struktur dari tabel `provinsi`
--

CREATE TABLE `provinsi` (
  `kode_provinsi` int(2) NOT NULL,
  `nama_provinsi` varchar(38) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `provinsi`
--

INSERT INTO `provinsi` (`kode_provinsi`, `nama_provinsi`) VALUES
(13, 'sumatra barat'),
(36, 'ntt'),
(79, 'papua'),
(89, 'aceh');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`kode_provinsi`,`kode_kab`);

--
-- Indeks untuk tabel `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`kode_kab`,`kode_kec`);

--
-- Indeks untuk tabel `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`kode_provinsi`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD CONSTRAINT `kabupaten_ibfk_1` FOREIGN KEY (`kode_provinsi`) REFERENCES `provinsi` (`kode_provinsi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
